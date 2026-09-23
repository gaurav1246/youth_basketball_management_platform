import 'package:flutter/material.dart';
import 'package:youth_basketball_mng/core/constants/app_colors.dart';
import 'package:youth_basketball_mng/core/constants/app_constant.dart';

class PortalButton extends StatelessWidget {
  const PortalButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          // TODO: Navigate to Coach Portal
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
          // constraints: const BoxConstraints(minWidth: 460, maxWidth: 500),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFEFF6FF),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Color(0xFFBFDBFE), width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, size: 17, color: AppColors.primaryBlue),
              SizedBox(width: 14),
              Text(
                AppConstants.portalTitle,
                style: TextStyle(
                  color: AppColors.primaryBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
