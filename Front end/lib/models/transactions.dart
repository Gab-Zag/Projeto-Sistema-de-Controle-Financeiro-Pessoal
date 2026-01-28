import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/models/client.dart';

class Transactions {
  final int id;
  final String description;
  final double amount;
  final String type;
  final String transactions_date;
  final Category category;
  final Client client;

  Transactions({
    required this.id,
    required this.description,
    required this.amount,
    required this.type,
    required this.transactions_date,
    required this.category,
    required this.client,
  });

  factory Transactions.fromJson(Map<String, dynamic> json) {
    return Transactions(
      id: json["id"] ?? "",
      description: json["description"] ?? "",
      amount: (json["amount"] as num).toDouble(),
      type: json["type"] ?? "",
      transactions_date: json["transactions_date"] ?? "",
      category: Category.fromJson(json["category"]),
      client: Client.fromJson(json["client"]),
    );
  }

  Map<String, dynamic> toJson(){
    return{
      "id": id,
      "description": description,
      "amount": amount,
      "type": type,
      "transactions_date": transactions_date,
      "category": {"id": category.id},
      "client": {"id": client.id},
    };
  }
}
