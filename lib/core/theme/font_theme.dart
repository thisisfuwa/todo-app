enum AppThemeFontFamily {
  arial("Arial Regular", "Arial");

  final String shortName;
  final String family;

  const AppThemeFontFamily(this.shortName, this.family);
}

extension FontFamilyX on AppThemeFontFamily {
  bool get isJsJindara => this == AppThemeFontFamily.arial;

  String? get data {
    switch (this) {
      case AppThemeFontFamily.arial:
        return "Arial";
      default:
        return "Arial";
    }
  }
}
