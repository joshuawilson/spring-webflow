<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE composition PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<tiles:insertTemplate template="/template.jsp">
<tiles:putAttribute name="content">

<div class="section">
	<h1>Book Hotel</h1>
</div>

<div class="section">
	<h:form id="booking">
	<h:messages errorClass="errors" />
	<fieldset>
		<div class="entry">
			<div class="label">Name:</div>
			<div class="output">#{hotel.name}</div>
		</div>
		<div class="entry">
			<div class="label">Address:</div>
			<div class="output">#{hotel.address}</div>
		</div>
		<div class="entry">
			<div class="label">City, State:</div>
			<div class="output">#{hotel.city}, #{hotel.state}</div>
		</div>
		<div class="entry">
			<div class="label">Zip:</div>
			<div class="output">#{hotel.zip}</div>
		</div>
		<div class="entry">
			<div class="label">Country:</div>
			<div class="output">#{hotel.country}</div>
		</div>
        <div class="entry">
            <div class="label">Nightly rate:</div>
            <div class="output">
                <h:outputText value="#{hotel.price}">
                    <f:convertNumber type="currency" currencySymbol="$"/>
                </h:outputText>
            </div>
        </div>
		<div class="entry">
			<div class="label">
				<h:outputLabel for="checkinDate">Check In Date:</h:outputLabel>
			</div>
			<div class="input">
				<sf:clientDateValidator allowBlank="false" msgDisplay="block" msgClass="errors">
		        	<h:inputText id="checkinDate" value="#{booking.checkinDate}" required="true">
	                	<f:convertDateTime pattern="MM/dd/yy" timeZone="EST"/>
	                </h:inputText>
               	</sf:clientDateValidator>
			</div>
		</div>
		<div class="entry">
			<div class="label">
				<h:outputLabel for="checkoutDate">Check Out Date:</h:outputLabel>
			</div>
			<div class="input">
				<sf:clientDateValidator allowBlank="false" msgDisplay="block" msgClass="errors">
					<h:inputText id="checkoutDate" value="#{booking.checkoutDate}" required="true">
						<f:convertDateTime pattern="MM/dd/yy" timeZone="EST"/>
					</h:inputText>
				</sf:clientDateValidator>
			</div>
		</div>
		<div class="entry">
			<div class="label">
				<h:outputLabel for="beds">Room Preference:</h:outputLabel>
			</div>
			<div class="input">
				<h:selectOneMenu id="beds" value="#{booking.beds}">
					<f:selectItem itemLabel="One king-size bed" itemValue="1"/>
					<f:selectItem itemLabel="Two double beds" itemValue="2"/>
					<f:selectItem itemLabel="Three beds" itemValue="3"/>
				</h:selectOneMenu>
			</div>
		</div>
		<div class="entry">
			<div class="label">
				<h:outputLabel for="smoking">Smoking Preference:</h:outputLabel>
			</div>
			<div id="radio" class="input">
				<h:selectOneRadio id="smoking" value="#{booking.smoking}" layout="pageDirection">
					<f:selectItem itemLabel="Smoking" itemValue="true"/>
					<f:selectItem itemLabel="Non Smoking" itemValue="false"/>
				</h:selectOneRadio>
			</div>
		</div>
		<div class="entry">
			<div class="label">
				<h:outputLabel for="creditCard">Credit Card #:</h:outputLabel>
			</div>
			<div class="input">
				<sf:clientNumberValidator allowBlank="false" allowNegative="false" allowDecimals="false" minLength="16" maxLength="16" msgDisplay="block" msgClass="errors">
					<h:inputText id="creditCard" value="#{booking.creditCard}" required="true"/>
				</sf:clientNumberValidator>
			</div>
		</div>
		<div class="entry">
			<div class="label">
				<h:outputLabel for="creditCardName">Credit Card Name:</h:outputLabel>
			</div>
			<div class="input">
				<sf:clientTextValidator allowBlank="false" msgDisplay="block" msgClass="errors">
					<h:inputText id="creditCardName" value="#{booking.creditCardName}" required="true"/>
				</sf:clientTextValidator>
			</div>
		</div>
		<div class="entry">
			<div class="label">
				<h:outputLabel for="creditCardExpiryMonth">Credit Card Expiry:</h:outputLabel>
			</div>
			<div class="input">
				<h:selectOneMenu id="creditCardExpiryMonth" value="#{booking.creditCardExpiryMonth}">
					<f:selectItem itemLabel="Jan" itemValue="1"/>
					<f:selectItem itemLabel="Feb" itemValue="2"/>
					<f:selectItem itemLabel="Mar" itemValue="3"/>
					<f:selectItem itemLabel="Apr" itemValue="4"/>
					<f:selectItem itemLabel="May" itemValue="5"/>
					<f:selectItem itemLabel="Jun" itemValue="6"/>
					<f:selectItem itemLabel="Jul" itemValue="7"/>
					<f:selectItem itemLabel="Aug" itemValue="8"/>
					<f:selectItem itemLabel="Sep" itemValue="9"/>
					<f:selectItem itemLabel="Oct" itemValue="10"/>
					<f:selectItem itemLabel="Nov" itemValue="11"/>
					<f:selectItem itemLabel="Dec" itemValue="12"/>
				</h:selectOneMenu>
				<h:selectOneMenu id="creditCardExpiryYear" value="#{booking.creditCardExpiryYear}">
					<f:selectItem itemLabel="2005" itemValue="2005"/>
					<f:selectItem itemLabel="2006" itemValue="2006"/>
					<f:selectItem itemLabel="2007" itemValue="2007"/>
					<f:selectItem itemLabel="2008" itemValue="2008"/>
					<f:selectItem itemLabel="2009" itemValue="2009"/>
				</h:selectOneMenu>
			</div>
		</div>
		<div class="entry errors">
			<h:messages globalOnly="true"/>
		</div>
		<div class="entry">
			<div class="label">&#160;</div>
			<div class="input">
				<sf:validateAllOnClick>
					<h:commandButton id="proceed" action="proceed" value="Proceed"/>
				</sf:validateAllOnClick>&#160;
				<h:commandButton id="cancel" immediate="true" value="Cancel" action="cancel"/>
			</div>
		</div>
	</fieldset>
	</h:form>
</div>

</tiles:putAttribute>
</tiles:insertTemplate>