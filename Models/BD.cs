namespace TP_JJOO.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

public static class BD{
    private static string _connectionString = @"Server = localhost; DataBase = JJOO; Trusted_Connection = True;";
    public static void AgregarDeportista(Deportista dep){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_agregar_deportista";
            db.Execute(sql, new {Apellido = dep.Apellido, Nombre = dep.Nombre, FechaNacimiento = dep.FechaNacimiento, Foto = dep.Foto, IdPais = dep.IdPais, IdDeporte = dep.IdDeporte, Logros = dep.Logros}, commandType: CommandType.StoredProcedure);
        }
    }
    public static void EliminarDeportista(int idDeportista){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_eliminar_deportista";
            db.Execute(sql, new { IdDeportista = idDeportista }, commandType: CommandType.StoredProcedure);
        }
    }
    public static Deporte VerInfoDeporte(int idDeporte){
        Deporte deporte;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_ver_deporte";
            deporte = db.QueryFirstOrDefault<Deporte>(sql, new { IdDeporte = idDeporte }, commandType: CommandType.StoredProcedure);
        }
        return deporte;
    }
    public static Pais VerInfoPais(int idPais){
        Pais pais;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_ver_pais";
            pais = db.QueryFirstOrDefault<Pais>(sql, new { IdPais = idPais }, commandType: CommandType.StoredProcedure);
        }
        return pais;
    }
    public static Deportista VerInfoDeportista(int idDeportista){
        Deportista deportista;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_ver_deportista";
            deportista = db.QueryFirstOrDefault<Deportista>(sql, new { IdDeportista = idDeportista }, commandType: CommandType.StoredProcedure);
        }
        return deportista;
    }
    public static List<Pais> ListarPaises(){
        List<Pais> paises;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_ver_Paises";
            paises = db.Query<Pais>(sql).ToList();
        }
        return paises;
    }
    public static List<Deportista> ListarDeportistasXDep(int idDeporte){
        List<Deportista> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_ver_deportistas_segun_deporte";
            deportistas = db.Query<Deportista>(sql, new { Id_Deporte = idDeporte }, commandType: CommandType.StoredProcedure).ToList();
        }
        return deportistas;
    }
    public static List<Deportista> ListarDeportistasXPais(int idPais){
        List<Deportista> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_ver_deportistas_segun_pais";
            deportistas = db.Query<Deportista>(sql, new { Id_Pais = idPais }, commandType: CommandType.StoredProcedure).ToList();
        }
        return deportistas;
    }
    public static List<Deportista> ListarDeportistas(){
        List<Deportista> deportistas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_Listar_Deportistas";
            deportistas = db.Query<Deportista>(sql, commandType: CommandType.StoredProcedure).ToList();
        }
        return deportistas;
    }
    public static List<Deporte> ListarDeportes(){
        List<Deporte> deportes;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "sp_ver_Deportes";
            deportes = db.Query<Deporte>(sql, commandType: CommandType.StoredProcedure).ToList();
        }
        return deportes;
    }
}