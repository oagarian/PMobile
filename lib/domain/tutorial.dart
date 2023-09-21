class TutorialTitulo {
  final String titulo;

  const TutorialTitulo({
    required this.titulo,
  });
}

class TutorialTexto {
  final String texto;

  const TutorialTexto({
    required this.texto,
  });
}

class TutorialImagem {
  final String imagem;

  const TutorialImagem({
    required this.imagem,
  });
}

class TutorialVideo {
  final String video;

  const TutorialVideo({
    required this.video,
  });
}




class Tutorial {
  late String titulo;
  late String texto;
  late String imagem;
  late String video;

  Tutorial(
      {required this.titulo,
    required this.texto,
    required this.imagem,
    required this.video,});

  Tutorial.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'] ?? "";
    texto = json['texto'] ?? "";
    imagem = json['imagem'] ?? "";
    video = json['video'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['titulo'] = this.titulo;
    data['texto'] = this.texto;
    data['imagem'] = this.imagem;
    data['video'] = this.video;

    return data;
  }
}