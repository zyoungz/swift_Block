//
//  FVController.swift
//  SwiftDemo
//
//  Created by 周阳 on 2019/3/4.
//  Copyright © 2019 tabletennis. All rights reserved.
//

import UIKit


class FVController: UIViewController {

    var  userId:String?
    var zyScrollVierw:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userId as Any)
//   NetworkRequest.sharedInstance.getRequest(urlString: "http://op.juhe.cn/onebox/weather/query", params: ["cityname":"杭州","key":"f6418f1f819c801a60ea7880ca844587"], success: {(json) -> Void in
////    print(json)
//    }, failture: {(error) -> Void in
////    print(error)
//    })
        
//       jsonTomodel()
//       jsonArrayToModel()
//       dicToModel()
//       modelToJson()
//       modelTodiction()
       jsonTocombilModel()
//       jsonToSpecialModel()
    }
    
    //json转model
    fileprivate func jsonTomodel(){
        let jsonString = "{\"id\":12345,\"color\":\"black\",\"name\":\"cat\"}"
        let model:JsonToModel = JsonUtil.jsonToModel(jsonString, JsonToModel.self) as! JsonToModel

        print(model.name as Any)
        print(model.color as Any)
        print(model.id as Any)
    }
    
    //json数组转model
    fileprivate func jsonArrayToModel() {
        let jsonArrayString: String = "[{\"name\":\"Bob\",\"id\":\"1\"}, {\"name\":\"Lily\",\"id\":\"2\"}, {\"name\":\"Lucy\",\"id\":\"3\"}]"
        let cats = JsonUtil.jsonArrayToModel(jsonArrayString, JsonArrayToModel.self) as! [JsonArrayToModel]
        for model:JsonArrayToModel  in cats {
            print(model.name as Any)
        }
    }

    //字典转model
    fileprivate func dicToModel() {
        var dict = [String: Any]()
        dict["id"] = 1.1
        dict["color"] = "hello"
        dict["name"] = "李四"
        let model:JsonToModel = JsonUtil.dictionaryToModel(dict,JsonToModel.self) as! JsonToModel
        print(model.name as Any)
        print(model.color as Any)
        print(model.id as Any)
    }
    
   // 模型转json
    fileprivate func modelToJson() {
        let model:JsonToModel = JsonToModel()
        model.color = "red"
        model.id    = 100
        model.name  = "李四真"
        let modelTostring = JsonUtil.modelToJson(model)
        print(modelTostring)
    }
    
    //模型转字典
    fileprivate func modelTodiction() {
        let model:JsonToModel = JsonToModel()
        model.color = "red"
        model.id    = 100
        model.name  = "李四"
        let modelTostring = JsonUtil.modelToDictionary(model)
        print(modelTostring["name"] as Any)
    }
    
    fileprivate func jsonTocombilModel() {
        let model:CombineModel = CombineModel()
        model.aInt = 1001
        let posModel1 = Composition()
        posModel1.aInt = 1
        posModel1.aString = "赵六1"
        
        let posModel2 = Composition()
        posModel2.aInt = 2
        posModel2.aString = "赵六2"
        
        let posModel3 = Composition()
        posModel3.aInt = 3
        posModel3.aString = "赵六3"
        
        model.comp1 = posModel1
        model.comp2.append(posModel2)
        model.comp2.append(posModel3)
        
        let modeString = JsonUtil.modelToJson(model)
        print(modeString)
        
        let model2 = JsonUtil.jsonToModel(modeString, CombineModel.self)
        print(model2)
    }
    
    fileprivate func jsonToSpecialModel () {
        
        let object = SpacialTypeModel()
        object.date = Date()
        object.decimal = NSDecimalNumber(string: "1.23423414371298437124391243")
        object.url = URL(string: "https://www.aliyun.com")
        object.data = Data(base64Encoded: "aGVsbG8sIHdvcmxkIQ==")
        object.color = UIColor.blue
        
        let specailModelString = JsonUtil.modelToJson(object)
        print(object.toJSONString()!)
        // it prints:
        // {"date":"2017-09-11","decimal":"1.23423414371298437124391243","url":"https:\/\/www.aliyun.com","data":"aGVsbG8sIHdvcmxkIQ==","color":"0000FF"}
        
        let mappedObject:SpacialTypeModel = JsonUtil.jsonToModel(specailModelString, SpacialTypeModel.self) as! SpacialTypeModel
        print(mappedObject.date as Any)
    }
}
