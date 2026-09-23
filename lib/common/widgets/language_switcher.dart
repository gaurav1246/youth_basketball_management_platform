import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth_basketball_mng/core/localization/locale_provider.dart';
import 'package:youth_basketball_mng/l10n/app_localizations.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = context.watch<LocaleProvider>();
    final l10n = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () {
        context.read<LocaleProvider>().toggleLanguage();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.language, size: 24, color: Color(0xFF263449)),

          const SizedBox(width: 10),

          Text(
            localeProvider.isHebrew ? l10n.en : l10n.he,
            style: const TextStyle(
              color: Color(0xFF263449),
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(width: 12),

          Container(width: 1.5, height: 27, color: const Color(0xFFD0D5DC)),

          const SizedBox(width: 12),

          Text(
            localeProvider.isHebrew
                ? l10n.convertToEnglish
                : l10n.convertToHebrew,
            style: const TextStyle(
              color: Color(0xFF263449),
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
