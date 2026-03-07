// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "acceptTermsError": MessageLookupByLibrary.simpleMessage(
      "يجب عليك الموافقة على الشروط والأحكام.",
    ),
    "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
      "يوجد حساب مسجل بهذا البريد الإلكتروني.",
    ),
    "invalidEmail": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني غير صالح.",
    ),
    "networkrequestfailed": MessageLookupByLibrary.simpleMessage(
      "  فشل طلب الشبكة. يرجى التحقق من اتصال الإنترنت الخاص بك والمحاولة مرة أخرى.",
    ),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ، يرجى المحاولة مرة أخرى.",
    ),
    "userNotFound": MessageLookupByLibrary.simpleMessage(
      "  لا يوجد مستخدم لهذا البريد الإلكتروني.",
    ),
    "weakPassword": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور ضعيفة جدًا.",
    ),
    "wrongPassword": MessageLookupByLibrary.simpleMessage(
      " كلمة المرور المقدمة خاطئة لهذا المستخدم.",
    ),
  };
}
