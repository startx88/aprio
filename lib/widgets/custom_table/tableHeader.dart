import 'package:flutter/material.dart';

List<DataColumn> getTableHeader(
  BuildContext context,
  List<Map<String, dynamic>> data,
  Function sortHandler,
) {
  var _keys = data[0].keys;

  print(_keys);

  return _keys.map(
    (name) => DataColumn(
        label: Text(
          name,
          style: Theme.of(context).textTheme.headline6,
        ),
        numeric: false,
        onSort: (a, b) => sortHandler(a, b, name),
        tooltip: 'To display first name of column'),
  );
}
