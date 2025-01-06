// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Flutter extends JsonScheme {
  Flutter(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "flutter", "sdk": "flutter"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == flutter
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

  /// create [Flutter]
  /// Empty
  static Flutter empty() {
    return Flutter({});
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

  static Flutter create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "flutter",
    String? sdk,
  }) {
    // Flutter flutter = Flutter({
    final Map flutter_data_create_json = {
      "@type": special_type,
      "sdk": sdk,
    };

    flutter_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (flutter_data_create_json.containsKey(key) == false) {
          flutter_data_create_json[key] = value;
        }
      });
    }
    return Flutter(flutter_data_create_json);
  }
}
