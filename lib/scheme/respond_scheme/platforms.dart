// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Platforms extends JsonScheme {
  Platforms(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "platforms",
      "android": null,
      "ios": null,
      "linux": null,
      "macos": null,
      "web": null,
      "windows": null
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == platforms
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

  /// create [Platforms]
  /// Empty
  static Platforms empty() {
    return Platforms({});
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

  Object? get android {
    try {
      if (rawData["android"] is Object == false) {
        return null;
      }
      return rawData["android"] as Object;
    } catch (e) {
      return null;
    }
  }

  set android(Object? value) {
    rawData["android"] = value;
  }

  Object? get ios {
    try {
      if (rawData["ios"] is Object == false) {
        return null;
      }
      return rawData["ios"] as Object;
    } catch (e) {
      return null;
    }
  }

  set ios(Object? value) {
    rawData["ios"] = value;
  }

  Object? get linux {
    try {
      if (rawData["linux"] is Object == false) {
        return null;
      }
      return rawData["linux"] as Object;
    } catch (e) {
      return null;
    }
  }

  set linux(Object? value) {
    rawData["linux"] = value;
  }

  Object? get macos {
    try {
      if (rawData["macos"] is Object == false) {
        return null;
      }
      return rawData["macos"] as Object;
    } catch (e) {
      return null;
    }
  }

  set macos(Object? value) {
    rawData["macos"] = value;
  }

  Object? get web {
    try {
      if (rawData["web"] is Object == false) {
        return null;
      }
      return rawData["web"] as Object;
    } catch (e) {
      return null;
    }
  }

  set web(Object? value) {
    rawData["web"] = value;
  }

  Object? get windows {
    try {
      if (rawData["windows"] is Object == false) {
        return null;
      }
      return rawData["windows"] as Object;
    } catch (e) {
      return null;
    }
  }

  set windows(Object? value) {
    rawData["windows"] = value;
  }

  static Platforms create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "platforms",
    Object? android,
    Object? ios,
    Object? linux,
    Object? macos,
    Object? web,
    Object? windows,
  }) {
    // Platforms platforms = Platforms({
    final Map platforms_data_create_json = {
      "@type": special_type,
      "android": android,
      "ios": ios,
      "linux": linux,
      "macos": macos,
      "web": web,
      "windows": windows,
    };

    platforms_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (platforms_data_create_json.containsKey(key) == false) {
          platforms_data_create_json[key] = value;
        }
      });
    }
    return Platforms(platforms_data_create_json);
  }
}
