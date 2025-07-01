import 'package:figma_odev/today_task.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Tasks Page')),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int selectedIndex = 0;

   final List<Widget> _pages = [
    HomePage(),
    TasksPage(),
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://www.pngarts.com/files/3/Employee-Avatar-PNG-Image-Background.png"),
            backgroundColor: Colors.white,
          ),
        ),
        titleSpacing: 8,
        title: 
        Row(
          children: [
            Text(
              "Hello,",
              style: TextStyle(color: Colors.black)
            ),
            Text("Username", style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        
      ),
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
          icon: Icon(Icons.check_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 12,backgroundImage: NetworkImage("https://www.pngarts.com/files/3/Employee-Avatar-PNG-Image-Background.png",),), label: ''),
        ],
      ),


      body: SingleChildScrollView( 
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "4 New tasks today",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 16),
        
              // Kartlar yatay kaydırmalı
            SizedBox( //sabit kart boyutu ve yüksekliği sınırlandırmak için kullanılır.
        height: 190,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:  [
              MyTaskCard(color: Color(0xFFFFF1E7)), // turuncu
              SizedBox(width: 16),
              MyTaskCard(color: Color(0xFFE0F7FA)), // açık mavi
              SizedBox(width: 16),
              MyTaskCard(color: Color(0xFFF3E5F5)), // mor
              SizedBox(width: 16),
              MyTaskCard(color: Color(0xFFD7FFD9)), // yeşil
            ],
          ),
        ),
            ),
            SizedBox(height: 16),
            Row(
        children: [
           Text(
            "To Do",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
           SizedBox(width: 8),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child:  Text(
              "3",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
            ),
            SizedBox(height: 16),
        
            SizedBox(
        height: 150,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // kayan bir alanın hangi yönde kaydırılacağını belirtir. yatay kaydırma için Axis.horizontal kullanılır.
          child: Row(
            children:  [
              CardMy(color: Color.fromARGB(255, 208, 236, 250)), 
              SizedBox(width: 16),
              CardMy(color: Color.fromARGB(255, 246, 231, 189)), 
              SizedBox(width: 16),
              CardMy(color: Color.fromARGB(255, 235, 217, 239)), 
              SizedBox(width: 16),
              CardMy(color: Color.fromARGB(255, 211, 236, 212)), 
            ]
          )
        )
            ),
            SizedBox(height: 16),
             Row(
        children: [
          const Text(
            "In Progress",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 203, 155),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "3",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
            ),
            SizedBox(height: 16),

            SizedBox(
              height: 170,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    InProgress(color: const Color.fromARGB(255, 198, 239, 240)), // In Progress kartı
                    SizedBox(height: 16),
                    InProgress(color: const Color.fromARGB(255, 227, 184, 199)), // In Progress kartı
                    SizedBox(height: 16),
                    InProgress(color: const Color.fromARGB(255, 241, 235, 181)), // In Progress kartı
                  ],
              ),
              ),
            )
            ],
          ),
      ),
      ), 
    );
  }
}

// Renkli görev kartı
class MyTaskCard extends StatefulWidget {
  final Color color;

  const MyTaskCard({super.key, required this.color});

  @override
  State<MyTaskCard> createState() => _MyTaskCardState();
}

class _MyTaskCardState extends State<MyTaskCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector( //tıklama ve today_task kısmına geçiş
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => TodayTask())
        );
      },
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "UX Design for MONS calendar",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 2, //Text widget'ının en fazla kaç satırda görüntüleneceğini belirler.
              overflow: TextOverflow.ellipsis, //atır sınırından sonra gelen metni gizlemek yerine "..." şeklinde göstermeyi sağlar.
            ),
             SizedBox(height: 4),
      
            Row(
              children:  [
                Icon(Icons.flag, color: Colors.red, size: 14),
                SizedBox(width: 4),
                Text("Oct 25, 2025", style: TextStyle(fontSize: 10)),
              ],
            ),
      
             SizedBox(height: 4),
      
             Text(
              "n publishing and graphic d与好n lor中n psum is a plocelhold时",
              style: TextStyle(fontSize: 10),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
      
             SizedBox(height: 8),
      
            // Etiketler
            Row(
              children: [
                Container(
                  padding:
                       EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Text(
                    "High",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                 SizedBox(width: 4),
                Container(
                  padding:
                       EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Text(
                    "5 Scare",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
      
             SizedBox(height: 10),
      
            // Avatarlar
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children:  [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage:
                          NetworkImage("https://i.pravatar.cc/150?img=1"),
                    ),
                    Positioned(
                      left: 14,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage:
                            NetworkImage("https://i.pravatar.cc/150?img=2"),
                      ),
                    ),
                    Positioned(
                      left: 28,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage:
                            NetworkImage("https://i.pravatar.cc/150?img=3"),
                      ),
                    ),
                  ],
                ),
                 SizedBox(width: 30),
                 Text(
                  "+4",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class CardMy extends StatefulWidget {
  final Color color;
  const CardMy({super.key, required this.color});

  @override
  State<CardMy> createState() => _CardMyState();
}

class _CardMyState extends State<CardMy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding:   EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: widget.color, //Dışarıdan gelen color parametresini kullan
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Urgent",style: TextStyle(color: Colors.red,fontSize:  12, fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 8),
           Text("UX Design for MONS calendar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 4),
          Row(
            children:  [
              Icon(Icons.flag, color: Colors.red, size: 16),
              SizedBox(width: 4),
              Text("Oct 25, 2025", style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),

    );
  }
}

class InProgress extends StatefulWidget {
  final Color color;

  const InProgress({super.key, required this.color});

  @override
  State<InProgress> createState() => _InProgressState();
}

class _InProgressState extends State<InProgress> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
   return Container(
  width: 450,
  height: 80,
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: widget.color,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // Sol içerik (text + tarih)
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "UX Design for MONS calendar",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.flag, color: Colors.red, size: 14),
                SizedBox(width: 4),
                Text("Oct 25, 2025", style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
      // Sağdaki checkbox
      GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: Checkbox(
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
        ),
      ),
    ],
  ),
);

      
  }
}