namespace TP_JJOO.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

public static class BD{
    private static string _connectionString = @"Server = localhost; DataBase = BaseDeDatos; Trusted_Connection = True;";
    public static void AgregarDeportista(Deportista dep){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_agregar_deportista";
            db.Execute(sql, new {IdDeportista = dep.IdDeportista, Apellido = dep.Apellido, Nombre = dep.Nombre, FechaNacimiento = dep.FechaNacimiento, Foto = dep.Foto, IdPais = dep.IdPais, IdDeporte = dep.IdDeporte}, commandType: CommandType.StoredProcedure);
        }
    }
    public static void EliminarDeportista(int idDeportista){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_eliminar_deportista";
            db.Execute(sql, new { IdDeportista = idDeportista }, commandType: CommandType.StoredProcedure);
        }
    }
    public static Deporte VerInfoDeporte(int idDeporte){
        Deporte deporte;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_ver_deporte";
            deporte = db.QueryFirstOrDefault<Deporte>(sql, new { IdDeporte = idDeporte }, commandType: CommandType.StoredProcedure);
        }
        return deporte;
    }
    public static Pais VerInfoPais(int idPais){
        Pais pais;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_ver_pais";
            pais = db.QueryFirstOrDefault<Pais>(sql, new { IdPais = idPais }, commandType: CommandType.StoredProcedure);
        }
        return pais;
    }
    public static Deportista VerInfoDeportista(int idDeportista){
        Deportista deportista;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_ver_deportista";
            deportista = db.QueryFirstOrDefault<Deportista>(sql, new { IdDeportista = idDeportista }, commandType: CommandType.StoredProcedure);
        }
        return deportista;
    }
    public static List<Pais> ListarPaises(){
        List<Pais> paises;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_ver_Paises";
            paises = db.Query<Pais>(sql).ToList();
        }
        return paises;
    }
    public static List<Deportista> ListarDeportistasD(int idDeporte){
        List<Deportista> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_ver_deportistas_segun_deporte";
            deportistas = db.Query<Deportista>(sql, new { IdDeporte = idDeporte }, commandType: CommandType.StoredProcedure).ToList();
        }
        return deportistas;
    }
    public static List<Deportista> ListarDeportistasP(int idPais){
        List<Deportista> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_ver_deportistas_segun_pais";
            deportistas = db.Query<Deportista>(sql, new { IdPais = idPais }, commandType: CommandType.StoredProcedure).ToList();
        }
        return deportistas;
    }
    public static List<Deporte> ListarDeportes(){
        List<Deporte> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "EXEC sp_ver_Deportes";
            deportistas = db.Query<Deporte>(sql, commandType: CommandType.StoredProcedure).ToList();
        }
        return deportistas;
    }
}