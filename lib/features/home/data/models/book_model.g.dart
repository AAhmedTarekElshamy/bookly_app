// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookFromJson(Map<String, dynamic> json) => BookModel(
  kind: json['kind'] as String? ?? 'Unknown Kind',
  id: json['id'] as String? ?? 'Unknown ID',
  etag: json['etag'] as String? ?? 'Unknown ETag',
  selfLink: json['selfLink'] as String? ?? '',
  volumeInfo: json['volumeInfo'] == null
      ? VolumeInfo()
      : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
  saleInfo: json['saleInfo'] == null
      ? SaleInfo()
      : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
  accessInfo: json['accessInfo'] == null
      ? AccessInfo()
      : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
  searchInfo: json['searchInfo'] == null
      ? SearchInfo()
      : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookToJson(BookModel instance) => <String, dynamic>{
  'kind': instance.kind,
  'id': instance.id,
  'etag': instance.etag,
  'selfLink': instance.selfLink,
  'volumeInfo': instance.volumeInfo,
  'saleInfo': instance.saleInfo,
  'accessInfo': instance.accessInfo,
  'searchInfo': instance.searchInfo,
};

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => VolumeInfo(
  title: json['title'] as String? ?? 'Unknown Title',
  authors: (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  publishedDate: json['publishedDate'] as String? ?? 'Unknown Date',
  description: json['description'] as String? ?? 'No Description',
  industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
      ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
      .toList() ?? [],
  readingModes: json['readingModes'] == null
      ? ReadingModes(text: false, image: false)
      : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
  pageCount: (json['pageCount'] as num?)?.toInt() ?? 0,
  printType: json['printType'] as String? ?? 'Unknown Print Type',
  categories: (json['categories'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  maturityRating: json['maturityRating'] as String? ?? 'Unknown Rating',
  allowAnonLogging: json['allowAnonLogging'] as bool? ?? false,
  contentVersion: json['contentVersion'] as String? ?? 'Unknown Version',
  panelizationSummary: json['panelizationSummary'] == null
      ? PanelizationSummary(containsEpubBubbles: false, containsImageBubbles: false)
      : PanelizationSummary.fromJson(json['panelizationSummary'] as Map<String, dynamic>),
  imageLinks: json['imageLinks'] == null
      ? ImageLinks(smallThumbnail: '', thumbnail: '')
      : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
  language: json['language'] as String? ?? 'Unknown Language',
  previewLink: json['previewLink'] as String? ?? '',
  infoLink: json['infoLink'] as String? ?? '',
  canonicalVolumeLink: json['canonicalVolumeLink'] as String? ?? '',
);

Map<String, dynamic> _$VolumeInfoToJson(VolumeInfo instance) => <String, dynamic>{
  'title': instance.title,
  'authors': instance.authors,
  'publishedDate': instance.publishedDate,
  'description': instance.description,
  'industryIdentifiers': instance.industryIdentifiers,
  'readingModes': instance.readingModes,
  'pageCount': instance.pageCount,
  'printType': instance.printType,
  'categories': instance.categories,
  'maturityRating': instance.maturityRating,
  'allowAnonLogging': instance.allowAnonLogging,
  'contentVersion': instance.contentVersion,
  'panelizationSummary': instance.panelizationSummary,
  'imageLinks': instance.imageLinks,
  'language': instance.language,
  'previewLink': instance.previewLink,
  'infoLink': instance.infoLink,
  'canonicalVolumeLink': instance.canonicalVolumeLink,
};

IndustryIdentifier _$IndustryIdentifierFromJson(Map<String, dynamic> json) => IndustryIdentifier(
  type: json['type'] as String? ?? 'Unknown Type',
  identifier: json['identifier'] as String? ?? 'Unknown Identifier',
);

Map<String, dynamic> _$IndustryIdentifierToJson(IndustryIdentifier instance) => <String, dynamic>{
  'type': instance.type,
  'identifier': instance.identifier,
};

ReadingModes _$ReadingModesFromJson(Map<String, dynamic> json) => ReadingModes(
  text: json['text'] as bool? ?? false,
  image: json['image'] as bool? ?? false,
);

Map<String, dynamic> _$ReadingModesToJson(ReadingModes instance) => <String, dynamic>{
  'text': instance.text,
  'image': instance.image,
};

PanelizationSummary _$PanelizationSummaryFromJson(Map<String, dynamic> json) => PanelizationSummary(
  containsEpubBubbles: json['containsEpubBubbles'] as bool? ?? false,
  containsImageBubbles: json['containsImageBubbles'] as bool? ?? false,
);

Map<String, dynamic> _$PanelizationSummaryToJson(PanelizationSummary instance) => <String, dynamic>{
  'containsEpubBubbles': instance.containsEpubBubbles,
  'containsImageBubbles': instance.containsImageBubbles,
};

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) => ImageLinks(
  smallThumbnail: json['smallThumbnail'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
);

Map<String, dynamic> _$ImageLinksToJson(ImageLinks instance) => <String, dynamic>{
  'smallThumbnail': instance.smallThumbnail,
  'thumbnail': instance.thumbnail,
};

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) => SaleInfo(
  country: json['country'] as String? ?? 'Unknown Country',
  saleability: json['saleability'] as String? ?? 'Unknown Saleability',
  isEbook: json['isEbook'] as bool? ?? false,
);

Map<String, dynamic> _$SaleInfoToJson(SaleInfo instance) => <String, dynamic>{
  'country': instance.country,
  'saleability': instance.saleability,
  'isEbook': instance.isEbook,
};

AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) => AccessInfo(
  country: json['country'] as String? ?? 'Unknown Country',
  viewability: json['viewability'] as String? ?? 'Unknown Viewability',
  embeddable: json['embeddable'] as bool? ?? false,
  publicDomain: json['publicDomain'] as bool? ?? false,
  textToSpeechPermission: json['textToSpeechPermission'] as String? ?? 'Unknown Permission',
  epub: json['epub'] == null ? Epub(isAvailable: false) : Epub.fromJson(json['epub'] as Map<String, dynamic>),
  pdf: json['pdf'] == null ? Pdf(isAvailable: false) : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
  webReaderLink: json['webReaderLink'] as String? ?? '',
  accessViewStatus: json['accessViewStatus'] as String? ?? 'Unknown Status',
  quoteSharingAllowed: json['quoteSharingAllowed'] as bool? ?? false,
);

Map<String, dynamic> _$AccessInfoToJson(AccessInfo instance) => <String, dynamic>{
  'country': instance.country,
  'viewability': instance.viewability,
  'embeddable': instance.embeddable,
  'publicDomain': instance.publicDomain,
  'textToSpeechPermission': instance.textToSpeechPermission,
  'epub': instance.epub,
  'pdf': instance.pdf,
  'webReaderLink': instance.webReaderLink,
  'accessViewStatus': instance.accessViewStatus,
  'quoteSharingAllowed': instance.quoteSharingAllowed,
};

Epub _$EpubFromJson(Map<String, dynamic> json) => Epub(
  isAvailable: json['isAvailable'] as bool? ?? false,
);

Map<String, dynamic> _$EpubToJson(Epub instance) => <String, dynamic>{
  'isAvailable': instance.isAvailable,
};

Pdf _$PdfFromJson(Map<String, dynamic> json) => Pdf(
  isAvailable: json['isAvailable'] as bool? ?? false,
);

Map<String, dynamic> _$PdfToJson(Pdf instance) => <String, dynamic>{
  'isAvailable': instance.isAvailable,
};

SearchInfo _$SearchInfoFromJson(Map<String, dynamic> json) => SearchInfo(
  textSnippet: json['textSnippet'] as String? ?? 'No Snippet',
);

Map<String, dynamic> _$SearchInfoToJson(SearchInfo instance) => <String, dynamic>{
  'textSnippet': instance.textSnippet,
};
