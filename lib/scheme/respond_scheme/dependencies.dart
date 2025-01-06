// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "flutter.dart";

class Dependencies extends JsonScheme {
  Dependencies(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "dependencies",
      "analyzer": ">=7.1.0 <8.0.0",
      "build": "^2.4.2",
      "database_universe_flutter_libs": "0.0.12",
      "ffi": ">=2.1.3 <3.0.0",
      "flutter": {"@type": "flutter", "sdk": "flutter"},
      "general_lib": "^0.0.52",
      "js": "^0.7.1",
      "meta": "^1.15.0",
      "source_gen": "^2.0.0"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == dependencies
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

  /// create [Dependencies]
  /// Empty
  static Dependencies empty() {
    return Dependencies({});
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

  String? get analyzer {
    try {
      if (rawData["analyzer"] is String == false) {
        return null;
      }
      return rawData["analyzer"] as String;
    } catch (e) {
      return null;
    }
  }

  set analyzer(String? value) {
    rawData["analyzer"] = value;
  }

  String? get build {
    try {
      if (rawData["build"] is String == false) {
        return null;
      }
      return rawData["build"] as String;
    } catch (e) {
      return null;
    }
  }

  set build(String? value) {
    rawData["build"] = value;
  }

  String? get database_universe_flutter_libs {
    try {
      if (rawData["database_universe_flutter_libs"] is String == false) {
        return null;
      }
      return rawData["database_universe_flutter_libs"] as String;
    } catch (e) {
      return null;
    }
  }

  set database_universe_flutter_libs(String? value) {
    rawData["database_universe_flutter_libs"] = value;
  }

  String? get ffi {
    try {
      if (rawData["ffi"] is String == false) {
        return null;
      }
      return rawData["ffi"] as String;
    } catch (e) {
      return null;
    }
  }

  set ffi(String? value) {
    rawData["ffi"] = value;
  }

  Flutter get flutter {
    try {
      if (rawData["flutter"] is Map == false) {
        return Flutter({});
      }
      return Flutter(rawData["flutter"] as Map);
    } catch (e) {
      return Flutter({});
    }
  }

  set flutter(Flutter value) {
    rawData["flutter"] = value.toJson();
  }

  String? get general_lib {
    try {
      if (rawData["general_lib"] is String == false) {
        return null;
      }
      return rawData["general_lib"] as String;
    } catch (e) {
      return null;
    }
  }

  set general_lib(String? value) {
    rawData["general_lib"] = value;
  }

  String? get js {
    try {
      if (rawData["js"] is String == false) {
        return null;
      }
      return rawData["js"] as String;
    } catch (e) {
      return null;
    }
  }

  set js(String? value) {
    rawData["js"] = value;
  }

  String? get meta {
    try {
      if (rawData["meta"] is String == false) {
        return null;
      }
      return rawData["meta"] as String;
    } catch (e) {
      return null;
    }
  }

  set meta(String? value) {
    rawData["meta"] = value;
  }

  String? get source_gen {
    try {
      if (rawData["source_gen"] is String == false) {
        return null;
      }
      return rawData["source_gen"] as String;
    } catch (e) {
      return null;
    }
  }

  set source_gen(String? value) {
    rawData["source_gen"] = value;
  }

  static Dependencies create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "dependencies",
    String? analyzer,
    String? build,
    String? database_universe_flutter_libs,
    String? ffi,
    Flutter? flutter,
    String? general_lib,
    String? js,
    String? meta,
    String? source_gen,
  }) {
    // Dependencies dependencies = Dependencies({
    final Map dependencies_data_create_json = {
      "@type": special_type,
      "analyzer": analyzer,
      "build": build,
      "database_universe_flutter_libs": database_universe_flutter_libs,
      "ffi": ffi,
      "flutter": (flutter != null) ? flutter.toJson() : null,
      "general_lib": general_lib,
      "js": js,
      "meta": meta,
      "source_gen": source_gen,
    };

    dependencies_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (dependencies_data_create_json.containsKey(key) == false) {
          dependencies_data_create_json[key] = value;
        }
      });
    }
    return Dependencies(dependencies_data_create_json);
  }
}
