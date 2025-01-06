// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class FlutterVersions extends JsonScheme {
  FlutterVersions(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "flutterVersions",
      "frameworkVersion": "3.27.0",
      "channel": "stable",
      "repositoryUrl": "https://github.com/flutter/flutter.git",
      "frameworkRevision": "8495dee1fd4aacbe9de707e7581203232f591b2f",
      "frameworkCommitDate": "2024-12-10 14:23:39 -0800",
      "engineRevision": "83bacfc52569459a4a654727cad2546820cb0d6a",
      "dartSdkVersion": "3.6.0",
      "devToolsVersion": "2.40.2",
      "flutterVersion": "3.27.0",
      "flutterRoot": "/home/worker/flutter/stable"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == flutterVersions
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

  /// create [FlutterVersions]
  /// Empty
  static FlutterVersions empty() {
    return FlutterVersions({});
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

  String? get frameworkversion {
    try {
      if (rawData["frameworkVersion"] is String == false) {
        return null;
      }
      return rawData["frameworkVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set frameworkversion(String? value) {
    rawData["frameworkVersion"] = value;
  }

  String? get channel {
    try {
      if (rawData["channel"] is String == false) {
        return null;
      }
      return rawData["channel"] as String;
    } catch (e) {
      return null;
    }
  }

  set channel(String? value) {
    rawData["channel"] = value;
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

  String? get frameworkrevision {
    try {
      if (rawData["frameworkRevision"] is String == false) {
        return null;
      }
      return rawData["frameworkRevision"] as String;
    } catch (e) {
      return null;
    }
  }

  set frameworkrevision(String? value) {
    rawData["frameworkRevision"] = value;
  }

  String? get frameworkcommitdate {
    try {
      if (rawData["frameworkCommitDate"] is String == false) {
        return null;
      }
      return rawData["frameworkCommitDate"] as String;
    } catch (e) {
      return null;
    }
  }

  set frameworkcommitdate(String? value) {
    rawData["frameworkCommitDate"] = value;
  }

  String? get enginerevision {
    try {
      if (rawData["engineRevision"] is String == false) {
        return null;
      }
      return rawData["engineRevision"] as String;
    } catch (e) {
      return null;
    }
  }

  set enginerevision(String? value) {
    rawData["engineRevision"] = value;
  }

  String? get dartsdkversion {
    try {
      if (rawData["dartSdkVersion"] is String == false) {
        return null;
      }
      return rawData["dartSdkVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set dartsdkversion(String? value) {
    rawData["dartSdkVersion"] = value;
  }

  String? get devtoolsversion {
    try {
      if (rawData["devToolsVersion"] is String == false) {
        return null;
      }
      return rawData["devToolsVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set devtoolsversion(String? value) {
    rawData["devToolsVersion"] = value;
  }

  String? get flutterversion {
    try {
      if (rawData["flutterVersion"] is String == false) {
        return null;
      }
      return rawData["flutterVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set flutterversion(String? value) {
    rawData["flutterVersion"] = value;
  }

  String? get flutterroot {
    try {
      if (rawData["flutterRoot"] is String == false) {
        return null;
      }
      return rawData["flutterRoot"] as String;
    } catch (e) {
      return null;
    }
  }

  set flutterroot(String? value) {
    rawData["flutterRoot"] = value;
  }

  static FlutterVersions create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "flutterVersions",
    String? frameworkversion,
    String? channel,
    String? repositoryurl,
    String? frameworkrevision,
    String? frameworkcommitdate,
    String? enginerevision,
    String? dartsdkversion,
    String? devtoolsversion,
    String? flutterversion,
    String? flutterroot,
  }) {
    // FlutterVersions flutterVersions = FlutterVersions({
    final Map flutterVersions_data_create_json = {
      "@type": special_type,
      "frameworkVersion": frameworkversion,
      "channel": channel,
      "repositoryUrl": repositoryurl,
      "frameworkRevision": frameworkrevision,
      "frameworkCommitDate": frameworkcommitdate,
      "engineRevision": enginerevision,
      "dartSdkVersion": dartsdkversion,
      "devToolsVersion": devtoolsversion,
      "flutterVersion": flutterversion,
      "flutterRoot": flutterroot,
    };

    flutterVersions_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (flutterVersions_data_create_json.containsKey(key) == false) {
          flutterVersions_data_create_json[key] = value;
        }
      });
    }
    return FlutterVersions(flutterVersions_data_create_json);
  }
}
