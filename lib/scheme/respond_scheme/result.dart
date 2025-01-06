// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "licenses.dart";

class Result extends JsonScheme {
  Result(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "result",
      "homepageUrl": "https://youtube.com/@azkadev",
      "repositoryUrl": "https://github.com/azkadev/database_universe.git",
      "issueTrackerUrl": "https://t.me/DEVELOPER_GLOBAL_PUBLIC",
      "documentationUrl": "https://youtube.com/@azkadev",
      "fundingUrls": [
        "https://github.com/sponsors/azkadev",
        "https://github.com/sponsors/generalfoss"
      ],
      "licenses": [
        {"path": "LICENSE", "spdxIdentifier": "Apache-2.0", "@type": "licenses"}
      ],
      "grantedPoints": 130,
      "maxPoints": 160
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == result
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Result]
  /// Empty
  static Result empty() {
    return Result({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get homepageurl {
    try {
      if (rawData["homepageUrl"] is String == false) {
        return null;
      }
      return rawData["homepageUrl"] as String;
    } catch (e) {
      return null;
    }
  }

  set homepageurl(String? value) {
    rawData["homepageUrl"] = value;
  }

  String? get repositoryurl {
    try {
      if (rawData["repositoryUrl"] is String == false) {
        return null;
      }
      return rawData["repositoryUrl"] as String;
    } catch (e) {
      return null;
    }
  }

  set repositoryurl(String? value) {
    rawData["repositoryUrl"] = value;
  }

  String? get issuetrackerurl {
    try {
      if (rawData["issueTrackerUrl"] is String == false) {
        return null;
      }
      return rawData["issueTrackerUrl"] as String;
    } catch (e) {
      return null;
    }
  }

  set issuetrackerurl(String? value) {
    rawData["issueTrackerUrl"] = value;
  }

  String? get documentationurl {
    try {
      if (rawData["documentationUrl"] is String == false) {
        return null;
      }
      return rawData["documentationUrl"] as String;
    } catch (e) {
      return null;
    }
  }

  set documentationurl(String? value) {
    rawData["documentationUrl"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<String> get fundingurls {
    try {
      if (rawData["fundingUrls"] is List == false) {
        return [];
      }
      return (rawData["fundingUrls"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set fundingurls(List<String> value) {
    rawData["fundingUrls"] = value;
  }

  List<Licenses> get licenses {
    try {
      if (rawData["licenses"] is List == false) {
        return [];
      }
      return (rawData["licenses"] as List)
          .map((e) => Licenses(e as Map))
          .toList()
          .cast<Licenses>();
    } catch (e) {
      return [];
    }
  }

  set licenses(List<Licenses> values) {
    rawData["licenses"] = values.map((value) => value.toJson()).toList();
  }

  num? get grantedpoints {
    try {
      if (rawData["grantedPoints"] is num == false) {
        return null;
      }
      return rawData["grantedPoints"] as num;
    } catch (e) {
      return null;
    }
  }

  set grantedpoints(num? value) {
    rawData["grantedPoints"] = value;
  }

  num? get maxpoints {
    try {
      if (rawData["maxPoints"] is num == false) {
        return null;
      }
      return rawData["maxPoints"] as num;
    } catch (e) {
      return null;
    }
  }

  set maxpoints(num? value) {
    rawData["maxPoints"] = value;
  }

  static Result create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "result",
    String? homepageurl,
    String? repositoryurl,
    String? issuetrackerurl,
    String? documentationurl,
    List<String>? fundingurls,
    List<Licenses>? licenses,
    num? grantedpoints,
    num? maxpoints,
  }) {
    // Result result = Result({
    final Map result_data_create_json = {
      "@type": special_type,
      "homepageUrl": homepageurl,
      "repositoryUrl": repositoryurl,
      "issueTrackerUrl": issuetrackerurl,
      "documentationUrl": documentationurl,
      "fundingUrls": fundingurls,
      "licenses": (licenses != null) ? licenses.toJson() : null,
      "grantedPoints": grantedpoints,
      "maxPoints": maxpoints,
    };

    result_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (result_data_create_json.containsKey(key) == false) {
          result_data_create_json[key] = value;
        }
      });
    }
    return Result(result_data_create_json);
  }
}
