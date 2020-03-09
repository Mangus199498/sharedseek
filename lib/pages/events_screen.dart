import 'package:flutter/material.dart';





class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Events",
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
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
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
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      width: MediaQuery.of(context).size.width,
                      height: 185,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Nearby Events",
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
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      width: MediaQuery.of(context).size.width,
                      height: 185,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Events",
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
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      width: MediaQuery.of(context).size.width,
                      height: 185,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "All Events",
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
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      width: MediaQuery.of(context).size.width,
                      height: 185,
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
                    )
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
                  Icon(
                    Icons.wb_sunny,
                    color: Color(0xffCCCCCC),
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
