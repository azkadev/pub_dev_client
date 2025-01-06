// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Packages extends JsonScheme {
  Packages(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"package": "flutter_cache_manager", "@type": "packages"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == packages
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

  /// create [Packages]
  /// Empty
  static Packages empty() {
    return Packages({});
  }

  String? get package {
    try {
      if (rawData["package"] is String == false) {
        return null;
      }
      return rawData["package"] as String;
    } catch (e) {
      return null;
    }
  }

  set package(String? value) {
    rawData["package"] = value;
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

  static Packages create({
    bool schemeUtilsIsSetDefaultData = false,
    String? package,
    String special_type = "packages",
  }) {
    // Packages packages = Packages({
    final Map packages_data_create_json = {
      "package": package,
      "@type": special_type,
    };

    packages_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (packages_data_create_json.containsKey(key) == false) {
          packages_data_create_json[key] = value;
        }
      });
    }
    return Packages(packages_data_create_json);
  }
}
