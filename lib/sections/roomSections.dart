import 'package:facebook/Widgets/avathar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avathar(displayImage: biju, displayStatus: true),
          Avathar(displayImage: mammootty, displayStatus: true),
          Avathar(displayImage: mohanlal, displayStatus: true),
          Avathar(displayImage: pinaray, displayStatus: true),
          Avathar(displayImage: pranav, displayStatus: true),
          Avathar(displayImage: prithvi, displayStatus: true),
          Avathar(displayImage: rahul, displayStatus: true),
          Avathar(displayImage: sharrokhkhan, displayStatus: true),
          Avathar(displayImage: vj, displayStatus: true),
          Avathar(displayImage: vjseth, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Color(0xFF90CAF9),
          ),
          shape: StadiumBorder(),
        ),
        onPressed: () {},
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text("Create\nroom"),
      ),
    );
  }
}
