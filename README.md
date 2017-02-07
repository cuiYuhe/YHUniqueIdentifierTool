## 用途
利用keychain, 得到手机的唯一标识
## 使用步骤
- 1. `YHUniqueIdentifierTool.m` 中: 设置`KEY_IN_KEYCHAIN`, `KEY_UDID`:
```
static NSString * const KEY_IN_KEYCHAIN = @"com.cuiyuhe.app";
static NSString * const KEY_UDID = @"com.cuiyuhe.app.UDID";
```
- 2. 导入`YHUniqueIdentifierTool.m`:
```
#import "YHUniqueIdentifierTool.h"
```
- 3. 得到UDID:
```
id UDID = [YHUniqueIdentifierTool readUDID];
if (!UDID){
    [YHUniqueIdentifierTool saveUDID];
}
UDID = [YHUniqueIdentifierTool readUDID];
```
  
