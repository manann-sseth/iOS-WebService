# iOS-WebService


```objc
APIParser *service = [APIParser sharedMediaServer];

[service EventRequestWithType:APIGetAllEvents
parameters:[NSString stringWithFormat:@"userId=%d", userID]
cookieValue:nil
customeobject:nil
block:^(NSError *error, id objects, NSString *responseString, NSString *nextUrl, NSMutableArray *responseArray)
{
if (error) {

    //Handle Error
}
else {

if (responseArray.count > 0) {

    //Handle Response Array
}
else {

    //Handle null response array
}
}
}];
```


## Author

Dhruvik Rao, dhruvik.rao@gmail.com

