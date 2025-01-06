// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class DartdocReport extends JsonScheme {
  DartdocReport(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "dartdocReport", "reportStatus": "success"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == dartdocReport
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

  /// create [DartdocReport]
  /// Empty
  static DartdocReport empty() {
    return DartdocReport({});
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

  String? get reportstatus {
    try {
      if (rawData["reportStatus"] is String == false) {
        return null;
      }
      return rawData["reportStatus"] as String;
    } catch (e) {
      return null;
    }
  }

  set reportstatus(String? value) {
    rawData["reportStatus"] = value;
  }

  static DartdocReport create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "dartdocReport",
    String? reportstatus,
  }) {
    // DartdocReport dartdocReport = DartdocReport({
    final Map dartdocReport_data_create_json = {
      "@type": special_type,
      "reportStatus": reportstatus,
    };

    dartdocReport_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (dartdocReport_data_create_json.containsKey(key) == false) {
          dartdocReport_data_create_json[key] = value;
        }
      });
    }
    return DartdocReport(dartdocReport_data_create_json);
  }
}
