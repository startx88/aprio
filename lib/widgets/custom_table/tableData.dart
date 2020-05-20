import 'package:flutter/material.dart';

List<DataRow> getTableData(
  List<Map<String, dynamic>> data,
  List<String> keys,
  Function selectedRow,
  Function onSelect,
) {
  return data
      .map(
        (item) => DataRow(
          selected: selectedRow(item),
          onSelectChanged: (value) {
            onSelect(value, item);
          },
          cells: keys
              .map(
                (key) => DataCell(
                  Text(
                    item['$key'].toString(),
                  ),
                ),
              )
              .toList(),
        ),
      )
      .toList();
}
