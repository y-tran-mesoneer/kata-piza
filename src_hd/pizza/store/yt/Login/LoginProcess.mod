[Ivy]
[>Created: Thu Aug 18 10:51:28 ICT 2022]
182AA1CCA9CDF59C 3.18 #module
>Proto >Proto Collection #zClass
Ls0 LoginProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @RichDialogEnd f4 '' #zField
Ls0 @PushWFArc f5 '' #zField
Ls0 @RichDialogProcessStart f6 '' #zField
Ls0 @RichDialogProcessEnd f7 '' #zField
Ls0 @GridStep f8 '' #zField
Ls0 @GridStep f19 '' #zField
Ls0 @Alternative f11 '' #zField
Ls0 @PushWFArc f10 '' #zField
Ls0 @PushWFArc f12 '' #zField
Ls0 @PushWFArc f16 '' #zField
Ls0 @PushWFArc f14 '' #zField
Ls0 @GridStep f13 '' #zField
Ls0 @PushWFArc f9 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @Alternative f17 '' #zField
Ls0 @PushWFArc f18 '' #zField
Ls0 @PushWFArc f20 '' #zField
Ls0 @PushWFArc f15 '' #zField
>Proto Ls0 Ls0 LoginProcess #zField
Ls0 f0 guid 182AA1CCAA8E5B73 #txt
Ls0 f0 type pizza.store.yt.Login.LoginData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 inParameterMapAction 'out.isValid=true;
' #txt
Ls0 f0 outParameterDecl '<> result;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 15 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type pizza.store.yt.Login.LoginData #txt
Ls0 f1 603 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f3 guid 182AA1CCAB09378A #txt
Ls0 f3 type pizza.store.yt.Login.LoginData #txt
Ls0 f3 actionDecl 'pizza.store.yt.Login.LoginData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -15 12 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f4 type pizza.store.yt.Login.LoginData #txt
Ls0 f4 guid 182AA1CCAB0308F3 #txt
Ls0 f4 803 147 26 26 0 12 #rect
Ls0 f4 @|RichDialogEndIcon #fIcon
Ls0 f5 expr out #txt
Ls0 f5 109 160 803 160 #arcP
Ls0 f6 guid 182AA3372AA52A8C #txt
Ls0 f6 type pizza.store.yt.Login.LoginData #txt
Ls0 f6 actionDecl 'pizza.store.yt.Login.LoginData out;
' #txt
Ls0 f6 actionTable 'out=in;
' #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 83 243 26 26 -13 15 #rect
Ls0 f6 @|RichDialogProcessStartIcon #fIcon
Ls0 f7 type pizza.store.yt.Login.LoginData #txt
Ls0 f7 827 243 26 26 0 12 #rect
Ls0 f7 @|RichDialogProcessEndIcon #fIcon
Ls0 f8 actionDecl 'pizza.store.yt.Login.LoginData out;
' #txt
Ls0 f8 actionTable 'out=in;
' #txt
Ls0 f8 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import org.apache.commons.lang3.StringUtils;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();

boolean isLoginSuccess = currentSession.loginSessionUser(in.userName, in.password);

in.isValid = !(StringUtils.isBlank(in.userName) || StringUtils.isBlank(in.password)) && isLoginSuccess;' #txt
Ls0 f8 type pizza.store.yt.Login.LoginData #txt
Ls0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f8 208 234 112 44 -21 -8 #rect
Ls0 f8 @|StepIcon #fIcon
Ls0 f19 actionDecl 'pizza.store.yt.Login.LoginData out;
' #txt
Ls0 f19 actionTable 'out=in;
' #txt
Ls0 f19 actionCode 'import org.apache.commons.collections.MapUtils;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

	FacesMessage msg;
			msg = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Username/password is incorrect", "");

	        FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Ls0 f19 type pizza.store.yt.Login.LoginData #txt
Ls0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f19 617 232 112 44 -29 -8 #rect
Ls0 f19 @|StepIcon #fIcon
Ls0 f11 type pizza.store.yt.Login.LoginData #txt
Ls0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is valid</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f11 384 240 32 32 -19 18 #rect
Ls0 f11 @|AlternativeIcon #fIcon
Ls0 f10 expr out #txt
Ls0 f10 320 256 384 256 #arcP
Ls0 f12 expr in #txt
Ls0 f12 outCond !in.isValid #txt
Ls0 f12 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f12 416 256 617 254 #arcP
Ls0 f16 expr out #txt
Ls0 f16 729 254 827 255 #arcP
Ls0 f14 expr in #txt
Ls0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f14 413 253 803 162 #arcP
Ls0 f13 actionDecl 'pizza.store.yt.Login.LoginData out;
' #txt
Ls0 f13 actionTable 'out=in;
' #txt
Ls0 f13 actionCode 'import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.ISecurityManager;
import org.apache.commons.lang3.StringUtils;
import ch.ivyteam.ivy.security.IUser;

ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
ISession currentSession = securityManager.getCurrentSession();

if (currentSession.getSessionUser() != null) {
	in.wasLogin = true;
	}' #txt
Ls0 f13 type pizza.store.yt.Login.LoginData #txt
Ls0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check was login</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f13 192 42 112 44 -44 -8 #rect
Ls0 f13 @|StepIcon #fIcon
Ls0 f9 expr out #txt
Ls0 f9 109 256 208 256 #arcP
Ls0 f2 expr out #txt
Ls0 f2 109 64 192 64 #arcP
Ls0 f17 type pizza.store.yt.Login.LoginData #txt
Ls0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wasLogin</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f17 384 48 32 32 -27 18 #rect
Ls0 f17 @|AlternativeIcon #fIcon
Ls0 f18 expr in #txt
Ls0 f18 outCond in.wasLogin #txt
Ls0 f18 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f18 413 67 803 157 #arcP
Ls0 f20 expr in #txt
Ls0 f20 outCond !in.wasLogin #txt
Ls0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f20 416 64 603 64 #arcP
Ls0 f15 expr out #txt
Ls0 f15 304 64 384 64 #arcP
>Proto Ls0 .type pizza.store.yt.Login.LoginData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f3 mainOut f5 tail #connect
Ls0 f5 head f4 mainIn #connect
Ls0 f8 mainOut f10 tail #connect
Ls0 f10 head f11 in #connect
Ls0 f11 out f12 tail #connect
Ls0 f12 head f19 mainIn #connect
Ls0 f19 mainOut f16 tail #connect
Ls0 f16 head f7 mainIn #connect
Ls0 f11 out f14 tail #connect
Ls0 f14 head f4 mainIn #connect
Ls0 f6 mainOut f9 tail #connect
Ls0 f9 head f8 mainIn #connect
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f13 mainIn #connect
Ls0 f17 out f18 tail #connect
Ls0 f18 head f4 mainIn #connect
Ls0 f17 out f20 tail #connect
Ls0 f20 head f1 mainIn #connect
Ls0 f13 mainOut f15 tail #connect
Ls0 f15 head f17 in #connect
