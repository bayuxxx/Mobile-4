import 'package:flutter/material.dart';

// ignore: camel_case_types
class Nav_Drawer extends StatelessWidget {
  const Nav_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _drawerHeader(),
          _drawerItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () => print('Klik Login'),
          ),
          _drawerItem(
            icon: Icons.settings,
            text: 'Setting',
            onTap: () => print('Klik Login'),
          ),
          const Divider(height: 25, thickness: 1),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Data Master",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.ad_units,
              text: 'Data Jenis',
              onTap: () => print('')),
          const Divider(height: 25, thickness: 1),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Transaksi",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.add_shopping_cart,
              text: 'Pembelian',
              onTap: () => print('')),
        ],
      ),
    );
  }
}

Widget _drawerItem({IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            text!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
        color: Colors.red[600],
        image: const DecorationImage(
            image: AssetImage("assets/background.jpg"), fit: BoxFit.cover)),
    currentAccountPicture: const ClipOval(
      child: Image(image: AssetImage('assets/logo.jpg'), fit: BoxFit.fill),
    ),
    otherAccountsPictures: const [
      ClipOval(
        child: Image(image: AssetImage('assets/naruto.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName:
        const Text('Bayu Balawa', style: TextStyle(color: Colors.white)),
    accountEmail: const Text('bayulords@gmail.com',
        style: TextStyle(color: Colors.white)),
  );
}
