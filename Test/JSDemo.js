/* 
  JSDemo.js
  Test

  Created by msc on 2017/5/26.
  Copyright © 2017年 Ehu. All rights reserved.
*/

require('UIButton,UIColor');
defineClass('ViewController',{
            viewDidLoad: function() {
            self.super().viewDidLoad();
            console.log('456');
            var btn = UIButton.alloc().initWithFrame({x:100,y:200,width:100,height:50});
            btn.setBackgroundColor(UIColor.redColor());
            btn.addTarget_action_forControlEvents(self, "btnAction", 1 <<  6);
            self.view().addSubview(btn);
            }
            });
