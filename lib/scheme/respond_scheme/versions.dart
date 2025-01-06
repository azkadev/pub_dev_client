// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "pubspec.dart";

class Versions extends JsonScheme {
  Versions(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "version": "0.0.0",
      "status": "completed",
      "hasDocumentation": true,
      "@type": "versions",
      "pubspec": {
        "@type": "pubspec",
        "name": "database_universe",
        "description":
            "Database Universe Library for help you create project flutter or dart",
        "version": "0.0.0",
        "homepage": "https://github.com/azkadev/database_universe",
        "repository": "https://github.com/azkadev/database_universe",
        "issue_tracker": "https://github.com/azkadev/database_universe/issues",
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
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == versions
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

  /// create [Versions]
  /// Empty
  static Versions empty() {
    return Versions({});
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

  String? get status {
    try {
      if (rawData["status"] is String == false) {
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }

  set status(String? value) {
    rawData["status"] = value;
  }

  bool? get hasdocumentation {
    try {
      if (rawData["hasDocumentation"] is bool == false) {
        return null;
      }
      return rawData["hasDocumentation"] as bool;
    } catch (e) {
      return null;
    }
  }

  set hasdocumentation(bool? value) {
    rawData["hasDocumentation"] = value;
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

  static Versions create({
    bool schemeUtilsIsSetDefaultData = false,
    String? version,
    String? status,
    bool? hasdocumentation,
    String special_type = "versions",
    Pubspec? pubspec,
    String? archive_url,
    String? archive_sha256,
    String? published,
  }) {
    // Versions versions = Versions({
    final Map versions_data_create_json = {
      "version": version,
      "status": status,
      "hasDocumentation": hasdocumentation,
      "@type": special_type,
      "pubspec": (pubspec != null) ? pubspec.toJson() : null,
      "archive_url": archive_url,
      "archive_sha256": archive_sha256,
      "published": published,
    };

    versions_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (versions_data_create_json.containsKey(key) == false) {
          versions_data_create_json[key] = value;
        }
      });
    }
    return Versions(versions_data_create_json);
  }
}
