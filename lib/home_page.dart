import 'package:flutter/material.dart';
import 'package:pruebatecnica/custom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _profilePicsize = 100;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        actions: [
          _appBatButton(
            icon: Icons.login_outlined,
            text: 'Cerrar sesión',
            onPressed: () {},
          ),
          Expanded(child: Container()),
          _appBatButton(
            icon: Icons.edit,
            text: 'Editar',
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50.0),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle,
                ),
                width: _profilePicsize,
                height: _profilePicsize,
              ),
            ),
            SizedBox(height: 20.0),
            _title('Nombre completo'),
            _subtitle('Nicolás Rojas Niño'),
            SizedBox(height: 10.0),
            _title('Correo electrónico'),
            _subtitle('nicolas@imagineapps.com'),
            SizedBox(height: 10.0),
            _title('Celular'),
            _subtitle('3114797257'),
            SizedBox(height: 10.0),
            _subtitle(
              'Términos y condiciones',
              onTap: () {},
            ),
            SizedBox(height: 10.0),
            _customContainer('Mi lista de Pedidos', () {}),
            SizedBox(height: 10.0),
            _customContainer('Mis Métodos de Pago', () {}),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }

  Widget _customContainer(String text, Function() onTap) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Material(
        color: Colors.indigo[100],
        elevation: 5,
        borderRadius: BorderRadius.circular(10.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(text),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  color: Colors.pink,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _appBatButton({String text, IconData icon, Function() onPressed}) {
    return MaterialButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 15.0),
          SizedBox(width: 10.0),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _title(String text) => Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black),
        ),
      );

  Widget _subtitle(String text, {Function() onTap}) => Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.only(bottom: 5.0),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                  color: Colors.black),
            ),
          ),
        ),
      );
}
