import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutterui_bankingapp/models/transaction.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PaymentCard> cardList = [
    PaymentCard(
        logoImageUrl: 'assets/images/logo.png',
        cartTypeUmageUrl: 'assets/images/visa.png',
        number: '0781',
        balance: '4,891',
        cardColor: Colors.blueAccent),
    PaymentCard(
        logoImageUrl: 'assets/images/logo.png',
        cartTypeUmageUrl: 'assets/images/mastercard.png',
        number: '4003',
        balance: '1,691',
        cardColor: Colors.greenAccent)
  ];

  List<Transaction> transationList = [
    Transaction(
        time: '06.32', purose: 'Starbucks', cost: '6.86', color: Colors.amber),
    Transaction(
        time: '11.42', purose: 'Nike', cost: '916.86', color: Colors.redAccent),
    Transaction(
        time: '06.09',
        purose: 'Apple',
        cost: '3656.86',
        color: Colors.blueAccent),
    Transaction(
        time: '02.02', purose: 'H&M', cost: '76.86', color: Colors.amberAccent),
    Transaction(
        time: '03.23',
        purose: 'Addidas',
        cost: '696.86',
        color: Colors.cyanAccent),
    Transaction(
        time: '04.42',
        purose: 'Dell',
        cost: '1566.86',
        color: Colors.lightGreenAccent),
    Transaction(
        time: '05.59', purose: 'Home Depot', cost: '16.86', color: Colors.red),
    Transaction(
        time: '06.32',
        purose: 'Watch',
        cost: '96.86',
        color: Colors.orangeAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expenses',
                    style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: GoogleFonts.lato(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '3,798',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '.63',
                        style: GoogleFonts.lato(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 220,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        'Up \$373 Since Last Month',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            color: Colors.red,
                            fontWeight: FontWeight.w900),
                      )),
                  SizedBox(
                    height: 35,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (PaymentCard card in cardList)
                          Card(
                            color: card.cardColor,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage(card.logoImageUrl))),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    card.number,
                                    style: GoogleFonts.orbitron(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1),
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$ ${card.balance}',
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    card.cartTypeUmageUrl))),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Today',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (Transaction transaction in transationList)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: transaction.color,
                                borderRadius: BorderRadius.circular(3)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            transaction.time,
                            style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            transaction.purose,
                            style: GoogleFonts.lato(
                                color: Colors.grey[700],
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '\$ ${transaction.cost}',
                            style: GoogleFonts.lato(
                                color: Colors.grey[700],
                                fontSize: 22,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.white, items: [
        BottomNavigationBarItem(
          icon: Icon(
            MaterialIcons.account_balance_wallet,
            size: 35,
            color: Colors.grey[700],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            MaterialIcons.lock,
            size: 35,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            MaterialIcons.person,
            size: 35,
            color: Colors.grey,
          ),
          label: '',
        )
      ]),
    );
  }
}
