import 'package:crud_bloc/apiprovider/apiproviderbarang.dart';
import 'package:crud_bloc/modelbarang/modelbarang.dart';

class RepositoryBarang {
  final apiProviderBarang = ApiProviderBarang();

  //Menampilkan data barang
  Future<List<ModelBarang>> fetchAllBarang() => apiProviderBarang.fetchBarang();

  //Create data barang
  Future tambahDataBarang(
          String nmBarang, String qtyBarang, String hrgBarang) =>
      apiProviderBarang.simpanDataBarang(nmBarang, qtyBarang, hrgBarang);

  Future editDataBarang(
          String id, String nmBarang, String qtyBarang, String hrgBarang) =>
      apiProviderBarang.updateDataBarang(id, nmBarang, qtyBarang, hrgBarang);

  Future hapusDataBarangId(id) => apiProviderBarang.deleteDataId(id);
}
