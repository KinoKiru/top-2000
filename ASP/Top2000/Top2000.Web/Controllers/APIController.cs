using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class APIController : Controller
    {
        static HttpClient client = new();
        public void Main()
        {
            client.BaseAddress = new Uri("http://localhost:64195/");
            client.DefaultRequestHeaders.Accept.Add(
            new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
        }


    }
}
