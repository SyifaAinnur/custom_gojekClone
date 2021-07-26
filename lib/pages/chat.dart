import 'package:flutter/material.dart';
import 'inbox.dart';
import 'package:gojek_clone/widgets/chat_tile.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget buildFitur() {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pilihan fitur",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Inboxs()
                        ));
                      },
                      child: HeaderItem(
                        images: 'images/inboxicon.png',
                        title: 'Inbox',
                        textcolor: Colors.grey[600]!,
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      onTap: () {},
                      child: HeaderItem(
                        images: 'images/grub.png',
                        title: 'Grub ',
                        textcolor: Colors.grey[600]!,
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      onTap: () {},
                      child: HeaderItem(
                        images: 'images/bantuan.png',
                        title: 'Bantuan',
                        textcolor: Colors.grey[600]!,
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      onTap: () {},
                      child: HeaderItem(
                        images: 'images/bayar.png',
                        title: 'Bayar',
                        textcolor: Colors.grey[600]!,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildMessages() {
    return Container(
      margin: EdgeInsets.only(top: 22, left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Chat Kamu",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ChatTile(
                  name: 'Budi',
                  chat: 'Pengemudi sedang menuju ke lokasi . . .',
                  imageUrl: 'images/orang.png',
                  time: 'now',
                ),
                ChatTile(
                  name: 'Customers Service',
                  chat: 'Akun kamu sedang dalam perbaikan . . . ',
                  imageUrl: 'images/human.png',
                  time: '11:2 PM',
                ),
                ChatTile(
                  name: 'Jekly',
                  chat: 'Pesanan anda sudah siap . . . . . . .',
                  imageUrl: 'images/pizza.png',
                  time: '10:2 AM',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildTapBottom() {
    return Container(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: const EdgeInsets.only(right: 10, top: 150),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/plus.png'))),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(),
        children: [
          buildFitur(),
          buildMessages(),
          buildTapBottom(),
        ],
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem(
      {required this.images, required this.title, required this.textcolor});

  final String images;
  final String title;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      child: Column(
        children: <Widget>[
          Image.asset(
            images,
            scale: 3,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: textcolor),
          )
        ],
      ),
    );
  }
}
