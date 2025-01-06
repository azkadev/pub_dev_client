// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "dartdoc_report.dart";
import "pana_report.dart";
import "weekly_version_downloads.dart";

class Scorecard extends JsonScheme {
  Scorecard(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "scorecard",
      "packageName": "database_universe",
      "packageVersion": "0.0.12",
      "runtimeVersion": "2024.12.17",
      "updated": "2025-01-03T02:29:36.041052",
      "dartdocReport": {"@type": "dartdocReport", "reportStatus": "success"},
      "panaReport": {
        "@type": "panaReport",
        "timestamp": "2025-01-03T02:29:36.041052",
        "panaRuntimeInfo": {
          "@type": "panaRuntimeInfo",
          "panaVersion": "0.22.17",
          "sdkVersion": "3.6.0",
          "flutterVersions": {
            "@type": "flutterVersions",
            "frameworkVersion": "3.27.0",
            "channel": "stable",
            "repositoryUrl": "https://github.com/flutter/flutter.git",
            "frameworkRevision": "8495dee1fd4aacbe9de707e7581203232f591b2f",
            "frameworkCommitDate": "2024-12-10 14:23:39 -0800",
            "engineRevision": "83bacfc52569459a4a654727cad2546820cb0d6a",
            "dartSdkVersion": "3.6.0",
            "devToolsVersion": "2.40.2",
            "flutterVersion": "3.27.0",
            "flutterRoot": "/home/worker/flutter/stable"
          }
        },
        "reportStatus": "success",
        "derivedTags": [
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
        "allDependencies": [
          "_fe_analyzer_shared",
          "_macros",
          "analyzer",
          "archive",
          "args",
          "asn1lib",
          "async",
          "build",
          "build_test",
          "characters",
          "charcode",
          "clock",
          "collection",
          "convert",
          "crypto",
          "dart_style",
          "database_universe_flutter_libs",
          "encrypt",
          "ffi",
          "ffigen",
          "file",
          "fixnum",
          "flutter",
          "flutter_lints",
          "general_lib",
          "glob",
          "http",
          "http_parser",
          "image",
          "io",
          "io_universe",
          "js",
          "logging",
          "macros",
          "mason_logger",
          "material_color_utilities",
          "meta",
          "package_config",
          "path",
          "petitparser",
          "pointycastle",
          "posix",
          "pub_semver",
          "qr",
          "sky_engine",
          "source_gen",
          "source_span",
          "stack_trace",
          "string_scanner",
          "term_glyph",
          "test",
          "typed_data",
          "vector_math",
          "very_good_analysis",
          "watcher",
          "web",
          "win32",
          "xml",
          "yaml",
          "zxing2"
        ],
        "licenses": [
          {
            "path": "LICENSE",
            "spdxIdentifier": "Apache-2.0",
            "@type": "licenses"
          }
        ],
        "report": {
          "@type": "report",
          "sections": [
            {
              "id": "dependency",
              "title": "Support up-to-date dependencies",
              "grantedPoints": 40,
              "maxPoints": 40,
              "status": "passed",
              "summary":
                  "### [*] 10/10 points: All of the package dependencies are supported in the latest version\n\n|Package|Constraint|Compatible|Latest|\n|:-|:-|:-|:-|\n|[`analyzer`]|`>=7.1.0 <8.0.0`|7.1.0|7.1.0|\n|[`build`]|`^2.4.2`|2.4.2|2.4.2|\n|[`database_universe_flutter_libs`]|`0.0.12`|0.0.12|0.0.12|\n|[`ffi`]|`>=2.1.3 <3.0.0`|2.1.3|2.1.3|\n|[`flutter`]|`flutter`|0.0.0|0.0.0|\n|[`general_lib`]|`^0.0.52`|0.0.55|0.0.55|\n|[`js`]|`^0.7.1`|0.7.1|0.7.1|\n|[`meta`]|`^1.15.0`|1.15.0|1.16.0|\n|[`source_gen`]|`^2.0.0`|2.0.0|2.0.0|\n\n<details><summary>Transitive dependencies</summary>\n\n|Package|Constraint|Compatible|Latest|\n|:-|:-|:-|:-|\n|[`_fe_analyzer_shared`]|-|78.0.0|78.0.0|\n|[`_macros`]|-|0.3.3|0.3.3|\n|[`archive`]|-|4.0.2|4.0.2|\n|[`args`]|-|2.6.0|2.6.0|\n|[`asn1lib`]|-|1.5.8|1.5.8|\n|[`async`]|-|2.12.0|2.12.0|\n|[`characters`]|-|1.3.0|1.4.0|\n|[`charcode`]|-|1.4.0|1.4.0|\n|[`clock`]|-|1.1.2|1.1.2|\n|[`collection`]|-|1.19.0|1.19.1|\n|[`convert`]|-|3.1.2|3.1.2|\n|[`crypto`]|-|3.0.6|3.0.6|\n|[`dart_style`]|-|3.0.1|3.0.1|\n|[`encrypt`]|-|5.0.3|5.0.3|\n|[`file`]|-|7.0.1|7.0.1|\n|[`fixnum`]|-|1.1.1|1.1.1|\n|[`glob`]|-|2.1.2|2.1.2|\n|[`http`]|-|1.2.2|1.2.2|\n|[`http_parser`]|-|4.1.2|4.1.2|\n|[`image`]|-|4.5.2|4.5.2|\n|[`io`]|-|1.0.5|1.0.5|\n|[`io_universe`]|-|0.0.3|0.0.3|\n|[`logging`]|-|1.3.0|1.3.0|\n|[`macros`]|-|0.1.3-main.0|0.1.3-main.0|\n|[`mason_logger`]|-|0.3.1|0.3.1|\n|[`material_color_utilities`]|-|0.11.1|0.12.0|\n|[`package_config`]|-|2.1.1|2.1.1|\n|[`path`]|-|1.9.1|1.9.1|\n|[`petitparser`]|-|6.0.2|6.0.2|\n|[`pointycastle`]|-|3.9.1|3.9.1|\n|[`posix`]|-|6.0.1|6.0.1|\n|[`pub_semver`]|-|2.1.5|2.1.5|\n|[`qr`]|-|3.0.2|3.0.2|\n|[`sky_engine`]|-|0.0.0|0.0.0|\n|[`source_span`]|-|1.10.1|1.10.1|\n|[`stack_trace`]|-|1.12.1|1.12.1|\n|[`string_scanner`]|-|1.4.1|1.4.1|\n|[`term_glyph`]|-|1.2.2|1.2.2|\n|[`typed_data`]|-|1.4.0|1.4.0|\n|[`vector_math`]|-|2.1.4|2.1.4|\n|[`watcher`]|-|1.1.1|1.1.1|\n|[`web`]|-|1.1.0|1.1.0|\n|[`win32`]|-|5.10.0|5.10.0|\n|[`xml`]|-|6.5.0|6.5.0|\n|[`yaml`]|-|3.1.3|3.1.3|\n|[`zxing2`]|-|0.2.3|0.2.3|\n</details>\n\nTo reproduce run `dart pub outdated --no-dev-dependencies --up-to-date --no-dependency-overrides`.\n\n[`analyzer`]: https://pub.dev/packages/analyzer\n[`build`]: https://pub.dev/packages/build\n[`database_universe_flutter_libs`]: https://pub.dev/packages/database_universe_flutter_libs\n[`ffi`]: https://pub.dev/packages/ffi\n[`flutter`]: https://pub.dev/packages/flutter\n[`general_lib`]: https://pub.dev/packages/general_lib\n[`js`]: https://pub.dev/packages/js\n[`meta`]: https://pub.dev/packages/meta\n[`source_gen`]: https://pub.dev/packages/source_gen\n[`_fe_analyzer_shared`]: https://pub.dev/packages/_fe_analyzer_shared\n[`_macros`]: https://pub.dev/packages/_macros\n[`archive`]: https://pub.dev/packages/archive\n[`args`]: https://pub.dev/packages/args\n[`asn1lib`]: https://pub.dev/packages/asn1lib\n[`async`]: https://pub.dev/packages/async\n[`characters`]: https://pub.dev/packages/characters\n[`charcode`]: https://pub.dev/packages/charcode\n[`clock`]: https://pub.dev/packages/clock\n[`collection`]: https://pub.dev/packages/collection\n[`convert`]: https://pub.dev/packages/convert\n[`crypto`]: https://pub.dev/packages/crypto\n[`dart_style`]: https://pub.dev/packages/dart_style\n[`encrypt`]: https://pub.dev/packages/encrypt\n[`file`]: https://pub.dev/packages/file\n[`fixnum`]: https://pub.dev/packages/fixnum\n[`glob`]: https://pub.dev/packages/glob\n[`http`]: https://pub.dev/packages/http\n[`http_parser`]: https://pub.dev/packages/http_parser\n[`image`]: https://pub.dev/packages/image\n[`io`]: https://pub.dev/packages/io\n[`io_universe`]: https://pub.dev/packages/io_universe\n[`logging`]: https://pub.dev/packages/logging\n[`macros`]: https://pub.dev/packages/macros\n[`mason_logger`]: https://pub.dev/packages/mason_logger\n[`material_color_utilities`]: https://pub.dev/packages/material_color_utilities\n[`package_config`]: https://pub.dev/packages/package_config\n[`path`]: https://pub.dev/packages/path\n[`petitparser`]: https://pub.dev/packages/petitparser\n[`pointycastle`]: https://pub.dev/packages/pointycastle\n[`posix`]: https://pub.dev/packages/posix\n[`pub_semver`]: https://pub.dev/packages/pub_semver\n[`qr`]: https://pub.dev/packages/qr\n[`sky_engine`]: https://pub.dev/packages/sky_engine\n[`source_span`]: https://pub.dev/packages/source_span\n[`stack_trace`]: https://pub.dev/packages/stack_trace\n[`string_scanner`]: https://pub.dev/packages/string_scanner\n[`term_glyph`]: https://pub.dev/packages/term_glyph\n[`typed_data`]: https://pub.dev/packages/typed_data\n[`vector_math`]: https://pub.dev/packages/vector_math\n[`watcher`]: https://pub.dev/packages/watcher\n[`web`]: https://pub.dev/packages/web\n[`win32`]: https://pub.dev/packages/win32\n[`xml`]: https://pub.dev/packages/xml\n[`yaml`]: https://pub.dev/packages/yaml\n[`zxing2`]: https://pub.dev/packages/zxing2\n\n### [*] 10/10 points: Package supports latest stable Dart and Flutter SDKs\n\n### [*] 20/20 points: Compatible with dependency constraint lower bounds\n\n`pub downgrade` does not expose any static analysis error.\n",
              "@type": "sections"
            },
            {
              "id": "documentation",
              "title": "Provide documentation",
              "grantedPoints": 10,
              "maxPoints": 20,
              "status": "failed",
              "summary":
                  "### [x] 0/10 points: 20% or more of the public API has dartdoc comments\n\nOUT:\nDocumenting database_universe...\nDiscovering libraries...\nLinking elements...\nPrecaching local docs for 450053 elements...\nInitialized dartdoc with 964 libraries\nGenerating docs for library database_universe.dart from package:database_universe/database_universe.dart...\nGenerating docs for library flutter/flutter.dart from package:database_universe/flutter/flutter.dart...\nGenerating docs for library core/core.dart from package:database_universe/core/core.dart...\nGenerating docs for library core/core/native/bindings.dart from package:database_universe/core/core/native/bindings.dart...\nGenerating docs for library core/core/native/ffi.dart from package:database_universe/core/core/native/ffi.dart...\n[13 more lines]\nERR:\nwarning: unresolved doc reference [x]\n    from package-database_universe: file:///tmp/pana_LHLSXB\n  warning: unresolved doc reference [ ]\n    from package-database_universe: file:///tmp/pana_LHLSXB\n  error: file already written at \"database_universe/index.html\"\n    for symbol database_universe: (file:///tmp/pana_LHLSXB/lib/core/core.dart:2:9)\n    conflicting with file already generated by database_universe: (file:///tmp/pana_LHLSXB/lib/database_universe.dart:1:1)\n        Dartdoc generates a path and filename to write to for each symbol.\n        'database_universe' conflicts with another symbol in the generated path,\n        and therefore can not be written out.  Changing the name, library name,\n[20 more lines]\n\n### [*] 10/10 points: Package has an example\n",
              "@type": "sections"
            },
            {
              "id": "platform",
              "title": "Platform support",
              "grantedPoints": 20,
              "maxPoints": 20,
              "status": "passed",
              "summary":
                  "### [*] 20/20 points: Supports 6 of 6 possible platforms (**iOS**, **Android**, **Web**, **Windows**, **macOS**, **Linux**)\n\n* ✓ Android\n\n* ✓ iOS\n\n* ✓ Windows\n\n* ✓ Linux\n\n* ✓ macOS\n\n* ✓ Web\n\n### [*] 0/0 points: WASM compatibility\n\nThis package is compatible with runtime `wasm`, and will be rewarded additional points in a future version of the scoring model.\n\nSee https://dart.dev/web/wasm for details.\n",
              "@type": "sections"
            },
            {
              "id": "analysis",
              "title": "Pass static analysis",
              "grantedPoints": 40,
              "maxPoints": 50,
              "status": "partial",
              "summary":
                  "### [~] 40/50 points: code has no errors, warnings, lints, or formatting issues\n\nFound 51 issues. Showing the first 2:\n\n<details>\n<summary>\nINFO: The part-of directive uses a library name.\n</summary>\n\n`lib/core/core/annotations/collection.dart:1:1`\n\n```\n  ╷\n1 │ part of database_universe;\n  │ ^^^^^^^^^^^^^^^^^^^^^^^^^^\n  ╵\n```\n\nTo reproduce make sure you are using the [lints_core](https://pub.dev/packages/lints) and run `flutter analyze lib/core/core/annotations/collection.dart`\n</details>\n\n<details>\n<summary>\nINFO: The part-of directive uses a library name.\n</summary>\n\n`lib/core/core/annotations/embedded.dart:1:1`\n\n```\n  ╷\n1 │ part of database_universe;\n  │ ^^^^^^^^^^^^^^^^^^^^^^^^^^\n  ╵\n```\n\nTo reproduce make sure you are using the [lints_core](https://pub.dev/packages/lints) and run `flutter analyze lib/core/core/annotations/embedded.dart`\n</details>\n",
              "@type": "sections"
            },
            {
              "id": "dependency",
              "title": "Support up-to-date dependencies",
              "grantedPoints": 40,
              "maxPoints": 40,
              "status": "passed",
              "summary":
                  "### [*] 10/10 points: All of the package dependencies are supported in the latest version\n\n|Package|Constraint|Compatible|Latest|\n|:-|:-|:-|:-|\n|[`analyzer`]|`>=7.1.0 <8.0.0`|7.1.0|7.1.0|\n|[`build`]|`^2.4.2`|2.4.2|2.4.2|\n|[`database_universe_flutter_libs`]|`0.0.12`|0.0.12|0.0.12|\n|[`ffi`]|`>=2.1.3 <3.0.0`|2.1.3|2.1.3|\n|[`flutter`]|`flutter`|0.0.0|0.0.0|\n|[`general_lib`]|`^0.0.52`|0.0.55|0.0.55|\n|[`js`]|`^0.7.1`|0.7.1|0.7.1|\n|[`meta`]|`^1.15.0`|1.15.0|1.16.0|\n|[`source_gen`]|`^2.0.0`|2.0.0|2.0.0|\n\n<details><summary>Transitive dependencies</summary>\n\n|Package|Constraint|Compatible|Latest|\n|:-|:-|:-|:-|\n|[`_fe_analyzer_shared`]|-|78.0.0|78.0.0|\n|[`_macros`]|-|0.3.3|0.3.3|\n|[`archive`]|-|4.0.2|4.0.2|\n|[`args`]|-|2.6.0|2.6.0|\n|[`asn1lib`]|-|1.5.8|1.5.8|\n|[`async`]|-|2.12.0|2.12.0|\n|[`characters`]|-|1.3.0|1.4.0|\n|[`charcode`]|-|1.4.0|1.4.0|\n|[`clock`]|-|1.1.2|1.1.2|\n|[`collection`]|-|1.19.0|1.19.1|\n|[`convert`]|-|3.1.2|3.1.2|\n|[`crypto`]|-|3.0.6|3.0.6|\n|[`dart_style`]|-|3.0.1|3.0.1|\n|[`encrypt`]|-|5.0.3|5.0.3|\n|[`file`]|-|7.0.1|7.0.1|\n|[`fixnum`]|-|1.1.1|1.1.1|\n|[`glob`]|-|2.1.2|2.1.2|\n|[`http`]|-|1.2.2|1.2.2|\n|[`http_parser`]|-|4.1.2|4.1.2|\n|[`image`]|-|4.5.2|4.5.2|\n|[`io`]|-|1.0.5|1.0.5|\n|[`io_universe`]|-|0.0.3|0.0.3|\n|[`logging`]|-|1.3.0|1.3.0|\n|[`macros`]|-|0.1.3-main.0|0.1.3-main.0|\n|[`mason_logger`]|-|0.3.1|0.3.1|\n|[`material_color_utilities`]|-|0.11.1|0.12.0|\n|[`package_config`]|-|2.1.1|2.1.1|\n|[`path`]|-|1.9.1|1.9.1|\n|[`petitparser`]|-|6.0.2|6.0.2|\n|[`pointycastle`]|-|3.9.1|3.9.1|\n|[`posix`]|-|6.0.1|6.0.1|\n|[`pub_semver`]|-|2.1.5|2.1.5|\n|[`qr`]|-|3.0.2|3.0.2|\n|[`sky_engine`]|-|0.0.0|0.0.0|\n|[`source_span`]|-|1.10.1|1.10.1|\n|[`stack_trace`]|-|1.12.1|1.12.1|\n|[`string_scanner`]|-|1.4.1|1.4.1|\n|[`term_glyph`]|-|1.2.2|1.2.2|\n|[`typed_data`]|-|1.4.0|1.4.0|\n|[`vector_math`]|-|2.1.4|2.1.4|\n|[`watcher`]|-|1.1.1|1.1.1|\n|[`web`]|-|1.1.0|1.1.0|\n|[`win32`]|-|5.10.0|5.10.0|\n|[`xml`]|-|6.5.0|6.5.0|\n|[`yaml`]|-|3.1.3|3.1.3|\n|[`zxing2`]|-|0.2.3|0.2.3|\n</details>\n\nTo reproduce run `dart pub outdated --no-dev-dependencies --up-to-date --no-dependency-overrides`.\n\n[`analyzer`]: https://pub.dev/packages/analyzer\n[`build`]: https://pub.dev/packages/build\n[`database_universe_flutter_libs`]: https://pub.dev/packages/database_universe_flutter_libs\n[`ffi`]: https://pub.dev/packages/ffi\n[`flutter`]: https://pub.dev/packages/flutter\n[`general_lib`]: https://pub.dev/packages/general_lib\n[`js`]: https://pub.dev/packages/js\n[`meta`]: https://pub.dev/packages/meta\n[`source_gen`]: https://pub.dev/packages/source_gen\n[`_fe_analyzer_shared`]: https://pub.dev/packages/_fe_analyzer_shared\n[`_macros`]: https://pub.dev/packages/_macros\n[`archive`]: https://pub.dev/packages/archive\n[`args`]: https://pub.dev/packages/args\n[`asn1lib`]: https://pub.dev/packages/asn1lib\n[`async`]: https://pub.dev/packages/async\n[`characters`]: https://pub.dev/packages/characters\n[`charcode`]: https://pub.dev/packages/charcode\n[`clock`]: https://pub.dev/packages/clock\n[`collection`]: https://pub.dev/packages/collection\n[`convert`]: https://pub.dev/packages/convert\n[`crypto`]: https://pub.dev/packages/crypto\n[`dart_style`]: https://pub.dev/packages/dart_style\n[`encrypt`]: https://pub.dev/packages/encrypt\n[`file`]: https://pub.dev/packages/file\n[`fixnum`]: https://pub.dev/packages/fixnum\n[`glob`]: https://pub.dev/packages/glob\n[`http`]: https://pub.dev/packages/http\n[`http_parser`]: https://pub.dev/packages/http_parser\n[`image`]: https://pub.dev/packages/image\n[`io`]: https://pub.dev/packages/io\n[`io_universe`]: https://pub.dev/packages/io_universe\n[`logging`]: https://pub.dev/packages/logging\n[`macros`]: https://pub.dev/packages/macros\n[`mason_logger`]: https://pub.dev/packages/mason_logger\n[`material_color_utilities`]: https://pub.dev/packages/material_color_utilities\n[`package_config`]: https://pub.dev/packages/package_config\n[`path`]: https://pub.dev/packages/path\n[`petitparser`]: https://pub.dev/packages/petitparser\n[`pointycastle`]: https://pub.dev/packages/pointycastle\n[`posix`]: https://pub.dev/packages/posix\n[`pub_semver`]: https://pub.dev/packages/pub_semver\n[`qr`]: https://pub.dev/packages/qr\n[`sky_engine`]: https://pub.dev/packages/sky_engine\n[`source_span`]: https://pub.dev/packages/source_span\n[`stack_trace`]: https://pub.dev/packages/stack_trace\n[`string_scanner`]: https://pub.dev/packages/string_scanner\n[`term_glyph`]: https://pub.dev/packages/term_glyph\n[`typed_data`]: https://pub.dev/packages/typed_data\n[`vector_math`]: https://pub.dev/packages/vector_math\n[`watcher`]: https://pub.dev/packages/watcher\n[`web`]: https://pub.dev/packages/web\n[`win32`]: https://pub.dev/packages/win32\n[`xml`]: https://pub.dev/packages/xml\n[`yaml`]: https://pub.dev/packages/yaml\n[`zxing2`]: https://pub.dev/packages/zxing2\n\n### [*] 10/10 points: Package supports latest stable Dart and Flutter SDKs\n\n### [*] 20/20 points: Compatible with dependency constraint lower bounds\n\n`pub downgrade` does not expose any static analysis error.\n",
              "@type": "sections"
            }
          ]
        },
        "result": {
          "@type": "result",
          "homepageUrl": "https://youtube.com/@azkadev",
          "repositoryUrl": "https://github.com/azkadev/database_universe.git",
          "issueTrackerUrl": "https://t.me/DEVELOPER_GLOBAL_PUBLIC",
          "documentationUrl": "https://youtube.com/@azkadev",
          "fundingUrls": [
            "https://github.com/sponsors/azkadev",
            "https://github.com/sponsors/generalfoss"
          ],
          "licenses": [
            {
              "path": "LICENSE",
              "spdxIdentifier": "Apache-2.0",
              "@type": "licenses"
            }
          ],
          "grantedPoints": 130,
          "maxPoints": 160
        },
        "screenshots": [],
        "urlProblems": []
      },
      "taskStatus": "completed",
      "weeklyVersionDownloads": {
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
      }
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == scorecard
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

  /// create [Scorecard]
  /// Empty
  static Scorecard empty() {
    return Scorecard({});
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

  String? get packagename {
    try {
      if (rawData["packageName"] is String == false) {
        return null;
      }
      return rawData["packageName"] as String;
    } catch (e) {
      return null;
    }
  }

  set packagename(String? value) {
    rawData["packageName"] = value;
  }

  String? get packageversion {
    try {
      if (rawData["packageVersion"] is String == false) {
        return null;
      }
      return rawData["packageVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set packageversion(String? value) {
    rawData["packageVersion"] = value;
  }

  String? get runtimeversion {
    try {
      if (rawData["runtimeVersion"] is String == false) {
        return null;
      }
      return rawData["runtimeVersion"] as String;
    } catch (e) {
      return null;
    }
  }

  set runtimeversion(String? value) {
    rawData["runtimeVersion"] = value;
  }

  String? get updated {
    try {
      if (rawData["updated"] is String == false) {
        return null;
      }
      return rawData["updated"] as String;
    } catch (e) {
      return null;
    }
  }

  set updated(String? value) {
    rawData["updated"] = value;
  }

  DartdocReport get dartdocreport {
    try {
      if (rawData["dartdocReport"] is Map == false) {
        return DartdocReport({});
      }
      return DartdocReport(rawData["dartdocReport"] as Map);
    } catch (e) {
      return DartdocReport({});
    }
  }

  set dartdocreport(DartdocReport value) {
    rawData["dartdocReport"] = value.toJson();
  }

  PanaReport get panareport {
    try {
      if (rawData["panaReport"] is Map == false) {
        return PanaReport({});
      }
      return PanaReport(rawData["panaReport"] as Map);
    } catch (e) {
      return PanaReport({});
    }
  }

  set panareport(PanaReport value) {
    rawData["panaReport"] = value.toJson();
  }

  String? get taskstatus {
    try {
      if (rawData["taskStatus"] is String == false) {
        return null;
      }
      return rawData["taskStatus"] as String;
    } catch (e) {
      return null;
    }
  }

  set taskstatus(String? value) {
    rawData["taskStatus"] = value;
  }

  WeeklyVersionDownloads get weeklyversiondownloads {
    try {
      if (rawData["weeklyVersionDownloads"] is Map == false) {
        return WeeklyVersionDownloads({});
      }
      return WeeklyVersionDownloads(rawData["weeklyVersionDownloads"] as Map);
    } catch (e) {
      return WeeklyVersionDownloads({});
    }
  }

  set weeklyversiondownloads(WeeklyVersionDownloads value) {
    rawData["weeklyVersionDownloads"] = value.toJson();
  }

  static Scorecard create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "scorecard",
    String? packagename,
    String? packageversion,
    String? runtimeversion,
    String? updated,
    DartdocReport? dartdocreport,
    PanaReport? panareport,
    String? taskstatus,
    WeeklyVersionDownloads? weeklyversiondownloads,
  }) {
    // Scorecard scorecard = Scorecard({
    final Map scorecard_data_create_json = {
      "@type": special_type,
      "packageName": packagename,
      "packageVersion": packageversion,
      "runtimeVersion": runtimeversion,
      "updated": updated,
      "dartdocReport": (dartdocreport != null) ? dartdocreport.toJson() : null,
      "panaReport": (panareport != null) ? panareport.toJson() : null,
      "taskStatus": taskstatus,
      "weeklyVersionDownloads": (weeklyversiondownloads != null)
          ? weeklyversiondownloads.toJson()
          : null,
    };

    scorecard_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (scorecard_data_create_json.containsKey(key) == false) {
          scorecard_data_create_json[key] = value;
        }
      });
    }
    return Scorecard(scorecard_data_create_json);
  }
}
