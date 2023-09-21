import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/telas/telaPrincipal.dart';
import 'package:projeto/widgets/ContainerTopo.dart';
import 'TelaCadastrar.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool mostrarSenha = true;
TextEditingController emailController = TextEditingController();
  String email = '';
  String Password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: ListView(
          children: [
            ContainerTopo(
              titulo: "Login",
              heightGreen: 230,
              topWhite: 80,
              heightWhite: 100,
              widthWhite: 300,
              textLeft: 20,
              textTop: 115,
              fontSize: 30,
            ),
            Container(
    padding: EdgeInsets.only(left: 25, right: 25, top: 80),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: emailController,
          onChanged: (Text) {
            email= Text;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: ('Email ou usuário'),
            suffixIcon: Icon(Icons.alternate_email),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 10,
        ),const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: mostrarSenha,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        mostrarSenha = !mostrarSenha;
                      });
                    },
                    child: mostrarSenha
                        ? Icon(CupertinoIcons.eye_fill)
                        : Icon(CupertinoIcons.eye_slash),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
        // TextField(
        //   obscureText: true,
        //   onChanged: (Text) {
        //     Password = Text;
        //   },
        //   decoration: InputDecoration(
        //     labelText: 'Password',
        //     suffixIcon: Icon(Icons.visibility),
        //     border: OutlineInputBorder(),
        //   ),
        // ),
        // SizedBox(
        //   height: 15,
        // ),
        

        Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: 200.0,
            height: 40.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5b874b), // Altere a cor aqui
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Altere o raio do arredondamento aqui
                  ),
                ),
                onPressed: () {
                  // if (email == 'aluno.com.br' && Password == '123') {
                  //   print('correto');
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => TelaPrincipal()),
                  //   );
                  // } else {
                  //   print('aaaaa');
                  // }
                },
                child: Text(
                  'ENTRAR',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: 150.0,
            height: 40.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF57B635), // Altere a cor aqui
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Altere o raio do arredondamento aqui
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaCadastrar()),
                  );
                },
                child:
                    Text('CADASTRAR', style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    ),
  )
          ],
        ),
      ),
    );
  }
  Future<void> onPressed() async {
    String email = userController.text;
    String password = passwordController.text;

    

    bool result = await UserDao().autenticar(email: email, password: password);
    if (result) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return TelaPrincipal();
          },
        ),
      );
    } else {
      final snackBar = SnackBar(
        content: Text('Usuário e/ou senha incorretos!'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void onRegisterUser() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const RegisterUser();
        },
      ),
    );
  }
}


