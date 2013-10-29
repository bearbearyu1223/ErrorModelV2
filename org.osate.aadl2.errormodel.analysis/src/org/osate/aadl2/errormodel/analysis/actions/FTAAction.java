/*
 * <copyright>
 * Copyright  2012 by Carnegie Mellon University, all rights reserved.
 *
 * Use of the Open Source AADL Tool Environment (OSATE) is subject to the terms of the license set forth
 * at http://www.eclipse.org/org/documents/epl-v10.html.
 *
 * NO WARRANTY
 *
 * ANY INFORMATION, MATERIALS, SERVICES, INTELLECTUAL PROPERTY OR OTHER PROPERTY OR RIGHTS GRANTED OR PROVIDED BY
 * CARNEGIE MELLON UNIVERSITY PURSUANT TO THIS LICENSE (HEREINAFTER THE "DELIVERABLES") ARE ON AN "AS-IS" BASIS.
 * CARNEGIE MELLON UNIVERSITY MAKES NO WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED AS TO ANY MATTER INCLUDING,
 * BUT NOT LIMITED TO, WARRANTY OF FITNESS FOR A PARTICULAR PURPOSE, MERCHANTABILITY, INFORMATIONAL CONTENT,
 * NONINFRINGEMENT, OR ERROR-FREE OPERATION. CARNEGIE MELLON UNIVERSITY SHALL NOT BE LIABLE FOR INDIRECT, SPECIAL OR
 * CONSEQUENTIAL DAMAGES, SUCH AS LOSS OF PROFITS OR INABILITY TO USE SAID INTELLECTUAL PROPERTY, UNDER THIS LICENSE,
 * REGARDLESS OF WHETHER SUCH PARTY WAS AWARE OF THE POSSIBILITY OF SUCH DAMAGES. LICENSEE AGREES THAT IT WILL NOT
 * MAKE ANY WARRANTY ON BEHALF OF CARNEGIE MELLON UNIVERSITY, EXPRESS OR IMPLIED, TO ANY PERSON CONCERNING THE
 * APPLICATION OF OR THE RESULTS TO BE OBTAINED WITH THE DELIVERABLES UNDER THIS LICENSE.
 *
 * Licensee hereby agrees to defend, indemnify, and hold harmless Carnegie Mellon University, its trustees, officers,
 * employees, and agents from all claims or demands made against them (and any related losses, expenses, or
 * attorney's fees) arising out of, or relating to Licensee's and/or its sub licensees' negligent use or willful
 * misuse of or negligent conduct or willful misconduct regarding the Software, facilities, or other rights or
 * assistance granted by Carnegie Mellon University under this License, including, but not limited to, any claims of
 * product liability, personal injury, death, damage to property, or violation of any laws or regulations.
 *
 * Carnegie Mellon Carnegie Mellon University Software Engineering Institute authored documents are sponsored by the U.S. Department
 * of Defense under Contract F19628-00-C-0003. Carnegie Mellon University retains copyrights in all material produced
 * under this contract. The U.S. Government retains a non-exclusive, royalty-free license to publish or reproduce these
 * documents, or allow others to do so, for U.S. Government purposes only pursuant to the copyright license
 * under the contract clause at 252.227.7013.
 * </copyright>
 */
package org.osate.aadl2.errormodel.analysis.actions;

import java.util.List;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.jface.dialogs.InputDialog;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.osate.aadl2.Element;
import org.osate.aadl2.errormodel.analysis.fta.Event;
import org.osate.aadl2.errormodel.analysis.fta.FTAUtils;
import org.osate.aadl2.instance.ComponentInstance;
import org.osate.aadl2.instance.InstanceObject;
import org.osate.aadl2.instance.SystemInstance;
import org.osate.aadl2.modelsupport.WriteToFile;
import org.osate.ui.actions.AaxlReadOnlyActionAsJob;
import org.osate.ui.dialogs.Dialog;
import org.osate.xtext.aadl2.errormodel.errorModel.CompositeState;
import org.osate.xtext.aadl2.errormodel.errorModel.ErrorModelSubclause;
import org.osate.xtext.aadl2.errormodel.util.EMV2Util;

