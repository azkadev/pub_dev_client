// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Environment extends JsonScheme {
  Environment(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "environment", "sdk": ">=3.6.0 <4.0.0"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == environment
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

  /// create [Environment]
  /// Empty
  static Environment empty() {
    return Environment({});
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

  String? get sdk {
    try {
      if (rawData["sdk"] is String == false) {
        return null;
      }
      return rawData["sdk"] as String;
    } catch (e) {
      return null;
    }
  }

  set sdk(String? value) {
    rawData["sdk"] = value;
  }

  static Environment create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "environment",
    String? sdk,
  }) {
    // Environment environment = Environment({
    final Map environment_data_create_json = {
      "@type": special_type,
      "sdk": sdk,
    };

    environment_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (environment_data_create_json.containsKey(key) == false) {
          environment_data_create_json[key] = value;
        }
      });
    }
    return Environment(environment_data_create_json);
  }
}
