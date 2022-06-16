# 合约升级

### 数据合约及控制合约

分离合约中的数据，使用一个单独的合约来存储数据（数据合约），使用一个单独的合约写业务逻辑（控制合约）。

### 读写控制

控制哪些地址可以访问数据



### 部署方法如下：

1. 先部署DataContract合约
2. 使用DataContract合约地址作为部署ControlContract合约的参数
3. 用ControlContract合约地址作为参数调用DataContract合约的allowAccess方法。

如果需要更新控制合约(如修复了addTen)则重新执行第2-3步，同时对老的控制合约执行denyAccess()。
