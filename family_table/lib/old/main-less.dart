import 'package:flutter/material.dart';
import 'package:family_table/old/boards.dart';

//body needs to be a statefull widge so that boards can change the body state and reset it

void main() => runApp(FamilyTable());

class FamilyTable extends StatelessWidget {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    print('button pressed from main');
    Boards();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Family Table'),
      ),
      body: Column(
        children: <Widget>[Text('this is a list item A'), Text('List Item B')],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text("Boards")),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chats')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Unread'))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    ));
  }
}
