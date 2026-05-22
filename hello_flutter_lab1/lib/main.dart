import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ẩn dải băng chữ "DEBUG" ở góc
      title: 'Lab 1 Demo',
      theme: ThemeData(
        // Kích hoạt Material 3 và tự động tạo dải màu từ màu tím
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ModernHomePage(),
    );
  }
}

class ModernHomePage extends StatelessWidget {
  const ModernHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Cho phép nền phủ luôn dưới AppBar
      appBar: AppBar(
        title: const Text(
          'Lab 1 Demo',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // Làm trong suốt AppBar
        elevation: 0,
      ),
      // Tạo nền Gradient cho toàn bộ màn hình
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFEDE7F6), // Tím rất nhạt
              Color(0xFFD1C4E9), // Tím nhạt
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Card(
              elevation: 8,
              shadowColor: Colors.deepPurple.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24), // Bo góc mềm mại
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 48.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Giúp Card ôm vừa nội dung
                  children: [
                    // Bọc Icon trong một hình tròn màu tím siêu nhạt
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.flutter_dash,
                        size: 80,
                        color: Colors.deepPurple,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Welcome to Flutter!',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple, // Đổi màu chữ đồng bộ theme
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Your first customized layout 😊',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    // Thêm một nút bấm để UI bớt trống trải
                    FilledButton.icon(
                      onPressed: () {
                        // Thêm hành động sau này
                      },
                      icon: const Icon(Icons.rocket_launch),
                      label: const Text('Get Started'),
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Truyền hàm rỗng để nút sáng lên
        elevation: 4,
        child: const Icon(Icons.add),
      ),
    );
  }
}