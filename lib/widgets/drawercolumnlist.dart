import 'package:flutter/material.dart';
import 'package:savup_app2/pages/goalspage.dart';
import 'package:savup_app2/pages/badgespage.dart';
import 'package:savup_app2/pages/settingspage.dart';
import 'package:savup_app2/pages/accountdetailspage.dart';
import 'package:savup_app2/pages/notificationspage.dart';

class DrawerColumnList extends StatelessWidget {
  const DrawerColumnList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        //width: 260.0,
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          currentAccountPicture: Icon(
            Icons.person_3_sharp,
            size: 48.0,
            color: Colors.white,
          ),
          accountName: Text('Jenah'),
          accountEmail: Text('Jenah@gmail.com'),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/hillside.png'),
              fit: BoxFit.cover
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsPage(),
              ),
            );
          },
          leading: const Icon(Icons.person),
          title: const Text('Account Details'),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BadgesPage(),
              ),
            );
          },
          leading: const Icon(Icons.monetization_on),
          title: const Text('Badges'),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GoalsPage(),
              ),
            );
          },
          leading: const Icon(Icons.golf_course_sharp),
          title: const Text('Goals'),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationsPage(),
              ),
            );
          },
          leading: const Icon(Icons.notifications),
          title: const Text('Notifications'),
        ),
        ListTile(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
        ),
        const Divider(color: Colors.grey),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.logout),
          title: const Text('Log Out'),
        ),
      ],
    ));
  }
}
