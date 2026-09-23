import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_basketball_mng/core/constants/app_colors.dart';
import 'package:youth_basketball_mng/core/constants/app_constant.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/screens/login_screen.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/club_logo.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/connection+progress.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/language_switcher.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/portal_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.28, 0.62, 1.0],
            colors: [
              AppColors.backgroundTop,
              AppColors.backgroundMiddle,
              Color(0xFFD2DBEB),
              AppColors.backgroundBottom,
            ],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox(height: 42),

                      // Logo
                      ClubLogo(),

                      SizedBox(height: 48),

                      // Club name
                      Text(
                        AppConstants.clubName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.chivo(
                          color: AppColors.primaryBlue,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -.6,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(height: 34),
                      _ManagementBadge(),
                      SizedBox(height: 36),
                      Text(
                        AppConstants.subtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 44),
                      PortalButton(),
                      Spacer(),
                      ConnectionProgress(
                        onCompleted: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => const LoginScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 44),
                      LanguageSwitcher(),
                      SizedBox(height: 34),
                      Text(
                        "v2.4.0 • 2026/2027 Season",
                        style: GoogleFonts.inter(
                          color: Color(0xff64748B),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 18),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ManagementBadge extends StatelessWidget {
  const _ManagementBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        AppConstants.managementTitle,
        textAlign: TextAlign.center,
        style: GoogleFonts.rubik(
          color: AppColors.textDark,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          letterSpacing: 2.42,
        ),
      ),
    );
  }
}
