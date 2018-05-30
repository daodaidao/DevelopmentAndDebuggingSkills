//http://www.cocoachina.com/swift/20171013/20789.html
//https://www.jianshu.com/p/a023c325ee23
//  ViewController.swift
//  001-LLDB
//使用LLDB调试Swift
//  Created by caihongguang on 2018/5/28.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let count = 66
        var test = "testLLDB"
        test = "english"
        
    /*  1.help命令.
            可以列出所有命令列表
            p         -- Evaluate an expression on the current thread.  Displays any
            returned value with LLDB's default formatting.
            parray    -- Evaluate an expression on the current thread.  Displays any
            returned value with LLDB's default formatting.
            po        -- .....
         
        2.print(prin pri p) 命令
            唯独pr不能用来作为检查，因为会和process混淆.实际上你会发现，lldb对于命令的简称，是头部匹配方式，只要不混淆，你可以随意简称某个命令。
            打印返回的$0是命令结果的引用名，使用$0可以进行print $0 + 7这样打印出106，当然，$0可以被用于任何其他表达式或者接收参数的命令。
        
        3.expression命令
             print实际上是expression --的简写.
             (lldb) p/t (char)16
             0b00010000
             (lldb)p/x 16
             0x10
         
             那么在p（或者po）后面跟上复杂的表达式则可以先计算表达式再打印最后的计算结果。
             p count * 10
             (Int) $R9 = 660
             expression count * 10
             (Int) $R10 = 660
         
         4.流程控制命令
            实际上使用xcode自带的可视化工具来控制 "继续" "暂停" "下一步"...更简单，也可以使用命令来
         
         继续: process continue,
         (lldb) continue
         Process 2648 resuming
         (lldb) c
         Process 2648 resuming
         下一步：thread step-over, next, n
         进入：thread step-in, step, s
         跳出：thread step-out, finish, f
         记住最后一个单词，用简写
         
         
         */
        
        
        print(testLLDB())
        
        
    }
    
    func testLLDB() -> Array<Any>{
        
        
        /*
            5. thread return 命令
            执行thread return命令可以使得当前函数立即返回.，也就是说，后续代码都不会执行了。
         
         当然执行此命令可能会使得arc的计数追踪出现错乱。
         thread return命令需要一个参数来指明函数强制返回时的返回值。
         
            6. 断点命令
         
         一般来说，在xcode中新建/删除“行断点”是很容易的，但是断点还有很多进阶使用方法：
         条件断点、条件执行、记录日志、自动继续、重复断点跳过。
         使用xcode提供的可视化工具来操作是很容易的：
         可视化工具需要单独练习下
         
            7.在 debugger中执行任意代码
         在debugger中可以修改view的颜色、尺寸、甚至创建controller来push
         ex: expression testView.backgroundColor = UIColor.red
         
         8.watchpoint
         watchpoint可以在某个变量被写入/读取时暂停程序运行：
         实际上可以使用watchpoint来监视任意一段内存的读写。
         写到内存的时候 可以试下
         
         
         9.断点符号.在 Add symbolic breakpoint中填入符号名即可，
         
         这里给出objective-c的函数符号断点的写法：
         -[MyViewController viewDidAppear:]
         +[MyViewController sharedInstance]
         
         10.查看内存
         使用XCode的可视化工具来查看memory，要注意watch memory of "p" 和watch memory of "*p"的区别。
         手动执行命令可以help x或者 help memory。
         
         小结
         
         lldb的用法很灵活多样，但是XCode的可视化调试工具覆盖面有限，一些高级用法仍需手动输入命令，甚至结合python脚本。
         
         */
        
        var numbersArray = [8, 9, 5, 1, 7]
        
        for i in 0...(numbersArray.count - 2) {  //n个数进行排序，只要进行（n - 1）轮操作
            for j in 0...(numbersArray.count - i - 2){ //开始一轮操作
                
                if numbersArray[j] < numbersArray[j + 1] {
                    //交换位置
                    let temp = numbersArray[j]
                    
                    numbersArray[j] = numbersArray[j + 1]
                    
                    numbersArray[j + 1] = temp;
                    
                }
                
                
                
            }
        
        }
        
        
        return numbersArray
        
    }

    

    
    
    
    
    
    
    
    

}

