using ChuckyNorris.Models;
using Microsoft.AspNetCore.Mvc;
using Nancy.Json;
using System.Diagnostics;

namespace ChuckyNorris.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            //When we load the page, the saved jokes from database gets loaded onto here
            //and saved into the dictionary ViewData that gets fetched from View.
            //We are using entity framework for this operation:
            using (var context = new ChuckjokesMdfContext())
            {
                var jokes = context.JokeTbs.ToList();
                IList<JokeTb> jokeList = new List<JokeTb>();
                foreach (var joke in jokes)
                {
                    jokeList.Add(new JokeTb() { Value = joke.Value });  
                }
                ViewData["jokes"] = jokeList;
            }
            
            
            return View();
        }

        //I am adding this method to bypass the ajax call that I tried,
        //It calls the method, but the problem is that the parameters passed is all empty
        [HttpPost]
        public IActionResult Index(string categories, string createdAt, string iconUrl, string jokeid, string updatedAt, string url, string value)
        {
            //the following should write the data into the database
            try
            {
                using (var context = new ChuckjokesMdfContext())
                {
                    //passing the data to the JokeTb class to create an object to pass it to the database for insertion
                    var joke = new JokeTb
                    {
                        Categories = categories,
                        CreatedAt = createdAt,
                        DateDownloaded = DateTime.UtcNow.ToString("MM-dd-yyyy"),
                        IconUrl = iconUrl,
                        IsFavorite = 1,
                        Id = jokeid,
                        UpdatedAt = updatedAt,
                        Url = url,
                        Value = value
                    };
                    context.JokeTbs.Add(joke);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {
                throw e.InnerException;
            }
            

            return View();
        }

        
       

        //I have a problem getting the object from ajax to here
        //This need to get triggered when I press the Save Joke Button
        //public ActionResult GetData(JokeTb joketb)
        //{
        //    //we check that the object is not empty
        //    if (joketb == null)
        //    {
        //        return NoContent();
        //    }
        //    else
        //    {
        //        //Here we write the data into database
        //        using (var context = new ChuckjokesMdfContext())
        //        {
        //            var joke = new JokeTb
        //            { 
        //                Categories = joketb.Categories,
        //                CreatedAt = joketb.CreatedAt,
        //                DateDownloaded= joketb.DateDownloaded,
        //                IconUrl = joketb.IconUrl,
        //                IsFavorite = 1,
        //                Jokeid = joketb.Jokeid,
        //                UpdatedAt = joketb.UpdatedAt,
        //                Url = joketb.Url,
        //                Value = joketb.Value
        //            };
        //            context.JokeTbs.Add(joke);
        //            context.SaveChanges();
        //        }

        //    }
        //    return Json(new { data = joketb });
        //}

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
}