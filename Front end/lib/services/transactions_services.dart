import 'package:flutter_application_1/models/transactions.dart';

abstract class TransactionsServices {
  Future<Transactions> getTrasactions(int id);
}