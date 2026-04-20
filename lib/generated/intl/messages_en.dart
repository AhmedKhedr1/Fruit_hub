// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "acceptTermsError": MessageLookupByLibrary.simpleMessage(
      "You must accept the terms and conditions.",
    ),
    "account": MessageLookupByLibrary.simpleMessage("My Account"),
    "addressRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your address",
    ),
    "cart": MessageLookupByLibrary.simpleMessage("Cart"),
    "cityRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your city",
    ),
    "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
      "An account already exists for this email.",
    ),
    "emailInvalid": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email address",
    ),
    "emailRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your email",
    ),
    "empty_cart": MessageLookupByLibrary.simpleMessage(
      "No products in the cart",
    ),
    "floorRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter floor and apartment details",
    ),
    "fullNameRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your full name",
    ),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "invalidEmail": MessageLookupByLibrary.simpleMessage(
      "Invalid email address.",
    ),
    "networkrequestfailed": MessageLookupByLibrary.simpleMessage(
      "  Network request failed. Please check your internet connection and try again.",
    ),
    "phoneInvalid": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid phone number",
    ),
    "phoneRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your phone number",
    ),
    "products": MessageLookupByLibrary.simpleMessage("Products"),
    "select_payment_method": MessageLookupByLibrary.simpleMessage(
      "Please select a payment method",
    ),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong, please try again.",
    ),
    "userNotFound": MessageLookupByLibrary.simpleMessage(
      "No user found for that email.",
    ),
    "weakPassword": MessageLookupByLibrary.simpleMessage(
      "The password is too weak.",
    ),
    "wrongPassword": MessageLookupByLibrary.simpleMessage(
      "Wrong password provided for that user.",
    ),
  };
}
