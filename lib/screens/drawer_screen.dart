import 'package:flutter/material.dart';
import 'package:rapido_app_clone/utills/custom_text_style.dart';

import 'setting_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Drawer(
      width: double.infinity,
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_rounded)),
                      Text(
                        "Menu",
                        style: myTextStyle18(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 1,
                              spreadRadius: 1),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black26)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/icon/user(2).png",
                            height: 40,
                          ),
                          title: Text(
                            "Ravi Shankar Pradhan",
                            style: myTextStyle15(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "9693654565",
                            style: myTextStyle15(),
                          ),
                          trailing: const Icon(Icons.navigate_next_rounded),
                        )
                      ],
                    ),
                  )
                ],
              )),

          ListTile(
            title: Text(
              "Help",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/handshake.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),

          ListTile(
            title: Text(
              "Parcel - Send Items",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/trolley.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),

          ListTile(
            title: Text(
              "Payment",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/creadit-card.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),

          ListTile(
            title: Text(
              "My Rides",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/refresh.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Safety",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/verified.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),

          ListTile(
            title: Text(
              "Refer and Earn",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Get 50",
              style: myTextStyle15(),
            ),
            leading: Image.asset(
              "assets/icon/cost.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),

          ListTile(
            title: Text(
              "My Reward",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/medal.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),

          ListTile(
            title: Text(
              "Power Pass",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/id-card.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Rapido Coin",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/dollar.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Notifications",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/notification.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Claims",
              style: myTextStyle18(fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "assets/icon/security.png",
              height: 30,
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(),

          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
            child: ListTile(
              title: Text(
                "Setting",
                style: myTextStyle18(fontWeight: FontWeight.bold),
              ),
              leading: Image.asset(
                "assets/icon/setting.png",
                height: 30,
              ),
              trailing: const Icon(Icons.navigate_next_outlined),
            ),
          ),
          const Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: const Color(0x66ffcc75),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Earn money with Rapido",
                          style: myTextStyle15(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Become a Captain!",
                          style: myTextStyle15(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 190,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage("assets/image/Rapido_boy.png"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
