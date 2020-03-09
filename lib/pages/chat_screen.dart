import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
            height: 56,
            width: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xff2486C1), Color(0xff2B9ED6)])),
            child: Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Chat",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
            color: Colors.blue[600],
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.blue[600],
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: <Widget>[MessageReadCard(), MessageUnreadCard()],
      )),
    );
  }
}

class MessageReadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(32.0, 16.0, 16.0, 16.0),
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Image.asset(
            'assets/images/bike_event.jpeg',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Diana Palmer", style: TextStyle(fontSize: 14)),
            Text("Sounds about right", style: TextStyle(fontSize: 10)),
          ],
        ),
        Spacer(),
        Text("52 mins ago", style: TextStyle(fontSize: 8)),
      ]),
    );
  }
}

class MessageUnreadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0, 16.0, 16.0, 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(
                'assets/images/bike_event.jpeg',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Diana Palmer", style: TextStyle(fontSize: 14)),
                Text("Sounds about right", style: TextStyle(fontSize: 10)),
              ],
            ),
            Spacer(),
            Text("52 mins ago", style: TextStyle(fontSize: 8)),
          ]),
          Divider(
            indent: 40 + 12.0,
          ),
        ],
      ),
    );
  }
}
