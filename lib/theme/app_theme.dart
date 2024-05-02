import 'package:flutter/material.dart';

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.brandColor,
    required this.danger,
  });

  final Color? brandColor;
  final Color? danger;

  @override
  AppTheme copyWith({Color? brandColor, Color? danger}) {
    return AppTheme(
      brandColor: brandColor ?? this.brandColor,
      danger: danger ?? this.danger,
    );
  }

  @override
  AppTheme lerp(AppTheme? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      brandColor: Color.lerp(brandColor, other.brandColor, t),
      danger: Color.lerp(danger, other.danger, t),
    );
  }

  // Optional
  @override
  String toString() => 'MyColors(brandColor: $brandColor, danger: $danger)';
}
