import 'package:flutter/material.dart';

class BoardDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BoardDetailState();
  }
}

class BoardDetailState extends State<BoardDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The board you clicked on'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: Column(children: <Widget>[
                Image.network(
                    'https://static.clubs.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile_2x/f_auto/bears/yzowyn8mojbbrj5vhcuf.jpg'),
                Text('In fact, the entire 2019 squad is scheduled to be on hand for the festivities at the Donald E. Stephens Convention Center, participating in the Opening Ceremonies Friday night and signing free autographs throughout the weekend.'),
                ButtonTheme.bar(
                    child: ButtonBar(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_active),
                      onPressed: () {
                        print('post viewed');
                      },
                    ),
                  ],
                ))
              ]),
            ),
            Card(
              child: Column(children: <Widget>[
                Image.network(
                    'https://static.clubs.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile_2x/f_auto/bears/h555omjjbr92xbbbp1ik.jpg'),
                Text('The Bears100 Celebration Weekend June 7-9 in Rosemont will honor the franchise’s illustrious history'),
                ButtonTheme.bar(
                    child: ButtonBar(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_active),
                      onPressed: () {
                        print('post viewed');
                      },
                    ),
                  ],
                ))
              ]),
            )
          ],
        ));
  }
}
