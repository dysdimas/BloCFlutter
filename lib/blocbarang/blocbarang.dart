import 'package:crud_bloc/apiprovider/repositorybarang.dart';
import 'package:crud_bloc/modelbarang/modelbarang.dart';
import 'package:rxdart/rxdart.dart';

class BlocBarang {
  final _repositoryBarang = RepositoryBarang();
  final _fetchBarang = PublishSubject<List<ModelBarang>>();
  final _namaBarang = BehaviorSubject<String>();
  final _qtyBarang = BehaviorSubject<String>();
  final _hargaBarang = BehaviorSubject<String>();

  Observable<List<ModelBarang>> get semuaDataBarang => _fetchBarang.stream;
  Function(String) get namaBarang => _namaBarang.sink.add;
  Function(String) get qtyBarang => _qtyBarang.sink.add;
  Function(String) get hargaBarang => _hargaBarang.sink.add;

  hapusDataBarang(id) {
    _repositoryBarang.hapusDataBarangId(id);
  }

  editBarang(String id) {
    print(_namaBarang.value);
    print(_qtyBarang.value);
    print(_hargaBarang.value);

    _repositoryBarang.editDataBarang(
        id, _namaBarang.value, _qtyBarang.value, _hargaBarang.value);
  }

  tambahBarang() {
    _repositoryBarang.tambahDataBarang(
        _namaBarang.value, _qtyBarang.value, _hargaBarang.value);
  }

  fetchAllBarang() async {
    List<ModelBarang> listBarang = await _repositoryBarang.fetchAllBarang();

    _fetchBarang.sink.add(listBarang);
  }

  dispose() {
    _fetchBarang.close();
  }
}

final blocBarang = BlocBarang(); //inisisalisasi class BlocBarang to Global
