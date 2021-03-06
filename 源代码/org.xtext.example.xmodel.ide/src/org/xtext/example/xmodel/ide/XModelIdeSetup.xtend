/*
 * generated by Xtext 2.18.0.M3
 */
package org.xtext.example.xmodel.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.xtext.example.xmodel.XModelRuntimeModule
import org.xtext.example.xmodel.XModelStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class XModelIdeSetup extends XModelStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new XModelRuntimeModule, new XModelIdeModule))
	}
	
}
