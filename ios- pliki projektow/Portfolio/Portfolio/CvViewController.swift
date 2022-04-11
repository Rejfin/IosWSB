//
//  CvViewController.swift
//  Portfolio
//
//  Created by Student G225 07 on 14/03/2022.
//

import UIKit
import PDFKit

class CvViewController: UIViewController {

    @IBOutlet weak var pdfContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let pdfView = PDFView(frame: pdfContainer.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        pdfContainer.addSubview(pdfView)
        
        pdfView.autoScales = true
        
        let fileUrl = Bundle.main.url(forResource: "cv", withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
