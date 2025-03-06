import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ever Daniel Pereyra Castillo \n22308051282'),
          titleTextStyle:
              const TextStyle(color: Color(0xffffffff), fontSize: 20),
          backgroundColor: const Color(0xff000000),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra las filas verticalmente
            children: [
              // Primera fila de botones (3 botones)
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los botones horizontalmente
                children: [
                  _buildButton('Primary', Colors.blue, () {
                    print('Botón Primary presionado');
                  }),
                  SizedBox(width: 10), // Espacio entre los botones
                  _buildButton('Secondary', Color(0xffad58d4), () {
                    print('Botón Secondary presionado');
                  }),
                  SizedBox(width: 10), // Espacio entre los botones
                  _buildButton('Tertiary', Color(0xff3cf436), () {
                    print('Botón Tertiary presionado');
                  }),
                ],
              ),
              SizedBox(height: 10), // Espacio entre las filas

              // Segunda fila de botones (3 botones)
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los botones horizontalmente
                children: [
                  _buildIconButton(Icons.add, 'Add', Colors.orange, () {
                    print('Botón Add presionado');
                  }),
                  SizedBox(width: 10), // Espacio entre los botones
                  _buildIconButton(Icons.edit, 'Edit', Colors.purple, () {
                    print('Botón Edit presionado');
                  }),
                  SizedBox(width: 10), // Espacio entre los botones
                  _buildIconButton(Icons.delete, 'Delete', Colors.red, () {
                    print('Botón Delete presionado');
                  }),
                ],
              ),
              SizedBox(height: 10), // Espacio entre las filas

              // Tercera fila de botones (2 botones)
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los botones horizontalmente
                children: [
                  _buildIconButton(Icons.settings, 'Settings', Colors.teal, () {
                    print('Botón Settings presionado');
                  }),
                  SizedBox(width: 10), // Espacio entre los botones
                  _buildButton('Custom', Colors.grey, () {
                    print('Botón Custom presionado');
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir un botón sin ícono
  Widget _buildButton(String text, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Color de fondo del botón
        foregroundColor: Colors.white, // Color del texto
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10), // Padding
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Puntas cuadradas
        ),
      ),
      child: Text(text), // Texto del botón
    );
  }

  // Método para construir un botón con ícono
  Widget _buildIconButton(
      IconData icon, String label, Color color, VoidCallback onPressed) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon), // Ícono del botón
      label: Text(label), // Texto del botón
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Color de fondo del botón
        foregroundColor: Colors.white, // Color del texto
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10), // Padding
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Puntas cuadradas
        ),
      ),
    );
  }
}
