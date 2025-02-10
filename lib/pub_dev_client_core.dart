// ignore_for_file: unnecessary_brace_in_string_interps, empty_catches

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:io_universe/io_universe.dart';
import 'package:pub_dev_client/scheme/respond_scheme/pub_dev_package_score.dart';
import 'package:pub_dev_client/scheme/respond_scheme/respond_scheme.dart';
import "dart:math" as math;

class PubDevClientInvokeParameters {
  final Map parameters;
  final String urlPathScheme;
  final String userAgent;
  final Map<String, dynamic>? urlQueryParameters;
  final bool isThrowOnError;
  final Duration durationTimeOut;
  PubDevClientInvokeParameters({
    required this.parameters,
    required this.urlPathScheme,
    required this.urlQueryParameters,
    required this.isThrowOnError,
    required String? userAgent,
    required Duration? durationTimeOut,
  })  : userAgent = userAgent ?? "default",
        durationTimeOut = durationTimeOut ?? Duration(seconds: 30);

  PubDevClientInvokeParameters copyWith({Map<dynamic, dynamic>? parameters, String? urlPathScheme, Map<String, dynamic>? urlQueryParameters, String? userAgent, bool? isThrowOnError, Duration? durationTimeOut}) {
    return PubDevClientInvokeParameters(
      parameters: parameters ?? this.parameters,
      urlPathScheme: urlPathScheme ?? this.urlPathScheme,
      urlQueryParameters: urlQueryParameters ?? this.urlQueryParameters,
      userAgent: userAgent ?? this.userAgent,
      isThrowOnError: isThrowOnError ?? this.isThrowOnError,
      durationTimeOut: durationTimeOut ?? this.durationTimeOut,
    );
  }
}

class PubDevClient {
  final http.Client httpClient;
  PubDevClient({http.Client? httpClient}) : httpClient = httpClient ?? http.Client();

  static String packageVersion = "0.0.0";
  static RegExp regExpMethod = RegExp("^((get|post|patch|delete|head)([ ])+)", caseSensitive: false);

  String createUuid([List<int>? bytes]) {
    final rnd = math.Random.secure();

    // See http://www.cryptosys.net/pki/uuid-rfc4122.html for notes
    bytes ??= List<int>.generate(16, (_) => rnd.nextInt(256));
    bytes[6] = (bytes[6] & 0x0F) | 0x40;
    bytes[8] = (bytes[8] & 0x3f) | 0x80;

    final chars = bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join().toUpperCase();

    return ''
        '${chars.substring(0, 8)}-'
        '${chars.substring(8, 12)}-'
        '${chars.substring(12, 16)}-'
        '${chars.substring(16, 20)}-'
        '${chars.substring(20, 32)}';
  }

