import 'package:flutter/cupertino.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        16,
      ),
      child: Image.asset(
        'assets/temp/user2.jpg',
        height: size,
        width: size,
      ),
    );
  }
}
