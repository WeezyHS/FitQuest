import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class progresso_peso extends StatefulWidget {
  const progresso_peso({super.key});

  @override
  State<progresso_peso> createState() => _progresso_pesoState();
}

class _progresso_pesoState extends State<progresso_peso> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text("Progresso Semanal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 50),
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  child: MyBarChart(),
                ),
              ),
              SizedBox(height: 50),

            ],
          ),
        ),
      ),
    );
  }
}


class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
        BarChartData(
            barTouchData: barTouchData,
            titlesData: titlesData,
            borderData: borderData,
            barGroups: barGroups,
            gridData: FlGridData(show: false),
            alignment: BarChartAlignment.spaceAround,
            maxY: 20
        )
    );
  }
}

BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
        tooltipBgColor: Colors.transparent,
        tooltipPadding: EdgeInsets.zero,
        tooltipMargin: 0,
        getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex
            ) {
          return BarTooltipItem(
              rod.toY.toString(),
              const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 11)
          );
        }
    )
);

Widget getTitles(double value, TitleMeta meta){

  final style = TextStyle(
      color: Colors.blueAccent,
      fontWeight: FontWeight.bold,
      fontSize: 11
  );

  String text;
  switch (value.toInt()) {
    case 1:
      text = "S2";
      break;
    case 2:
      text = "S3";
      break;
    case 3:
      text = "S4";
      break;
    case 4:
      text = "Qui";
      break;
    case 5:
      text = "Sex";
      break;
    case 6:
      text = "Sab";
      break;
    default:
      text = "S1";
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 4,
    child: Text(text, style: style),
  );
}

FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false)
    ),
    topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false)
    ),
    rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false)
    )
);

FlBorderData get borderData => FlBorderData(
  show: false,
);

LinearGradient get barsGradient => LinearGradient(colors:
[
  Colors.blueAccent,
  Colors.redAccent
],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter
);

List<BarChartGroupData> get barGroups => [
  BarChartGroupData(x: 0,
    barRods: [
      BarChartRodData( toY: 1.1, gradient: barsGradient)
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(x: 1,
    barRods: [
      BarChartRodData(toY: 0.8, gradient: barsGradient)
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(x: 2,
    barRods: [
      BarChartRodData(toY: 0.4, gradient: barsGradient)
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(x: 3,
    barRods:  [
      BarChartRodData(toY: 1, gradient: barsGradient)
    ],
    showingTooltipIndicators: [0],
  ),


];

class BarChartSample extends StatefulWidget {
  const BarChartSample({super.key});

  @override
  State<BarChartSample> createState() => _BarChartSampleState();
}

class _BarChartSampleState extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    return const AspectRatio(aspectRatio: 1.6,
      child: MyBarChart(),
    );
  }
}
