import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
    
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  DateTime myDateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var formatter = DateFormat.MMM();
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.date_range)
        ,)
      ),
      drawer: Container(
        width: 250,
        color: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 10,
              color: Colors.white,
            ),
            Container(
              height: 40,
              color: Colors.white,
              child: Text(
                ' Home / Business Insight / Report / Member  ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Text(
                ' Daily Member ${myDateTime.day}-${formatter.format(myDateTime)}-${myDateTime.year}',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 20,
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.orange,
                    child: Text(
                         '     Total Members:                      5',
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                ),
              ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.grey,
                    child: Text(
                         '     Total Members:                      5',
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                ),
              ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.orange,
                    child: Text(
                         '     Total Rev.(THB):                      639k',
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                ),
              ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.grey,
                    child: Text(
                         '     Total Rev.(THB):                      639k',
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                ),
              ),
                  ),
                ),
              ],
            ),
            DataTable(
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('ID'),
                numeric: true),
                DataColumn(label: Text('Tier')),
                DataColumn(label: Text('LTV'),
                numeric: true),
                DataColumn(label: Text('Total Trans.'),
                numeric: true),
                DataColumn(label: Text('Total Point'),
                numeric: true),
                DataColumn(label: Text('Remaining Point'),
                numeric: true),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Bussaracum')),
                  DataCell(Text('082 466 9224')),
                  DataCell(Text('Gold')),
                  DataCell(Text('500008')),
                  DataCell(Text('1')),
                  DataCell(Text('40000')),
                  DataCell(Text('40000')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Leelar')),
                  DataCell(Text('087 436 8466')),
                  DataCell(Text('Platinum')),
                  DataCell(Text('10000')),
                  DataCell(Text('1')),
                  DataCell(Text('800')),
                  DataCell(Text('800')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Papawarin M.')),
                  DataCell(Text('090 084 3048')),
                  DataCell(Text('Silver')),
                  DataCell(Text('111050')),
                  DataCell(Text('1')),
                  DataCell(Text('4442')),
                  DataCell(Text('4442')),
                ]),
                DataRow(cells: [
                  DataCell(Text('VeryCust')),
                  DataCell(Text('019 990 9999')),
                  DataCell(Text('White')),
                  DataCell(Text('8600')),
                  DataCell(Text('1')),
                  DataCell(Text('2064')),
                  DataCell(Text('2064')),
                ]), 
                DataRow(cells: [
                  DataCell(Text('smilecustomer')),
                  DataCell(Text('018 777 3377')),
                  DataCell(Text('Black')),
                  DataCell(Text('9840')),
                  DataCell(Text('1')),
                  DataCell(Text('393')),
                  DataCell(Text('393')),
                ]), 
                DataRow(cells: [
                  DataCell(Text('Total:')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('639498')),
                  DataCell(Text('5')),
                  DataCell(Text('47699')),
                  DataCell(Text('47699')),
                ]), 
              ],
             ),
          ],
        ),
      ),
    );
  }
}
