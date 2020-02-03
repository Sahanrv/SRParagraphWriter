//
//  SRParagraphWriter.swift
//  SRParagraphWriter
//
//  Created by Sahan Ravindu on 2/3/20.
//  Copyright © 2020 Sahan Ravindu. All rights reserved.
//

import Foundation
import UIKit


public class SRParagraphWriter: UIViewController {
    
    public static let shared = SRParagraphWriter()
       
       public override func viewDidLoad() {
           super.viewDidLoad()
    }
    
    public func setParagraph(pragraph: String?, text: [ParaGraphSetUp], completion: @escaping completionHandler){
        
        let normalString = pragraph ?? ""
        
        let attributedText = NSMutableAttributedString(string: normalString)
        
        text.forEach { (data) in
            attributedText.addAttributes([NSAttributedString.Key.foregroundColor: data.color ?? UIColor.black, NSAttributedString.Key.font: UIFont(name: data.fontName ?? "Helvetica", size: data.fontSize ?? 17)!], range: getRangeOfSubString(subString: data.text ?? "Text", fromString: normalString))
        }
        
        completion(attributedText)
    }
    
    public func getRangeOfSubString(subString: String, fromString: String) -> NSRange {
        let sampleLinkRange = fromString.range(of: subString)!
        let startPos = fromString.distance(from: fromString.startIndex, to: sampleLinkRange.lowerBound)
        let endPos = fromString.distance(from: fromString.startIndex, to: sampleLinkRange.upperBound)
        let linkRange = NSMakeRange(startPos, endPos - startPos)
        return linkRange
    }
    
    
}


public struct ParaGraphSetUp{
    public var color: UIColor?
    public var fontName: String?
    public var fontSize: CGFloat?
    public var text: String?
    
    public init (color: UIColor?, fontName: String?, fontSize: CGFloat?, text: String?){
        self.color = color
        self.fontName = fontName
        self.fontSize = fontSize
        self.text = text
    }
}

public typealias completionHandler = (_ modifiedText: NSMutableAttributedString? ) -> ()
