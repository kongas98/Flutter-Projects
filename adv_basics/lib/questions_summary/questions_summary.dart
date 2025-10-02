import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> sumarryData;

  const QuestionsSummary(this.sumarryData, {super.key});

   void checkCorrectAnswer(summaryData){
      
    }

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: sumarryData.map(
            (data) {
                return SummaryItem(data);
          }).toList(),
        ),
      )
    );
  }
}
