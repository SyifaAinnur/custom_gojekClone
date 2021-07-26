import 'package:flutter/material.dart';

class Inboxs extends StatefulWidget {
  @override
  _InboxsState createState() => _InboxsState();
}

class _InboxsState extends State<Inboxs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffffff),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white, // 1
        elevation: 1,
        title: Text(
          "Inbox",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold // 3
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/inboxilus.png'),
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      bottom: 15,
                    ),
                    child: Text("Belum ada pesan masuk",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  Text(
                    "Tapi nanti kalau sudah ada,pesannya akan \nkelihatan di sini.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
