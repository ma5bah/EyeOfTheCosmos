// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Scopeitoutgamelevel1card extends StatelessWidget {
  final String heading;
  final String description;
  final String imageUrl;
  const Scopeitoutgamelevel1card({
    super.key,
    required this.heading,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                // 70% of the space for the image
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/test.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            heading,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Instead of a person with their eye to a magnifying eyepiece, Webb has instruments that sit right behind the primary mirror. They are contained in a box-like structure, called the "Integrated Science Instrument Module" (ISIM).',
                            style: TextStyle(fontSize: 14),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
  }
}
