// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:amplify_authenticator/src/models/authenticator_exception.dart';
import 'package:flutter/material.dart';

/// Exception types that can be resolved to localized messages.
enum ExceptionResolverKeyType {
  incorrectUsernamePassword,
  emailAlreadyExists,
  usernameAlreadyExists,
  invalidVerificationCode,
  invalidUsername,
  unknown,
}

/// Resolver for exception messages.
class ExceptionResolver extends Resolver<ExceptionResolverKeyType> {
  const ExceptionResolver();

  /// Maps exception types to enum values.
  ///
  /// This is used to convert Amplify Auth SDK exception types
  /// to typed enum values for localization.
  static ExceptionResolverKeyType keyFromException(
    AuthenticatorException exception,
  ) {
    switch (exception.underlyingException) {
      case NotAuthorizedServiceException():
        return ExceptionResolverKeyType.incorrectUsernamePassword;
      case UsernameExistsException():
        return ExceptionResolverKeyType.usernameAlreadyExists;
      case UserLambdaValidationException()
          when exception.message.contains('InvalidUsernameException'):
        return ExceptionResolverKeyType.invalidUsername;
      case UserLambdaValidationException()
          when exception.message.contains('DuplicateUsernameException'):
        return ExceptionResolverKeyType.emailAlreadyExists;
      case CodeMismatchException():
        return ExceptionResolverKeyType.invalidVerificationCode;
      default:
        return ExceptionResolverKeyType.unknown;
    }
  }

  /// The exception that is thrown if username or password is wrong.
  String incorrectUsernamePassword(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(context).incorrectUsernamePassword;
  }

  /// The exception that is thrown if the email provided on signup is already in use.
  String emailAlreadyExists(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(context).emailAlreadyExists;
  }

  /// The exception that is thrown if the username provided on signup is already in use.
  String usernameAlreadyExists(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(context).emailAlreadyExists;
  }

  /// The exception that is thrown if the username provided is invalid.
  String invalidUsername(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(context).invalidVerificationCode;
  }

  /// The exception that is thrown if the provided verification code was invalid.
  String invalidVerificationCode(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(
      context,
    ).invalidVerificationCode;
  }

  @override
  String resolve(BuildContext context, ExceptionResolverKeyType key) {
    switch (key) {
      case ExceptionResolverKeyType.incorrectUsernamePassword:
        return incorrectUsernamePassword(context);
      case ExceptionResolverKeyType.emailAlreadyExists:
        return emailAlreadyExists(context);
      case ExceptionResolverKeyType.usernameAlreadyExists:
        return usernameAlreadyExists(context);
      case ExceptionResolverKeyType.invalidUsername:
        return invalidUsername(context);
      case ExceptionResolverKeyType.invalidVerificationCode:
        return invalidVerificationCode(context);
      case ExceptionResolverKeyType.unknown:
        return 'An unknown error occurred.';
    }
  }
}
