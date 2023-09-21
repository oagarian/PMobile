import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelperTutorial1 {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'tutorial1.db');

    Database db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );

    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE tutorial1 (id INTEGER PRIMARY KEY, titulo varchar(150), texto varchar(250), imagem varchar(250), video varchar(250));';
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (1, null, null, null, 'assets/videos/video.mp4');";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (2, 'Materiais:', null, null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (3, null, '• Garrafa pet de 2 litros; \n • Emborrachado verde; \n • Caneta permanente (preto de preferência); \n • Pistola de cola quente; \n • Tesoura sem ponta; \n • Lápis; \n • Fita de cetim (opcional).', null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (4, 'Como fazer?', null, null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (5, null, '1- Com o lápis faça um molde do corpo da tartaruga no emborrachado e recorte com a tesoura;', null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (6, null, null, 'assets/imagens/tutorial1/imagem1.png', null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (7, null, '2- Corte com a tesoura a parte de baixo da garrafa onde está marcado com uma linha;', null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (8, null, null, 'assets/imagens/tutorial1/imagem2.png', null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (9, null, '3- Desenhe com a caneta permanente o rosto e as patinhas da tartaruga;', null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (10, null, null, 'assets/imagens/tutorial1/imagem3.png', null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (11, null, '4- Com a cola quente, cole a parte recortada da garrafa PET no corpo de EVA da tartaruga;', null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (12, null, null, 'assets/imagens/tutorial1/imagem4.png', null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (13, null, '5- Faça um laço com a fita colorida e decore a tartaruga (opcional);', null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (14, null, null, 'assets/imagens/tutorial1/imagem5.png', null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (15, null, '6- E está pronto! Agora é só deixar a criançada se divertir!', null, null);";
    await db.execute(sql);

    sql =
        "INSERT INTO tutorial1 (id, titulo, texto, imagem, video) VALUES (16, null, null, 'assets/imagens/tutorial1/imagem6.png', null);";
    await db.execute(sql);

  }

}
