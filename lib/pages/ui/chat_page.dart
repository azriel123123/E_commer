part of 'pages.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget messageEmpty() {
      return Expanded(
        child: Center(
          child: Text(
            'Message Is Empty',
            style: primaryTextStyle,
          ),
        ),
      );
    }

    Widget message() {
      return Container(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Column(
          children: [
            ChatCard(),
            ChatCard(),
            ChatCard(),
            ChatCard(),
          ],
        ),
      );
    }

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontWeight: FontWeight.w200,
          ),
        ),
        automaticallyImplyLeading: false,
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          message(),
          // messageEmpty(),
        ],
      ),
    );
  }
}
