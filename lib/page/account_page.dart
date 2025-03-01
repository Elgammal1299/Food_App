import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVouchersItem({required String name, required String value}) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.deepOrange,
          ),
        ),
        Text(name, style: TextStyle(fontSize: 18)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/prosonal.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Ahmed Elgammal',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVouchersItem(name: 'Orders', value: '50'),
              orderVouchersItem(name: 'Vouchers', value: '10'),
            ],
          ),
          SizedBox(height: 24),
          Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.grey),
          itemTappedTile(
            title: 'Past Orders',
            // subtitle: 'Here you find your past orders',
            icon: Icons.shopping_cart,
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.grey),
          itemTappedTile(
            title: 'Availsble Vouchers',
            // subtitle: 'Here you find your past orders',
            icon: Icons.card_giftcard,
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20, color: Colors.grey),
        ],
      ),
    );
  }

  Widget itemTappedTile({
    required String title,
    String? subtitle,
    required IconData icon,
  }) {
    return ListTile(
      onTap: () {},
      title: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      leading: Icon(icon, size: 35, color: Colors.deepOrange),
      subtitle:
          subtitle != null
              ? Text(subtitle, style: TextStyle(fontSize: 16))
              : null,
      trailing: Icon(Icons.chevron_right, color: Colors.deepOrange, size: 25),
    );
  }
}
