import 'package:flutter/material.dart';

class DetectionResult extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetectionResult({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final name = data['class_name'] ?? 'Unknown';
    final confidence = data['confidence'] != null
        ? (data['confidence'] as num).toStringAsFixed(2)
        : 'N/A';

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        leading: const Icon(Icons.local_offer),
        title: Text(name),
        subtitle: Text('Confidence: $confidence'),
      ),
    );
  }
}
