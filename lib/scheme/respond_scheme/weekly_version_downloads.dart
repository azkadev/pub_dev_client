// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "major_range_weekly_downloads.dart";
import "minor_range_weekly_downloads.dart";
import "patch_range_weekly_downloads.dart";

class WeeklyVersionDownloads extends JsonScheme {
  WeeklyVersionDownloads(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "weeklyVersionDownloads",
      "totalWeeklyDownloads": [
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
      "majorRangeWeeklyDownloads": [
        {
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
          "versionRange": ">=0.0.0-0 <1.0.0",
          "@type": "majorRangeWeeklyDownloads"
        }
      ],
      "minorRangeWeeklyDownloads": [
        {
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
        }
      ],
      "patchRangeWeeklyDownloads": [
        {
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
        },
        {
          "counts": [
            12,
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
          "versionRange": ">=0.0.9-0 <0.0.10",
          "@type": "patchRangeWeeklyDownloads"
        },
        {
          "counts": [
            12,
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
          "versionRange": ">=0.0.10-0 <0.0.11",
          "@type": "patchRangeWeeklyDownloads"
        },
        {
          "counts": [
            34,
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
          "versionRange": ">=0.0.11-0 <0.0.12",
          "@type": "patchRangeWeeklyDownloads"
        },
        {
          "counts": [
            202,
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
        }
      ],
      "newestDate": "2025-01-04T00:00:00.000"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == weeklyVersionDownloads
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

  /// create [WeeklyVersionDownloads]
  /// Empty
  static WeeklyVersionDownloads empty() {
    return WeeklyVersionDownloads({});
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
  List<num> get totalweeklydownloads {
    try {
      if (rawData["totalWeeklyDownloads"] is List == false) {
        return [];
      }
      return (rawData["totalWeeklyDownloads"] as List).cast<num>();
    } catch (e) {
      return [];
    }
  }

  set totalweeklydownloads(List<num> value) {
    rawData["totalWeeklyDownloads"] = value;
  }

  List<MajorRangeWeeklyDownloads> get majorrangeweeklydownloads {
    try {
      if (rawData["majorRangeWeeklyDownloads"] is List == false) {
        return [];
      }
      return (rawData["majorRangeWeeklyDownloads"] as List)
          .map((e) => MajorRangeWeeklyDownloads(e as Map))
          .toList()
          .cast<MajorRangeWeeklyDownloads>();
    } catch (e) {
      return [];
    }
  }

  set majorrangeweeklydownloads(List<MajorRangeWeeklyDownloads> values) {
    rawData["majorRangeWeeklyDownloads"] =
        values.map((value) => value.toJson()).toList();
  }

  List<MinorRangeWeeklyDownloads> get minorrangeweeklydownloads {
    try {
      if (rawData["minorRangeWeeklyDownloads"] is List == false) {
        return [];
      }
      return (rawData["minorRangeWeeklyDownloads"] as List)
          .map((e) => MinorRangeWeeklyDownloads(e as Map))
          .toList()
          .cast<MinorRangeWeeklyDownloads>();
    } catch (e) {
      return [];
    }
  }

  set minorrangeweeklydownloads(List<MinorRangeWeeklyDownloads> values) {
    rawData["minorRangeWeeklyDownloads"] =
        values.map((value) => value.toJson()).toList();
  }

  List<PatchRangeWeeklyDownloads> get patchrangeweeklydownloads {
    try {
      if (rawData["patchRangeWeeklyDownloads"] is List == false) {
        return [];
      }
      return (rawData["patchRangeWeeklyDownloads"] as List)
          .map((e) => PatchRangeWeeklyDownloads(e as Map))
          .toList()
          .cast<PatchRangeWeeklyDownloads>();
    } catch (e) {
      return [];
    }
  }

  set patchrangeweeklydownloads(List<PatchRangeWeeklyDownloads> values) {
    rawData["patchRangeWeeklyDownloads"] =
        values.map((value) => value.toJson()).toList();
  }

  String? get newestdate {
    try {
      if (rawData["newestDate"] is String == false) {
        return null;
      }
      return rawData["newestDate"] as String;
    } catch (e) {
      return null;
    }
  }

  set newestdate(String? value) {
    rawData["newestDate"] = value;
  }

  static WeeklyVersionDownloads create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "weeklyVersionDownloads",
    List<num>? totalweeklydownloads,
    List<MajorRangeWeeklyDownloads>? majorrangeweeklydownloads,
    List<MinorRangeWeeklyDownloads>? minorrangeweeklydownloads,
    List<PatchRangeWeeklyDownloads>? patchrangeweeklydownloads,
    String? newestdate,
  }) {
    // WeeklyVersionDownloads weeklyVersionDownloads = WeeklyVersionDownloads({
    final Map weeklyVersionDownloads_data_create_json = {
      "@type": special_type,
      "totalWeeklyDownloads": totalweeklydownloads,
      "majorRangeWeeklyDownloads": (majorrangeweeklydownloads != null)
          ? majorrangeweeklydownloads.toJson()
          : null,
      "minorRangeWeeklyDownloads": (minorrangeweeklydownloads != null)
          ? minorrangeweeklydownloads.toJson()
          : null,
      "patchRangeWeeklyDownloads": (patchrangeweeklydownloads != null)
          ? patchrangeweeklydownloads.toJson()
          : null,
      "newestDate": newestdate,
    };

    weeklyVersionDownloads_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (weeklyVersionDownloads_data_create_json.containsKey(key) == false) {
          weeklyVersionDownloads_data_create_json[key] = value;
        }
      });
    }
    return WeeklyVersionDownloads(weeklyVersionDownloads_data_create_json);
  }
}
