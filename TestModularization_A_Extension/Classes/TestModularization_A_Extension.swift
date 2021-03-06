//
//  TestModularization_A_Extension.swift
//  TestModularization_A_Extension
//
//  Created by cuicc on 2019/3/8.
//

import CTMediator

public extension CTMediator {
    @objc public func A_showSwift(callback:@escaping (String) -> Void) -> UIViewController? {
        print("A_Extension A_showSwift")
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"TestModularization_A"
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("TestModularization_A", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
    @objc public func A_Stroyboard_showSwift(callback:@escaping (String) -> Void) -> UIViewController? {
        print("A_Extension A_Stroyboard_showSwift")
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"TestModularization_A"
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("TestModularization_A", action: "Extension_ViewController_Storyboard", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }

    @objc public func A_showObjc(callback:@escaping (String) -> Void) -> UIViewController? {
        print("A_Extension A_showObjc")
        let callbackBlock = callback as @convention(block) (String) -> Void
        let callbackBlockObject = unsafeBitCast(callbackBlock, to: AnyObject.self)
        let params = ["callback":callbackBlockObject] as [AnyHashable:Any]
        if let viewController = self.performTarget("TestModularization_A", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
