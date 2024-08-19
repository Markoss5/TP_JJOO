using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP_JJOO.Models;

namespace TP_JJOO.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Deportes()
    {
        ViewBag.DeportesLista = BD.ListarDeportes();
        return View();
    }

    public IActionResult Paises()
    {
        ViewBag.PaisesLista = BD.ListarPaises();
        return View();
    }

    public IActionResult VerDetalleDeporte(int idDeporte)
    {
        ViewBag.Deporte = BD.VerInfoDeporte(idDeporte);
        ViewBag.Deportistas = BD.ListarDeportistasXDep(idDeporte);
        ViewBag.PaisesLista = BD.ListarPaises();
        return View("DetalleDeporte");
    }

    public IActionResult VerDetallePais(int idPais)
    {
        ViewBag.Pais = BD.VerInfoPais(idPais);
        ViewBag.Deportistas = BD.ListarDeportistasXPais(idPais);
        ViewBag.DeportesLista = BD.ListarDeportes();
        return View("DetallePais");
    }

    public IActionResult VerDetalleDeportista(int idDeportista)
    {
        ViewBag.Deportista = BD.VerInfoDeportista(idDeportista);
        ViewBag.PaisesLista = BD.ListarPaises();
        ViewBag.DeportesLista = BD.ListarDeportes();
        return View("DetalleDeportista");
    }

    public IActionResult AgregarDeportista()
    {
        ViewBag.PaisesLista = BD.ListarPaises();
        ViewBag.DeportesLista = BD.ListarDeportes();
        return View();
    }

    [HttpPost] public IActionResult GuardarDeportista(Deportista dep)
    {
        BD.AgregarDeportista(dep);
        return RedirectToAction("Index");
    }

    public IActionResult EliminarDeportista(int idCandidato)
    {
        BD.EliminarDeportista(idCandidato);
        return RedirectToAction("Index");
    }

    public IActionResult Creditos()
    {
        return View();
    }

    public IActionResult Deportistas()
    {
        ViewBag.DeportistasLista = BD.ListarDeportistas();
        ViewBag.DeportesLista = BD.ListarDeportes();
        ViewBag.PaisesLista = BD.ListarPaises();
        return View();
    }

    public IActionResult Historia()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}