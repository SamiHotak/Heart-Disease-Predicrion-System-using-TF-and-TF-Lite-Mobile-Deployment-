import 'package:flutter/material.dart';

class HeartDiseaseInfoPage extends StatelessWidget {
  const HeartDiseaseInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Disease Information'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('What is Heart Disease?'),
            _buildSectionText(
                'Heart disease refers to a range of conditions affecting the heart, '
                    'including blood vessel diseases (coronary artery disease), heart rhythm problems (arrhythmias), '
                    'and heart defects present at birth (congenital heart defects).'),

            _buildSectionTitle('Types of Heart Disease'),
            _buildBulletPoints([
              'Coronary Artery Disease (CAD)',
              'Heart Arrhythmias',
              'Heart Failure',
              'Heart Valve Disease',
              'Congenital Heart Defects',
              'Cardiomyopathy',
            ]),

            _buildSectionTitle('Common Symptoms'),
            _buildBulletPoints([
              'Chest pain (angina)',
              'Shortness of breath',
              'Pain in the neck/jaw/back',
              'Nausea or fatigue',
              'Irregular heartbeat',
              'Swelling in legs/ankles',
            ]),

            _buildSectionTitle('Risk Factors'),
            _buildBulletPoints([
              'High blood pressure',
              'High cholesterol',
              'Diabetes',
              'Obesity',
              'Smoking',
              'Family history',
              'Age (men >45, women >55)',
            ]),

            _buildSectionTitle('Diagnostics'),
            _buildBulletPoints([
              'Electrocardiogram (ECG)',
              'Echocardiogram',
              'Stress tests',
              'Cardiac catheterization',
              'CT/MRI scans',
              'Blood tests',
            ]),

            _buildSectionTitle('Prevention'),
            _buildBulletPoints([
              'Healthy diet (low salt/fat)',
              'Regular exercise',
              'Maintain healthy weight',
              'Quit smoking',
              'Limit alcohol',
              'Manage stress',
              'Control blood pressure/cholesterol',
            ]),

            _buildSectionTitle('Treatment'),
            _buildBulletPoints([
              'Medications (statins, beta-blockers)',
              'Lifestyle changes',
              'Angioplasty/stenting',
              'Coronary bypass surgery',
              'Pacemakers',
              'Heart transplant (severe cases)',
            ]),

            const SizedBox(height: 30),
            _buildDisclaimer(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildSectionText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildBulletPoints(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((item) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('• ', style: TextStyle(fontSize: 16)),
            Expanded(child: Text(item, style: const TextStyle(fontSize: 16))),
          ],
        ),
      ))
          .toList(),
    );
  }

  Widget _buildDisclaimer() {
    return Card(
      color: Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          'Important: This information is for educational purposes only. '
              'Consult a healthcare professional for medical advice.',
          style: TextStyle(
            fontSize: 14,
            color: Colors.red.shade800,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}