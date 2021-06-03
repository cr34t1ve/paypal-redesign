import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

var currencies = ['Bitcoin', 'USDT', 'Ripple'];
var status = ['AWAITING PAYMENT', 'PROCESSING', 'PROCESSED', 'CANCELLED'];

var buyRate = 5.70;

class Transaction {
  var creationdate;

  double price;
  bool isBuying;
  String name;
  String time;
  String leading;

  Transaction(
      {this.creationdate,
      this.isBuying,
      this.price,
      this.name,
      this.time,
      this.leading});
}

List<Transaction> transactions = [
  Transaction(
      creationdate: DateTime.now().millisecondsSinceEpoch,
      price: 250.0,
      isBuying: true,
      name: 'Mike Darko',
      time: '1 minute ago',
      leading: 'assets/images/M.svg'),
  Transaction(
      creationdate: DateTime.now().millisecondsSinceEpoch,
      name: 'Google Drive',
      time: '2 hours ago',
      leading: 'assets/images/Vectorgdrive.svg',
      price: 138.5,
      isBuying: false),
  Transaction(
      name: 'Carlson Kofi',
      time: '2 hours ago',
      leading: 'assets/images/C.svg',
      creationdate: DateTime.now().millisecondsSinceEpoch,
      price: 531,
      isBuying: true),
  Transaction(
      name: 'Apple Store',
      time: 'Yesterday at 11:45 AM',
      leading: 'assets/images/Apple_logo_grey 1.svg',
      creationdate: DateTime(2021, 06, 01).millisecondsSinceEpoch,
      price: 250,
      isBuying: false),
  Transaction(
      name: 'Pizza Delivery',
      time: 'Yesterday at 2:30 PM',
      leading: 'assets/images/pizza-slice 1.svg',
      creationdate: DateTime(2021, 06, 01).millisecondsSinceEpoch,
      price: 58.9,
      isBuying: false),
  Transaction(
      name: 'Amazon.com',
      time: 'Yesterday at 6:28 PM',
      leading: 'assets/images/Vectoramazon.svg',
      creationdate: DateTime(2021, 06, 01).millisecondsSinceEpoch,
      price: 300.0,
      isBuying: false),
  Transaction(
      creationdate: DateTime(2021, 06, 01).millisecondsSinceEpoch,
      name: 'Google Drive',
      time: '2 hours ago',
      leading: 'assets/images/Vectorgdrive.svg',
      price: 138.5,
      isBuying: false),
]..sort((v1, v2) => v2.creationdate - v1.creationdate);

ListView buildListView() {
  String prevDay;
  String today = DateFormat("EEE, MMM d, y").format(DateTime.now());
  String yesterday = DateFormat("EEE, MMM d, y")
      .format(DateTime.now().add(Duration(days: -1)));

  return ListView.builder(
    //number of cards
    itemCount: transactions.length,
    //
    itemBuilder: (context, index) {
      Transaction transaction = transactions[index];
      DateTime date =
          DateTime.fromMillisecondsSinceEpoch(transaction.creationdate);
      String dateString = DateFormat("EEE, MMM d, y").format(date);

      //setting header date text
      if (today == dateString) {
        dateString = "Today";
      } else if (yesterday == dateString) {
        dateString = "Yesterday";
      }

      bool showHeader = prevDay != dateString;
      prevDay = dateString;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          showHeader
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    dateString,
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF243656).withOpacity(0.5)),
                  ),
                )
              : Offstage(),
          //transaction card build
          buildItem(index, context, date, transaction),
        ],
      );
    },
  );
}

Widget buildItem(
    int index, BuildContext context, DateTime date, Transaction transaction) {
  return IntrinsicHeight(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: simpleCoinsCard(transaction, context),
        ),
      ],
    ),
  );
}

Visibility simpleCoinsCard(Transaction transaction, BuildContext context) {
  return Visibility(
      // visible: transaction.isBuying,
      child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 4),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color(0xFF1546A0).withOpacity(0.05),
              blurRadius: 48.0,
              spreadRadius: 1,
              offset: Offset(0.0, 50.0))
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        // tileColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Color(0xFFF5F7FA),
          child: SvgPicture.asset(transaction.leading),
        ),
        title: Text(
          transaction.name,
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF243656)),
        ),
        subtitle: Text(
          transaction.time,
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF243656).withOpacity(0.5)),
        ),
        trailing: Text(
          transaction.isBuying
              ? '+${transaction.price.toString()}'
              : '-${transaction.price.toString()}',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color:
                  transaction.isBuying ? Color(0xFF40A187) : Color(0xFFE56565)),
        ),
      ),
    ),
  ));
}
