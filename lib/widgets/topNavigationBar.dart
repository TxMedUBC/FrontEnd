import 'package:dashboard_v1/constants.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

AppBar topNavigationBar() => AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 74, 77, 255),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.black,
        // TODO Side Bar
        onPressed: () {},
      ),
      actions: [
        Container(
            padding: const EdgeInsets.only(
              right: profilePicPaddingRight
            ),
            child: Material(
              elevation: 4.0,
              shape: const CircleBorder(),
              clipBehavior: Clip.hardEdge,
              color: Colors.transparent,
              child: Ink.image(
                image: const AssetImage('assets/images/profile_pic.png'),
                fit: BoxFit.fitWidth,
                width: AppBar().preferredSize.height-profilePicPadding,
                height: AppBar().preferredSize.height-profilePicPadding,
                child: InkWell(
                  // TODO Profile settings screen
                  onTap: () {},
                ),
              ),
            ))
      ],
    );