  Future<Map> invokeRaw({
    required PubDevClientInvokeParameters invokeParameters,
  }) async {
    final Map<String, String> headersOptions = {
      'Accept': 'application/vnd.pub.v2+json',
      "user-agent": "pub_dev_client/${PubDevClient} ${invokeParameters.userAgent}",
    };
    {
      headersOptions['X-Pub-OS'] = Platform.operatingSystem;
      headersOptions['X-Pub-Command'] = "command";
      headersOptions['X-Pub-Session-ID'] = createUuid();

      final environment = Platform.environment['PUB_ENVIRONMENT'];
      if (environment != null) {
        headersOptions['X-Pub-Environment'] = environment;
      }

      final type = Zone.current[#_dependencyType];
      if (type != null && type != "none") {
        headersOptions['X-Pub-Reason'] = type.toString();
      }
    }
    final String method = (regExpMethod.stringMatch(invokeParameters.urlPathScheme) ?? "get").trim();
    final String urlPath = invokeParameters.urlPathScheme.replaceAll(regExpMethod, "").trim();
    final Uri url = Uri.parse("https://pub.dev/api").replace(
      path: urlPath,
      queryParameters: invokeParameters.urlQueryParameters,
    );
    final http.Response response = await Future(() async {
      try {
        if (method == "post") {
          return await http.post(url);
        }
        return await http.get(url, headers: headersOptions);
      } catch (e) {
        if (invokeParameters.isThrowOnError) {
          rethrow;
        }
        if (e is http.ClientException) {
          return http.Response(
            json.encode({
              "@type": "error",
              "message": "network_error",
            }),
            400,
          );
        }
        return http.Response("${e}", 400);
      }
    }).timeout(
      invokeParameters.durationTimeOut,
      onTimeout: () async {
        return http.Response(
          json.encode({"@type": "error", "message": "timeout"}),
          400,
        );
      },
    );
    final dynamic responseBody = () {
      try {
        return json.decode(response.body);
      } catch (e) {}
      return {};
    }();
    if (response.statusCode == 200) {
      responseBody["@type"] = "ok";
    } else {
      responseBody["@type"] = "error";
    }
    return responseBody;
  }

  FutureOr<T> invoke<T>({
    required PubDevClientInvokeParameters invokeParameters,
    required FutureOr<T> Function(Map defaultTesult) onResult,
  }) async {
    return await onResult(await invokeRaw(invokeParameters: invokeParameters));
  }

  Future<PubDevPackageDocumentation> getPackageDocumentation({
    required String packageName,
  }) async {
    return await invoke<PubDevPackageDocumentation>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/documentation/${packageName}",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageDocumentation.defaultData["@type"];
        }
        return PubDevPackageDocumentation(defaultTesult);
      },
    );
  }

  Future<PubDevPackageInfo> getPackageInfo({
    required String packageName,
  }) async {
    return await invoke<PubDevPackageInfo>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/packages/${packageName}",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageInfo.defaultData["@type"];
        }
        return PubDevPackageInfo(defaultTesult);
      },
    );
  }

  Future<PubDevPackageMetrics> getPackageMetrics({
    required String packageName,
  }) async {
    return await invoke<PubDevPackageMetrics>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/packages/${packageName}/metrics",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageMetrics.defaultData["@type"];
        }
        return PubDevPackageMetrics(defaultTesult);
      },
    );
  }

  Future<PubDevPackageNames> getPackageNames() async {
    return await invoke<PubDevPackageNames>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/package-names",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageNames.defaultData["@type"];
        }
        return PubDevPackageNames(defaultTesult);
      },
    );
  }

  Future<PubDevPackageOptions> getPackageOptions({
    required String packageName,
  }) async {
    return await invoke<PubDevPackageOptions>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/packages/${packageName}/options",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageOptions.defaultData["@type"];
        }
        return PubDevPackageOptions(defaultTesult);
      },
    );
  }

  Future<PubDevPackagePublisher> getPackagePublisher({
    required String packageName,
  }) async {
    return await invoke<PubDevPackagePublisher>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/packages/${packageName}/publisher",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackagePublisher.defaultData["@type"];
        }
        return PubDevPackagePublisher(defaultTesult);
      },
    );
  }

  Future<PubDevPackageScore> getPackageScore({
    required String packageName,
  }) async {
    return await invoke<PubDevPackageScore>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/packages/${packageName}/score",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageScore.defaultData["@type"];
        }
        return PubDevPackageScore(defaultTesult);
      },
    );
  }

  Future<PubDevPackageVersionInfo> getPackageVersionInfo({
    required String packageName,
    required String packageVersion,
  }) async {
    return await invoke<PubDevPackageVersionInfo>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/packages/${packageName}/versions/${packageVersion}",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageVersionInfo.defaultData["@type"];
        }
        return PubDevPackageVersionInfo(defaultTesult);
      },
    );
  }

  Future<PubDevPackageVersions> getPackageVersions({
    required String packageName,
  }) async {
    return await invoke<PubDevPackageVersions>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /packages/${packageName}.json",
        parameters: {},
        urlQueryParameters: null,
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageVersions.defaultData["@type"];
        }
        return PubDevPackageVersions(defaultTesult);
      },
    );
  }

  Future<PubDevPackageQuerys> searchPackage({
    required String query,
    required int page,
    required PubDevClientSearchOrder sort,
  }) async {
    return await invoke<PubDevPackageQuerys>(
      invokeParameters: PubDevClientInvokeParameters(
        urlPathScheme: "get /api/search",
        urlQueryParameters: {
          "q": query,
          "page": "${page}",
          "sort": sort.name,
        },
        parameters: {},
        isThrowOnError: false,
        userAgent: null,
        durationTimeOut: null,
      ),
      onResult: (defaultTesult) {
        if (defaultTesult["@type"] == "ok") {
          defaultTesult["@type"] = PubDevPackageQuerys.defaultData["@type"];
        }
        return PubDevPackageQuerys(defaultTesult);
      },
    );
  }
}

enum PubDevClientSearchOrder {
  /// Search score should be a weighted value of [text], [popularity], [points]
  /// and [like], ordered decreasing.
  top,

  /// Search score should depend only on text match similarity, ordered
  /// decreasing.
  text,

  /// Search order should be in decreasing last package creation time.
  created,

  /// Search order should be in decreasing last package updated time.
  updated,

  /// Search order should be in decreasing popularity score.
  popularity,

  /// Search order should be in decreasing like count.
  like,

  /// Search order should be in decreasing pub points.
  points;

  const PubDevClientSearchOrder();

  String get value => name;
}
