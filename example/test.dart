import 'dart:io';

import 'package:general_lib/extension/dynamic.dart';
import 'package:pub_dev_client/pub_dev_client.dart';

void main(List<String> args) async {
  PubDevClient pubDevClient = PubDevClient();
  final result = await pubDevClient.searchPackage(
    query: "database",
    page: 1,
    sort: PubDevClientSearchOrder.popularity,
    // packageVersion: "0.0.12",
  );
  result.toJson().printPretty();
  exit(0);
}
