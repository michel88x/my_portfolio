class LatestWorkObject {
  final String title;
  final String subtitle;
  final String image;
  final String url;
  final String? googlePlayUrl;
  final String? appStoreUrl;

  LatestWorkObject({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.url,
    this.googlePlayUrl,
    this.appStoreUrl,
  });
}