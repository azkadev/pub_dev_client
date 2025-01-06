// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PubDevPackageOptions extends JsonScheme {
  PubDevPackageOptions(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "pubDevPackageOptions",
      "isDiscontinued": false,
      "replacedBy": null,
      "isUnlisted": false
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackageOptions
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

  /// create [PubDevPackageOptions]
  /// Empty
  static PubDevPackageOptions empty() {
    return PubDevPackageOptions({});
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

  bool? get isdiscontinued {
    try {
      if (rawData["isDiscontinued"] is bool == false) {
        return null;
      }
      return rawData["isDiscontinued"] as bool;
    } catch (e) {
      return null;
    }
  }

  set isdiscontinued(bool? value) {
    rawData["isDiscontinued"] = value;
  }

  Object? get replacedby {
    try {
      if (rawData["replacedBy"] is Object == false) {
        return null;
      }
      return rawData["replacedBy"] as Object;
    } catch (e) {
      return null;
    }
  }

  set replacedby(Object? value) {
    rawData["replacedBy"] = value;
  }

  bool? get isunlisted {
    try {
      if (rawData["isUnlisted"] is bool == false) {
        return null;
      }
      return rawData["isUnlisted"] as bool;
    } catch (e) {
      return null;
    }
  }

  set isunlisted(bool? value) {
    rawData["isUnlisted"] = value;
  }

  static PubDevPackageOptions create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackageOptions",
    bool? isdiscontinued,
    Object? replacedby,
    bool? isunlisted,
  }) {
    // PubDevPackageOptions pubDevPackageOptions = PubDevPackageOptions({
    final Map pubDevPackageOptions_data_create_json = {
      "@type": special_type,
      "isDiscontinued": isdiscontinued,
      "replacedBy": replacedby,
      "isUnlisted": isunlisted,
    };

    pubDevPackageOptions_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackageOptions_data_create_json.containsKey(key) == false) {
          pubDevPackageOptions_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackageOptions(pubDevPackageOptions_data_create_json);
  }
}
