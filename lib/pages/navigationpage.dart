import 'package:flutter/material.dart';
import 'package:savup_app2/pages/portfoliopage.dart';
import 'package:savup_app2/pages/summarypage.dart';
import 'package:savup_app2/pages/transferpage.dart';
import 'package:savup_app2/pages/homepage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener((_tabChanged));
  }

  @override
  void dispose() {
    super.dispose();

    // ignore: unused_element
    /*@override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }*/

    _tabController.dispose();
  }

  void _tabChanged() {
    if (_tabController.indexIsChanging) {
      //print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            PortfolioPage(),
            SummaryPage(),
            TransferPage()
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          indicatorColor: const Color.fromRGBO(49, 210, 177, 1),
          controller: _tabController,
          labelColor: const Color.fromRGBO(49, 210, 177, 1),
          unselectedLabelColor: Colors.black38,
          tabs: const [
            Tab(
              icon: Icon(Icons.home_rounded),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.cases_rounded),
              text: 'Portfolio',
            ),
            Tab(
              icon: Icon(Icons.summarize_rounded),
              text: 'Summary',
            ),
            Tab(
              icon: Icon(Icons.cached_rounded),
              text: 'Transfer',
            ),
          ],
        ),
      ),
    );
  }
}
