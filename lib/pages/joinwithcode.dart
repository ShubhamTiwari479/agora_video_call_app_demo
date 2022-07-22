import 'package:agora_video_call_app_demo/Video_call.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinWithCode extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 35,
              ),
              onTap: Get.back,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgOGsTbmkjPXGztHV41cdfWDDzbpvd2srCPt42rzcaDyyynKW0GqXqMycMLAfgTYEHs-Y&usqp=CAU",
            fit: BoxFit.fill,
            height: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Enter meeting code below",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Card(
              color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: TextField(
                controller: _controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Example :abc-hij-klm"),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(VideoCall());
            },
            child: Text("Join"),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(60, 30),
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
        ],
      ),
    ));
  }
}
