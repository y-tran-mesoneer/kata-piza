[Ivy]
[>Created: Thu Aug 18 15:24:46 ICT 2022]
182AAABD5941C4B8 3.18 #module
>Proto >Proto Collection #zClass
Os0 OrderManipulationProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Os0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Os0 @TextInP .resExport .resExport #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @MessageFlowInP-0n messageIn messageIn #zField
Os0 @MessageFlowOutP-0n messageOut messageOut #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @RichDialogInitStart f0 '' #zField
Os0 @RichDialogProcessEnd f1 '' #zField
Os0 @RichDialogProcessStart f3 '' #zField
Os0 @RichDialogEnd f4 '' #zField
Os0 @PushWFArc f5 '' #zField
Os0 @GridStep f10 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @PushWFArc f6 '' #zField
Os0 @GridStep f9 '' #zField
Os0 @RichDialogMethodStart f7 '' #zField
Os0 @PushWFArc f8 '' #zField
Os0 @PushWFArc f11 '' #zField
Os0 @RichDialogMethodStart f14 '' #zField
Os0 @PushWFArc f15 '' #zField
Os0 @RichDialogMethodStart f12 '' #zField
Os0 @PushWFArc f13 '' #zField
>Proto Os0 Os0 OrderManipulationProcess #zField
Os0 f0 guid 182AAABD59D1FA72 #txt
Os0 f0 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f0 method start() #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f0 outParameterDecl '<> result;
' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f0 83 51 26 26 -12 15 #rect
Os0 f0 @|RichDialogInitStartIcon #fIcon
Os0 f1 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f1 699 51 26 26 0 12 #rect
Os0 f1 @|RichDialogProcessEndIcon #fIcon
Os0 f3 guid 182AAABD5A030E2A #txt
Os0 f3 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f3 actionDecl 'pizza.store.yt.OrderManipulation.OrderManipulationData out;
' #txt
Os0 f3 actionTable 'out=in;
' #txt
Os0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f3 91 347 26 26 -15 12 #rect
Os0 f3 @|RichDialogProcessStartIcon #fIcon
Os0 f4 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f4 guid 182AAABD5A07670D #txt
Os0 f4 819 347 26 26 0 12 #rect
Os0 f4 @|RichDialogEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 117 360 819 360 #arcP
Os0 f10 actionDecl 'pizza.store.yt.OrderManipulation.OrderManipulationData out;
' #txt
Os0 f10 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import org.apache.commons.lang3.StringUtils;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();
in.user = currentSession.getSessionUser();
in.orders = pizza.store.yt.client.OrderClient.getOrders();

' #txt
Os0 f10 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Orders and User</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f10 387 43 128 44 -56 -8 #rect
Os0 f10 @|StepIcon #fIcon
Os0 f2 expr out #txt
Os0 f2 108 64 387 65 #arcP
Os0 f6 expr out #txt
Os0 f6 515 65 699 64 #arcP
Os0 f9 actionDecl 'pizza.store.yt.OrderManipulation.OrderManipulationData out;
' #txt
Os0 f9 actionTable 'out=in;
' #txt
Os0 f9 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import org.apache.commons.lang3.StringUtils;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();

currentSession.logoutSessionUser();' #txt
Os0 f9 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f9 232 250 112 44 -17 -8 #rect
Os0 f9 @|StepIcon #fIcon
Os0 f7 guid 182AEDD2634FB4C8 #txt
Os0 f7 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f7 method logout() #txt
Os0 f7 disableUIEvents false #txt
Os0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f7 outParameterDecl '<> result;
' #txt
Os0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f7 83 259 26 26 -17 15 #rect
Os0 f7 @|RichDialogMethodStartIcon #fIcon
Os0 f8 expr out #txt
Os0 f8 109 272 232 272 #arcP
Os0 f11 expr out #txt
Os0 f11 344 272 819 355 #arcP
Os0 f11 1 608 272 #addKink
Os0 f11 0 0.9308285443409205 0 0 #arcLabel
Os0 f14 guid 182AF005040726A2 #txt
Os0 f14 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f14 method reload() #txt
Os0 f14 disableUIEvents false #txt
Os0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f14 outParameterDecl '<> result;
' #txt
Os0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f14 91 115 26 26 -17 15 #rect
Os0 f14 @|RichDialogMethodStartIcon #fIcon
Os0 f15 expr out #txt
Os0 f15 117 128 387 87 #arcP
Os0 f15 1 264 128 #addKink
Os0 f15 0 0.9784813281464492 0 0 #arcLabel
Os0 f12 guid 182AF3D2D84EAC7E #txt
Os0 f12 type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
Os0 f12 method updateOrder() #txt
Os0 f12 disableUIEvents false #txt
Os0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f12 inActionCode 'import java.util.Map;
import javax.faces.context.FacesContext;

FacesContext context = FacesContext.getCurrentInstance();
Map map = context.getExternalContext().getRequestParameterMap();
pizza.store.yt.client.OrderClient.updateOrder(map.get("id").toString(),map.get("status").toNumber());' #txt
Os0 f12 outParameterDecl '<> result;
' #txt
Os0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateOrder</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f12 99 195 26 26 -34 15 #rect
Os0 f12 @|RichDialogMethodStartIcon #fIcon
Os0 f13 expr out #txt
Os0 f13 125 208 451 87 #arcP
Os0 f13 1 451 208 #addKink
Os0 f13 0 0.5052813644603943 0 0 #arcLabel
>Proto Os0 .type pizza.store.yt.OrderManipulation.OrderManipulationData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
Os0 f0 mainOut f2 tail #connect
Os0 f2 head f10 mainIn #connect
Os0 f10 mainOut f6 tail #connect
Os0 f6 head f1 mainIn #connect
Os0 f7 mainOut f8 tail #connect
Os0 f8 head f9 mainIn #connect
Os0 f9 mainOut f11 tail #connect
Os0 f11 head f4 mainIn #connect
Os0 f14 mainOut f15 tail #connect
Os0 f15 head f10 mainIn #connect
Os0 f12 mainOut f13 tail #connect
Os0 f13 head f10 mainIn #connect
