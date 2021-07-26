import 'package:flutter/material.dart';
import 'account.dart';
import 'homes.dart';
import 'chat.dart';
import 'orders.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int i = 0;
  final List<Widget> pages = [Homes(), Orders(), Chats(), Accounts()];

  void _incrementTab(index) {
    setState(() {
      i = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: i,
          onTap: (index) {
            _incrementTab(index);
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home-non.png', scale: 2.5),
                ),
                label: ('Home')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/orders.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/orders-non.png', scale: 2.5),
                ),
                label: ('Orders')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/chat.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/chat-non.png', scale: 2.5),
                ),
                label: ('Chat')),
            // BottomNavigationBarItem(
            //     activeIcon: Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 5.0),
            //       child: Image.asset('images/inbox.png', scale: 2.5),
            //     ),
            //     icon: Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 5.0),
            //       child: Image.asset('images/inbox-non.png', scale: 2.5),
            //     ),
            //     label: ('Inbox')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/account.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/account-non.png', scale: 2.5),
                ),
                label: ('Account'))
          ]),
    );
  }
}
