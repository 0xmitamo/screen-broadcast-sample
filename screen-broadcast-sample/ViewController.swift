//
//  ViewController.swift
//  screen-broadcast-sample
//
//  Created by 三谷大典 on 2022/01/25.
//

import UIKit
import ReplayKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let broadcastPicker = RPSystemBroadcastPickerView(frame: CGRect(x: view.frame.origin.x / 2, y: view.frame.origin.y / 2, width: 100, height: 100))

        // 追加したBroadcast Upload ExtensionのBundleIDを設定
        broadcastPicker.preferredExtension = "com.apple.broadcast-services-upload"
        // マイクのオン/オフ表示を設定
        broadcastPicker.showsMicrophoneButton = true

        // デフォルト表示の二重丸アイコンを文字列に変更
        for subview  in broadcastPicker.subviews {
            let b = subview as! UIButton
                b.setImage(nil, for: .normal)
                b.setTitle("画面共有", for: .normal)
                b.setTitleColor(.black, for: .normal)
        }
        view.addSubview(broadcastPicker)

    }


}

