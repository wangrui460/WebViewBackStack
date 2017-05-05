# WebViewBackStack
iOS webView 回退栈     webView内部跳转和原生跳转两不误

- Android 的webView有回退栈，其实iOS的webView也有回退栈！
- webView的回退栈其实就是表示webView的层级！

** iOS UIWebView 提供的接口 **
```
//  当webView的回退栈没有数据的时候，canGoBack为NO
//  也就是说，当webView的层级大于1的时候，canGoBack为YES
@property (nonatomic, readonly, getter=canGoBack) BOOL canGoBack;

//  返回回退栈中最上层对应的webView
- (void)goBack;
```

** 看一下没有处理回退栈的问题 **
![未处理.gif](http://upload-images.jianshu.io/upload_images/1795300-858fc55104a09fed.gif?imageMogr2/auto-orient/strip)

** 处理webView的回退栈后 **
![处理后.gif](http://upload-images.jianshu.io/upload_images/1795300-913fd39dfd10c794.gif?imageMogr2/auto-orient/strip)

** 处理webView回退栈 **
```
if ([self.webView canGoBack]) 
{   // webView本身回退 
[self.webView goBack];
}
else 
{   // 原生回退
[self dismissCurrentAnimated:YES];
}
```

[简书](http://www.jianshu.com/p/8899eb9e29fa)
