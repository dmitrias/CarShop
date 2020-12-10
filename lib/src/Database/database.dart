import 'package:car_shop/src/models/bookmark_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

  static Database _database;

  Future<Database> get database async {
    if (_database != null)
      return _database;

    _database = await initDB();
    return _database;
  }

  initDB() async {
    String path = join(await getDatabasesPath(), "car_shop.db");
    return await openDatabase(path, version: 1, onOpen: (db) {
    }, onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Bookmarks(id INTEGER PRIMARY KEY, imageUrl TEXT, name TEXT)");
    });
  }

  newBookmark(BookmarkModel bookmark) async {
    final db = await database;
    if (await getBookmark(bookmark.id) != null){
      return 0;
    }
    var res = await db.insert("Bookmarks", bookmark.toMap());
    return res;
  }

  getBookmark(int id) async {
    final db = await database;
    var res =await  db.query("Bookmarks", where: "id = ?", whereArgs: [id]);
    return res.isNotEmpty ? BookmarkModel.fromMap(res.first) : null;
  }

  deleteClient(int id) {
    final db = _database;
    db.delete("Bookmarks", where: "id = ?", whereArgs: [id]);
  }

  Future<List<BookmarkModel>> getAllBookmarks() async {
    final db = await database;
    var res = await db.query("Bookmarks");
    List<BookmarkModel> list =
    res.isNotEmpty ? res.map((c) => BookmarkModel.fromMap(c)).toList() : [];
    return list;
  }
}
