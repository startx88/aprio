import 'package:aprio/widgets/custom_table/search_sort_strip.dart';
import 'package:aprio/widgets/custom_table/tableTitle.dart';
import 'package:aprio/widgets/custom_table/table_info.dart';
import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  final String title;
  final List<Map<String, dynamic>> data;
  CustomTable({this.title, this.data});
  @override
  _CustomTableState createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  bool sort;
  int sortIndex;
  List<Map<String, dynamic>> selectedContact;

  @override
  void initState() {
    sort = false;
    sortIndex = 0;
    selectedContact = [];
    super.initState();
  }

  void sortHandler(a, b, name) {
    setState(() {
      sort = !sort;
      sortIndex = a;
      widget.data.sort((a, b) => a[name].compareTo(b[name]));
    });
  }

  onSelectRow(bool b, Map<String, dynamic> contact) {
    setState(() {
      if (b) {
        selectedContact.add(contact);
      } else {
        selectedContact.remove(contact);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(220, 223, 231, 1),
          width: 1,
        ),
      ),
      child: Material(
        elevation: 2,
        color: Colors.white,
        child: Column(
          children: [
            TableTitle(
              title: 'All Contacts',
              starHandler: () => {},
            ),
            SearchSortStrip(),
            TableInfo(),
            Container(
              width: double.infinity,
              child: tables(),
            )
          ],
        ),
      ),
    );
  }

  Widget tables() {
    var _keys = widget.data[0].keys;
    return DataTable(
      showCheckboxColumn: true,
      sortColumnIndex: sortIndex,
      sortAscending: true,
      columns: _keys
          .map(
            (name) => DataColumn(
                label: Text(
                  name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                numeric: false,
                onSort: (a, b) => sortHandler(a, b, name),
                tooltip: 'To display first name of column'),
          )
          .toList(),
      rows: widget.data
          .map(
            (v) => DataRow(
              key: Key(v['id']),
              selected: selectedContact.contains(v),
              onSelectChanged: (value) => onSelectRow(value, v),
              cells: _keys
                  .map(
                    (k) => DataCell(
                      Text(
                        v['$k'].toString(),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );
  }
}
