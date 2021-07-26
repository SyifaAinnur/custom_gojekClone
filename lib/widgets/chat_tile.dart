import 'package:flutter/material.dart';
import 'package:gojek_clone/data/theme.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String chat;
  final String imageUrl;
  final String time;

  const ChatTile({
    Key? key,
    this.name = '',
    this.chat = '',
    this.imageUrl = '',
    this.time = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      chat,
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                time,
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
