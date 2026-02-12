import 'package:gold_news/core/networking/api_constants.dart';

class SilverModel {
  final String name;
  final num price;
  final String symbol;
  final String updatedAt;
  final String updatedAtReadable;

  SilverModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json[ApiConstants.name],
      price: json[ApiConstants.price],
      symbol: json[ApiConstants.symbol],
      updatedAt: json[ApiConstants.updatedAt],
      updatedAtReadable: json[ApiConstants.updatedAtReadable],
    );
  }
}
