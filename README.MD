NSScrollSideBar
=====

NSBox sidebar with close and open animations

>Another framwork for Mac OS you may interest in:
[NSGradientView](https://github.com/paiyou-network/NSGradientView),
[NSHoverableButton](https://github.com/paiyou-network/NSHoverableButton),
[CountryCodeNSTextField](https://github.com/paiyou-network/CountryCodeNSTextField)

### Usage

1. Add `pod 'NSScrollSideBar'` in your podfile and run
```
pod install
```
2. Create one UIView and set its class to `NSScrollSideBar`
3. Set `animTime`, `width`, `height`, `buttonX`, `buttonY`, `buttonWidth`, `buttonHeight`, `Buttom Image`.
 * Default Values:
 ```
animTime: CGFloat = 0.3
width: CGFloat = 100.0
height: CGFloat = 100.0
buttonX: CGFloat = 20.0
buttonY: CGFloat = 20.0
buttonWidth: CGFloat = 30.0
buttonHeight: CGFloat = 30.0
 ```

![alt text](https://raw.githubusercontent.com/paiyou-network/NSScrollSideBar/master/NSScrollSideBarDemo/screenshot/NSScorllSidebar1.png)


4. You also need to define a NSButton by yourself to open the sidebar
 * For Example:
```
@IBOutlet weak var openButton: NSButton!

@IBAction func openSideBar(_ sender: Any?) {
  sideBar.clickOpenButton()
}

```

### Examples
* Settings for outer NSBox in this image:

![alt text](https://raw.githubusercontent.com/paiyou-network/NSScrollSideBar/master/NSScrollSideBarDemo/screenshot/NSScorllSidebar4.png)

![alt text](https://raw.githubusercontent.com/paiyou-network/NSScrollSideBar/master/NSScrollSideBarDemo/screenshot/NSScorllSidebar2.png)

![alt text](https://raw.githubusercontent.com/paiyou-network/NSScrollSideBar/master/NSScrollSideBarDemo/screenshot/NSScorllSidebar3.png)

### License
The MIT License (MIT)

Copyright (c) 2019 Paiyou Network

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

