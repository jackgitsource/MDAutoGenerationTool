## Brief introduction
The purpose of this project is to improve the efficiency of writing documents. You just need to edit the code in Xcode to output the contents of markdown file. Let's have a look at it.

#### code
```
NSMutableDictionary *mutabDic = [NSMutableDictionary dictionary];
[mutabDic setObject:@"Initialize" forKey:K_TITLE];
[mutabDic setObject:@"This command is used to initialize " forKey:K_CONT_1];
NSArray *editList = @[ @[@"status",@"M",@"String",@"0",@""],
@[@"command",@"M",@"String",@"0",@""],
@[@"version",@"M",@"String",@"0",@""],
@[@"responseCode",@"M",@"String",@"0",@""],
@[@"responseMsg",@"C",@"String",@"0",@""],
@[@"sn",@"O",@"String",@"0",@""],
@[@"modelName",@"O",@"String",@"0",@""],
@[@"osVersion",@"O",@"String",@"0",@""],
@[@"macAddress",@"O",@"String",@"0",@""],
@[@"numberOfLinesPerScreen",@"O",@"String",@"0",@""],
@[@"numberOCharsPerLine",@"O",@"String",@"0",@"number of ..."]];
[mutabDic setObject:editList forKey:k_FORM_LIST];
[MD_AutoGeneration md_autoGenerationWithDictionary:mutabDic];
```

#### markdown content
```
# Initialize
* This command is used to initialize 


| Element  | Required  | Type  | Size  | Description |
| ----  | ----  | ----  | ----  | ----  |
| status | M | String | 0 |  | 
| command | M | String | 0 |  | 
| version | M | String | 0 |  | 
| responseCode | M | String | 0 |  | 
| responseMsg | C | String | 0 |  | 
| sn | O | String | 0 |  | 
| modelName | O | String | 0 |  | 
| osVersion | O | String | 0 |  | 
| macAddress | O | String | 0 |  | 
| numberOfLinesPerScreen | O | String | 0 |  | 
| numberOCharsPerLine | O | String | 0 | number of ... | 
```
