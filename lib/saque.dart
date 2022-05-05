import 'package:banco_de_dados/database.dart';

Future<void> main() async {
  var database = DataBase();
  var conexao = await database.openConnection();

  Future.delayed(Duration(seconds: 1));

  await conexao.transaction((_) async {
    print("UPDATE");
    var update = await conexao
        .query('update conta_corrente set saldo=? where id=?', [100, 1]);
    print(" $update  \n\n");

    print("INSERT");
    var resultado = await conexao.query(
      'insert into tira_dinheiro (id, data_saque) values (?, ?)',
      [null, DateTime.now()],
    );
    print(resultado);
    print("\n\n");

    // print("SELECT ALL");
    // var selecionados = await conexao.query("select * from conta_corrente");
    // print('Selecionando tudo >> $selecionados');
    // selecionados.forEach((element) {
    //   print(element);
    // });
    // print("\n\n");
  });
}
