import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praktikum_lesson/models/home_item_model.dart';
import 'package:praktikum_lesson/utils/app_colors.dart';
import 'package:praktikum_lesson/utils/app_icons.dart';

class GridViewItemsWidget extends StatefulWidget {
  final HomeItems item;
  const GridViewItemsWidget({super.key, required this.item});

  @override
  State<GridViewItemsWidget> createState() => _GridViewItemsWidgetState();
}

class _GridViewItemsWidgetState extends State<GridViewItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(widget.item.image),
            Positioned(
              top: 4,
              right: 4,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.C_7C88AB.withOpacity(
                    0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.item.isLiked = !widget.item.isLiked;
                      });
                    },
                    child: Icon(
                      !widget.item.isLiked
                          ? Icons.favorite_border
                          : Icons.favorite,
                      color: !widget.item.isLiked
                          ? AppColors.white
                          : AppColors.C_FF0000,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Text(
          widget.item.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            SvgPicture.asset(AppIcons.starIcon),
            const SizedBox(width: 4),
            Text(
              widget.item.comment,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 11,
                color: AppColors.C_6A7074,
              ),
            )
          ],
        ),
        const SizedBox(height: 4),
        Text(
          widget.item.distance,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: AppColors.C_6A7074,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.item.coast,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
