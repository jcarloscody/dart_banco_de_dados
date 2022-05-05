import 'database.dart';

void main() async {
  final database = DataBase();

  var mysqlConnection = await database.openConnection();
  await Future.delayed(Duration(seconds: 1));

  try {
    print("INSERT");
    var resultado = await mysqlConnection.query(
      'insert into aluno (id, nome) values (?, ?)',
      [null, 'Josué Carlos'],
    );
    print(resultado);
    print("\n\n");

    print("SELECT ALL");
    var selecionados = await mysqlConnection.query("select * from aluno");
    print('Selecionando tudo >> $selecionados');
    selecionados.forEach((element) {
      print(element);
    });
    print("\n\n");

    print("SELECT WHERE");
    var userId = 1;
    var results = await mysqlConnection
        .query('select * from aluno where id = ?', [userId]);
    print('Lista do select where >>> $results');
    print("\n\n");

    print("UPDATE");
    var update = await mysqlConnection.query(
        'update aluno set nome=? where id=?', ['Josué Carlos da Silva', 1]);
    print(" $update  \n\n");

    //transaction:

  } catch (e, s) {
    print(e);
    print(s.toString());
  } finally {
    mysqlConnection.close();
  }

  // print(resultado.affectedRows); //affectedRows quantidade linhas afetadas
}
