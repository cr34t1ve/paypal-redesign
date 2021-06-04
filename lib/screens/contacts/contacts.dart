import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paypal_redesign/models/contactsData.dart';
import 'package:paypal_redesign/screens/sendmoney/sendmoney.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  TextEditingController _emailController = TextEditingController();

  //original list
  // final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  //temporary list for holding filtered items
  var items = List<PaypalContacts>();

  @override
  void initState() {
    //add all original list items to temprary list
    items.addAll(paypalContacts);
    super.initState();
  }

  //function to apply filter to temp list items
  void filterSearchResults(String query) {
    //?? dummy search list
    List<PaypalContacts> dummySearchList = List<PaypalContacts>();
    //add all original list to dummy list
    dummySearchList.addAll(paypalContacts);
    //if filter (query) is not empty,
    //sea
    if (query.isNotEmpty) {
      //?? dummy list data list created, temporary
      List<PaypalContacts> dummyListData = List<PaypalContacts>();
      //for each dummy search list item, if that item contains the query, item
      //is added to dummy list data
      dummySearchList.forEach((item) {
        if (item.name.toLowerCase().contains(query)) {
          dummyListData.add(item);
        } else if (item.sub.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        //clear item list to make way for new data
        items.clear();
        //add all dummy list data to items list
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        //else return original list
        items.addAll(paypalContacts);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Contacts',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 29.0),
            child: SvgPicture.asset('assets/images/Component 25.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value.toLowerCase());
              },
              controller: _emailController,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Enter a name or e-mail',
                  hintStyle: TextStyle(
                      color: Color(0xFF243656).withOpacity(0.5),
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                  contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color(0xFFF5F7FA), width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color(0xFFF5F7FA), width: 1.0))),
            ),
          ),
          // ContactsCard(),
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ContactsCard(
                  leading: paypalContacts[index].name[0],
                  title: paypalContacts[index].name,
                  sub: paypalContacts[index].sub,
                  function: () {
                    Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SendMoney(paypalContacts: paypalContacts[index])));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ContactsCard extends StatelessWidget {
  const ContactsCard({
    Key key,
    this.leading,
    this.sub,
    this.title,
    this.function,
  }) : super(key: key);
  final String leading;
  final String title;
  final String sub;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 4),
      child: GestureDetector(
        onTap: function,
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
            leading: CircleAvatar(
              backgroundColor: Color(0xFFF5F7FA),
              child: Text(
                leading,
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF243656)),
              ),
            ),
            title: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF243656)),
            ),
            subtitle: Text(
              sub,
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF243656).withOpacity(0.5)),
            ),
          ),
        ),
      ),
    );
  }
}
