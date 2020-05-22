import 'package:aprio/common/search/Search.dart';
import './edit_contact_screen.dart';
import 'package:aprio/widgets/appbar/appbar.dart';
import 'package:aprio/widgets/contact/contact_card.dart';
import 'package:aprio/widgets/custom_table/custom_table.dart';
import 'package:aprio/widgets/drawer/Sidebar.dart';
import 'package:aprio/widgets/drawer/drawer.dart';
import 'package:aprio/widgets/page_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  static const routeName = "/contact";
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final List<Map<String, dynamic>> contactList = [
    {
      "id": "1",
      "name": "Leanne Graham",
      "username": "Bret",
      "email": "Sincere@april.biz",
      "address": "Kulas Light",
      "phone": "1-770-736-8031 x56442",
      "website": "hildegard.org",
      "company": "Romaguera-Crona",
    },
    {
      "id": "2",
      "name": "Ervin Howell",
      "username": "Antonette",
      "email": "Shanna@melissa.tv",
      "address": "Victor Plains",
      "phone": "010-692-6593 x09125",
      "website": "anastasia.net",
      "company": "Deckow-Crist",
    },
    {
      "id": "3",
      "name": "Clementine Bauch",
      "username": "Samantha",
      "email": "Nathan@yesenia.net",
      "address": "Douglas Extension",
      "phone": "1-463-123-4447",
      "website": "ramiro.info",
      "company": "Romaguera-Jacobson",
    },
    {
      "id": "4",
      "name": "Patricia Lebsack",
      "username": "Karianne",
      "email": "Julianne.OConner@kory.org",
      "address": "Hoeger Mall",
      "phone": "493-170-9623 x156",
      "website": "kale.biz",
      "company": "Robel-Corkery"
    }
  ];

  List<Map<String, dynamic>> selectedContact;
  bool sort;
  @override
  void initState() {
    sort = false;
    selectedContact = [];
    super.initState();
  }

  onSelectRow(bool b, Map<String, dynamic> user) {
    setState(() {
      if (b) {
        selectedContact.add(user);
      } else {
        selectedContact.remove(user);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) => kIsWeb
          ? Material(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Sidebar(),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        appBars('Contact', context),
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.all(20),
                            children: [
                              PageTitle(),
                              SizedBox(
                                height: 20,
                              ),
                              CustomTable(
                                title: 'All Contacts',
                                data: contactList,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          : Scaffold(
              appBar: appBars('Contact', context),
              drawer: Drawers(),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0.50,
                            spreadRadius: .90, // soften the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              0.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(10.0),
                      child: Search(
                        height: 45,
                        color: Color.fromRGBO(242, 241, 246, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ...contactList.map((e) => ContactCard()).toList(),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(EditContactScreen.routeName);
                },
                child: Icon(Icons.add),
              ),
            ),
    );
  }
}
