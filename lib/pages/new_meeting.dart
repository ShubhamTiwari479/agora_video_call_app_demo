import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewMeeting extends StatelessWidget {
  const NewMeeting({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Card(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: ListTile(
                      leading: Icon(Icons.link),
                      title: SelectableText(
                        "asdijdf",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      trailing: Icon(Icons.copy),
                    ))),
            Divider(
              thickness: 1,
              height: 40,
              indent: 20,
              endIndent: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Get.to(NewMeeting());
              },
              icon: Icon(Icons.arrow_drop_down),
              label: Text("share"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 30),
                  primary: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.video_call),
              label: Text("start call"),
              style: OutlinedButton.styleFrom(
                  primary: Colors.indigo,
                  side: BorderSide(color: Colors.indigo),
                  fixedSize: Size(350, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ],
        ),
      ),
    );
  }
}