public final class FTAAction extends AaxlReadOnlyActionAsJob 
{
	
	private static String 				ERROR_STATE_NAME = null;
	private WriteToFile     			ftaFile;
	private Event     					ftaEvent;
	
	protected String getMarkerType() {
		return "org.osate.analysis.errormodel.FaultImpactMarker";
	}

	protected String getActionName() {
		return "FTA";
	}

	
	public Event processRootSystem (SystemInstance systemInstance)
	{
		EList<CompositeState> 		states;
		EList<ComponentInstance> 	componentInstances = new UniqueEList<ComponentInstance>();
		
		Event						result;
		
		result = null;
		FTAUtils.init(systemInstance);
		EList<CompositeState> eslist = EMV2Util.getAllCompositeStates(systemInstance);
		
		componentInstances.addAll(EMV2Util.getComponentInstancesWithComponentErrorBehaviorStates(systemInstance));
		componentInstances.addAll(EMV2Util.getComponentInstancesWithErrorPropagations(systemInstance));
		componentInstances.addAll(EMV2Util.getComponentInstancesWithCompositeErrorBehavior(systemInstance));
		result = new Event ();
		FTAUtils.fillCompositeBehavior (result, eslist, ERROR_STATE_NAME, systemInstance, componentInstances);
		return result;
	}
	
	public void doAaxlAction(IProgressMonitor monitor, Element obj) {
		SystemInstance si;
		String message;
		
		monitor.beginTask("Fault Tree Analysis", IProgressMonitor.UNKNOWN);

		si = null;

		if (obj instanceof InstanceObject){
			si = ((InstanceObject)obj).getSystemInstance();
		}
		
		if (si == null)
		{
			Dialog.showInfo("Fault Tree Analysis", "Please choose an instance model");	
			monitor.done();
		}
		
		if (! EMV2Util.hasCompositeErrorBehavior (si))
		{
			Dialog.showInfo("Fault Tree Analysis", "Your system instance does not have a composite error behavior");	
			monitor.done();
		}
		
		final Display d = PlatformUI.getWorkbench().getDisplay();
		d.syncExec(new Runnable(){

			public void run() {
				IWorkbenchWindow window;
				Shell sh;
				List<String> modulesList;
				

				window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
				sh = window.getShell();
				
				InputDialog fd = new InputDialog(sh, "Error State name", "Please specify the name of the error state name", "failed", null);
				if (fd.open() == Window.OK)
				{
					ERROR_STATE_NAME = fd.getValue();
				}
				else
				{
					ERROR_STATE_NAME = null;
				}

					
			}});
		
		if (ERROR_STATE_NAME != null)
		{
			ftaEvent = processRootSystem (si);
			if (ftaEvent != null)
			{
				this.ftaFile = new WriteToFile("Fault Tree Analysis", si);
				this.ftaFile.setSuffix(ERROR_STATE_NAME);
				this.ftaFile.setFileExtension("xml");
				this.ftaFile.addOutput(ftaEvent.toXML());
				this.ftaFile.saveToFile();
				
				this.ftaFile = new WriteToFile("Fault Tree Analysis", si);
				this.ftaFile.setSuffix(ERROR_STATE_NAME);
				this.ftaFile.setFileExtension("fta");
				this.ftaFile.addOutput("NULL\nS NULL 0\n3 fta\n");
				this.ftaFile.addOutput(ftaEvent.toFTA());
				this.ftaFile.saveToFile();
			}
			else
			{
				Dialog.showInfo("Fault Tree Analysis", "Unable to create the Fault Tree Analysis, please read the help content");	
			}
		}
		
		
		
		monitor.done();
	}

}
