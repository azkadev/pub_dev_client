// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class MinorRangeWeeklyDownloads extends JsonScheme {
  MinorRangeWeeklyDownloads(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "counts": [
        338,
        13,
        24,
        24,
        21,
        18,
        6,
        5,
        2,
        25,
        12,
        19,
        5,
        7,
        25,
        7,
        8,
        7,
        3,
        3,
        21,
        8,
        15,
        5,
        17,
        13,
        6,
        6,
        16,
        9,
        13,
        7,
        10,
        110,
        50,
        101,
        18,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "versionRange": ">=0.0.0-0 <0.1.0",
      "@type": "minorRangeWeeklyDownloads"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == minorRangeWeeklyDownloads
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

  /// create [MinorRangeWeeklyDownloads]
  /// Empty
  static MinorRangeWeeklyDownloads empty() {
    return MinorRangeWeeklyDownloads({});
  }

  ///
  /// default:
  ///
  ///
  List<num> get counts {
    try {
      if (rawData["counts"] is List == false) {
        return [];
      }
      return (rawData["counts"] as List).cast<num>();
    } catch (e) {
      return [];
    }
  }

  set counts(List<num> value) {
    rawData["counts"] = value;
  }

  String? get versionrange {
    try {
      if (rawData["versionRange"] is String == false) {
        return null;
      }
      return rawData["versionRange"] as String;
    } catch (e) {
      return null;
    }
  }

  set versionrange(String? value) {
    rawData["versionRange"] = value;
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

  static MinorRangeWeeklyDownloads create({
    bool schemeUtilsIsSetDefaultData = false,
    List<num>? counts,
    String? versionrange,
    String special_type = "minorRangeWeeklyDownloads",
  }) {
    // MinorRangeWeeklyDownloads minorRangeWeeklyDownloads = MinorRangeWeeklyDownloads({
    final Map minorRangeWeeklyDownloads_data_create_json = {
      "counts": counts,
      "versionRange": versionrange,
      "@type": special_type,
    };

    minorRangeWeeklyDownloads_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (minorRangeWeeklyDownloads_data_create_json.containsKey(key) ==
            false) {
          minorRangeWeeklyDownloads_data_create_json[key] = value;
        }
      });
    }
    return MinorRangeWeeklyDownloads(
        minorRangeWeeklyDownloads_data_create_json);
  }
}
