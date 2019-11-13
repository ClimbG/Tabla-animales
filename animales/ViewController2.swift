//
//  ViewController2.swift
//  animales
//
//  Created by Gilmer Marcano on 8/11/19.
//  Copyright © 2019 Gilmer Marcano. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {
    
    @IBOutlet var vistaWeb: WKWebView!
    
    
    var nombrePdfRecibido: String?

        
        
    override func viewDidLoad() {
            super.viewDidLoad()
            
            mostrarPDF()
            
            
    }
        
        func mostrarPDF(){
            
            //1: direccion del archivo pdf, tengo que conseguirla
            
            let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfRecibido!, ofType: "pdf", inDirectory: "PDF")!)
            
            
            //2: transformar archivo pdf a Data
            
            let datosPDF = try? Data(contentsOf: direccionPDF)
            
            
            //3: mostrar datos en el webView
            
            vistaWeb.load(datosPDF!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPDF)
            
        }
        
       
        
        
        
    }   // Do any additional setup after loading the view.
    
    



