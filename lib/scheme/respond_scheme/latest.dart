// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "pubspec.dart";

class Latest extends JsonScheme {
  Latest(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "latest",
      "version": "0.0.12",
      "pubspec": {
        "@type": "pubspec",
        "name": "database_universe",
        "description":
            "Database Universe Library for help you save any data in anywhere with high performance speed, easy feature and ready for scala business",
        "version": "0.0.12",
        "homepage": "https://youtube.com/@azkadev",
        "repository": "https://github.com/azkadev/database_universe.git",
        "issue_tracker": "https://t.me/DEVELOPER_GLOBAL_PUBLIC",
        "documentation": "https://youtube.com/@azkadev",
        "funding": [
          "https://github.com/sponsors/azkadev",
          "https://github.com/sponsors/generalfoss"
        ],
        "topics": [
          "database",
          "database-universe",
          "sqlite",
          "encryption",
          "storage"
        ],
        "environment": {"sdk": ">=3.6.0 <4.0.0"},
        "dependencies": {
          "analyzer": ">=7.1.0 <8.0.0",
          "build": "^2.4.2",
          "database_universe_flutter_libs": "0.0.12",
          "ffi": ">=2.1.3 <3.0.0",
          "flutter": {"sdk": "flutter"},
          "general_lib": "^0.0.52",
          "js": "^0.7.1",
          "meta": "^1.15.0",
          "source_gen": "^2.0.0"
        },
        "dev_dependencies": {
          "build_test": "^2.2.3",
          "ffigen": "^12.0.0",
          "flutter_lints": "^5.0.0",
          "test": "any",
          "very_good_analysis": "^5.1.0"
        },
        "dependency_overrides": {"mime": "^2.0.0", "pointycastle": "3.8.0"}
      },
      "archive_url":
          "https://pub.dev/api/archives/database_universe-0.0.12.tar.gz",
      "archive_sha256":
          "51a00943af40860dc32241ff63c10a321eb23f68015d377208d818d31a6b9eb3",
      "published": "2024-12-31T02:21:57.182202Z"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == latest
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

  /// create [Latest]
  /// Empty
  static Latest empty() {
    return Latest({});
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

  String? get version {
    try {
      if (rawData["version"] is String == false) {
        return null;
      }
      return rawData["version"] as String;
    } catch (e) {
      return null;
    }
  }

  set version(String? value) {
    rawData["version"] = value;
  }

  Pubspec get pubspec {
    try {
      if (rawData["pubspec"] is Map == false) {
        return Pubspec({});
      }
      return Pubspec(rawData["pubspec"] as Map);
    } catch (e) {
      return Pubspec({});
    }
  }

  set pubspec(Pubspec value) {
    rawData["pubspec"] = value.toJson();
  }

  String? get archive_url {
    try {
      if (rawData["archive_url"] is String == false) {
        return null;
      }
      return rawData["archive_url"] as String;
    } catch (e) {
      return null;
    }
  }

  set archive_url(String? value) {
    rawData["archive_url"] = value;
  }

  String? get archive_sha256 {
    try {
      if (rawData["archive_sha256"] is String == false) {
        return null;
      }
      return rawData["archive_sha256"] as String;
    } catch (e) {
      return null;
    }
  }

  set archive_sha256(String? value) {
    rawData["archive_sha256"] = value;
  }

  String? get published {
    try {
      if (rawData["published"] is String == false) {
        return null;
      }
      return rawData["published"] as String;
    } catch (e) {
      return null;
    }
  }

  set published(String? value) {
    rawData["published"] = value;
  }

  static Latest create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "latest",
    String? version,
    Pubspec? pubspec,
    String? archive_url,
    String? archive_sha256,
    String? published,
  }) {
    // Latest latest = Latest({
    final Map latest_data_create_json = {
      "@type": special_type,
      "version": version,
      "pubspec": (pubspec != null) ? pubspec.toJson() : null,
      "archive_url": archive_url,
      "archive_sha256": archive_sha256,
      "published": published,
    };

    latest_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (latest_data_create_json.containsKey(key) == false) {
          latest_data_create_json[key] = value;
        }
      });
    }
    return Latest(latest_data_create_json);
  }
}
