import 'package:flutter/material.dart';
import 'package:flutter_fiap_project2/listBills.dart';
import 'package:flutter_fiap_project2/mobx/paymentController.dart';
import 'package:flutter_fiap_project2/src/home_preauth_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'src/authentication.dart';
import 'src/widgets.dart';


void main() async {
  GetIt.I.registerSingleton<PaymentController>(PaymentController());
  runApp(
    ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      builder: (context, _) => MyApp(),
    ),
    );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Projeto Escape trapp',
            debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //mobx

home: HomePage(),
      // home: ListBills(),

      //provider
      /*home: ChangeNotifierProvider(
        create: (context) => PaymentController(),
        child: ListBills(),
      ),*/
      // home: ChangeNotifierProvider(
      //   create: (context) => PaymentController(),
      //   child: HomePage(),
      // ),
    );
  }
}

