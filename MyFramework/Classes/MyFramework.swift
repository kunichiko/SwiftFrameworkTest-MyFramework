//
//  MyFramework.swift
//  MyFramework
//
//  Created by Kunihiko Ohnaka on 2018/03/08.
//

import Foundation

import RxSwift

public class MyFrameworkClass {
    public init() {
    }

    public func function1() -> Observable<String> {
        return Observable.just("function1")
    }
}
