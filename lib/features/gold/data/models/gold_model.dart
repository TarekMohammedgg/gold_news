import 'package:gold_news/core/networking/api_constants.dart';

class GoldModel {
  final String name;
  final num price;
  final String symbol;
  final String updatedAt;
  final String updatedAtReadable;

  GoldModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json[ApiConstants.name],
      price: json[ApiConstants.price],
      symbol: json[ApiConstants.symbol],
      updatedAt: json[ApiConstants.updatedAt],
      updatedAtReadable: json[ApiConstants.updatedAtReadable],
    );
  }
}
