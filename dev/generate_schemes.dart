import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:pub_dev_client/schemes/respond.dart';
import "package:path/path.dart" as path;

extension DirectoryExtension on Directory {
  Directory recreate() {
    if (existsSync()) {
      deleteSync(recursive: true);
    }
    createSync(recursive: true);
    return this;
  }
}

void main(List<String> args) async {
  final Directory directory_lib_scheme =
      Directory(path.join(Directory.current.path, "lib", "scheme"));

  {
    await jsonToScripts(
      pub_dev_client_respond_schemes,
      directory:
          Directory(path.join(directory_lib_scheme.path, "respond_scheme")),
    );
  }

  exit(0);
}
