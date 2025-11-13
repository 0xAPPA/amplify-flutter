// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'instructions_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AuthenticatorInstructionsLocalizationsEn
    extends AuthenticatorInstructionsLocalizations {
  AuthenticatorInstructionsLocalizationsEn([String locale = 'en'])
    : super(locale);

  @override
  String get totpStep1Title => 'Step 1: Download an Authenticator app';

  @override
  String get totpStep2Title => 'Step 2: Scan the QR code';

  @override
  String get totpStep3Title => 'Step 3: Verify your code';

  @override
  String get totpStep1Body =>
      'Authenticator apps generate one-time codes that can be used to verify your identity';

  @override
  String get totpStep2Body =>
      'Open then Authenticator app and scan the QR code or enter the key to get your verification code';

  @override
  String get totpStep3Body =>
      'Enter the 6 digit code from your Authenticator app';
}
