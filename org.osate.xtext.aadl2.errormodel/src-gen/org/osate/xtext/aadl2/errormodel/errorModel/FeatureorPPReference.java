/**
 */
package org.osate.xtext.aadl2.errormodel.errorModel;

import org.eclipse.emf.ecore.EObject;

import org.osate.aadl2.Element;
import org.osate.aadl2.NamedElement;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Featureor PP Reference</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * <ul>
 *   <li>{@link org.osate.xtext.aadl2.errormodel.errorModel.FeatureorPPReference#getFeatureorPP <em>Featureor PP</em>}</li>
 * </ul>
 * </p>
 *
 * @see org.osate.xtext.aadl2.errormodel.errorModel.ErrorModelPackage#getFeatureorPPReference()
 * @model
 * @generated
 */
public interface FeatureorPPReference extends EObject, Element
{
  /**
   * Returns the value of the '<em><b>Featureor PP</b></em>' reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Featureor PP</em>' reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Featureor PP</em>' reference.
   * @see #setFeatureorPP(NamedElement)
   * @see org.osate.xtext.aadl2.errormodel.errorModel.ErrorModelPackage#getFeatureorPPReference_FeatureorPP()
   * @model
   * @generated
   */
  NamedElement getFeatureorPP();

  /**
   * Sets the value of the '{@link org.osate.xtext.aadl2.errormodel.errorModel.FeatureorPPReference#getFeatureorPP <em>Featureor PP</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Featureor PP</em>' reference.
   * @see #getFeatureorPP()
   * @generated
   */
  void setFeatureorPP(NamedElement value);

} // FeatureorPPReference
