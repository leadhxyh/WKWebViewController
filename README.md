# WKWebViewController
简易且清理的WKWebView扩展，带进度条。push多级页面带返回和关闭Nav。
you can see the detail information while you download the WKWebViewController


使用方式:
WKWebViewController * webVC = [[WKWebViewController alloc]initWithUrl:[NSURL URLWithString:@"http://www.baidu.com"]];
[self.navigationController pushViewController:webVC animated:YES];
