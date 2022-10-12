﻿using System.ComponentModel.DataAnnotations;

namespace _3DPRT.Models
{
    public class Printing:Service
    {
        [Required]
        public Color Color { get; set; }
        [Required]
        public PrintingMaterial Material { get; set; }
        [Required]
        public  Model Model;
    }
}