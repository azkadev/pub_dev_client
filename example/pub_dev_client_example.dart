import 'dart:io';

import 'package:general_lib/extension/dynamic.dart';
import 'package:pub_dev_client/pub_dev_client.dart';

void main(List<String> args) async {
  PubDevClient pubDevClient = PubDevClient();
  final result =
      await pubDevClient.getPackageOptions(packageName: "database_universe");
  result.toJson().printPretty();
  exit(0);
}
