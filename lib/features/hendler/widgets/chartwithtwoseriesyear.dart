import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWithMultipleYears extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.all(0.98),
      title: ChartTitle(text: "August 2023"),

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
            SalesData('2016', 1000),
            SalesData('2017', 5200),
            SalesData('2018', 7500),
            SalesData('2019', 7200),
            SalesData('2020', 5200),
            SalesData('2021', 5900),
            SalesData('2022', 2200),
            SalesData('2023', 5500),
            SalesData('2023', 7500),
          ],
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales,
        ),
        // Second series
        AreaSeries<SalesData, String>(
          name: 'Series 2',
          dataSource: [
            SalesData('2023', 1500),
            SalesData('2023', 2200),
            SalesData('2022', 5500),
            SalesData('2021', 5200),
            SalesData('2020', 4800),
            SalesData('2019', 2000),
            SalesData('2018', 3900),
            SalesData('2017', 3500),
            SalesData('2016', 7500),
          ],
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales,
          color: Color(0xff29B6F6), // Set a custom color
        )
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
