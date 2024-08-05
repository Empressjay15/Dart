// Write a funtion that tracks expenses by category
// calculate the total expense
// the funtion will be a list of expenses
// each expense is a map with keys=category and amount
// The function will return a map where the keys are the categories and the values are the total expenses for the categories

// void main() {
//   // Sample list of expenses
//   List<Map<String, dynamic>> expenses = [
//     {'category': 'Food', 'amount': 25.50},
//     {'category': 'Transport', 'amount': 15.75},
//     {'category': 'Food', 'amount': 10.00},
//     {'category': 'Entertainment', 'amount': 50.00},
//     {'category': 'Transport', 'amount': 20.00},
//     {'category': 'Health', 'amount': 30.00},
//   ];

//   // Call the trackExpenses function and print the result
//   Map<String, double> result = trackExpenses(expenses);
//   print(result);
// }

// Map<String, double> trackExpenses(List<Map<String, dynamic>> expenses) {
//   // Initialize an empty map to store the total expenses for each category
//   Map<String, double> totalExpensesByCategory = {};

//   // Iterate over each expense in the list
//   for (var expense in expenses) {
//     // Extract the category and amount from the current expense
//     String category = expense['category'];
//     double amount = expense['amount'];

//     // Check if the category already exists in the map
//     if (totalExpensesByCategory.containsKey(category)) {
//       // If it exists, add the current amount to the existing total
//       totalExpensesByCategory[category] = totalExpensesByCategory[category]! + amount;
//     } else {
//       // If it doesn't exist, initialize the category with the current amount
//       totalExpensesByCategory[category] = amount;
//     }
//   }

//   // Return the map containing the total expenses for each category
//   return totalExpensesByCategory;
// }








