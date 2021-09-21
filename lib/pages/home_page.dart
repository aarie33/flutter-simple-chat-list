import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';
import 'package:chatty_app/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile_pic.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(fontSize: 20, color: whiteColor),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(fontSize: 16, color: lightBlueColor),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/friend1.png',
                          name: 'Hilmi',
                          text: 'Posisi boss',
                          time: 'now',
                          unread: true,
                        ),
                        ChatTile(
                            imageUrl: 'assets/images/friend2.png',
                            name: 'Bebeb',
                            text: 'Skuy budal',
                            time: '15:00'),
                        ChatTile(
                            imageUrl: 'assets/images/friend3.png',
                            name: 'Maisaroh',
                            text: 'Broo',
                            time: '13:00'),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Groups',
                          style: titleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/group1.png',
                          name: 'Dafidea Tech',
                          text: 'New Project gais 1M',
                          time: 'now',
                          unread: true,
                        ),
                        ChatTile(
                            imageUrl: 'assets/images/group2.png',
                            name: 'Alami Project',
                            text: 'Meeting pukul 14 ya',
                            time: '13:00'),
                        ChatTile(
                            imageUrl: 'assets/images/group3.png',
                            name: 'Bernouli Group',
                            text: 'Selamat Pagi',
                            time: '08:00'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
