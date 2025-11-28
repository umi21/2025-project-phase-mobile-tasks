import 'package:flutter/material.dart';
import 'product.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Header Section
              _buildHeader(),
              
              const SizedBox(height: 24),
              
              // 2. Page Title
              const Text(
                "Available Products",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              
              const SizedBox(height: 20),

              // 3. Product List
              Expanded(
                child: ListView.separated(
                  itemCount: 3, // We are showing 3 items as per screenshot
                  separatorBuilder: (context, index) => const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    return const ProductCard(
                      imagePath: 'photo-1542291026-7eec264c27ff.avif',
                      title: 'Derby Leather Shoes',
                      price: '\$120',
                      category: "Men's shoe",
                      rating: 4.0,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      
      // 4. Floating Action Button
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF3F51F3), // The specific blue from the image
          shape: const CircleBorder(),
          elevation: 4,
          child: const Icon(Icons.add, color: Colors.white, size: 32),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        // Profile Image Placeholder
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(width: 12),
        
        // Date and Greeting
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "July 14, 2023",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  "Hello, ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "Yohannes",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
        
        const Spacer(),
        
        // Notification Icon
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Icon(Icons.notifications_none, color: Colors.grey),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.blue, // The notification dot
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}