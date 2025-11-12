// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'exception_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AuthenticatorExceptionLocalizationsEn
    extends AuthenticatorExceptionLocalizations {
  AuthenticatorExceptionLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get incorrectUsernamePassword => 'Incorrect username or password.';

  @override
  String get emailAlreadyExists =>
      'An account with the given email already exists.';

  @override
  String get userNotExists => 'User does not exist.';

  @override
  String get invalidVerificationCode =>
      'Invalid verification code provided, please try again.';
}
