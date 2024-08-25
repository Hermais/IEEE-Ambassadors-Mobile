
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
    }
  }

  void displayBalance() {
    print('Account Holder: $accountHolderName');
    print('Account Number: $accountNumber');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  BankAccount account1 = BankAccount('123456789', 'Alice', 1000.0);
  BankAccount account2 = BankAccount('987654321', 'Bob', 1500.0);

  account1.deposit(500.0);
  account1.withdraw(200.0);

  account2.deposit(300.0);
  account2.withdraw(100.0);

  print('Final balance for Account 1:');
  account1.displayBalance();

  print('Final balance for Account 2:');
  account2.displayBalance();
}
