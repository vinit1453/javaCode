package com.test;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.ProcessAction;

import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class Project
 */
public class Project extends MVCPortlet {
	@ProcessAction(name = "action")
public void Dummy(ActionRequest actionRequest,
		ActionResponse actionResponse) throws IOException, PortletException {
	// TODO Auto-generated method stub
	super.processAction(actionRequest, actionResponse);
}

}
