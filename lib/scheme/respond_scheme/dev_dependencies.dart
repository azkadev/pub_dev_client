// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class DevDependencies extends JsonScheme {
  DevDependencies(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "dev_dependencies",
      "build_test": "^2.2.3",
      "ffigen": "^12.0.0",
      "flutter_lints": "^5.0.0",
      "test": "any",
      "very_good_analysis": "^5.1.0",
      "lints": "^2.1.0"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == dev_dependencies
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

  /// create [DevDependencies]
  /// Empty
  static DevDependencies empty() {
    return DevDependencies({});
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

  String? get build_test {
    try {
      if (rawData["build_test"] is String == false) {
        return null;
      }
      return rawData["build_test"] as String;
    } catch (e) {
      return null;
    }
  }

  set build_test(String? value) {
    rawData["build_test"] = value;
  }

  String? get ffigen {
    try {
      if (rawData["ffigen"] is String == false) {
        return null;
      }
      return rawData["ffigen"] as String;
    } catch (e) {
      return null;
    }
  }

  set ffigen(String? value) {
    rawData["ffigen"] = value;
  }

  String? get flutter_lints {
    try {
      if (rawData["flutter_lints"] is String == false) {
        return null;
      }
      return rawData["flutter_lints"] as String;
    } catch (e) {
      return null;
    }
  }

  set flutter_lints(String? value) {
    rawData["flutter_lints"] = value;
  }

  String? get test {
    try {
      if (rawData["test"] is String == false) {
        return null;
      }
      return rawData["test"] as String;
    } catch (e) {
      return null;
    }
  }

  set test(String? value) {
    rawData["test"] = value;
  }

  String? get very_good_analysis {
    try {
      if (rawData["very_good_analysis"] is String == false) {
        return null;
      }
      return rawData["very_good_analysis"] as String;
    } catch (e) {
      return null;
    }
  }

  set very_good_analysis(String? value) {
    rawData["very_good_analysis"] = value;
  }

  String? get lints {
    try {
      if (rawData["lints"] is String == false) {
        return null;
      }
      return rawData["lints"] as String;
    } catch (e) {
      return null;
    }
  }

  set lints(String? value) {
    rawData["lints"] = value;
  }

  static DevDependencies create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "dev_dependencies",
    String? build_test,
    String? ffigen,
    String? flutter_lints,
    String? test,
    String? very_good_analysis,
    String? lints,
  }) {
    // DevDependencies devDependencies = DevDependencies({
    final Map devDependencies_data_create_json = {
      "@type": special_type,
      "build_test": build_test,
      "ffigen": ffigen,
      "flutter_lints": flutter_lints,
      "test": test,
      "very_good_analysis": very_good_analysis,
      "lints": lints,
    };

    devDependencies_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (devDependencies_data_create_json.containsKey(key) == false) {
          devDependencies_data_create_json[key] = value;
        }
      });
    }
    return DevDependencies(devDependencies_data_create_json);
  }
}
