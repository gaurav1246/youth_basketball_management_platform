import 'package:flutter/material.dart';
import 'package:youth_basketball_mng/core/constants/app_text_style.dart';

class LoginLanguageSwitcher extends StatelessWidget {
  const LoginLanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Change application language
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.language, size: 24, color: Color(0xFF263449)),

          const SizedBox(width: 10),

          Text(
            'עברית',
            textDirection: TextDirection.rtl,
            style: AppTextStyle.getTitleSmallInter(context),
          ),

          const SizedBox(width: 12),

          Container(width: 1.5, height: 27, color: const Color(0xFFD0D5DC)),

          const SizedBox(width: 12),

          Text(
            'Convert to Hebrew',
            style: AppTextStyle.getTitleSmallInter(context),
          ),

          // const SizedBox(width: 2),

          // const Text('🌐', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
