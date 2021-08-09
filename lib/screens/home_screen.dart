import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/data.dart';
import 'package:flutter_clubhouse_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.search,
            size: 28.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.envelope_open,
              size: 26.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.calendar,
              size: 28.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell,
              size: 28.0,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                imageUrl: currentUser.imageUrl,
                size: 36.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
        child: ListView(
          children: [
            UpcomingRooms(upcomingRooms: upcomingRoomsList),
            const SizedBox(height: 12.0),
            ...roomsList.map((e) => RoomCard(room: e)),
          ],
        ),
      ),
    );
  }
}
