import 'package:flutter/material.dart';
import 'package:figma_odev/daily_schedule_page.dart';

class TodayTask extends StatefulWidget {
  const TodayTask({super.key});

  @override
  State<TodayTask> createState() => _TodayTaskState();
}

class _TodayTaskState extends State<TodayTask> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Today Task", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Başlık
              const Text(
                "UX Design for MONS calendar",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Profil ve açıklama
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage("https://www.pngarts.com/files/3/Employee-Avatar-PNG-Image-Background.png"),
                        ),
                        SizedBox(width: 8),
                        Text("Created by Username", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "In publishing and graphic design, Lorem ipsum is a placeholder text. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(Icons.flag, color: Colors.red, size: 16),
                        SizedBox(width: 4),
                        Text("Oct 25, 2025"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Etiketler
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      "High",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      "5 Scare",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text("Stop starting, start finishing"),
                ],
              ),

              const SizedBox(height: 12),

              // Avatarlar
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: const [
                      CircleAvatar(radius: 15, backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=1")),
                      Positioned(
                        left: 20,
                        child: CircleAvatar(radius: 15, backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=2")),
                      ),
                      Positioned(
                        left: 40,
                        child: CircleAvatar(radius: 15, backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=3")),
                      ),
                    ],
                  ),
                  const SizedBox(width: 60),
                  const Text("+4", style: TextStyle(fontSize: 12)),
                ],
              ),

              const SizedBox(height: 20),

              // Subtask Başlığı
              const Text("Subtask", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

              const SizedBox(height: 10),

              // Subtask 1
              subtaskCard(
                title: "UX Design for MONS calendar",
                time: "6 hours",
                isChecked: isChecked1,
                onChanged: (val) => setState(() => isChecked1 = val!),
                color: const Color.fromARGB(255, 204, 234, 220),
              ),

              // Subtask 2
              subtaskCard(
                title: "UX Design for MONS calendar",
                time: "6 hours",
                isChecked: isChecked2,
                onChanged: (val) => setState(() => isChecked2 = val!),
                color: const Color.fromARGB(255, 250, 199, 250),
              ),

              const SizedBox(height: 8),

              // Add Subtask Butonu
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DailySchedulePage()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12, width: 1),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("+", style: TextStyle(fontSize: 20)),
                        SizedBox(width: 8),
                        Text("Add Subtask", style: TextStyle(fontSize: 14, color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  // Subtask Card için fonksiyonel widget
  Widget subtaskCard({
    required String title,
    required String time,
    required bool isChecked,
    required ValueChanged<bool?> onChanged,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: double.infinity,
        height: 85,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            // SOL TARAF
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.flag, color: Colors.red, size: 16),
                      const SizedBox(width: 4),
                      Text(time, style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),
            // SAĞ TARAF
            Checkbox(
              value: isChecked,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
