import 'package:flutter/material.dart';
import 'reviews.dart';

void main() => runApp(MaterialApp(
  home: ReviewList(),
));

class ReviewList extends StatefulWidget {
  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<ReviewList> {

  List<Review> reviews = [
    Review(author: 'John D', text:'The Marksman stands out as the stupidest.', rating:'3.5'),
    Review(author: 'Peter', text:'More disappointment than delight in its selection of spooky stories.', rating:'2.6'),
    Review(author: 'Paul Walker', text:'This is the Pfeiffer show and she is simply terrific from start to finish.', rating:'2')

  ];

  Widget reviewTemplate(review){
    return Card(
      margin: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(review.text, style: TextStyle(
              fontSize: 14.0,
              color: Colors.pink,

            ),textAlign: TextAlign.center,
            ),
            SizedBox(height:6.0),
            Text(review.rating, style: TextStyle(
              fontSize: 14.0,
              color: Colors.pink,
            ),textAlign: TextAlign.center,
            ),
            SizedBox(height: 6.0),
            Text(review.author, style: TextStyle(
              fontSize: 14.0,
              color: Colors.pink,
            ),textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text("Public Reviews", style: TextStyle(
          color: Colors.pink,
        ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.comment,),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: reviews.map((review) => reviewTemplate(review)).toList(),

      )
    );
  }
}

