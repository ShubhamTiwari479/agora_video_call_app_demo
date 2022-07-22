import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatelessWidget {
  AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        appId: "8c5fb30e7e1f46ebb7b6b1da311bb936",
        tempToken:
            "0068c5fb30e7e1f46ebb7b6b1da311bb936IABWk/TyxpkqCPxO9N/SnDoQ16KipvpOu0IAaZIjknCCOgx+f9gAAAAAEAAtDEjTNb7aYgEAAQA0vtpi",
        channelName: "test"),
    enabledPermission: [Permission.camera, Permission.microphone],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        AgoraVideoViewer(
          client: _client,
        ),
        AgoraVideoButtons(client: _client)
      ]),
    ));
  }
}
