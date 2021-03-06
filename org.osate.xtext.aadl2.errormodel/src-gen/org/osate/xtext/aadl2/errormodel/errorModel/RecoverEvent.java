/**
 */
package org.osate.xtext.aadl2.errormodel.errorModel;

import org.eclipse.emf.common.util.EList;

import org.osate.aadl2.NamedElement;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Recover Event</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.osate.xtext.aadl2.errormodel.errorModel.RecoverEvent#getCondition <em>Condition</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.osate.xtext.aadl2.errormodel.errorModel.ErrorModelPackage#getRecoverEvent()
 * @model
 * @generated
 */
public interface RecoverEvent extends ErrorBehaviorEvent
{
  /**
   * Returns the value of the '<em><b>Condition</b></em>' reference list.
   * The list contents are of type {@link org.osate.aadl2.NamedElement}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Condition</em>' reference list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Condition</em>' reference list.
   * @see org.osate.xtext.aadl2.errormodel.errorModel.ErrorModelPackage#getRecoverEvent_Condition()
   * @model
   * @generated
   */
  EList<NamedElement> getCondition();

} // RecoverEvent
