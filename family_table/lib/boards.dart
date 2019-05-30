import 'package:family_table/board_detail.dart';
import 'package:flutter/material.dart';

class Boards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: <Widget>[
    //     ListView.builder(
    //       itemCount: 4,
    //       itemBuilder: (context, index){
    //         return BoardCard();
    //       },
    //     )
    //   ],
    // );
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(child: BoardCard()
            // decoration: BoxDecoration(
            //     border:
            //         Border(bottom: BorderSide(color: Colors.blue, width: 1.0))),
            // child: ListTile(
            //   title: Text('something here ' + index.toString()),
            //   onTap: () {
            //     // Navigator.push(
            //     //     context, MaterialPageRoute(builder: (context) => Boards()));
            //   },
            // ),
            );
      },
    );
  }
}

class BoardCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Column(
              children: <Widget>[
                Wrap(
                  spacing: 8.0, // gap between adjacent avatars
                  runSpacing: 4.0, // gap between lines
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/713374849075294208/xTbauHxm_400x400.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/713374849075294208/xTbauHxm_400x400.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/713374849075294208/xTbauHxm_400x400.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/713374849075294208/xTbauHxm_400x400.jpg'),
                    )
                  ],
                ),
                Text('title of this board goes here')
              ],
            ),
            // leading: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //         'https://pbs.twimg.com/profile_images/713374849075294208/xTbauHxm_400x400.jpg')),
            // title: Text('The Enchanted Nightingale'),
            // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('View Board'),
                  onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BoardDetail()));
                  },
                ),
                FlatButton(
                  child: const Text('Delete'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
