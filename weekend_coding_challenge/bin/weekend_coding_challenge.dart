//Description: Create a basic in-memory database system with support for creating tables, inserting records, and querying records. 
// Each table should have a schema defined by column names and types. 
// For simplicity, support only integer and string types.
// Requirements:
//  Implement a class Database that supports:
//  Creating a table with a schema.
//  Inserting records into a table.
// Querying records from a table with simple filtering (e.g., where conditions).

// void main(){
// final database=Database();


// database.createTable('Users', {'Id':'int','name':'String','age': 'int'});

// database.insert('Users', {'Id':1, 'name':'Joy', 'age':13});
// database.insert('Users', {'Id':2, 'name':'Ijeoma', 'age':14});

// final result= database.query('Users', {'age ':14});
// print(result);

// }




// //creating the table class
// class Table{
//   Table(this.name, this.schema){
//     records=[];
//   }
//   String name;
//   Map<String, String >schema;
//   List<Map<String, dynamic>>records;


// void insert(Map<String,dynamic>record){
// for(var column in schema.keys){
//   if(!record.containsKey(column)){
//     throw Exception('Column not found:$column');

//   }
//   var type=schema[column];
//   var value=record[column];
//   if((type== 'int'& value is! int)) || (type=='String' & value is! String){
//     throw  Exception('Invalid coluum:$column');

//   } 
// }
// records.add(record);

// }
// List<Map<String, dynamic>> query(Map<String, dynamic> where) {
//     return records.where((record) {
//       for (var column in where.keys) {
//         if (!record.containsKey(column) || record[column] != where[column]) {
//           return false;
//         }
//       }
//       return true;
//     }).toList();
//   }
// }


// // implementing the database class
// class Database {
//   Map<String, Table> tables;

//   Database() {
//     tables = {};
//   }

//   void createTable(String name, Map<String, String> schema) {
//     if (tables.containsKey(name)) {
//       throw Exception('Table $name already exists.');
//     }
//     tables[name] = Table(name, schema);
//   }

//   void insert(String tableName, Map<String, dynamic> record) {
//     if (!tables.containsKey(tableName)) {
//       throw Exception('Table $tableName does not exist.');
//     }
//     tables[tableName]!.insert(record);
//   }

//   List<Map<String, dynamic>> query(String tableName, Map<String, dynamic> where) {
//     if (!tables.containsKey(tableName)) {
//       throw Exception('Table $tableName does not exist.');
//     }
//     return tables[tableName]!.query(where);
//   }
// }



  void main() {
  final database = Database();

  database.createTable('Users', {'Id': 'int', 'name': 'String', 'age': 'int'});

  database.insert('Users', {'Id': 1, 'name': 'Joy', 'age': 13});
  database.insert('Users', {'Id': 2, 'name': 'Ijeoma', 'age': 14});

  final result = database.query('Users', {'age': 14});
  print(result);
}

// Creating the Table class
class Table {
  Table(this.name, this.schema) {
    records = [];
  }

  String name;
  Map<String, String> schema;
  List<Map<String, dynamic>> records;

  void insert(Map<String, dynamic> record) {
    for (var column in schema.keys) {
      if (!record.containsKey(column)) {
        throw Exception('Column not found: $column');
      }
      var type = schema[column];
      var value = record[column];
      if ((type == 'int' && value is! int) || (type == 'String' && value is! String)) {
        throw Exception('Invalid column type for: $column');
      }
    }
    records.add(record);
  }

  List<Map<String, dynamic>> query(Map<String, dynamic> where) {
    return records.where((record) {
      for (var column in where.keys) {
        if (!record.containsKey(column) || record[column] != where[column]) {
          return false;
        }
      }
      return true;
    }).toList();
  }
}

// Implementing the Database class
class Database {
  Map<String, Table> tables;

  Database() {
    tables = {};
  }

  void createTable(String name, Map<String, String> schema) {
    if (tables.containsKey(name)) {
      throw Exception('Table $name already exists.');
    }
    tables[name] = Table(name, schema);
  }

  void insert(String tableName, Map<String, dynamic> record) {
    if (!tables.containsKey(tableName)) {
      throw Exception('Table $tableName does not exist.');
    }
    tables[tableName]!.insert(record);
  }

  List<Map<String, dynamic>> query(String tableName, Map<String, dynamic> where) {
    if (!tables.containsKey(tableName)) {
      throw Exception('Table $tableName does not exist.');
    }
    return tables[tableName]!.query(where);
  }
}



