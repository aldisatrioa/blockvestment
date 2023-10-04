import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:starter_app/model/chart_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

enum PriceChangeStatus { up, down }

class StockPriceInfo extends StatelessWidget {
  final String name;
  final int lot;
  final double currentPrice, profit;
  final PriceChangeStatus status;
  final List<ChartData> priceChangeHistory;

  StockPriceInfo(
      {Key? key,
      required this.name,
      required this.lot,
      required this.profit,
      required this.currentPrice,
      required this.status,
      required this.priceChangeHistory})
      : super(key: key);

  final nf = NumberFormat.simpleCurrency(locale: 'ID', decimalDigits: 0);

  bool get isProfit => status == PriceChangeStatus.up;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  '$lot lot',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              height: 56.0,
              child: SfCartesianChart(
                plotAreaBorderWidth: 0,
                primaryXAxis: NumericAxis(isVisible: false),
                primaryYAxis: NumericAxis(isVisible: false),
                series: <SplineSeries<ChartData, num>>[
                  SplineSeries<ChartData, num>(
                      splineType: SplineType.natural,
                      dataSource: priceChangeHistory,
                      xValueMapper: (ChartData sales, _) => sales.x,
                      yValueMapper: (ChartData sales, _) => sales.y,
                      width: 2)
                ],
                palette: isProfit
                    ? <Color>[
                        Colors.green,
                        Colors.lightGreenAccent,
                        Colors.lightGreen,
                      ]
                    : [
                        Colors.red,
                        Colors.redAccent,
                      ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  nf.format(currentPrice),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  "${isProfit ? '+' : '-'}${nf.format(profit)}",
                  style: TextStyle(
                    color: isProfit ? Colors.green : Colors.redAccent,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
