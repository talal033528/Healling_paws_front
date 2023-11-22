import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWithTwoSeriesWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: "Sales Data for a Week"),
      primaryXAxis: CategoryAxis(),
      primaryYAxis:
          NumericAxis(isVisible: false), // Hide the side numbers on the Y-axis
      series: <ChartSeries>[
        // First series
        AreaSeries<SalesData, String>(
          borderColor: Color(0xffffffff),
          color: Color(0xffDDE2E8),
          name: 'Series 1',
          dataSource: [
            SalesData('Mon', 8),
            SalesData('Tue', 10),
            SalesData('Wed', 11),
            SalesData('Thu', 15),
            SalesData('Fri', 8),
            SalesData('Sat', 12),
            SalesData('Sun', 14),
          ],
          xValueMapper: (SalesData sales, _) => sales.day,
          yValueMapper: (SalesData sales, _) => sales.sales,
        ),
        // Second series
        AreaSeries<SalesData, String>(
          name: 'Series 2',
          dataSource: [
            SalesData('Mon', 5),
            SalesData('Tue', 3),
            SalesData('Wed', 4),
            SalesData('Thu', 2),
            SalesData('Fri', 6),
            SalesData('Sat', 8),
            SalesData('Sun', 10),
          ],
          xValueMapper: (SalesData sales, _) => sales.day,
          yValueMapper: (SalesData sales, _) => sales.sales,
          color: Color(0xff29B6F6), // Set a custom color
        )
      ],
    );
  }
}

class SalesData {
  SalesData(this.day, this.sales);

  final String day;
  final double sales;
}
