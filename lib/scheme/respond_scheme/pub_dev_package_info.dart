// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "latest.dart";
import "versions.dart";

class PubDevPackageInfo extends JsonScheme {
  PubDevPackageInfo(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "pubDevPackageInfo",
      "name": "database_universe",
      "latest": {
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
      },
      "versions": [
        {
          "version": "0.0.0",
          "pubspec": {
            "name": "database_universe",
            "description":
                "Database Universe Library for help you create project flutter or dart",
            "version": "0.0.0",
            "homepage": "https://github.com/azkadev/database_universe",
            "repository": "https://github.com/azkadev/database_universe",
            "issue_tracker":
                "https://github.com/azkadev/database_universe/issues",
            "documentation":
                "https://github.com/azkadev/database_universe/tree/main/docs",
            "funding": ["https://github.com/sponsors/azkadev"],
            "platforms": {
              "android": null,
              "ios": null,
              "linux": null,
              "macos": null,
              "web": null,
              "windows": null
            },
            "environment": {"sdk": "^3.2.3"},
            "dependencies": null,
            "dev_dependencies": {"lints": "^2.1.0", "test": "^1.24.0"}
          },
          "archive_url":
              "https://pub.dev/api/archives/database_universe-0.0.0.tar.gz",
          "archive_sha256":
              "203d1d732243c1c35faff54ff6fe18d74c0c95cb04d38abe4c7c677f85115fb8",
          "published": "2024-04-27T12:50:12.608279Z"
        }
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubDevPackageInfo
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

  /// create [PubDevPackageInfo]
  /// Empty
  static PubDevPackageInfo empty() {
    return PubDevPackageInfo({});
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

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  set name(String? value) {
    rawData["name"] = value;
  }

  Latest get latest {
    try {
      if (rawData["latest"] is Map == false) {
        return Latest({});
      }
      return Latest(rawData["latest"] as Map);
    } catch (e) {
      return Latest({});
    }
  }

  set latest(Latest value) {
    rawData["latest"] = value.toJson();
  }

  List<Versions> get versions {
    try {
      if (rawData["versions"] is List == false) {
        return [];
      }
      return (rawData["versions"] as List)
          .map((e) => Versions(e as Map))
          .toList()
          .cast<Versions>();
    } catch (e) {
      return [];
    }
  }

  set versions(List<Versions> values) {
    rawData["versions"] = values.map((value) => value.toJson()).toList();
  }

  static PubDevPackageInfo create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubDevPackageInfo",
    String? name,
    Latest? latest,
    List<Versions>? versions,
  }) {
    // PubDevPackageInfo pubDevPackageInfo = PubDevPackageInfo({
    final Map pubDevPackageInfo_data_create_json = {
      "@type": special_type,
      "name": name,
      "latest": (latest != null) ? latest.toJson() : null,
      "versions": (versions != null) ? versions.toJson() : null,
    };

    pubDevPackageInfo_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubDevPackageInfo_data_create_json.containsKey(key) == false) {
          pubDevPackageInfo_data_create_json[key] = value;
        }
      });
    }
    return PubDevPackageInfo(pubDevPackageInfo_data_create_json);
  }
}
