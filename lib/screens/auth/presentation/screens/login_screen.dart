import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_basketball_mng/core/constants/app_assets.dart';
import 'package:youth_basketball_mng/core/constants/app_colors.dart';
import 'package:youth_basketball_mng/core/constants/app_text_style.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/club_logo.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/face_id_touch_id.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/get_otp_button.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/login_footer.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/login_header.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/login_language_switcher.dart';
import 'package:youth_basketball_mng/screens/auth/presentation/widgets/phone_numberfield.dart';

import '../widgets/language_switcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();

  String countryCode = '+972';

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void _getOtp() {
    final phone = phoneController.text.trim();

    if (phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your mobile number')),
      );
      return;
    }

    // TODO:
    // Call login / OTP API here.
  }

  void _onFaceId() {
    // TODO: Implement Face ID authentication
  }

  void _onTouchId() {
    // TODO: Implement Touch ID authentication
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            const LoginHeader(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    topSectionWidget(context),
                    const SizedBox(height: 16),

                    // Login card
                    mobileLoginWidget(context),

                    const SizedBox(height: 34),

                    Text(
                      'OR CONTINUE WITH',
                      style: AppTextStyle.getTitleSmallInter(context).copyWith(
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 24),

                    Row(
                      children: [
                        Expanded(
                          child: BiometricOption(
                            icon: AppAssets.faceId,
                            title: 'Face ID',
                            subtitle: 'Quick scan',
                            onTap: _onFaceId,
                          ),
                        ),
                        const SizedBox(width: 18),
                        Expanded(
                          child: BiometricOption(
                            icon: AppAssets.thumbId,
                            title: 'Touch ID',
                            subtitle: 'Fingerprint sensor',
                            onTap: _onTouchId,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 32),

                    const Divider(color: Color(0xFFDDE1E7), thickness: 1),

                    const SizedBox(height: 16),

                    const LoginLanguageSwitcher(),

                    const SizedBox(height: 16),

                    const LoginFooter(),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mobileLoginWidget(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 28, 30, 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 22,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mobile Phone Number',
            style: AppTextStyle.getTitleSmallInter(context),
          ),

          const SizedBox(height: 14),

          PhoneNumberField(
            controller: phoneController,
            countryCode: countryCode,
            onPhoneChanged: (value) {},
            onCountryChanged: (value) {
              setState(() {
                countryCode = value;
              });
            },
          ),

          const SizedBox(height: 34),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 2),
                child: const Icon(
                  Icons.info_outline,
                  size: 25,
                  color: Color(0xFF263449),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  "We'll send a 6-digit verification\n"
                  'code via SMS for instant access.',
                  style: AppTextStyle.getBodyLargeInter(context),
                ),
              ),
            ],
          ),

          const SizedBox(height: 34),

          OtpButton(onPressed: _getOtp),
        ],
      ),
    );
  }

  Widget topSectionWidget(BuildContext context) {
    return Column(
      children: [
        ClubLogo(),
        const SizedBox(height: 24),
        Text(
          'Maccabi Ironi Raanana',
          textAlign: TextAlign.center,
          style: AppTextStyle.getTitleSmallInter(context),
        ),
        const SizedBox(height: 4),
        Text(
          'Basketball Club • Official Access',
          textAlign: TextAlign.center,
          style: AppTextStyle.getBodyLargeInter(context),
        ),
        const SizedBox(height: 30),
        Text('Coach Sign In', style: AppTextStyle.getTitleSmallInter(context)),
        const SizedBox(height: 14),
        Text(
          'Enter your registered mobile number to\n'
          'receive a one-time verification code.',
          textAlign: TextAlign.center,
          style: AppTextStyle.getBodyLargeInter(context),
        ),
      ],
    );
  }
}
