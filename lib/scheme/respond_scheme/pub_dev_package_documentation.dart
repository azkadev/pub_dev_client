// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "versions.dart";

class PubDevPackageDocumentation extends JsonScheme {
  PubDevPackageDocumentation(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "pubDevPackageDocumentation",
      "name": "database_universe",
      "versions": [
        {"version": "0.0.11", "status": "completed", "hasDocumentation": true}
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackageDocumentation
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

  /// create [PubDevPackageDocumentation]
  /// Empty
  static PubDevPackageDocumentation empty() {
    return PubDevPackageDocumentation({});
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

  List<Versions> get versions {
    try {
      if (rawData["versions"] is List == false) {
        return [];
      }
      return (rawData["versions"] as List)
          .map((e) => Versions(e as Map))
          .toList()
          .cast<Versions>();
    } catch (e) {
      return [];
    }
  }

  set versions(List<Versions> values) {
    rawData["versions"] = values.map((value) => value.toJson()).toList();
  }

  static PubDevPackageDocumentation create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackageDocumentation",
    String? name,
    List<Versions>? versions,
  }) {
    // PubDevPackageDocumentation pubDevPackageDocumentation = PubDevPackageDocumentation({
    final Map pubDevPackageDocumentation_data_create_json = {
      "@type": special_type,
      "name": name,
      "versions": (versions != null) ? versions.toJson() : null,
    };

    pubDevPackageDocumentation_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackageDocumentation_data_create_json.containsKey(key) ==
            false) {
          pubDevPackageDocumentation_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackageDocumentation(
        pubDevPackageDocumentation_data_create_json);
  }
}
