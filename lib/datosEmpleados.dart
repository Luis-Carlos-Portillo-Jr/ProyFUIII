import 'package:flutter/material.dart';
import 'package:portillo/login.dart';
import 'package:portillo/empleados.dart';
import 'package:portillo/desarrollador.dart';
import 'package:portillo/datos.dart';
import 'package:portillo/conclusion.dart';
import 'package:portillo/cliente.dart';

class DatosEmpleados extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Licencias',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/Login': (context) => Login(),
        '/Cliente': (context) => Cliente(),
        '/DatosEmpleados': (context) => DatosEmpleados(),
        '/Datos': (context) => Datos(),
        '/Conclusion': (context) => Conclusion(),
        '/Empleados': (context) => Empleados(),
        '/Desarrollador': (context) => Desarrollador(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Datos del emlpeado',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(32, 121, 64, 1),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            new UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color.fromRGBO(42, 143, 2, 1)),
              accountName: Text(
                "Licencias de Conducir",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "estropajo@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: new CircleAvatar(
                radius: 60.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: NetworkImage("https://raw.githubusercontent.com/Luis-Carlos-Portillo-Jr/imagenes/main/NicePng_car-logo-png_671323.png"), // for Network image
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Color.fromRGBO(32, 121, 64, 1),
              ),
              title: const Text('Inicio de Sesion'),
              onTap: () {
                Navigator.pushNamed(context, '/Login');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color.fromRGBO(32, 121, 64, 1),
              ),
              title: const Text('Datos de Empleados'),
              onTap: () {
                Navigator.pushNamed(context, '/DatosEmpleados');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Color.fromRGBO(32, 121, 64, 1),
              ),
              title: const Text('Datos de cliente'),
              onTap: () {
                Navigator.pushNamed(context, '/Datos');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Color.fromRGBO(32, 121, 64, 1),
              ),
              title: const Text('Empleados'),
              onTap: () {
                Navigator.pushNamed(context, '/Empleados');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag,
                color: Color.fromRGBO(32, 121, 64, 1),
              ),
              title: const Text('Articulos'),
              onTap: () {
                Navigator.pushNamed(context, '/Cliente');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.textsms,
                color: Color.fromRGBO(32, 121, 64, 1),
              ),
              title: const Text('Conclusion'),
              onTap: () {
                Navigator.pushNamed(context, '/Conclusion');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.computer,
                color: Color.fromRGBO(32, 121, 64, 1),
              ),
              title: const Text('Desarrollador'),
              onTap: () {
                Navigator.pushNamed(context, '/Desarrollador');
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      hintText: 'Ingresa Nombre',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Fecha de nacimiento',
                      hintText: 'Ingresa Fecha de Nacimiento',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'CURP',
                      hintText: 'Ingresa CURP',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nacionalidad',
                      hintText: 'Ingresa Nacionalidad',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Antiguedad',
                      hintText: 'Ingresa Antiguedad',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Vencimiento',
                      hintText: 'Ingresa Vencimiento',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: TextStyle(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      side: BorderSide(color: Color.fromRGBO(95, 115, 254, 1), width: 1),
                      primary: Color.fromRGBO(46, 150, 82, 1),
                      onPrimary: Colors.white,
                    ),
                    child: const Text('Guardar'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(title: Text('Datos Aceptados'), content: Text('Deseas guardar estos datos?'), actions: [
                                TextButton(
                                  child: Text('Aceptar'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                TextButton(
                                  child: Text('Cancelar'),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ]));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
