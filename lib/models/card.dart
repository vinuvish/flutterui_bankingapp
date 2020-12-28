import 'package:flutter/widgets.dart';

class PaymentCard {
  String logoImageUrl;
  String number;
  String balance;
  String cartTypeUmageUrl;
  Color cardColor;
  PaymentCard(
      {this.logoImageUrl,
      this.number,
      this.balance,
      this.cartTypeUmageUrl,
      this.cardColor});
}
