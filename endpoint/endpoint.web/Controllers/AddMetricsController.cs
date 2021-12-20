using endpoint.web.Models;
using Microsoft.AspNetCore.Mvc;
using Prometheus;

namespace endpoint.web.Controllers;

[ApiController]
[Route("[controller]")]
public class AddMetricsController : ControllerBase
{
    private readonly ILogger<AddMetricsController> _logger;

    public AddMetricsController(ILogger<AddMetricsController> logger)
    {
        _logger = logger;
    }

    [HttpGet]
    public string Get()
    {
        _logger.LogInformation("Get");
        return "hello add metrix";
    }

    [HttpPost]
    public bool Post(BasicMetric mm)
    {
        _logger.LogInformation("Post");
        var mtrx = Metrics.CreateGauge(mm.Name, "Number of jobs waiting for processing in the queue.");
        mtrx.Set(mm.Value);
        return true;
    }
}
