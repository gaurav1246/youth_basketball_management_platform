import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_he.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('he'),
  ];

  /// No description provided for @coachPortalSeason.
  ///
  /// In en, this message translates to:
  /// **'COACH PORTAL • SEASON'**
  String get coachPortalSeason;

  /// No description provided for @season.
  ///
  /// In en, this message translates to:
  /// **'2024/25'**
  String get season;

  /// No description provided for @en.
  ///
  /// In en, this message translates to:
  /// **'EN'**
  String get en;

  /// No description provided for @he.
  ///
  /// In en, this message translates to:
  /// **'HE'**
  String get he;

  /// No description provided for @clubName.
  ///
  /// In en, this message translates to:
  /// **'Maccabi Ironi Raanana'**
  String get clubName;

  /// No description provided for @clubSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Basketball Club • Official Access'**
  String get clubSubtitle;

  /// No description provided for @coachSignIn.
  ///
  /// In en, this message translates to:
  /// **'Coach Sign In'**
  String get coachSignIn;

  /// No description provided for @enterMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your registered mobile number to\nreceive a one-time verification code.'**
  String get enterMobileNumber;

  /// No description provided for @mobilePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Phone Number'**
  String get mobilePhoneNumber;

  /// No description provided for @phoneNumberHint.
  ///
  /// In en, this message translates to:
  /// **'050-123-4567'**
  String get phoneNumberHint;

  /// No description provided for @otpInfo.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send a 6-digit verification\ncode via SMS for instant access.'**
  String get otpInfo;

  /// No description provided for @getOtpCode.
  ///
  /// In en, this message translates to:
  /// **'Get OTP Code'**
  String get getOtpCode;

  /// No description provided for @orContinueWith.
  ///
  /// In en, this message translates to:
  /// **'OR CONTINUE WITH'**
  String get orContinueWith;

  /// No description provided for @faceId.
  ///
  /// In en, this message translates to:
  /// **'Face ID'**
  String get faceId;

  /// No description provided for @quickScan.
  ///
  /// In en, this message translates to:
  /// **'Quick scan'**
  String get quickScan;

  /// No description provided for @touchId.
  ///
  /// In en, this message translates to:
  /// **'Touch ID'**
  String get touchId;

  /// No description provided for @fingerprintSensor.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint sensor'**
  String get fingerprintSensor;

  /// No description provided for @convertToHebrew.
  ///
  /// In en, this message translates to:
  /// **'Convert to Hebrew'**
  String get convertToHebrew;

  /// No description provided for @convertToEnglish.
  ///
  /// In en, this message translates to:
  /// **'Convert to English'**
  String get convertToEnglish;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectCountry;

  /// No description provided for @israel.
  ///
  /// In en, this message translates to:
  /// **'Israel'**
  String get israel;

  /// No description provided for @canada.
  ///
  /// In en, this message translates to:
  /// **'Canada'**
  String get canada;

  /// No description provided for @unitedStates.
  ///
  /// In en, this message translates to:
  /// **'United States'**
  String get unitedStates;

  /// No description provided for @footerClubName.
  ///
  /// In en, this message translates to:
  /// **'MACCABI IRONI RAANANA BASKETBALL\nCLUB'**
  String get footerClubName;

  /// No description provided for @connectingToCoachPortal.
  ///
  /// In en, this message translates to:
  /// **'Connecting to Coach Portal...'**
  String get connectingToCoachPortal;

  /// No description provided for @basketballManagement.
  ///
  /// In en, this message translates to:
  /// **'BASKETBALL MANAGEMENT'**
  String get basketballManagement;

  /// No description provided for @officialCoachingSystem.
  ///
  /// In en, this message translates to:
  /// **'Official Coaching & Club Operations System'**
  String get officialCoachingSystem;

  /// No description provided for @coachClubOperationsPortal.
  ///
  /// In en, this message translates to:
  /// **'Coach & Club Operations Portal'**
  String get coachClubOperationsPortal;

  /// No description provided for @pleaseEnterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter your mobile number'**
  String get pleaseEnterPhoneNumber;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get invalidPhoneNumber;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'he'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'he':
      return AppLocalizationsHe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
