// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'message_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AuthenticatorMessageLocalizationsEn
    extends AuthenticatorMessageLocalizations {
  AuthenticatorMessageLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String codeSent(String destination) {
    return 'A confirmation code has been sent to $destination.';
  }

  @override
  String get codeSentUnknown => 'A confirmation code has been sent.';

  @override
  String get copySucceeded => 'Copied to clipboard!';

  @override
  String get copyFailed => 'Copy to clipboard failed.';
}
