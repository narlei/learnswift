# The most popular Objective -C Features in Swift

If you are a Objective-C developer, you like to use:

````objective-c
@protocol <#className#>Delegate <NSObject>

// Methods

@optional
@end
````

````objective-c
-(void) methodWithParameterBlock:(NSString *) string execScript:(int (^)(int tess)) script{
    int retorno = script(589);
    NSLog(@"%d", retorno);
}
````

````objective-c
+(id) createObjectWithData:(NSDictionary *)dicData;
````

But, how do all that in Swift?

This repo contais examples:

* Use Class Delegate (Ex.: UITableViewCell)
* Implement your own Delegate
* Parameter Block
* Object Properties
* Class Methods


