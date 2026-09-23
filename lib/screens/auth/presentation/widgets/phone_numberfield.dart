// import 'package:flutter/material.dart';

// class PhoneNumberField extends StatelessWidget {
//   const PhoneNumberField({
//     super.key,
//     required this.controller,
//     required this.countryCode,
//     required this.onCountryChanged,
//   });

//   final TextEditingController controller;
//   final String countryCode;
//   final ValueChanged<String> onCountryChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 84,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: const Color(0xFFDCE1E8), width: 1.5),
//       ),
//       child: Row(
//         children: [
//           // Country selector
//           InkWell(
//             onTap: () {
//               _showCountryPicker(context);
//             },
//             child: Container(
//               height: 62,
//               margin: const EdgeInsets.only(left: 9),
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(9),
//                 border: Border.all(color: const Color(0xFFDCE1E8)),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Text('🇮🇱', style: TextStyle(fontSize: 22)),

//                   const SizedBox(width: 10),

//                   Text(
//                     countryCode,
//                     style: const TextStyle(
//                       color: Color(0xFF29364B),
//                       fontSize: 21,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),

//                   const SizedBox(width: 7),

//                   const Icon(
//                     Icons.keyboard_arrow_down,
//                     size: 23,
//                     color: Color(0xFF263449),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           const SizedBox(width: 14),

//           const Icon(Icons.phone_iphone, size: 28, color: Color(0xFF263449)),

//           const SizedBox(width: 12),

//           Expanded(
//             child: TextField(
//               controller: controller,
//               keyboardType: TextInputType.phone,
//               style: const TextStyle(color: Color(0xFF263449), fontSize: 21),
//               decoration: const InputDecoration(
//                 hintText: '050-123-4567',
//                 hintStyle: TextStyle(color: Color(0xFF788296), fontSize: 21),
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.zero,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showCountryPicker(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.white,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
//       ),
//       builder: (context) {
//         return SafeArea(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const SizedBox(height: 16),

//               const Text(
//                 'Select Country',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//               ),

//               const SizedBox(height: 12),

//               ListTile(
//                 leading: const Text('🇮🇱', style: TextStyle(fontSize: 25)),
//                 title: const Text('Israel'),
//                 trailing: const Text('+972'),
//                 onTap: () {
//                   onCountryChanged('+972');
//                   Navigator.pop(context);
//                 },
//               ),

//               ListTile(
//                 leading: const Text('🇨🇦', style: TextStyle(fontSize: 25)),
//                 title: const Text('Canada'),
//                 trailing: const Text('+1'),
//                 onTap: () {
//                   onCountryChanged('+1');
//                   Navigator.pop(context);
//                 },
//               ),

//               ListTile(
//                 leading: const Text('🇺🇸', style: TextStyle(fontSize: 25)),
//                 title: const Text('United States'),
//                 trailing: const Text('+1'),
//                 onTap: () {
//                   onCountryChanged('+1');
//                   Navigator.pop(context);
//                 },
//               ),

//               const SizedBox(height: 15),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    super.key,
    required this.controller,
    required this.countryCode,
    required this.onCountryChanged,
    required this.onPhoneChanged,
  });

  final TextEditingController controller;

  /// Example: +972
  final String countryCode;

  final ValueChanged<String> onCountryChanged;

  /// Returns the complete international phone number.
  ///
  /// Example:
  /// +972501234567
  final ValueChanged<String> onPhoneChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFDCE1E8), width: 1.5),
      ),
      child: IntlPhoneField(
        controller: controller,
        dropdownIconPosition: IconPosition.trailing,

        // Initial country.
        initialCountryCode: _getCountryCode(countryCode),

        // Don't add another border because our outer Container
        // already provides the border.
        decoration: const InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,

          hintText: '050-123-4567',

          hintStyle: TextStyle(color: Color(0xFF788296), fontSize: 21),

          // This places the phone icon after the country selector
          // and before the phone number.
          // prefixIcon: Icon(
          //   Icons.phone_iphone,
          //   size: 28,
          //   color: Color(0xFF263449),
          // ),
          contentPadding: EdgeInsets.only(
            top: 12,
            left: 6,
            right: 4,
            bottom: 4,
          ),
        ),

        style: const TextStyle(color: Color(0xFF263449), fontSize: 21),

        dropdownTextStyle: const TextStyle(
          color: Color(0xFF29364B),
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),

        // Country dropdown.
        showDropdownIcon: true,

        dropdownIcon: const Icon(
          Icons.keyboard_arrow_down,
          size: 23,
          color: Color(0xFF263449),
        ),

        // Called when country changes.
        onCountryChanged: (country) {
          onCountryChanged('+${country.dialCode}');
        },

        // Called whenever the number changes.
        onChanged: (phone) {
          onPhoneChanged(phone.completeNumber);
        },

        // Enable formatting.
        disableLengthCheck: false,

        // Don't show the error inside this compact field.
        validator: (value) {
          if (value == null || value.number.isEmpty) {
            return 'Enter your phone number';
          }

          if (!value.isValidNumber()) {
            return 'Enter a valid phone number';
          }

          return null;
        },
      ),
    );
  }

  String _getCountryCode(String dialCode) {
    switch (dialCode) {
      case '+972':
        return 'IL';

      case '+1':
        return 'US';

      case '+91':
        return 'IN';

      case '+44':
        return 'GB';

      case '+33':
        return 'FR';

      case '+49':
        return 'DE';

      default:
        return 'IL';
    }
  }
}
