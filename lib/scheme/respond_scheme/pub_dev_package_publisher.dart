// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PubDevPackagePublisher extends JsonScheme {
  PubDevPackagePublisher(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "pubDevPackagePublisher", "publisherId": null};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackagePublisher
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

  /// create [PubDevPackagePublisher]
  /// Empty
  static PubDevPackagePublisher empty() {
    return PubDevPackagePublisher({});
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

  Object? get publisherid {
    try {
      if (rawData["publisherId"] is Object == false) {
        return null;
      }
      return rawData["publisherId"] as Object;
    } catch (e) {
      return null;
    }
  }

  set publisherid(Object? value) {
    rawData["publisherId"] = value;
  }

  static PubDevPackagePublisher create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackagePublisher",
    Object? publisherid,
  }) {
    // PubDevPackagePublisher pubDevPackagePublisher = PubDevPackagePublisher({
    final Map pubDevPackagePublisher_data_create_json = {
      "@type": special_type,
      "publisherId": publisherid,
    };

    pubDevPackagePublisher_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackagePublisher_data_create_json.containsKey(key) == false) {
          pubDevPackagePublisher_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackagePublisher(pubDevPackagePublisher_data_create_json);
  }
}
