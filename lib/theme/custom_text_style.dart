import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.5),
        fontSize: 16.fSize,
      );
  static get bodyLargeRobotoPrimary =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.5),
        fontSize: 16.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumBlack9000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
        fontWeight: FontWeight.w300,
      );
  // Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
      );
  static get displayMediumInterPrimary =>
      theme.textTheme.displayMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  // Headline text style
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Title style
  static get titleLargeKodchasan => theme.textTheme.titleLarge!.kodchasan;
  static get titleLargeKodchasanOnSecondaryContainer =>
      theme.textTheme.titleLarge!.kodchasan.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.5),
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryMedium17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get kodchasan {
    return copyWith(
      fontFamily: 'Kodchasan',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inder {
    return copyWith(
      fontFamily: 'Inder',
    );
  }
}
