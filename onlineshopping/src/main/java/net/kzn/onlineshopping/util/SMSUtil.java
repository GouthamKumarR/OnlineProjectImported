package net.kzn.onlineshopping.util;


import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

public class SMSUtil {
	
	public static final String ACCOUNT_SID = "AC88253a93b8748f9292091cb263bc0b47";
    public static final String AUTH_TOKEN = "2e2f79e93621b2ed2e1f074ddd54be98";
    public static final String TWILIO_NUMBER = "+16062689091";

	public static void sendSMS(String body) { 
	    try {
	        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
	 
	        // Build a filter for the MessageList
	        List<NameValuePair> params = new ArrayList<NameValuePair>();
	        params.add(new BasicNameValuePair("Body", body));
	        params.add(new BasicNameValuePair("To", "+917019549612")); //Add real number here
	        params.add(new BasicNameValuePair("From", TWILIO_NUMBER));

	        MessageFactory messageFactory = client.getAccount().getMessageFactory();
	        Message message = messageFactory.create(params);
	        System.out.println(message.getSid());
	    } 
	    catch (TwilioRestException e) {
	        System.out.println(e.getErrorMessage());
	    }
	}
}
