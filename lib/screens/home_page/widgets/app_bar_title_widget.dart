import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praktikum_lesson/utils/app_icons.dart';
import 'package:praktikum_lesson/utils/app_images.dart';

class AppBarTitleWidget extends StatelessWidget {
  final String name;
  final String password;
  const AppBarTitleWidget({
    super.key,
    required this.name,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppImages.userImage),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            Text(
              'ID: $password',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            )
          ],
        ),
        const Spacer(),
        SvgPicture.asset(AppIcons.questionIcon),
      ],
    );
  }
}
