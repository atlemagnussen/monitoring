namespace endpoint.web.Models
{
    public record BasicMetric
    {
        public BasicMetric(string name, double value)
        {
            Name = name;
            Value = value;
        }
        
        public string Name { get; init; }
        public double Value { get; init; }
    }
}
