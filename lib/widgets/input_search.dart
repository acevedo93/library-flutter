import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  Function(String) onChanged;
  InputSearch({
    super.key,
    required this.onChanged
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search)
      
        
      ),
    );
  }
}