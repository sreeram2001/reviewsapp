import 'package:flutter/material.dart';
import 'reviews.dart';

class ReviewCard extends StatelessWidget {

  final Review review;
  final Function delete;

  ReviewCard({this.review, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(review.text, style: TextStyle(
              fontSize: 14.0,
              color: Colors.lightGreenAccent,

            ), textAlign: TextAlign.center,
            ),
            SizedBox(height: 6.0),
            Text(review.rating, style: TextStyle(
              fontSize: 14.0,
              color: Colors.lightGreenAccent,
            ), textAlign: TextAlign.center,
            ),
            SizedBox(height: 6.0),
            Text(review.author, style: TextStyle(
              fontSize: 14.0,
              color: Colors.lightGreenAccent,
            ), textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete,color: Colors.lightGreenAccent,),
                label: Text('delete review', style: TextStyle(color: Colors.lightGreenAccent),),

            )
          ],
        ),
      ),
    );
  }


}