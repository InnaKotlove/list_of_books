import 'package:flutter/material.dart';
import 'package:list_of_books/book_model.dart';

class DetaileBook extends StatelessWidget {
  BookModel book;
  DetaileBook({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Опис деталей'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.network(
              book.image,
              width: MediaQuery.of(context).size.width,
              height: 400,
              fit: BoxFit.contain,
            ),
            Text(book.name),
            Text(book.description),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
