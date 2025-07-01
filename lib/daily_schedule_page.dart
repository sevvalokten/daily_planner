
import 'package:flutter/material.dart';

class DailySchedulePage extends StatefulWidget {
  const DailySchedulePage({super.key});

  @override
  State<DailySchedulePage> createState() => _DailySchedulePageState();
}

class _DailySchedulePageState extends State<DailySchedulePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Sep, 2025",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        actions: [
          Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 30,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Text("M", style: TextStyle(fontSize: 18),),
                  SizedBox(width: 47,),
                  Text("T",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 47,),
                  Text("W",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 47,),
                  Text("T",style: TextStyle(fontSize: 18, color: Colors.orange),),
                  SizedBox(width: 53,),
                  Text("F",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 50,),
                  Text("S",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 50,),
                  Text("S",style: TextStyle(fontSize: 18),),
                ],
              ),
              Row(
                children: [
                  Text("17", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(width: 43,),
                  Text("18",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(width: 43,),
                  Text("19",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(width: 43,),
                  Text("20",style: TextStyle(fontSize: 15, color: Colors.orange,fontWeight: FontWeight.bold),),
                  SizedBox(width: 43,),
                  Text("21",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(width: 43,),
                  Text("22",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(width: 43,),
                  Text("23",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 30,),
              
              Stack(          
              alignment: Alignment.center,
              children: [
              Row(
                children: [
                  Text("09.00", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Divider(
                    thickness: 2,
                    color: Colors.grey,),
                  ),
                  SizedBox(height: 20,),    
                ],
              ),
            Container(
            height: 75,
            width: 230,
           decoration: BoxDecoration(
           color: const Color.fromARGB(255, 250, 222, 186),
           borderRadius: BorderRadius.circular(20),
          ),
           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
           child: Padding(
           padding: const EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Metinleri sola hizalar
            mainAxisSize: MainAxisSize.min,
           children: [
            Text(
              "Project Discussion",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4), // Başlık ile alt yazı arası boşluk
            Text(
              "09:00AM - 10:00AM", // Alt yazı buraya
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
             ],
            ),
            ),
          ),
         ),
        ],
        ),
        SizedBox(height: 10), // Araya boşluk ekliyoruz
        
              // 🔹 10.00 Divider (Kutu olmayan sade saat çizgisi)
              Row(
                children: [
                  Text("10.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
        
              SizedBox(height: 10),
        
              // Saat çizgisi + kutular (11:00)
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Row(
                    children: [
                      Text("11.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(width: 8),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 30),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5F5F3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
           child: Padding(
           padding: const EdgeInsets.all(12.0),
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Metinleri sola hizalar
            mainAxisSize: MainAxisSize.min,
           children: [
            Text(
              "Project Discussion",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4), // Başlık ile alt yazı arası boşluk
            Text(
              "Many desktop puslinhing pocas and we page oditors now uso", // Alt yazı buraya
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 6), // Başlık ile alt yazı arası boşluk
            Text(
              "09.00 AM - 10.00 AM", // Alt yazı buraya
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
            ),
          ),
          ),
                  )
                ],
              ), 
            SizedBox(height: 10), // Araya boşluk ekliyoruz
        
              // 🔹 10.00 Divider (Kutu olmayan sade saat çizgisi)
              Row(
                children: [
                  Text("12.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
        
                  SizedBox(height: 10,),
        
                  Stack(          
              alignment: Alignment.center,
              children: [
              Row(
                children: [
                  Text("13.30", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Divider(
                    thickness: 2,
                    color: Colors.grey,),
                  ),
                  SizedBox(height: 20,),    
                ],
              ),
            Container(
            height: 75,
            width: 230,
           decoration: BoxDecoration(
           color: const Color.fromARGB(255, 250, 222, 186),
           borderRadius: BorderRadius.circular(20),
          ),
           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
           child: Padding(
           padding: const EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Metinleri sola hizalar
            mainAxisSize: MainAxisSize.min,
           children: [
            Text(
              "Lunch Time",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 4), // Başlık ile alt yazı arası boşluk
            Text(
              "09:00AM - 10:00AM", // Alt yazı buraya
              style: TextStyle(fontSize: 14, color: Colors.black,),
            ),
          ],
        ),
            ),
          ),
          
        ),
        
          ],
        ),
        
        SizedBox(height: 10), // Araya boşluk ekliyoruz
        
              // 🔹 10.00 Divider (Kutu olmayan sade saat çizgisi)
              Row(
                children: [
                  Text("14.30", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
        
               Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Row(
                    children: [
                      Text("15.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(width: 8),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 30),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5F5F3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
           child: Padding(
           padding: const EdgeInsets.all(12.0),
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Metinleri sola hizalar
            mainAxisSize: MainAxisSize.min,
           children: [
            Text(
              "Create color style",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 4), // Başlık ile alt yazı arası boşluk
            Text(
              "Many desktop puslinhing pocas and we page oditors now uso", // Alt yazı buraya
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 6), // Başlık ile alt yazı arası boşluk
            Text(
              "09.00 AM - 10.00 AM", // Alt yazı buraya
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
            ),
          ),
          ),
                  )
                ],
              ), 
              SizedBox(height: 10), // Araya boşluk ekliyoruz
        
              // 🔹 10.00 Divider (Kutu olmayan sade saat çizgisi)
              Row(
                children: [
                  Text("16.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
                Stack(          
              alignment: Alignment.center,
              children: [
              Row(
                children: [
                  Text("09.00", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Divider(
                    thickness: 2,
                    color: Colors.grey,),
                  ),
                  SizedBox(height: 20,),    
                ],
              ),
            Container(
            height: 75,
            width: 230,
           decoration: BoxDecoration(
           color: const Color.fromARGB(255, 250, 222, 186),
           borderRadius: BorderRadius.circular(20),
          ),
           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
           child: Padding(
           padding: const EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Metinleri sola hizalar
            mainAxisSize: MainAxisSize.min,
           children: [
            Text(
              "Team meating",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 4), // Başlık ile alt yazı arası boşluk
            Text(
              "09:00AM - 10:00AM", // Alt yazı buraya
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
            ),
          ),
          
        ),
        
          ],
        ),
            ],
          ),
        ),
      ),
    );
  }
}
