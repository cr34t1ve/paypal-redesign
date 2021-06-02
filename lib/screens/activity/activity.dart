import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paypal_redesign/models/activityAll.dart';
import 'package:paypal_redesign/models/activityIncome.dart';
import 'package:paypal_redesign/models/activityOutcome.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
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
          'Activity',
          style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 29.0),
            child: SvgPicture.asset('assets/images/Vectorsearch.svg'),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              child: Container(
                // width: 335.0,
                height: 48.0,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: Color(0xFF005EA6),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400),
                  unselectedLabelColor: Color(0xFFA5AEBC),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 16,
                      // color: Colors.red,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400),
                  tabs: [
                    Tab(
                        child: Text(
                      '   All   ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                    Tab(
                        child: Text(
                      '   Income   ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                    Tab(
                        child: Text(
                      '   Outcome   ',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 23.0,
          ),
          Container(
            height: 630,
            child: TabBarView(
              controller: _tabController,
              children: [
                Tab(child: buildListView()),
                Tab(
                  child: buildListViewIncome(),
                ),
                Tab(
                  child: buildListViewOutcome(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
