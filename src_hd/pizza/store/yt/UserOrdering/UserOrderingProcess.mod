[Ivy]
[>Created: Thu Aug 18 09:20:28 ICT 2022]
1827C2996EB1D715 3.18 #module
>Proto >Proto Collection #zClass
Us0 UserOrderingProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @RichDialogProcessStart f3 '' #zField
Us0 @RichDialogEnd f4 '' #zField
Us0 @PushWFArc f5 '' #zField
Us0 @RichDialogProcessStart f9 '' #zField
Us0 @RichDialogProcessEnd f10 '' #zField
Us0 @GridStep f11 '' #zField
Us0 @PushWFArc f13 '' #zField
Us0 @GridStep f14 '' #zField
Us0 @PushWFArc f12 '' #zField
Us0 @Alternative f16 '' #zField
Us0 @PushWFArc f15 '' #zField
Us0 @PushWFArc f17 '' #zField
Us0 @GridStep f19 '' #zField
Us0 @PushWFArc f20 '' #zField
Us0 @PushWFArc f18 '' #zField
Us0 @RichDialogProcessEnd f21 '' #zField
Us0 @RichDialogMethodStart f6 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @RichDialogProcessStart f8 '' #zField
Us0 @RichDialogProcessEnd f22 '' #zField
Us0 @PushWFArc f23 '' #zField
>Proto Us0 Us0 UserOrderingProcess #zField
Us0 f0 guid 1827C29971A3011E #txt
Us0 f0 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f0 method start(List<pizza.store.yt.ordering.Product>,List<pizza.store.yt.ordering.Product>) #txt
Us0 f0 disableUIEvents true #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<pizza.store.yt.ordering.Product> prizzas,List<pizza.store.yt.ordering.Product> drinks> param = methodEvent.getInputArguments();
' #txt
Us0 f0 inParameterMapAction 'out.drinks=param.drinks;
out.order=new pizza.store.yt.ordering.Order();
out.order.items=new java.util.ArrayList();
out.order.products=new java.util.HashMap();
out.pizzas=param.prizzas;
' #txt
Us0 f0 outParameterDecl '<> result;
' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(List&lt;Product&gt;, List&lt;Product&gt;)</name>
        <nameStyle>35,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f0 83 51 26 26 -95 15 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f1 211 51 26 26 0 12 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f2 expr out #txt
Us0 f2 109 64 211 64 #arcP
Us0 f3 guid 1827C29972684DC5 #txt
Us0 f3 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f3 actionDecl 'pizza.store.yt.UserOrdering.UserOrderingData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Us0 f3 83 147 26 26 -15 12 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f4 guid 1827C299726228A3 #txt
Us0 f4 211 147 26 26 0 12 #rect
Us0 f4 @|RichDialogEndIcon #fIcon
Us0 f5 expr out #txt
Us0 f5 109 160 211 160 #arcP
Us0 f9 guid 182A0757670E7618 #txt
Us0 f9 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f9 actionDecl 'pizza.store.yt.UserOrdering.UserOrderingData out;
' #txt
Us0 f9 actionTable 'out=in;
' #txt
Us0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f9 83 307 26 26 -19 15 #rect
Us0 f9 @|RichDialogProcessStartIcon #fIcon
Us0 f10 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f10 595 331 26 26 0 12 #rect
Us0 f10 @|RichDialogProcessEndIcon #fIcon
Us0 f11 actionDecl 'pizza.store.yt.UserOrdering.UserOrderingData out;
' #txt
Us0 f11 actionTable 'out=in;
' #txt
Us0 f11 actionCode 'import javax.ws.rs.core.Response;
import pizza.store.yt.client.OrderClient;
import org.apache.commons.lang3.StringUtils;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;


out.response = OrderClient.addOrder(in.order);

	FacesMessage msg;
			msg = new FacesMessage(FacesMessage.SEVERITY_INFO, "ORDER SUBMITTED", "Your order has been submitted and will be shipped as soon as it is possible");

	        FacesContext.getCurrentInstance().addMessage(null, msg);
	
	out.order.items.clear();
	out.order.products.clear();' #txt
Us0 f11 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addOrder</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f11 416 234 112 44 -26 -8 #rect
Us0 f11 @|StepIcon #fIcon
Us0 f13 expr out #txt
Us0 f13 472 278 596 338 #arcP
Us0 f14 actionDecl 'pizza.store.yt.UserOrdering.UserOrderingData out;
' #txt
Us0 f14 actionTable 'out=in;
out.validData=true;
' #txt
Us0 f14 actionCode 'import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

