import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String dropdownvalue = 'Rumah';

  // List of items in our dropdown menu
  var items = [
    'Rumah',
    'Kantor',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5b24ca), Color(0xFF8c52ff)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // svg logo
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Image(
                  image: AssetImage('assets/images/nest_logo.png'),
                  width: 300,
                  height: 300,
                ),
              ),
              const SizedBox(height: 20),
             const  Text('NUSANTARA ECO SMART TECHNOLOGY',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  )),
              const SizedBox(height: 10),
              Text(
                  'NEST menciptakan lingkungan yang lebih nyaman dan efisien, mengurangi konsumsi energi, dan dapat membantu pengguna untuk menghemat uang dalam jangka panjang. Produk-produk Nest juga sering digunakan untuk mendukung tujuan berkelanjutan dan pengurangan dampak lingkungan.',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    color: Colors.grey[300],
                  )),
              const SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF692fd9),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.white)),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Mulai',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
