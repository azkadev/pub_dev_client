// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "packages.dart";

class PubDevPackageQuerys extends JsonScheme {
  PubDevPackageQuerys(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "pubDevPackageQuerys",
      "packages": [
        {"package": "firebase_core"},
        {"package": "cloud_firestore"},
        {"package": "font_awesome_flutter"},
        {"package": "flutter_inappwebview"},
        {"package": "sqflite"},
        {"package": "webdriver"},
        {"package": "firebase_database"},
        {"package": "hive"},
        {"package": "get_storage"},
        {"package": "flutter_cache_manager"}
      ],
      "next": "https://pub.dev/api/search?q=database&page=2&sort=popularity"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackageQuerys
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

  /// create [PubDevPackageQuerys]
  /// Empty
  static PubDevPackageQuerys empty() {
    return PubDevPackageQuerys({});
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

  List<Packages> get packages {
    try {
      if (rawData["packages"] is List == false) {
        return [];
      }
      return (rawData["packages"] as List)
          .map((e) => Packages(e as Map))
          .toList()
          .cast<Packages>();
    } catch (e) {
      return [];
    }
  }

  set packages(List<Packages> values) {
    rawData["packages"] = values.map((value) => value.toJson()).toList();
  }

  String? get next {
    try {
      if (rawData["next"] is String == false) {
        return null;
      }
      return rawData["next"] as String;
    } catch (e) {
      return null;
    }
  }

  set next(String? value) {
    rawData["next"] = value;
  }

  static PubDevPackageQuerys create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackageQuerys",
    List<Packages>? packages,
    String? next,
  }) {
    // PubDevPackageQuerys pubDevPackageQuerys = PubDevPackageQuerys({
    final Map pubDevPackageQuerys_data_create_json = {
      "@type": special_type,
      "packages": (packages != null) ? packages.toJson() : null,
      "next": next,
    };

    pubDevPackageQuerys_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackageQuerys_data_create_json.containsKey(key) == false) {
          pubDevPackageQuerys_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackageQuerys(pubDevPackageQuerys_data_create_json);
  }
}
