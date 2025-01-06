// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "flutter_versions.dart";

class PanaRuntimeInfo extends JsonScheme {
  PanaRuntimeInfo(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "panaRuntimeInfo",
      "panaVersion": "0.22.17",
      "sdkVersion": "3.6.0",
      "flutterVersions": {
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
      }
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == panaRuntimeInfo
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

  /// create [PanaRuntimeInfo]
  /// Empty
  static PanaRuntimeInfo empty() {
    return PanaRuntimeInfo({});
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

  String? get panaversion {
    try {
      if (rawData["panaVersion"] is String == false) {
        return null;
      }
      return rawData["panaVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set panaversion(String? value) {
    rawData["panaVersion"] = value;
  }

  String? get sdkversion {
    try {
      if (rawData["sdkVersion"] is String == false) {
        return null;
      }
      return rawData["sdkVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set sdkversion(String? value) {
    rawData["sdkVersion"] = value;
  }

  FlutterVersions get flutterversions {
    try {
      if (rawData["flutterVersions"] is Map == false) {
        return FlutterVersions({});
      }
      return FlutterVersions(rawData["flutterVersions"] as Map);
    } catch (e) {
      return FlutterVersions({});
    }
  }

  set flutterversions(FlutterVersions value) {
    rawData["flutterVersions"] = value.toJson();
  }

  static PanaRuntimeInfo create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "panaRuntimeInfo",
    String? panaversion,
    String? sdkversion,
    FlutterVersions? flutterversions,
  }) {
    // PanaRuntimeInfo panaRuntimeInfo = PanaRuntimeInfo({
    final Map panaRuntimeInfo_data_create_json = {
      "@type": special_type,
      "panaVersion": panaversion,
      "sdkVersion": sdkversion,
      "flutterVersions":
          (flutterversions != null) ? flutterversions.toJson() : null,
    };

    panaRuntimeInfo_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (panaRuntimeInfo_data_create_json.containsKey(key) == false) {
          panaRuntimeInfo_data_create_json[key] = value;
        }
      });
    }
    return PanaRuntimeInfo(panaRuntimeInfo_data_create_json);
  }
}
