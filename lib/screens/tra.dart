import 'package:flutter/material.dart';

void main() {
  runApp(tra());
}

class tra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Desktop Example'),
        ),
        body: Row(
          children: [
            SizedBox(
              width: 120.0, // العرض المحدد لـ NavigationRail
              child: NavigationRail(
                selectedIndex: 0,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_1),
                    label: Text('تخصص'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_2),
                    label: Text('مدينة'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_3),
                    label: Text('منطقة'),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3, // الوسط: ثلاثة أضعاف العرض المتبقي بعد عرض NavigationRail
              child: Container(
                width: double.infinity,
                color: Colors.grey[300],
                child: Center(
                  child: Text('هنا يمكن وضع الفلاتر'),
                ),
              ),
            ),
            Expanded(
              flex: 7, // القسم السفلي: سبعة أضعاف العرض المتبقي بعد عرض NavigationRail
              child: Container(
                width: double.infinity,
                color: Colors.grey[400],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.grey[200],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('اسم المريض: محمد'),
                          Text('الشكوى: عظام'),
                          Text('المدينة: القاهرة'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}