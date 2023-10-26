import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'Rumah Saya';

  // List of items in our dropdown menu
  var items = [
    'Rumah Saya',
    'Kantor',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: RadialGradient(
            colors: [Color(0xFF5b24ca), Color(0xFF8c52ff)],
            center: Alignment(0, -0.25),
            radius: 0.8,
          )),
          child: SafeArea(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          DropdownButton(
                            // Initial Value
                            // put to left side
                            alignment: Alignment.centerLeft,

                            value: dropdownvalue,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nunito'),
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down,
                                color: Colors.white),
                            // no underline
                            underline: Container(
                              height: 0,
                              color: Colors.white,
                            ),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                // make text color black

                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              dropdownvalue = newValue!;
                              // Used to refresh the UI
                              // whenever the user selects an option
                              setState(() {});
                            },
                          ),
                          const Spacer(),
                          const Icon(
                            CupertinoIcons.line_horizontal_3_decrease,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.map_pin_ellipse,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 10),
                            Text("Ruang Tamu",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Nunito')),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '24°C',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            Icon(
                              CupertinoIcons.house_alt,
                              color: Colors.white,
                              size: 76,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(48, 0, 0, 0),
                        height: 2.5,
                        margin: EdgeInsets.only(right: 16, left: 16, bottom: 5),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Kelembapan',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Nunito'),
                              ),
                              Text(
                                '50%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Daya',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Nunito'),
                              ),
                              Text(
                                '2kWh',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Perangkat',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Nunito'),
                              ),
                              Text(
                                '13',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Baterai',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Nunito'),
                              ),
                              Text(
                                '100%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  // width: double.infinity,
                  // height will be the remaining space
                  height: 900,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 236, 245),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF8c52ff),
        unselectedItemColor: Color.fromARGB(255, 203, 203, 203),
        items: const [
          BottomNavigationBarItem(
            // cupertino icons
            icon: Icon(CupertinoIcons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bolt),
            label: 'Daya',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.lightbulb),
            label: 'Perangkat',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
