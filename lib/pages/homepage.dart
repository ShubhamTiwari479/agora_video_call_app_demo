import 'package:agora_video_call_app_demo/pages/joinwithcode.dart';
import 'package:agora_video_call_app_demo/pages/new_meeting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Calling App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: ElevatedButton.icon(
              onPressed: () {
                Get.to(NewMeeting());
              },
              icon: Icon(Icons.add),
              label: Text("New Meeting"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 30),
                  primary: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          Divider(
            thickness: 1,
            height: 40,
            indent: 40,
            endIndent: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: OutlinedButton.icon(
              onPressed: () {
                Get.to(JoinWithCode());
              },
              icon: Icon(Icons.margin),
              label: Text("Join with a code"),
              style: OutlinedButton.styleFrom(
                  primary: Colors.indigo,
                  side: BorderSide(color: Colors.indigo),
                  fixedSize: Size(350, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          SizedBox(height: 150),
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkALx-c4vrRlrsnLM6FW9E1D_7oneGj4mMyQ&usqp=CAU")
        ],
      ),
    );
  }
}
