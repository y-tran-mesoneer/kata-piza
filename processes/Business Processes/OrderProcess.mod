[Ivy]
[>Created: Wed Aug 10 10:08:59 ICT 2022]
18268912E6E3CD5F 3.18 #module
>Proto >Proto Collection #zClass
Os0 OrderProcess Big #zClass
Os0 B #cInfo
Os0 #process
Os0 @TextInP .resExport .resExport #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @MessageFlowInP-0n messageIn messageIn #zField
Os0 @MessageFlowOutP-0n messageOut messageOut #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @StartRequest f0 '' #zField
Os0 @EndTask f1 '' #zField
Os0 @RichDialog f2 '' #zField
Os0 @PushWFArc f4 '' #zField
Os0 @GridStep f3 '' #zField
Os0 @PushWFArc f5 '' #zField
Os0 @PushWFArc f6 '' #zField
>Proto Os0 Os0 OrderProcess #zField
Os0 f0 outLink start.ivp #txt
Os0 f0 type pizza.store.yt.Data #txt
Os0 f0 inParamDecl '<> param;' #txt
Os0 f0 actionDecl 'pizza.store.yt.Data out;
' #txt
Os0 f0 guid 18268912E705724D #txt
Os0 f0 requestEnabled true #txt
Os0 f0 triggerEnabled false #txt
Os0 f0 callSignature start() #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Os0 f0 @C|.responsibility Everybody #txt
Os0 f0 41 49 30 30 -21 17 #rect
Os0 f0 @|StartRequestIcon #fIcon
Os0 f1 type pizza.store.yt.Data #txt
Os0 f1 409 49 30 30 0 15 #rect
Os0 f1 @|EndIcon #fIcon
Os0 f2 targetWindow NEW:card: #txt
Os0 f2 targetDisplay TOP #txt
Os0 f2 richDialogId pizza.store.yt.UserOrdering #txt
Os0 f2 startMethod start(List<pizza.store.yt.ordering.Product>,List<pizza.store.yt.ordering.Product>) #txt
Os0 f2 type pizza.store.yt.Data #txt
Os0 f2 requestActionDecl '<List<pizza.store.yt.ordering.Product> prizzas, List<pizza.store.yt.ordering.Product> drinks> param;' #txt
Os0 f2 requestMappingAction 'param.prizzas=in.pizzas;
param.drinks=in.drinks;
' #txt
Os0 f2 responseActionDecl 'pizza.store.yt.Data out;
' #txt
Os0 f2 responseMappingAction 'out=in;
' #txt
Os0 f2 windowConfiguration '* ' #txt
Os0 f2 isAsynch false #txt
Os0 f2 isInnerRd false #txt
Os0 f2 userContext '* ' #txt
Os0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>User ordering page</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f2 240 42 112 44 -53 -8 #rect
Os0 f2 @|RichDialogIcon #fIcon
Os0 f4 expr out #txt
Os0 f4 352 64 409 64 #arcP
Os0 f3 actionDecl 'pizza.store.yt.Data out;
' #txt
Os0 f3 actionTable 'out.drinks=pizza.store.yt.client.ProductClient.getProducts(1);
out.pizzas=pizza.store.yt.client.ProductClient.getProducts(0);
' #txt
Os0 f3 type pizza.store.yt.Data #txt
Os0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initProducts</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f3 96 42 112 44 -32 -8 #rect
Os0 f3 @|StepIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 71 64 96 64 #arcP
Os0 f6 expr out #txt
Os0 f6 208 64 240 64 #arcP
>Proto Os0 .type pizza.store.yt.Data #txt
>Proto Os0 .processKind NORMAL #txt
>Proto Os0 0 0 32 24 18 0 #rect
>Proto Os0 @|BIcon #fIcon
Os0 f2 mainOut f4 tail #connect
Os0 f4 head f1 mainIn #connect
Os0 f0 mainOut f5 tail #connect
Os0 f5 head f3 mainIn #connect
Os0 f3 mainOut f6 tail #connect
Os0 f6 head f2 mainIn #connect
