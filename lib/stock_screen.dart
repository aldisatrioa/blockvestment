import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_app/components/stock_price_info.dart';
import 'package:starter_app/components/my_portfolio_card.dart';
import 'package:starter_app/components/my_watchlist_card.dart';
import 'package:starter_app/main_screen.dart';
import 'package:starter_app/model/crypto.dart';
import 'package:starter_app/open_chart_screen.dart';

class StockScreen extends ConsumerWidget {
  const StockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            ref.refresh(MyPortfolioCard.getCryptoMapProvider);
            return Future.value(false);
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.white10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assets/avatar.png',
                              width: 48.0,
                              height: 48.0,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text(
                          'Current Value',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12.0),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          'Rp25,349,200',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            const Text(
                              '+Rp349,900 (+6,00%)',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        const Divider(
                          height: 0.0,
                          color: Colors.white24,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const OpenChartScreen(),
                              ),
                            );
                          },
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.trending_up_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Text(
                                'Open chart',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const MyPortfolioCard(),
                const MyWatchlistCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
