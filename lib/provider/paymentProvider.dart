import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fiap_project2/model/payment.dart';

//singleton
class PaymentControllerProvider extends ChangeNotifier {
  final List<Payment> _payments = [];

  UnmodifiableListView<Payment> get items => UnmodifiableListView(_payments);

  void add(Payment payment) {
    _payments.add(payment);
    //ela que dispara a chamada ao ChangeNotifierProvider,
    //que, por sua vez, notifica todos os possíveis consumidores (Consumer)
    //dos dados desta classe
    notifyListeners();
  }

  void update(){
    notifyListeners();
  }
}