if (StringUtils.isEmpty(out.order.userName)
|| StringUtils.isEmpty(out.order.phoneNumber)
|| StringUtils.isEmpty(out.order.deliverTo)
|| CollectionUtils.isEmpty(out.order.items)
) {
	out.validData = false;

	}
' #txt
Us0 f14 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f14 168 314 112 44 -21 -8 #rect
Us0 f14 @|StepIcon #fIcon
Us0 f12 expr out #txt
Us0 f12 108 321 168 336 #arcP
Us0 f16 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is valid</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f16 336 320 32 32 -19 18 #rect
Us0 f16 @|AlternativeIcon #fIcon
Us0 f15 expr out #txt
Us0 f15 280 336 336 336 #arcP
Us0 f17 expr in #txt
Us0 f17 outCond in.validData #txt
Us0 f17 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f17 363 331 472 278 #arcP
Us0 f19 actionDecl 'pizza.store.yt.UserOrdering.UserOrderingData out;
' #txt
Us0 f19 actionTable 'out=in;
' #txt
Us0 f19 actionCode 'import org.apache.commons.collections.MapUtils;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

	FacesMessage msg;
			msg = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Invalid", "Please choose at least one product");

	        FacesContext.getCurrentInstance().addMessage(null, msg);' #txt
Us0 f19 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f19 424 354 112 44 -29 -8 #rect
Us0 f19 @|StepIcon #fIcon
Us0 f20 expr in #txt
Us0 f20 outCond !in.validData #txt
Us0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f20 364 340 424 376 #arcP
Us0 f18 expr out #txt
Us0 f18 536 376 595 347 #arcP
Us0 f21 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f21 403 467 26 26 0 12 #rect
Us0 f21 @|RichDialogProcessEndIcon #fIcon
Us0 f6 guid 182A56A7C3B66246 #txt
Us0 f6 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f6 method cardChanged(String) #txt
Us0 f6 disableUIEvents false #txt
Us0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String productId> param = methodEvent.getInputArguments();
' #txt
Us0 f6 inActionCode 'import org.apache.commons.lang3.StringUtils;
Object value = out.order.getProducts().get(param.productId);
if (value == null || "0".equalsIgnoreCase(value.toString())
 || StringUtils.isBlank(value.toString())
) {
	out.order.getProducts().remove(param.productId);
}' #txt
Us0 f6 outParameterDecl '<> result;
' #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cardChanged()</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 67 467 26 26 -41 15 #rect
Us0 f6 @|RichDialogMethodStartIcon #fIcon
Us0 f7 expr out #txt
Us0 f7 93 480 403 480 #arcP
Us0 f8 guid 182A9FE87D79D254 #txt
Us0 f8 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f8 actionDecl 'pizza.store.yt.UserOrdering.UserOrderingData out;
' #txt
Us0 f8 actionTable 'out=in;
' #txt
Us0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inputChanged</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f8 83 531 26 26 -39 15 #rect
Us0 f8 @|RichDialogProcessStartIcon #fIcon
Us0 f22 type pizza.store.yt.UserOrdering.UserOrderingData #txt
Us0 f22 387 531 26 26 0 12 #rect
Us0 f22 @|RichDialogProcessEndIcon #fIcon
Us0 f23 expr out #txt
Us0 f23 109 544 387 544 #arcP
>Proto Us0 .type pizza.store.yt.UserOrdering.UserOrderingData #txt
>Proto Us0 .processKind HTML_DIALOG #txt
>Proto Us0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name></name>
        <desc>no</desc>
    </language>
</elementInfo>
' #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f0 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f3 mainOut f5 tail #connect
Us0 f5 head f4 mainIn #connect
Us0 f11 mainOut f13 tail #connect
Us0 f13 head f10 mainIn #connect
Us0 f9 mainOut f12 tail #connect
Us0 f12 head f14 mainIn #connect
Us0 f14 mainOut f15 tail #connect
Us0 f15 head f16 in #connect
Us0 f16 out f17 tail #connect
Us0 f17 head f11 mainIn #connect
Us0 f16 out f20 tail #connect
Us0 f20 head f19 mainIn #connect
Us0 f19 mainOut f18 tail #connect
Us0 f18 head f10 mainIn #connect
Us0 f6 mainOut f7 tail #connect
Us0 f7 head f21 mainIn #connect
Us0 f8 mainOut f23 tail #connect
Us0 f23 head f22 mainIn #connect
