class Hadith {
  final String id;
  final String chpaterId;
  final String title;
  final String hadith;
  final String translation;
  final String reference;
  final String inBookReference;

  const Hadith({
    required this.id,
    required this.chpaterId,
    required this.title,
    required this.hadith,
    required this.translation,
    required this.reference,
    required this.inBookReference,
  });
}
