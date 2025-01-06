// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PatchRangeWeeklyDownloads extends JsonScheme {
  PatchRangeWeeklyDownloads(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "counts": [
        14,
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
      "versionRange": ">=0.0.12-0 <0.0.13",
      "@type": "patchRangeWeeklyDownloads"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == patchRangeWeeklyDownloads
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

  /// create [PatchRangeWeeklyDownloads]
  /// Empty
  static PatchRangeWeeklyDownloads empty() {
    return PatchRangeWeeklyDownloads({});
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

  static PatchRangeWeeklyDownloads create({
    bool schemeUtilsIsSetDefaultData = false,
    List<num>? counts,
    String? versionrange,
    String special_type = "patchRangeWeeklyDownloads",
  }) {
    // PatchRangeWeeklyDownloads patchRangeWeeklyDownloads = PatchRangeWeeklyDownloads({
    final Map patchRangeWeeklyDownloads_data_create_json = {
      "counts": counts,
      "versionRange": versionrange,
      "@type": special_type,
    };

    patchRangeWeeklyDownloads_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (patchRangeWeeklyDownloads_data_create_json.containsKey(key) ==
            false) {
          patchRangeWeeklyDownloads_data_create_json[key] = value;
        }
      });
    }
    return PatchRangeWeeklyDownloads(
        patchRangeWeeklyDownloads_data_create_json);
  }
}
