class RecentData {
  final String suraNameEN;
  final String suraNameAR;
  final String suraVersesNumber;

  RecentData({
    required this.suraNameEN,
    required this.suraNameAR,
    required this.suraVersesNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      "suraNameEN": suraNameEN,
      "suraNameAR": suraNameAR,
      "suraVerses": suraVersesNumber,
    };
  }

  factory RecentData.fromJson(Map<String, dynamic> json) {
    return RecentData(
      suraNameEN: json["suraNameEN"],
      suraNameAR: json["suraNameAR"],
      suraVersesNumber: json["suraVersesNumber"],
    );
  }
}
