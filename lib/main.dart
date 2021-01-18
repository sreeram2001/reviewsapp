import 'package:flutter/material.dart';
import 'reviews.dart';
import 'review_card.dart';

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
    return ReviewCard(review: review);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text("Public Reviews", style: TextStyle(
          color: Colors.lightGreenAccent,
        ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.lightGreenAccent,),
        actions: [
          Padding(padding: EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.account_circle, color: Colors.lightGreenAccent,)
          ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.comment, color: Colors.lightGreenAccent,),
        backgroundColor: Colors.black,
      ),


      body: Column(
        children: reviews.map((review) => ReviewCard(
          review: review,
          delete: () {
            setState(() {
              reviews.remove(review);
            });
          }
        )).toList(),

      )
    );
  }
}
