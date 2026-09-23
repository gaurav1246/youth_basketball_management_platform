import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youth_basketball_mng/core/constants/app_text_style.dart';

class BiometricOption extends StatelessWidget {
  const BiometricOption({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 3,
      shadowColor: Colors.black.withOpacity(0.4),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon, height: 28, width: 28),

              const SizedBox(height: 16),

              Text(title, style: AppTextStyle.getTitleLargeInter(context)),

              const SizedBox(height: 6),

              Text(subtitle, style: AppTextStyle.getBodySmallInter(context)),
            ],
          ),
        ),
      ),
    );
  }
}
