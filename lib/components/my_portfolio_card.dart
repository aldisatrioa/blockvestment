import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_app/components/stock_price_info.dart';
import 'package:starter_app/model/chart_data.dart';
import 'package:starter_app/model/crypto.dart';
import 'package:starter_app/model/my_stock_info.dart';
import 'package:starter_app/model/stock.dart';
import 'package:starter_app/providers/dio_provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

final myPortfoliosProvider = StateProvider<List<Stock>>((ref) {
  return [
    Stock(
      name: 'PT Bank Rakyat Indonesia (Persero) Tbk',
      myStock: MyStockInfo(lot: 400, profit: 3247847),
      code: 'BBRI',
      lastPrice: 8170,
    ),
    Stock(
      name: 'PT Bank Central Asia Tbk',
      myStock: MyStockInfo(lot: 400, profit: 3247847),
      code: 'BBCA',
      lastPrice: 8170,
    ),
    Stock(
      name: 'PT Bank Rakyat Indonesia (Persero) Tbk',
      myStock: MyStockInfo(lot: 400, profit: 3247847),
      code: 'BBCA',
      lastPrice: 8170,
    ),
    Stock(
      name: 'PT GoTo Gojek Tokopedia Tbk',
      myStock: MyStockInfo(lot: 1000, profit: 9834983),
      code: 'GOTO',
      lastPrice: 120,
    ),
  ];
});

class MyPortfolioCard extends StatelessWidget {
  static final getCryptoMapProvider =
      FutureProvider<List<Crypto>>((ref) async {
    final response = await ref
        .watch(dioProvider)
        .get('/cryptocurrency/map', queryParameters: {'limit': 5});
    final data = response.data['data'];
    return (data as List).map((e) => Crypto.fromJson(e)).toList();
  });

  const MyPortfolioCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Portfolios',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Consumer(
              builder: (context, ref, child) {
                final getCryptoMap = ref.watch(getCryptoMapProvider);
                return getCryptoMap.when(
                  data: (data) {
                    return ListView.separated(
                      itemCount: data.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          height: 24.0,
                          color: Colors.white24,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return StockPriceInfo(
                          name: data[index].name,
                          lot: 400,
                          profit: 3247847,
                          currentPrice: 8170,
                          priceChangeHistory: <ChartData>[
                            ChartData(2011, 0.05),
                            ChartData(2011.25, 0),
                            ChartData(2011.50, 0.03),
                            ChartData(2011.75, 0),
                            ChartData(2012, 0.04),
                            ChartData(2012.25, 0.02),
                            ChartData(2012.50, -0.01),
                            ChartData(2012.75, 0.01),
                            ChartData(2013, -0.08),
                            ChartData(2013.25, -0.02),
                            ChartData(2013.50, 0.03),
                            ChartData(2013.75, 0.05),
                            ChartData(2014, 0.04),
                            ChartData(2014.25, 0.02),
                            ChartData(2014.50, 0.04),
                            ChartData(2014.75, 0),
                            ChartData(2015, 0.02),
                            ChartData(2015.25, 0.10),
                            ChartData(2015.50, 0.09),
                            ChartData(2015.75, 0.11),
                            ChartData(2016, 0.12),
                          ],
                          status: PriceChangeStatus.up,
                        );
                      },
                    );
                  },
                  error: (error, stackTrace) {
                    return Center(
                      child: Text(error.toString()),
                    );
                  },
                  loading: () {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
            const Divider(
              height: 24.0,
              color: Colors.white24,
            ),
            const Text(
              "See more portfolio",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
