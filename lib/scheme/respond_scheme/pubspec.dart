// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "environment.dart";
import "dependencies.dart";
import "dev_dependencies.dart";
import "dependency_overrides.dart";
import "platforms.dart";

class Pubspec extends JsonScheme {
  Pubspec(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
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
      "environment": {"@type": "environment", "sdk": ">=3.6.0 <4.0.0"},
      "dependencies": {
        "@type": "dependencies",
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
        "@type": "dev_dependencies",
        "build_test": "^2.2.3",
        "ffigen": "^12.0.0",
        "flutter_lints": "^5.0.0",
        "test": "any",
        "very_good_analysis": "^5.1.0"
      },
      "dependency_overrides": {
        "@type": "dependency_overrides",
        "mime": "^2.0.0",
        "pointycastle": "3.8.0"
      },
      "platforms": {
        "@type": "platforms",
        "android": null,
        "ios": null,
        "linux": null,
        "macos": null,
        "web": null,
        "windows": null
      }
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == pubspec
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

  /// create [Pubspec]
  /// Empty
  static Pubspec empty() {
    return Pubspec({});
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

  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }

  set description(String? value) {
    rawData["description"] = value;
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

  String? get homepage {
    try {
      if (rawData["homepage"] is String == false) {
        return null;
      }
      return rawData["homepage"] as String;
    } catch (e) {
      return null;
    }
  }

  set homepage(String? value) {
    rawData["homepage"] = value;
  }

  String? get repository {
    try {
      if (rawData["repository"] is String == false) {
        return null;
      }
      return rawData["repository"] as String;
    } catch (e) {
      return null;
    }
  }

  set repository(String? value) {
    rawData["repository"] = value;
  }

  String? get issue_tracker {
    try {
      if (rawData["issue_tracker"] is String == false) {
        return null;
      }
      return rawData["issue_tracker"] as String;
    } catch (e) {
      return null;
    }
  }

  set issue_tracker(String? value) {
    rawData["issue_tracker"] = value;
  }

  String? get documentation {
    try {
      if (rawData["documentation"] is String == false) {
        return null;
      }
      return rawData["documentation"] as String;
    } catch (e) {
      return null;
    }
  }

  set documentation(String? value) {
    rawData["documentation"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<String> get funding {
    try {
      if (rawData["funding"] is List == false) {
        return [];
      }
      return (rawData["funding"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set funding(List<String> value) {
    rawData["funding"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<String> get topics {
    try {
      if (rawData["topics"] is List == false) {
        return [];
      }
      return (rawData["topics"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  set topics(List<String> value) {
    rawData["topics"] = value;
  }

  Environment get environment {
    try {
      if (rawData["environment"] is Map == false) {
        return Environment({});
      }
      return Environment(rawData["environment"] as Map);
    } catch (e) {
      return Environment({});
    }
  }

  set environment(Environment value) {
    rawData["environment"] = value.toJson();
  }

  Dependencies get dependencies {
    try {
      if (rawData["dependencies"] is Map == false) {
        return Dependencies({});
      }
      return Dependencies(rawData["dependencies"] as Map);
    } catch (e) {
      return Dependencies({});
    }
  }

  set dependencies(Dependencies value) {
    rawData["dependencies"] = value.toJson();
  }

  DevDependencies get dev_dependencies {
    try {
      if (rawData["dev_dependencies"] is Map == false) {
        return DevDependencies({});
      }
      return DevDependencies(rawData["dev_dependencies"] as Map);
    } catch (e) {
      return DevDependencies({});
    }
  }

  set dev_dependencies(DevDependencies value) {
    rawData["dev_dependencies"] = value.toJson();
  }

  DependencyOverrides get dependency_overrides {
    try {
      if (rawData["dependency_overrides"] is Map == false) {
        return DependencyOverrides({});
      }
      return DependencyOverrides(rawData["dependency_overrides"] as Map);
    } catch (e) {
      return DependencyOverrides({});
    }
  }

  set dependency_overrides(DependencyOverrides value) {
    rawData["dependency_overrides"] = value.toJson();
  }

  Platforms get platforms {
    try {
      if (rawData["platforms"] is Map == false) {
        return Platforms({});
      }
      return Platforms(rawData["platforms"] as Map);
    } catch (e) {
      return Platforms({});
    }
  }

  set platforms(Platforms value) {
    rawData["platforms"] = value.toJson();
  }

  static Pubspec create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "pubspec",
    String? name,
    String? description,
    String? version,
    String? homepage,
    String? repository,
    String? issue_tracker,
    String? documentation,
    List<String>? funding,
    List<String>? topics,
    Environment? environment,
    Dependencies? dependencies,
    DevDependencies? dev_dependencies,
    DependencyOverrides? dependency_overrides,
    Platforms? platforms,
  }) {
    // Pubspec pubspec = Pubspec({
    final Map pubspec_data_create_json = {
      "@type": special_type,
      "name": name,
      "description": description,
      "version": version,
      "homepage": homepage,
      "repository": repository,
      "issue_tracker": issue_tracker,
      "documentation": documentation,
      "funding": funding,
      "topics": topics,
      "environment": (environment != null) ? environment.toJson() : null,
      "dependencies": (dependencies != null) ? dependencies.toJson() : null,
      "dev_dependencies":
          (dev_dependencies != null) ? dev_dependencies.toJson() : null,
      "dependency_overrides":
          (dependency_overrides != null) ? dependency_overrides.toJson() : null,
      "platforms": (platforms != null) ? platforms.toJson() : null,
    };

    pubspec_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (pubspec_data_create_json.containsKey(key) == false) {
          pubspec_data_create_json[key] = value;
        }
      });
    }
    return Pubspec(pubspec_data_create_json);
  }
}
