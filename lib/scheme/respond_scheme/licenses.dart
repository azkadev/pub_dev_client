// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Licenses extends JsonScheme {
  Licenses(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "path": "LICENSE",
      "spdxIdentifier": "Apache-2.0",
      "@type": "licenses"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == licenses
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

  /// create [Licenses]
  /// Empty
  static Licenses empty() {
    return Licenses({});
  }

  String? get path {
    try {
      if (rawData["path"] is String == false) {
        return null;
      }
      return rawData["path"] as String;
    } catch (e) {
      return null;
    }
  }

  set path(String? value) {
    rawData["path"] = value;
  }

  String? get spdxidentifier {
    try {
      if (rawData["spdxIdentifier"] is String == false) {
        return null;
      }
      return rawData["spdxIdentifier"] as String;
    } catch (e) {
      return null;
    }
  }

  set spdxidentifier(String? value) {
    rawData["spdxIdentifier"] = value;
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

  static Licenses create({
    bool schemeUtilsIsSetDefaultData = false,
    String? path,
    String? spdxidentifier,
    String special_type = "licenses",
  }) {
    // Licenses licenses = Licenses({
    final Map licenses_data_create_json = {
      "path": path,
      "spdxIdentifier": spdxidentifier,
      "@type": special_type,
    };

    licenses_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (licenses_data_create_json.containsKey(key) == false) {
          licenses_data_create_json[key] = value;
        }
      });
    }
    return Licenses(licenses_data_create_json);
  }
}
