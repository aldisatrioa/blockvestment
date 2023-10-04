import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:starter_app/model/crypto.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final cryptoFutureProvider = FutureProvider<List<Crypto>>((ref) {
  // CRYPTO URL
  return ref
      .watch(dioProvider)
      .get('https://mocki.io/v1/cfcf5ff3-a9fb-4fbc-b7f0-d76595e8f804')
      .then((value) => (value.data as List).map((e) => Crypto.fromJson(e)).toList());
});

final selectedThemeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.dark;
});

final allItemsProvider = FutureProvider<List<Crypto>>((ref) async {
  final selectedCategory = ref.watch(selectedInvestmentCategoryProvider);
  if (selectedCategory == 'Stocks') {
    return [];
  } else if (selectedCategory == 'Crypto') {
    await Future.delayed(const Duration(seconds: 5));
    return ref.watch(cryptoFutureProvider.future);
  } else if (selectedCategory == 'Fiat') {
    return [];
  }
  return [];
});

final selectedInvestmentCategoryProvider = StateProvider<String>((ref) {
  return 'All';
});

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List<String> get investmentCategories => ['All', 'Stocks', 'Crypto', 'Fiat'];

  List<_SalesData> data = [
    _SalesData('Jan', 20),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 90)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final currentTheme =
                  ref.watch(selectedThemeProvider.select((value) => value));
              return IconButton(
                onPressed: () {
                  final currentTheme =
                      ref.read(selectedThemeProvider.notifier).state;
                  ref.read(selectedThemeProvider.notifier).state =
                      currentTheme == ThemeMode.dark
                          ? ThemeMode.light
                          : ThemeMode.dark;
                },
                icon: Icon(currentTheme == ThemeMode.dark
                    ? Icons.dark_mode
                    : Icons.light_mode),
              );
            },
          ),
          HookBuilder(builder: (context) {
            return IconButton(
              onPressed: () {
                // test.value = !test.value;
              },
              icon: Icon(Icons.abc),
            );
          }),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Container(
            margin: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 8.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white10,
                hintText: 'Search Wallet..',
                hintStyle: const TextStyle(
                  fontSize: 13.0,
                ),
                isDense: true,
                contentPadding: const EdgeInsets.all(0.0),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$119.11',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total earned',
                        style: TextStyle(color: Colors.white70, fontSize: 13.0),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        '\$8.39483948934',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  '+121.11%',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const Text(
                  '24hr',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            SfSparkLineChart.custom(
              color: Colors.green,
              xValueMapper: (int index) => data[index].year,
              yValueMapper: (int index) => data[index].sales,
              dataCount: 5,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      side: const BorderSide(width: 1.0, color: Colors.white10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Deposit',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      side: const BorderSide(width: 1.0, color: Colors.white10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Withdraw",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 36.0,
              child: Consumer(builder: (context, ref, child) {
                return ListView(
                  scrollDirection: Axis.horizontal,
                  children: investmentCategories
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            ref
                                .read(
                                    selectedInvestmentCategoryProvider.notifier)
                                .state = e;
                          },
                          child: Consumer(builder: (context, ref, child) {
                            return Container(
                              margin: const EdgeInsets.only(
                                right: 8.0,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8.0,
                              ),
                              decoration: e ==
                                      ref.watch(
                                          selectedInvestmentCategoryProvider)
                                  ? const BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    )
                                  : null,
                              child: Center(
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      )
                      .toList(),
                );
              }),
            ),
            Consumer(builder: (context, ref, child) {
              return ref.watch(allItemsProvider).maybeWhen(
                data: (data) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final crypto = data[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Container(),
                        ),
                        title: Text(
                          crypto.name ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          'asd',
                          // '\$${crypto.priceUsd?.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  );
                },
                loading: () => Center(child: CircularProgressIndicator(),),
                error: (e, s) {
                  return Text(e.toString());
                },
                orElse: () {
                  return Container();
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
