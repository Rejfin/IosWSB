//
//  ViewController.swift
//  PDFKitView
//
//  Created by Student G225 07 on 14/03/2022.
//

import UIKit
import PDFKit

class ViewController: UIViewController {
    
    @IBOutlet weak var navBar: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pdfView = PDFView(frame: navBar.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        navBar.addSubview(pdfView)

        pdfView.autoScales = true

        let fileURL = Bundle.main.url(forResource: "Sample", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
    }
}

