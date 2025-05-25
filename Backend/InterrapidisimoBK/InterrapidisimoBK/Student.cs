namespace InterrapidisimoBK
{
    public class Student
    {
        public int IdUsuario { get; set; }
        public string? DocumentoIdentidad { get; set; }
        public string? Nombres { get; set; } 
        public string? Telefono { get; set; }
        public string? Correo { get; set; }
        public string? Ciudad { get; set; }
        public DateOnly FechaRegistro { get; set; }
    }
}