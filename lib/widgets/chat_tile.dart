import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class ChatTile extends StatelessWidget {
  String imageUrl;
  String name;
  String text;
  String time;
  bool unread;

  ChatTile(
      {this.imageUrl = '',
      this.name = '',
      this.text = '',
      this.time = '',
      this.unread = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subTitleTextStyle.copyWith(color: blackColor)
                    : subTitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTitleTextStyle,
          )
        ],
      ),
    );
  }
}
