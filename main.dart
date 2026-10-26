
class Queue {
  List<int> antrian = [];

  void enqueue(int data) {
    antrian.add(data);
    print('$data berhasil ditambahkan ke antrian');
  }

  void pop() {
    if (antrian.isEmpty) {
      print('Antrian kosong');
    } else {
      int data = antrian.removeAt(0);
      print('$data dihapus dari antrian');
    }
  }

  void tampilkanAntrian() {
    print('Isi antrian: $antrian');
  }
}

void main() {
  Queue q = Queue();

  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30);

  q.tampilkanAntrian();

  q.pop();

  q.tampilkanAntrian();
}
