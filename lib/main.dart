import 'package:flutter/material.dart';
import 'package:list_of_books/detaile_book.dart';

import 'book_model.dart';

void main() {
  runApp(const MyBooks());
}

class MyBooks extends StatelessWidget {
  const MyBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BooksList(),
    );
  }
}

class BooksList extends StatefulWidget {
  const BooksList({Key? key}) : super(key: key);

  @override
  State<BooksList> createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  final List<BookModel> bookList = [
    BookModel(
      name: 'Гордость и предубеждение',
      author: 'Джейн Остин',
      description:
          "На первый взгляд, «Гордость и предубеждение» — любовный роман. Однако это и веселая комедия, и история взросления, и социальная критика, и философская притча. Роман чрезвычайно остроумен. Тонкий юмор и изящный стиль изложения не позволяют ему утратить своего неподражаемого очарования и блеска. Многочисленные драматические повороты совершенно не дают оторваться от чтения. К тому же каждая страница пропитана духом Англии. С невероятной иронией и удивительной наблюдательностью Джейн Остен описывает быт провинциального общества, особенности этикета и манер. ",
      image: 'https://cv9.litres.ru/pub/c/cover_max1500/6257491.jpg',
    ),
    BookModel(
      name: 'Унесенные ветром',
      author: 'Маргарет Митчелл',
      description: "Унесенные ветром — история красавицы южанки, женщины с твердым характером, которая борется за личное счастье и благополучие, пока привычный мир вокруг гибнет. Беззаботную юность Скарлетт О'Хары унесли могучие ветры Гражданской войны. В один миг девушке пришлось повзрослеть: шум балов сменился грохотом канонад, мать умерла, отец сошел с ума, родное поместье опустело. Однако Скарлетт, капризную и своенравную, но, вместе с тем, сильную и отчаянную, не сломить ни любовным неудачам, ни сложностям жизни, ни грузу ответственности за близких. Ее пленительное обаяние и невероятная целеустремленность помогут пережить все испытания и обрести веру в себя",
      image: 'https://img3.labirint.ru/rc/a20aa74dd65d48d5b6f64d885880810a/363x561q80/books84/832459/cover.jpg?1639833910',
    ),
    BookModel(
      name: 'Властелин колец',
      author: 'Джон Толкин',
      description: " Властелин колец — одна из самых известных и популярных книг XX века. Книга переведена по меньшей мере на 38 языков. Она оказала огромное влияние на литературу в жанре фэнтези, на настольные и компьютерные игры, на кинематограф и вообще на мировую культуру. Под влиянием работ профессора Толкина появилось движение толкинистов. Большим успехом пользовалась и экранизация книги, созданная режиссёром Питером Джексоном.",
      image: 'https://s3.eu-central-1.amazonaws.com/img.hromadske.ua/posts/203854/lotr-ledejpg/large.jpg',
    ),
    BookModel(
      name: 'Над пропастью во ржи',
      author: 'Дж. Д. Сэлинджер',
      description: " Мальчика зовут Холден Колфилд, и живет он в повести «Над пропастью во ржи», до сих пор боготворимой миллионами «непонятых» подростков. Холден наделен «абсолютным нравственным слухом» — он мгновенно различает фальшь, с него словно содрана кожа, обнажены нервные окончания, его сверхчувствительность — особого рода радар, улавливающий то, мимо чего спокойно проходят другие. Но он не ангел и не «дитя цветов», а трудный подросток во всей красе: со своими переживаниями, волнениями и талантами, но и со всеми «тараканами» тоже. Но у Холдена есть еще и странная, но очень трогательная мечта.",
      image: 'http://library.ispu.ru/sites/default/files/content/images/novosti/2017/Salinger.jpg',
    ),
    BookModel(
      name: '1984',
      author: 'Джордж Оруэлл',
      description:
      "Культовая антиутопия XX века и главное произведение Джорджа Оруэлла заиграет новыми красками благодаря иллюстрациям художника Вадима Белобородова, нарисованным специально для данного издания. Макет книги органично поддерживает иллюстрации: красивый, простой, жесткий, как и сам роман. ",
      image: 'https://cdn.eksmo.ru/v2/ITD000000001153897/COVER/cover1__w820.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Список книг'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DetaileBook(book: bookList[index],);
              },
            ));
          },
            child: ListTile(

              title: Text(bookList[index].name),
              leading: Image.network(bookList[index].image),
            ),
          );
        },
      ),
    );
  }
}
