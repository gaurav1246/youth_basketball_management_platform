import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youth_basketball_mng/core/constants/app_assets.dart';

class ClubLogo extends StatelessWidget {
  const ClubLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 112,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 14,
            //  offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Center(child: Image.asset(AppAssets.logo, fit: BoxFit.contain)),
    );
  }
}
