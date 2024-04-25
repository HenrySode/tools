import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tools/components/tool_bar.dart';
import 'package:tools/components/user_avatar.dart';
import 'package:tools/config/app_routes.dart';
import 'package:tools/config/app_string.dart';
import 'package:tools/styles/app_text.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.edit_profile);
                break;
              case ProfileMenu.logout:
                print('Logout');
                break;
              default:
            }
          }, itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.edit),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Edit'),
                  ],
                ),
                value: ProfileMenu.edit,
              ),
              const PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.logout_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Logout'),
                  ],
                ),
                value: ProfileMenu.logout,
              ),
            ];
          }),
        ],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          UserAvatar(
            size: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Anyesi Maliseli',
            style: AppText.header2,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Dodoma',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '456',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '50',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '128',
                    style: AppText.header2,
                  ),
                  Text('Follwoing'),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 50,
          ),
        ],
      ),
    );
  }
}
