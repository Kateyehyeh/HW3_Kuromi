//
//  ViewController.swift
//  HW3_Kuromi
//
//  Created by Kateyeh on 2024/12/4.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      //放入參考圖
        let imageView = UIImageView(frame: CGRect(x: 10, y: 280, width: 380, height: 420))
        imageView.image = UIImage(named: "kuromi")
        imageView.alpha = 0.5
        view.addSubview(imageView)
     
     
        //背景
        let backgroundPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 400, height: 900))
        let backgroundLayer = CAShapeLayer()
            backgroundLayer.path = backgroundPath.cgPath
        backgroundLayer.fillColor = UIColor.clear.cgColor
                view.layer.addSublayer(backgroundLayer)
  
        //左耳朵
        let leftearPath = UIBezierPath()
        leftearPath.move(to: CGPoint(x: 60, y: 320))
        leftearPath.addLine(to: CGPoint(x: 75, y: 438))
        leftearPath.addLine(to: CGPoint(x: 98, y: 440))
        leftearPath.addLine(to: CGPoint(x: 155, y: 388))
        leftearPath.addLine(to: CGPoint(x: 156, y: 365))
        leftearPath.addLine(to: CGPoint(x: 69, y: 315))
        let leftearLayer = CAShapeLayer()
        leftearLayer.path = leftearPath.cgPath
        leftearLayer.lineWidth = 3.5
        leftearLayer.strokeColor = UIColor.black.cgColor
        leftearLayer.fillColor = CGColor(red: 74/255, green: 73/255, blue: 71/255, alpha: 1)
        view.layer.addSublayer(leftearLayer)
        
        //左耳朵圈圈
        let aDegree = CGFloat.pi / 180
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 60, y: 310), radius: 10, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        let circleLayer = CAShapeLayer()
            circleLayer.path = circlePath.cgPath
            circleLayer.lineWidth = 3.5
            circleLayer.strokeColor = UIColor.black.cgColor
            circleLayer.fillColor = CGColor(red: 74/255, green: 73/255, blue: 71/255, alpha: 1)
        view.layer.addSublayer(circleLayer)
        
        //右耳朵
        let rightearPath = UIBezierPath()
        rightearPath.move(to: CGPoint(x: 328, y: 313))
        rightearPath.addLine(to: CGPoint(x: 240, y: 360))
        rightearPath.addLine(to: CGPoint(x: 244, y: 383))
        rightearPath.addLine(to: CGPoint(x: 299, y: 436))
        rightearPath.addLine(to: CGPoint(x: 319, y: 425))
        rightearPath.addLine(to: CGPoint(x: 334, y: 316))
        let rightearLayer = CAShapeLayer()
        rightearLayer.path = rightearPath.cgPath
        rightearLayer.lineWidth = 3.5
        rightearLayer.strokeColor = UIColor.black.cgColor
        rightearLayer.fillColor = CGColor(red: 74/255, green: 73/255, blue: 71/255, alpha: 1)
        view.layer.addSublayer(rightearLayer)
        
        //右耳朵圈圈
        let rcirclePath = UIBezierPath(arcCenter: CGPoint(x: 334, y: 305), radius: 10, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        let rcircleLayer = CAShapeLayer()
            rcircleLayer.path = rcirclePath.cgPath
            rcircleLayer.lineWidth = 3.5
            rcircleLayer.strokeColor = UIColor.black.cgColor
            rcircleLayer.fillColor = CGColor(red: 74/255, green: 73/255, blue: 71/255, alpha: 1)
        view.layer.addSublayer(rcircleLayer)
        
        //尾巴
        let tailPath = UIBezierPath()
        tailPath.move(to: CGPoint(x: 240, y: 640))
        tailPath.addCurve(to: CGPoint(x: 277, y: 625), controlPoint1: CGPoint(x: 240, y: 650), controlPoint2: CGPoint(x: 280, y: 635))
        tailPath.addLine(to: CGPoint(x: 273, y: 620))
        tailPath.addLine(to: CGPoint(x: 300, y: 610))
        tailPath.addLine(to: CGPoint(x: 298, y: 642))
        tailPath.addLine(to: CGPoint(x: 290, y: 634))
        tailPath.addCurve(to: CGPoint(x: 240, y: 655), controlPoint1: CGPoint(x: 265, y: 652), controlPoint2: CGPoint(x: 265, y: 655))
      
        
        let tailLayer = CAShapeLayer()
        tailLayer.path = tailPath.cgPath
        tailLayer.lineWidth = 3.5
        tailLayer.strokeColor = UIColor.black.cgColor
        tailLayer.fillColor = CGColor(red: 74/255, green: 73/255, blue: 71/255 , alpha: 1)
        view.layer.addSublayer(tailLayer)
        
        //身體
        let bodyPath = UIBezierPath()
        bodyPath.move(to: CGPoint(x: 197, y: 555))
        bodyPath.addLine(to: CGPoint(x: 135, y: 555))
        bodyPath.addLine(to: CGPoint(x: 110, y: 580))
        bodyPath.addLine(to: CGPoint(x: 152, y: 576))
        bodyPath.addLine(to: CGPoint(x: 162, y: 604))
        bodyPath.addLine(to: CGPoint(x: 197, y: 582))
        bodyPath.move(to: CGPoint(x: 137, y: 577))
        bodyPath.addCurve(to: CGPoint(x: 135, y: 610), controlPoint1: CGPoint(x: 123, y: 595), controlPoint2: CGPoint(x: 130, y: 610))
        bodyPath.move(to: CGPoint(x: 130, y: 605))
        bodyPath.addCurve(to: CGPoint(x: 145, y: 628), controlPoint1: CGPoint(x: 119, y: 610), controlPoint2: CGPoint(x: 125, y: 635))
        bodyPath.move(to: CGPoint(x: 151, y: 589))
        bodyPath.addCurve(to: CGPoint(x: 154, y: 645), controlPoint1: CGPoint(x: 138, y: 620), controlPoint2: CGPoint(x: 147, y: 630))
        bodyPath.move(to: CGPoint(x: 152, y: 637))
        bodyPath.addCurve(to: CGPoint(x: 149, y: 656), controlPoint1: CGPoint(x: 147, y: 640), controlPoint2: CGPoint(x: 148, y: 660))
        bodyPath.addCurve(to: CGPoint(x: 195, y: 677), controlPoint1: CGPoint(x: 110, y: 673), controlPoint2: CGPoint(x: 165, y: 711))
        bodyPath.addLine(to: CGPoint(x: 195, y: 650))
        
        let bodyLayer = CAShapeLayer()
        bodyLayer.path = bodyPath.cgPath
        bodyLayer.lineWidth = 3.5
        bodyLayer.strokeColor = UIColor.black.cgColor
        bodyLayer.fillColor = CGColor(red: 1, green: 1, blue: 1 , alpha: 1)
        view.layer.addSublayer(bodyLayer)
        
        //鏡像翻轉(右半身)
        let rbodyLayer = CAShapeLayer()
        rbodyLayer.path = bodyPath.cgPath
        let boundingBox3 = bodyPath.cgPath.boundingBox
        rbodyLayer.bounds = boundingBox3
        rbodyLayer.position = CGPoint(x: 323, y: 635)
        let transform3 = CGAffineTransform(scaleX: -1, y: 1).translatedBy(x: boundingBox3.width, y: 0)
        rbodyLayer.setAffineTransform(transform3)
        rbodyLayer.lineWidth = 3.5
        rbodyLayer.strokeColor = UIColor.black.cgColor
        rbodyLayer.fillColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.addSublayer(rbodyLayer)
        
        //頭
        let headPath = UIBezierPath()
            headPath.move(to: CGPoint(x: 92, y: 492))
            headPath.addCurve(to: CGPoint(x: 307, y: 492), controlPoint1: CGPoint(x: 90, y: 339), controlPoint2: CGPoint(x: 312, y: 339))
            headPath.addCurve(to: CGPoint(x: 92, y: 492), controlPoint1: CGPoint(x: 296, y: 593), controlPoint2: CGPoint(x: 103, y: 593))
        let headLayer = CAShapeLayer()
            headLayer.path = headPath.cgPath
            headLayer.lineWidth = 3.5
            headLayer.strokeColor = UIColor.black.cgColor
        headLayer.fillColor = CGColor(red: 74/255, green: 73/255, blue: 71/255, alpha: 1)
            view.layer.addSublayer(headLayer)
 
        
        //骷髏頭
        let skullPath = UIBezierPath()
        skullPath.move(to: CGPoint(x: 172, y: 450))
        skullPath.addCurve(to: CGPoint(x: 227, y: 450), controlPoint1: CGPoint(x: 163, y: 402), controlPoint2: CGPoint(x: 234, y: 402))
        skullPath.addQuadCurve(to: CGPoint(x: 213, y: 465), controlPoint: CGPoint(x: 225, y: 463))
        skullPath.addLine(to: CGPoint(x: 213, y: 474))
        skullPath.addLine(to: CGPoint(x: 189, y: 474))
        skullPath.addLine(to: CGPoint(x: 189, y: 465))
        skullPath.addQuadCurve(to: CGPoint(x: 172, y: 450), controlPoint: CGPoint(x: 174, y: 463))
        skullPath.move(to: CGPoint(x: 199, y: 474))
        skullPath.addLine(to: CGPoint(x: 199, y: 464))
        skullPath.move(to: CGPoint(x: 205, y: 474))
        skullPath.addLine(to: CGPoint(x: 205, y: 464))
        
        
        let skullLayer = CAShapeLayer()
        skullLayer.path = skullPath.cgPath
        skullLayer.lineWidth = 3
        skullLayer.strokeColor = UIColor.black.cgColor
        skullLayer.fillColor = CGColor(red: 244/255, green: 188/255, blue: 213/255, alpha: 1)
        view.layer.addSublayer(skullLayer)
    
        //骷髏頭眼睛(左眼)
        let skeyesPath = UIBezierPath()
            skeyesPath.move(to: CGPoint(x: 186, y: 443))
        skeyesPath.addCurve(to: CGPoint(x: 182, y: 457), controlPoint1: CGPoint(x: 182, y: 440), controlPoint2: CGPoint(x: 173, y: 452))
        skeyesPath.addCurve(to: CGPoint(x: 186, y: 443), controlPoint1: CGPoint(x: 188, y: 458), controlPoint2: CGPoint(x: 193, y: 447))
        
        let skeyesLayer = CAShapeLayer()
        skeyesLayer.path = skeyesPath.cgPath
        skeyesLayer.lineWidth = 1
        skeyesLayer.strokeColor = UIColor.black.cgColor
        skeyesLayer.fillColor = CGColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 1)
            view.layer.addSublayer(skeyesLayer)
        
        //鏡像翻轉(右眼)
        let rskeyeLayer = CAShapeLayer()
        rskeyeLayer.path = skeyesPath.cgPath
        let boundingBox = skeyesPath.cgPath.boundingBox
        rskeyeLayer.bounds = boundingBox
        rskeyeLayer.position = CGPoint(x: 194, y: 450)
        let transform = CGAffineTransform(scaleX: 1, y: -1).translatedBy(x: boundingBox.width, y: 0)
        rskeyeLayer.setAffineTransform(transform)
        rskeyeLayer.lineWidth = 1
        rskeyeLayer.strokeColor = UIColor.black.cgColor
        rskeyeLayer.fillColor = CGColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 1)
        view.layer.addSublayer(rskeyeLayer)
        
        //臉
        let facePath = UIBezierPath()
        facePath.move(to: CGPoint(x: 136, y: 553))
        facePath.addCurve(to: CGPoint(x: 164, y: 468), controlPoint1: CGPoint(x: 92, y: 500), controlPoint2: CGPoint(x: 158, y: 464))
        facePath.addLine(to: CGPoint(x: 200, y: 485))
        facePath.addLine(to: CGPoint(x: 240, y: 467))
        facePath.addCurve(to: CGPoint(x: 260, y: 553), controlPoint1: CGPoint(x: 283, y: 487), controlPoint2:CGPoint(x: 284, y: 544))
        facePath.addCurve(to: CGPoint(x: 136, y: 553), controlPoint1: CGPoint(x: 240, y: 566), controlPoint2: CGPoint(x: 180, y: 574))
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = facePath.cgPath
        faceLayer.lineWidth = 3
        faceLayer.strokeColor = UIColor.black.cgColor
        faceLayer.fillColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.addSublayer(faceLayer)
        
        //眼睛
        let eyePath = UIBezierPath()
        eyePath.move(to: CGPoint(x: 145, y: 499))
        eyePath.addLine(to: CGPoint(x: 138, y: 494))
        eyePath.move(to: CGPoint(x: 147, y: 493))
        eyePath.addLine(to: CGPoint(x: 164, y: 502))
        eyePath.addCurve(to: CGPoint(x: 147, y: 493), controlPoint1: CGPoint(x: 170, y: 530), controlPoint2: CGPoint(x: 129, y: 545))
        eyePath.addLine(to: CGPoint(x: 140, y: 487))
        
        let eyeLayer = CAShapeLayer()
        eyeLayer.path = eyePath.cgPath
        eyeLayer.lineWidth = 2
        eyeLayer.strokeColor = UIColor.black.cgColor
        eyeLayer.fillColor = CGColor(red: 1/255, green: 1/255, blue: 1/255 , alpha: 1)
        view.layer.addSublayer(eyeLayer)
        
        //鏡像翻轉(右眼)
        let reyeLayer = CAShapeLayer()
            reyeLayer.path = eyePath.cgPath
        let boundingBox2 = eyePath.cgPath.boundingBox
            reyeLayer.bounds = boundingBox2
            reyeLayer.position = CGPoint(x: 269, y: 518)
        let transform2 = CGAffineTransform(scaleX: -1, y: 1).translatedBy(x: boundingBox.width, y: 0)
            reyeLayer.setAffineTransform(transform2)
            reyeLayer.lineWidth = 2
            reyeLayer.strokeColor = UIColor.black.cgColor
            reyeLayer.fillColor = CGColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 1)
            view.layer.addSublayer(reyeLayer)
     
        //圍巾圈圈1
        let bcirclePath = UIBezierPath(arcCenter: CGPoint(x: 110, y: 580), radius: 8, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        let bcircleLayer = CAShapeLayer()
            bcircleLayer.path = bcirclePath.cgPath
            bcircleLayer.lineWidth = 3
            bcircleLayer.strokeColor = UIColor.black.cgColor
            bcircleLayer.fillColor = CGColor(red: 244/255, green: 188/255, blue: 213/255, alpha: 1)
        view.layer.addSublayer(bcircleLayer)
        
        //圍巾圈圈2
        let ccirclePath = UIBezierPath(arcCenter: CGPoint(x: 160, y: 607), radius: 8, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        let ccircleLayer = CAShapeLayer()
            ccircleLayer.path = ccirclePath.cgPath
            ccircleLayer.lineWidth = 3
            ccircleLayer.strokeColor = UIColor.black.cgColor
            ccircleLayer.fillColor = CGColor(red: 244/255, green: 188/255, blue: 213/255, alpha: 1)
        view.layer.addSublayer(ccircleLayer)
        
        //圍巾圈圈3
        let dcirclePath = UIBezierPath(arcCenter: CGPoint(x: 230, y: 610), radius: 8, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        let dcircleLayer = CAShapeLayer()
            dcircleLayer.path = dcirclePath.cgPath
            dcircleLayer.lineWidth = 3
            dcircleLayer.strokeColor = UIColor.black.cgColor
            dcircleLayer.fillColor = CGColor(red: 244/255, green: 188/255, blue: 213/255, alpha: 1)
        view.layer.addSublayer(dcircleLayer)
        
        //圍巾圈圈4
        let ecirclePath = UIBezierPath(arcCenter: CGPoint(x: 280, y: 584), radius: 8, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        let ecircleLayer = CAShapeLayer()
            ecircleLayer.path = ecirclePath.cgPath
            ecircleLayer.lineWidth = 3
            ecircleLayer.strokeColor = UIColor.black.cgColor
            ecircleLayer.fillColor = CGColor(red: 244/255, green: 188/255, blue: 213/255, alpha: 1)
        view.layer.addSublayer(ecircleLayer)
        
        //鼻子
        let nosePath = UIBezierPath(arcCenter: CGPoint(x: 200, y: 530), radius: 5, startAngle: aDegree * 0, endAngle: 360, clockwise: true)
        
        let noseLayer = CAShapeLayer()
            noseLayer.path = nosePath.cgPath
        noseLayer.lineWidth = 2.5
            noseLayer.strokeColor = UIColor.black.cgColor
            noseLayer.fillColor = CGColor(red: 244/255, green: 188/255, blue: 213/255, alpha: 1)
        view.layer.addSublayer(noseLayer)
        
        //嘴巴
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 187, y: 545))
        
        mouthPath.addCurve(to: CGPoint(x: 212, y: 542), controlPoint1: CGPoint(x: 187, y: 542), controlPoint2: CGPoint(x:217, y: 567))
        mouthPath.addLine(to: CGPoint(x: 187, y: 545))

        let mouthLayer = CAShapeLayer()
        mouthLayer.path = mouthPath.cgPath
        mouthLayer.lineWidth = 3
        mouthLayer.strokeColor = UIColor.black.cgColor
        mouthLayer.fillColor = CGColor(red: 255/255, green: 185/255, blue: 210/255 , alpha: 1)
        view.layer.addSublayer(mouthLayer)
    }


}

#Preview {
    UIStoryboard(name: "Main", bundle:nil).instantiateInitialViewController()!
}
