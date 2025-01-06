// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class PubDevPackageScore extends JsonScheme {
  PubDevPackageScore(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "pubDevPackageScore",
      "grantedPoints": 130,
      "maxPoints": 160,
      "likeCount": 2,
      "downloadCount30Days": 403,
      "popularityScore": 0.0,
      "tags": [
        "has:funding-link",
        "has:topic",
        "sdk:flutter",
        "platform:android",
        "platform:ios",
        "platform:windows",
        "platform:linux",
        "platform:macos",
        "platform:web",
        "is:null-safe",
        "is:wasm-ready",
        "is:dart3-compatible",
        "license:apache-2.0",
        "license:fsf-libre",
        "license:osi-approved",
        "topic:database",
        "topic:database-universe",
        "topic:sqlite",
        "topic:encryption",
        "topic:storage"
      ],
      "lastUpdated": "2025-01-03T02:29:36.041052"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackageScore
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

  /// create [PubDevPackageScore]
  /// Empty
  static PubDevPackageScore empty() {
    return PubDevPackageScore({});
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

  num? get grantedpoints {
    try {
      if (rawData["grantedPoints"] is num == false) {
        return null;
      }
      return rawData["grantedPoints"] as num;
    } catch (e) {
      return null;
    }
  }

  set grantedpoints(num? value) {
    rawData["grantedPoints"] = value;
  }

  num? get maxpoints {
    try {
      if (rawData["maxPoints"] is num == false) {
        return null;
      }
      return rawData["maxPoints"] as num;
    } catch (e) {
      return null;
    }
  }

  set maxpoints(num? value) {
    rawData["maxPoints"] = value;
  }

  num? get likecount {
    try {
      if (rawData["likeCount"] is num == false) {
        return null;
      }
      return rawData["likeCount"] as num;
    } catch (e) {
      return null;
    }
  }

  set likecount(num? value) {
    rawData["likeCount"] = value;
  }

  num? get downloadcount30days {
    try {
      if (rawData["downloadCount30Days"] is num == false) {
        return null;
      }
      return rawData["downloadCount30Days"] as num;
    } catch (e) {
      return null;
    }
  }

  set downloadcount30days(num? value) {
    rawData["downloadCount30Days"] = value;
  }

  double? get popularityscore {
    try {
      if (rawData["popularityScore"] is double == false) {
        return null;
      }
      return rawData["popularityScore"] as double;
    } catch (e) {
      return null;
    }
  }

  set popularityscore(double? value) {
    rawData["popularityScore"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<String> get tags {
    try {
      if (rawData["tags"] is List == false) {
        return [];
      }
      return (rawData["tags"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set tags(List<String> value) {
    rawData["tags"] = value;
  }

  String? get lastupdated {
    try {
      if (rawData["lastUpdated"] is String == false) {
        return null;
      }
      return rawData["lastUpdated"] as String;
    } catch (e) {
      return null;
    }
  }

  set lastupdated(String? value) {
    rawData["lastUpdated"] = value;
  }

  static PubDevPackageScore create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackageScore",
    num? grantedpoints,
    num? maxpoints,
    num? likecount,
    num? downloadcount30days,
    double? popularityscore,
    List<String>? tags,
    String? lastupdated,
  }) {
    // PubDevPackageScore pubDevPackageScore = PubDevPackageScore({
    final Map pubDevPackageScore_data_create_json = {
      "@type": special_type,
      "grantedPoints": grantedpoints,
      "maxPoints": maxpoints,
      "likeCount": likecount,
      "downloadCount30Days": downloadcount30days,
      "popularityScore": popularityscore,
      "tags": tags,
      "lastUpdated": lastupdated,
    };

    pubDevPackageScore_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackageScore_data_create_json.containsKey(key) == false) {
          pubDevPackageScore_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackageScore(pubDevPackageScore_data_create_json);
  }
}
