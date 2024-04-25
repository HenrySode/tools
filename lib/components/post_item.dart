import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tools/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/temp/user2.jpg',
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.body2,
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('assets/temp/post1.JPG')),
          const Text(
              'Having a positive vibe in Class, brought us to great energy, chiilout, #smilley')
        ],
      ),
    );
  }
}
