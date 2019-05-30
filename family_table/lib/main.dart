import 'package:flutter/material.dart';
import 'package:family_table/home_screen.dart';
import 'package:family_table/boards.dart';
import 'package:family_table/chats.dart';
import 'package:family_table/notifications.dart';

void main() {
  runApp(MaterialApp(
    title: 'Family Table',
    home: FamilyTable(),
  ));
}

void _onItemTapped(int index) {
  print('button pressed from main');
  //Boards();
}

class FamilyTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FamilyTableState();
  }
}

class FamilyTableState extends State<FamilyTable> {
  int _selectedPage = 0;
  final _pageOptions = [Boards(), Chats(), Notifications()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Table'),
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text("Boards")),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chats')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Unread'))
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
      ),
    );
  }
}
