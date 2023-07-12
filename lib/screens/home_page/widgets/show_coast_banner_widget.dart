import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class ShowCoastBannerWidget extends StatefulWidget {
  String amount;
  bool isHide;
  ShowCoastBannerWidget({
    super.key,
    required this.amount,
    required this.isHide,
  });

  @override
  State<ShowCoastBannerWidget> createState() => _ShowCoastBannerWidgetState();
}

class _ShowCoastBannerWidgetState extends State<ShowCoastBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.C_7C88AB.withOpacity(0.16),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      width: 343,
      height: 84,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ваш баланс',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.C_7E859A),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.amount,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(
                  () {
                    widget.isHide = !widget.isHide;
                    if (widget.isHide) {
                      widget.amount = '*********';
                    } else {
                      widget.amount = '\$2,700';
                    }
                  },
                );
              },
              icon: Icon(
                widget.isHide ? Icons.visibility_off : Icons.visibility,
                color: AppColors.C_4490FF,
              ),
            )
          ],
        ),
      ),
    );
  }
}
