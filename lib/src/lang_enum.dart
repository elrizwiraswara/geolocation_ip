/// An enumeration of supported languages for the geolocation API.
enum Lang {
  en('en'), // English
  de('de'), // German
  es('es'), // Spanish
  ptBR('pt-BR'), // Portuguese (Brazil)
  fr('fr'), // French
  ja('ja'), // Japanese
  zhCN('zh-CN'), // Chinese (Simplified)
  ru('ru'); // Russian

  /// The language code value used in the API request.
  final String value;

  /// Constructs a [Lang] instance with the given language code.
  const Lang(this.value);
}
