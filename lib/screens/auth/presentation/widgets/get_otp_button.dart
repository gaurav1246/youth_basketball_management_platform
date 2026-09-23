import 'package:flutter/material.dart';
import 'package:youth_basketball_mng/core/constants/app_colors.dart';
import 'package:youth_basketball_mng/core/constants/app_text_style.dart';

class OtpButton extends StatelessWidget {
  const OtpButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0738A8),
          foregroundColor: Colors.white,
          elevation: 8,
          shadowColor: const Color(0x400738A8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat_outlined, size: 27),

            SizedBox(width: 12),

            Text(
              'Get OTP Code',
              style: AppTextStyle.getTitleSmallInter(
                context,
              ).copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
