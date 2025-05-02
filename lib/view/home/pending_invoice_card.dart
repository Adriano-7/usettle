import 'package:flutter/material.dart';

class PendingInvoiceCard extends StatelessWidget {
  final String amount;
  final String date;
  final int peopleCount;

  const PendingInvoiceCard({
    super.key,
    required this.amount,
    required this.date,
    required this.peopleCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        width: 200,         
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(amount, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8.0),
            Text(date, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(peopleCount, (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/imgs/placeholder_avatar.png'),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
