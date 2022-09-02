import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:txmed/constants.dart';

const profilePicPaddingRight = 40.0;

AppBar topNavigationBar() => AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 35, 42, 54),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.white,
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
