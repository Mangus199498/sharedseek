import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'events_screen.dart';
import 'profile_screen.dart';
class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: SafeArea(
        child: Column(
        children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/images/shredseek_menu_overlay.png"),
            ),
            ListTile(
              leading: Icon(
                Icons.directions_bike,
                color: Colors.black,
              ),
              title: Text(
                "View Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen())),
            ),
            ListTile(
              leading: Icon(Icons.directions_bike, color: Colors.black),
              title: Text(
                "Find Friends",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.store, color: Colors.black),
              title: Text(
                "Bike Shop",
                style:   
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.event, color: Colors.black),
              title: Text(
                "Events",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EventsScreen())),
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.black),
              title: Text(
                "Messages",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ChatScreen())),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text(
                "Settings",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      )),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Feed",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin:const EdgeInsets.only(top:8.0),
                      height: 90,
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 16.0 : 0.0,
                                right: index == 15 ? 16.0 : 0.0),
                            child: SizedBox(
                              width: 58,
                                                          child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.black),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/bike_event.jpeg'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Text('Jimmy Tim',textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 16,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 16.0,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Text("POPULAR",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff676767))),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 16.0 : 0.0,
                                right: index == 3 ? 16.0 : 0.0),
                            child: PopularCard(),
                          );
                        },
                        itemCount: 4,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 16.0,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "FEATURED EVENTS",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: <Widget>[
                                Text("See all",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xffE9476D))),
                                Icon(Icons.keyboard_arrow_right,
                                    color: Color(0xffE9476D))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 175,
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 16.0 : 0.0,
                                right: index == 3 ? 16.0 : 0.0),
                            child: EventCard(),
                          );
                        },
                        itemCount: 4,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 16.0,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PopularCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage('assets/images/bike_event.jpeg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("After a long time",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16)),
                    Text("2 Hrs Ago",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white)),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.wb_sunny,
                    color: Color(0xffCCCCCC),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("26˚",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("Sunny",
                        style: TextStyle(fontSize: 12, color: Colors.white54)),
                  ],
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Divider(
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.favorite_border,
                              size: 16, color: Colors.white54),
                          Text("4k",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                          Icon(Icons.chat_bubble_outline,
                              size: 16, color: Colors.white54),
                          Text("16",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                child: Image.asset('assets/images/bike_event.jpeg'),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              Text("New York Bike Meet And More To Come",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w500)),
              Text("Aug 2 • 47 miles away",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffCCCCCC))),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Icon(
                      Icons.wb_sunny,
                      color: Color(0xffCCCCCC),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("68˚", style: TextStyle(fontSize: 12)),
                      Text("Cloudy", style: TextStyle(fontSize: 10)),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(Icons.favorite_border,
                                size: 14, color: Color(0xffCCCCCC)),
                            Text("22",
                                style: TextStyle(
                                  fontSize: 10,
                                )),
                            Icon(Icons.chat_bubble_outline,
                                size: 14, color: Color(0xffCCCCCC)),
                            Text("16",
                                style: TextStyle(
                                  fontSize: 10,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
