// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PubDevPackageVersions extends JsonScheme {
  PubDevPackageVersions(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "pubDevPackageVersions",
      "name": "database_universe",
      "versions": [
        "0.0.12",
        "0.0.11",
        "0.0.10",
        "0.0.9",
        "0.0.8",
        "0.0.7",
        "0.0.6",
        "0.0.5",
        "0.0.4",
        "0.0.3",
        "0.0.2",
        "0.0.1",
        "0.0.0"
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackageVersions
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

  /// create [PubDevPackageVersions]
  /// Empty
  static PubDevPackageVersions empty() {
    return PubDevPackageVersions({});
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

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  set name(String? value) {
    rawData["name"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<String> get versions {
    try {
      if (rawData["versions"] is List == false) {
        return [];
      }
      return (rawData["versions"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set versions(List<String> value) {
    rawData["versions"] = value;
  }

  static PubDevPackageVersions create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackageVersions",
    String? name,
    List<String>? versions,
  }) {
    // PubDevPackageVersions pubDevPackageVersions = PubDevPackageVersions({
    final Map pubDevPackageVersions_data_create_json = {
      "@type": special_type,
      "name": name,
      "versions": versions,
    };

    pubDevPackageVersions_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackageVersions_data_create_json.containsKey(key) == false) {
          pubDevPackageVersions_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackageVersions(pubDevPackageVersions_data_create_json);
  }
}
