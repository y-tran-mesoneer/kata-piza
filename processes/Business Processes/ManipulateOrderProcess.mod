[Ivy]
[>Created: Thu Aug 18 10:39:36 ICT 2022]
182AA1B81CFDD3EB 3.18 #module
>Proto >Proto Collection #zClass
Ls0 ManipulateOrderProcess Big #zClass
Ls0 B #cInfo
Ls0 #process
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @StartRequest f0 '' #zField
Ls0 @EndTask f1 '' #zField
Ls0 @RichDialog f3 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @RichDialog f15 '' #zField
Ls0 @PushWFArc f6 '' #zField
Ls0 @PushWFArc f4 '' #zField
>Proto Ls0 Ls0 ManipulateOrderProcess #zField
Ls0 f0 outLink start.ivp #txt
Ls0 f0 type pizza.store.yt.Data #txt
Ls0 f0 inParamDecl '<> param;' #txt
Ls0 f0 actionDecl 'pizza.store.yt.Data out;
' #txt
Ls0 f0 guid 182AA1B81D4EECBF #txt
Ls0 f0 requestEnabled true #txt
Ls0 f0 triggerEnabled false #txt
Ls0 f0 callSignature start() #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 @C|.responsibility Everybody #txt
Ls0 f0 81 49 30 30 -21 17 #rect
Ls0 f0 @|StartRequestIcon #fIcon
Ls0 f1 type pizza.store.yt.Data #txt
Ls0 f1 913 89 30 30 0 15 #rect
Ls0 f1 @|EndIcon #fIcon
Ls0 f3 targetWindow NEW:card: #txt
Ls0 f3 targetDisplay TOP #txt
Ls0 f3 richDialogId pizza.store.yt.Login #txt
Ls0 f3 startMethod start() #txt
Ls0 f3 type pizza.store.yt.Data #txt
Ls0 f3 requestActionDecl '<> param;' #txt
Ls0 f3 responseActionDecl 'pizza.store.yt.Data out;
' #txt
Ls0 f3 responseMappingAction 'out=in;
' #txt
Ls0 f3 windowConfiguration '* ' #txt
Ls0 f3 isAsynch false #txt
Ls0 f3 isInnerRd false #txt
Ls0 f3 userContext '* ' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login dialog</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f3 296 50 112 44 -32 -8 #rect
Ls0 f3 @|RichDialogIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 110 64 296 72 #arcP
Ls0 f15 targetWindow NEW:card: #txt
Ls0 f15 targetDisplay TOP #txt
Ls0 f15 richDialogId pizza.store.yt.OrderManipulation #txt
Ls0 f15 startMethod start() #txt
Ls0 f15 type pizza.store.yt.Data #txt
Ls0 f15 requestActionDecl '<> param;' #txt
Ls0 f15 responseActionDecl 'pizza.store.yt.Data out;
' #txt
Ls0 f15 responseMappingAction 'out=in;
' #txt
Ls0 f15 windowConfiguration '* ' #txt
Ls0 f15 isAsynch false #txt
Ls0 f15 isInnerRd false #txt
Ls0 f15 userContext '* ' #txt
Ls0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>order manipulation</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f15 576 66 112 44 -52 -8 #rect
Ls0 f15 @|RichDialogIcon #fIcon
Ls0 f6 expr out #txt
Ls0 f6 576 88 408 72 #arcP
Ls0 f4 expr out #txt
Ls0 f4 352 94 632 110 #arcP
Ls0 f4 1 352 160 #addKink
Ls0 f4 2 632 160 #addKink
Ls0 f4 1 0.4230769230769231 0 0 #arcLabel
>Proto Ls0 .type pizza.store.yt.Data #txt
>Proto Ls0 .processKind NORMAL #txt
>Proto Ls0 0 0 32 24 18 0 #rect
>Proto Ls0 @|BIcon #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f3 mainIn #connect
Ls0 f15 mainOut f6 tail #connect
Ls0 f6 head f3 mainIn #connect
Ls0 f3 mainOut f4 tail #connect
Ls0 f4 head f15 mainIn #connect
