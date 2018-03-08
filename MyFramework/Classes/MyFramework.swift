//
//  MyFramework.swift
//  MyFramework
//
//  Created by Kunihiko Ohnaka on 2018/03/08.
//

import Foundation

import RxSwift

public class MyFrameworkClass {
    private let disposeBag = DisposeBag()

    public init() {
    }

    public func function1() -> Observable<String> {
        return Observable.just("function1")
    }

    public func function2() -> Observable<String> {
        let v = Variable("function2")
        v.asObservable().subscribe(onNext: { (str) in
            NSLog("\(str)")
        }).disposed(by: disposeBag)
        return v.asObservable()
    }
}


