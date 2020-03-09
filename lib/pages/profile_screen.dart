import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class ProfileScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
          child: Material(
          child: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
        return NestedScrollView(
            headerSliverBuilder: (BuildContext context,
                    bool innerBoxIsScrolled) =>
                [
                  SliverToBoxAdapter(
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16.0),
                          height: 265,
                          padding: const EdgeInsets.symmetric(
                              vertical: 32.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24)),
                              gradient: RadialGradient(
                                  center: Alignment.topCenter,
                                  radius: 1.2,
                                  focal: Alignment.topCenter,
                                  colors: [
                                    Color(0xff2EABE0),
                                    Color(0xff000854),
                                  ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Center(
                                  child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                child: Image.asset(
                                  'assets/images/bike_event.jpeg',
                                  fit: BoxFit.cover,
                                  height: 72,
                                  width: 72,
                                ),
                              )),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Chris Evennett",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "TRAIL RIDER",
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: FittedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      InkWell(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            height: 36,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(28)),
                                                border: Border.all(
                                                    color: Colors.white54,
                                                    width: 2)),
                                            child: Text(
                                              "Follow",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            height: 36,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(28)),
                                                border: Border.all(
                                                    color: Colors.white54,
                                                    width: 2)),
                                            child: Text(
                                              "Add Friend",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            height: 36,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(28)),
                                                border: Border.all(
                                                    color: Colors.white54,
                                                    width: 2)),
                                            child: Text(
                                              "Message",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: -35,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 32.0),
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 24.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      spreadRadius: 4,
                                      offset: Offset(0, 6))
                                ]),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: <Widget>[
                                      FittedBox(
                                        child: Text(
                                          '12K',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text("FOLLOWERS",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 1,
                                  color: Colors.grey[300],
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: <Widget>[
                                      FittedBox(
                                        child: Text(
                                          '1.7K',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text("PHOTOS",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 1,
                                  color: Colors.grey[300],
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: <Widget>[
                                      FittedBox(
                                        child: Text(
                                          '135',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text("FRIENDS",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16.0,
                          top: 16.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.of(context).maybePop(),
                          ),
                        )
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(32.0, 64.0, 32.0, 8.0),
                      child: Text("ABOUT ME", style: TextStyle(fontSize: 12)),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 16.0),
                      child: Text(
                        "I ride my mountain bike on trails and sometimes take my BMS to the skate park!"
                        "If you live close by and want to ride together hmu and if you just want to stay"
                        "update hit the follow button!",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 16.0),
                      color: Color(0xfff2f2f2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Vernon, NJ",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text("27 MILES AWAY",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: Color(0xffaaaaaa),
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 16.0, bottom: 8.0),
                            child: Text("My Photos"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
            body: Container(
              color: Color(0xfff2f2f2),
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: new StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) => new Container(
                    height: Random().nextInt(4) * 100.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.green,
                    ),
                    child: new CircleAvatar(
                      backgroundColor: Colors.white,
                      child: new Text('$index'),
                    )),
                staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ));
      }))),
    );
  }
}
