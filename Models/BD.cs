namespace TP_JJOO.Models;
using Dapper;
using System.Data.SqlClient;

public static class BD{
    static string _connectionString = null;
    public static void AgregarDeportista(Deportista dep){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            db.Execute(sql, new {IdDeportista = dep.IdDeportista, Apellido = dep.Apellido, Nombre = dep.Nombre, FechaNacimiento = dep.FechaNacimiento, Foto = dep.Foto, IdPais = dep.IdPais, IdDeporte = dep.IdDeporte});
        }
    }
    public static void EliminarDeportista(int idDeportista){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            db.Execute(sql, new { IdDeportista = idDeportista });
        }
    }
    public static Deporte VerInfoDeporte(int idDeporte){
        Deporte deporte;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            deporte = db.QueryFirstOrDefault<Deporte>(sql, new { IdDeporte = idDeporte });
        }
        return deporte;
    }
    public static Pais VerInfoPais(int idPais){
        Pais pais;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            pais = db.QueryFirstOrDefault<Pais>(sql, new { IdPais = idPais });
        }
        return pais;
    }
    public static Deportista VerInfoDeportista(int idDeportista){
        Deportista deportista;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            deportista = db.QueryFirstOrDefault<Deportista>(sql, new { IdDeportista = idDeportista });
        }
        return deportista;
    }
    public static List<Pais> ListarPaises(){
        List<Pais> paises;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            paises = db.Query<Pais>(sql).ToList();
        }
        return paises;
    }
    public static List<Deportista> ListarDeportistasD(int idDeporte){
        List<Deportista> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            deportistas = db.Query<Deportista>(sql, new { IdDeporte = idDeporte }).ToList();
        }
        return deportistas;
    }
    public static List<Deportista> ListarDeportistasP(int idPais){
        List<Deportista> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            deportistas = db.Query<Deportista>(sql, new { IdPais = idPais }).ToList();
        }
        return deportistas;
    }
    public static List<Deporte> ListarDeportes(){
        List<Deporte> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "name";
            deportistas = db.Query<Deporte>(sql).ToList();
        }
        return deportistas;
    }
}