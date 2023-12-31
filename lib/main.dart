import 'package:flutter/material.dart';

void main() => runApp(
    AuthenticationApp()); //создается экземпляр класса AuthenticationApp и запускается приложение

class AuthenticationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Главная',
      theme: ThemeData(),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(190, 255, 134, 1),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 116, 81, 185),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Главная'),
            Row(
              children: [
                Icon(Icons.person),
                Text("Вход"),
                SizedBox(
                  //для того, чтобы между иконкой человечка "вход" и значком уведомления было расстояние
                  width: 26,
                ),
                Icon(Icons.notifications)
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Wrap(
            // margin: const EdgeInsets.symmetric(horizontal: 550, vertical: 40),
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 550, vertical: 24),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Вход',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Логин:',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 20, 20, 20)),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Введите логин:',
                              border: OutlineInputBorder()),
                          onChanged: (value) {}),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Пароль:',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 20, 20, 20)),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Введите пароль:',
                            border: OutlineInputBorder()),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 45),
                      SizedBox(
                        height: 45,
                        child: ElevatedButton(
                          child: Text('ВХОД',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      50)), //закругление кнопки
                              backgroundColor: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Возникли сложности?",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Оставить заявку",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors
                                    .blue), //прописываем отдельно, но в одной строке для того, чтобы поменять цвет второго предложения
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
