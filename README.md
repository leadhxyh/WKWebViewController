# __WKWebViewController__ &copy;*GREENBANYAN*

>  简易且轻量的WKWebViewController，对WKWebView的封装。
>  带载入进度条;
>  push多级页面时带返回和关闭按钮，当然这依赖与你设定的navigationBar，但是你也可以用我自己的navigationBar。
>  你可以对比下[*__RxWebViewController__*](https://github.com/Roxasora/RxWebViewController) 

*__预览__* 

![预览Gif](https://github.com/GREENBANYAN/WKWebViewController/blob/master/2017-03-16%2010_01_13.gif )

*__Example__*
```
WKWebViewController * vc = [[WKWebViewController alloc]initWithUrl:[NSURL URLWithString:@"http://www.baidu.com"]];
[self.navigationController pushViewController:vc animated:YES];
```
 
[*__简书__*](http://www.jianshu.com/p/8b41e1c9c048)


