import 'package:club_house_tutorial/Widgets/widgets.dart';
import 'package:club_house_tutorial/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.search,
            size: 28.0,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.envelope_open,
              size: 26.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.calendar,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {
              //Todo: implement navigate to user profile image full
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 20, 10),
              child: UserProfileImage(
                size: 40,
                imgUrl: currentUser.imageUrl,
              ),
            ),
          )
        ],
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 20), children: [
        UpcomingRooms(
          upcomingRooms: upcomingRoomsList,
        ),
        SizedBox(height: 20),
        ...roomsList.map((e) => RoomWidget(room: e))
      ]),
    );
  }
}
