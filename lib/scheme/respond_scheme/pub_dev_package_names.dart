// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PubDevPackageNames extends JsonScheme {
  PubDevPackageNames(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "pubDevPackageNames",
      "packages": [""],
      "nextUrl": null
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackageNames
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

  /// create [PubDevPackageNames]
  /// Empty
  static PubDevPackageNames empty() {
    return PubDevPackageNames({});
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

  ///
  /// default:
  ///
  ///
  List<String> get packages {
    try {
      if (rawData["packages"] is List == false) {
        return [];
      }
      return (rawData["packages"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set packages(List<String> value) {
    rawData["packages"] = value;
  }

  Object? get nexturl {
    try {
      if (rawData["nextUrl"] is Object == false) {
        return null;
      }
      return rawData["nextUrl"] as Object;
    } catch (e) {
      return null;
    }
  }

  set nexturl(Object? value) {
    rawData["nextUrl"] = value;
  }

  static PubDevPackageNames create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackageNames",
    List<String>? packages,
    Object? nexturl,
  }) {
    // PubDevPackageNames pubDevPackageNames = PubDevPackageNames({
    final Map pubDevPackageNames_data_create_json = {
      "@type": special_type,
      "packages": packages,
      "nextUrl": nexturl,
    };

    pubDevPackageNames_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackageNames_data_create_json.containsKey(key) == false) {
          pubDevPackageNames_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackageNames(pubDevPackageNames_data_create_json);
  }
}
