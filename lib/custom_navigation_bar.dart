import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      currentIndex: index,
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
      items: [
        _navigationBaritem(
          isSelected: index == 0,
          icon: Icons.home_outlined,
          label: 'Explorar',
        ),
        _navigationBaritem(
          isSelected: index == 1,
          icon: Icons.map_outlined,
          label: 'Cerca de mi',
        ),
        _navigationBaritem(
          isSelected: index == 2,
          icon: Icons.shopping_cart_outlined,
          label: 'Carrito',
        ),
        _navigationBaritem(
          isSelected: index == 3,
          icon: Icons.person_outline,
          label: 'Perfil',
        ),
      ],
    );
  }

  BottomNavigationBarItem _navigationBaritem(
      {IconData icon, bool isSelected, String label}) {
    return BottomNavigationBarItem(
        icon: Icon(icon,
            color: isSelected ? Colors.indigoAccent : Colors.black45),
        label: label);
  }
}
