class Employee {
  String id;
  String name;
  String department;

  Employee(this.id, this.name, this.department);

  void displayInfo() {
    print('ID: $id');
    print('Name: $name');
    print('Department: $department');
  }
}

class Manager extends Employee {
  String team;

  Manager(super.id, super.name, super.department, this.team);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Team: $team');
  }
}

class Worker extends Employee {
  String role;

  Worker(super.id, super.name, super.department, this.role);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Role: $role');
  }
}

void main() {
  Manager manager = Manager('M001', 'Alice Johnson', 'IT', 'Development Team');
  Worker worker = Worker('W001', 'Bob Smith', 'IT', 'Software Developer');

  print('Manager Information:');
  manager.displayInfo();
  print('');
  print('Worker Information:');
  worker.displayInfo();
}
