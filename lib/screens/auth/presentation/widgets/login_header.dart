import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_basketball_mng/core/constants/app_colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xFF263449),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 16),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'COACH PORTAL • SEASON\n2024/25',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                    color: AppColors.textDark,
                    fontSize: 16,
                    height: 1.45,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 18, right: 2),
              child: Text(
                'HE',
                style: TextStyle(
                  color: Color(0xFF263449),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
