// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The password is too weak.`
  String get weakPassword {
    return Intl.message(
      'The password is too weak.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `An account already exists for this email.`
  String get emailAlreadyInUse {
    return Intl.message(
      'An account already exists for this email.',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address.`
  String get invalidEmail {
    return Intl.message(
      'Invalid email address.',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again.`
  String get unknownError {
    return Intl.message(
      'Something went wrong, please try again.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `You must accept the terms and conditions.`
  String get acceptTermsError {
    return Intl.message(
      'You must accept the terms and conditions.',
      name: 'acceptTermsError',
      desc: '',
      args: [],
    );
  }

  /// `No user found for that email.`
  String get userNotFound {
    return Intl.message(
      'No user found for that email.',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password provided for that user.`
  String get wrongPassword {
    return Intl.message(
      'Wrong password provided for that user.',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `  Network request failed. Please check your internet connection and try again.`
  String get networkrequestfailed {
    return Intl.message(
      '  Network request failed. Please check your internet connection and try again.',
      name: 'networkrequestfailed',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Products`
  String get products {
    return Intl.message('Products', name: 'products', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `My Account`
  String get account {
    return Intl.message('My Account', name: 'account', desc: '', args: []);
  }

  /// `Please enter your full name`
  String get fullNameRequired {
    return Intl.message(
      'Please enter your full name',
      name: 'fullNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get emailRequired {
    return Intl.message(
      'Please enter your email',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get emailInvalid {
    return Intl.message(
      'Please enter a valid email address',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your address`
  String get addressRequired {
    return Intl.message(
      'Please enter your address',
      name: 'addressRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your city`
  String get cityRequired {
    return Intl.message(
      'Please enter your city',
      name: 'cityRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter floor and apartment details`
  String get floorRequired {
    return Intl.message(
      'Please enter floor and apartment details',
      name: 'floorRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get phoneRequired {
    return Intl.message(
      'Please enter your phone number',
      name: 'phoneRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get phoneInvalid {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'phoneInvalid',
      desc: '',
      args: [],
    );
  }

  /// `No products in the cart`
  String get empty_cart {
    return Intl.message(
      'No products in the cart',
      name: 'empty_cart',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
