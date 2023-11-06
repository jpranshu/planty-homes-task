import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Try searching a nursery or a plant',
            hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.normal),
            prefixIcon: IconButton(
              iconSize: 30,
              color: Colors.green,
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            suffixIcon: IconButton(
              iconSize: 30,
              color: Colors.green,
              icon: const Icon(Icons.mic),
              onPressed: () {},
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
