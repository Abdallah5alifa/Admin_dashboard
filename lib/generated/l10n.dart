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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `My Transaction`
  String get my_transaction {
    return Intl.message(
      'My Transaction',
      name: 'my_transaction',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Account`
  String get wallet_account {
    return Intl.message(
      'Wallet Account',
      name: 'wallet_account',
      desc: '',
      args: [],
    );
  }

  /// `My Investments`
  String get my_investments {
    return Intl.message(
      'My Investments',
      name: 'my_investments',
      desc: '',
      args: [],
    );
  }

  /// `Setting System`
  String get setting_system {
    return Intl.message(
      'Setting System',
      name: 'setting_system',
      desc: '',
      args: [],
    );
  }

  /// `Logout Account`
  String get logout_account {
    return Intl.message(
      'Logout Account',
      name: 'logout_account',
      desc: '',
      args: [],
    );
  }

  /// `All Expenses`
  String get all_expenses {
    return Intl.message(
      'All Expenses',
      name: 'all_expenses',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get income {
    return Intl.message(
      'Income',
      name: 'income',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses {
    return Intl.message(
      'Expenses',
      name: 'expenses',
      desc: '',
      args: [],
    );
  }

  /// `Quick Invoice`
  String get quick_invoice {
    return Intl.message(
      'Quick Invoice',
      name: 'quick_invoice',
      desc: '',
      args: [],
    );
  }

  /// `Latest Transaction`
  String get latest_transaction {
    return Intl.message(
      'Latest Transaction',
      name: 'latest_transaction',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get customer_name {
    return Intl.message(
      'Customer Name',
      name: 'customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Customer Email`
  String get customer_email {
    return Intl.message(
      'Customer Email',
      name: 'customer_email',
      desc: '',
      args: [],
    );
  }

  /// `Item Name`
  String get item_name {
    return Intl.message(
      'Item Name',
      name: 'item_name',
      desc: '',
      args: [],
    );
  }

  /// `Item Amount`
  String get item_amount {
    return Intl.message(
      'Item Amount',
      name: 'item_amount',
      desc: '',
      args: [],
    );
  }

  /// `Send Money`
  String get send_money {
    return Intl.message(
      'Send Money',
      name: 'send_money',
      desc: '',
      args: [],
    );
  }

  /// `Transaction History`
  String get transaction_history {
    return Intl.message(
      'Transaction History',
      name: 'transaction_history',
      desc: '',
      args: [],
    );
  }

  /// `Cash Withdrawal`
  String get cash_withdrawal {
    return Intl.message(
      'Cash Withdrawal',
      name: 'cash_withdrawal',
      desc: '',
      args: [],
    );
  }

  /// `Landing Page Project`
  String get landing_page_project {
    return Intl.message(
      'Landing Page Project',
      name: 'landing_page_project',
      desc: '',
      args: [],
    );
  }

  /// `Juni Mobile App Project`
  String get juni_mobile_app_project {
    return Intl.message(
      'Juni Mobile App Project',
      name: 'juni_mobile_app_project',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get income_title {
    return Intl.message(
      'Income',
      name: 'income_title',
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
