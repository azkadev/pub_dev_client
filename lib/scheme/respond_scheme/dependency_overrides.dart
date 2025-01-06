// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class DependencyOverrides extends JsonScheme {
  DependencyOverrides(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "dependency_overrides",
      "mime": "^2.0.0",
      "pointycastle": "3.8.0"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == dependency_overrides
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

  /// create [DependencyOverrides]
  /// Empty
  static DependencyOverrides empty() {
    return DependencyOverrides({});
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

  String? get mime {
    try {
      if (rawData["mime"] is String == false) {
        return null;
      }
      return rawData["mime"] as String;
    } catch (e) {
      return null;
    }
  }

  set mime(String? value) {
    rawData["mime"] = value;
  }

  String? get pointycastle {
    try {
      if (rawData["pointycastle"] is String == false) {
        return null;
      }
      return rawData["pointycastle"] as String;
    } catch (e) {
      return null;
    }
  }

  set pointycastle(String? value) {
    rawData["pointycastle"] = value;
  }

  static DependencyOverrides create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "dependency_overrides",
    String? mime,
    String? pointycastle,
  }) {
    // DependencyOverrides dependencyOverrides = DependencyOverrides({
    final Map dependencyOverrides_data_create_json = {
      "@type": special_type,
      "mime": mime,
      "pointycastle": pointycastle,
    };

    dependencyOverrides_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (dependencyOverrides_data_create_json.containsKey(key) == false) {
          dependencyOverrides_data_create_json[key] = value;
        }
      });
    }
    return DependencyOverrides(dependencyOverrides_data_create_json);
  }
}
