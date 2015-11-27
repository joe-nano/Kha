package kha.graphics4;

import haxe.io.Bytes;
import kha.Blob;

@:headerCode('
#include <Kore/pch.h>
#include <Kore/Graphics/Graphics.h>
')

@:headerClassCode("Kore::Shader* shader;")
class FragmentShader {
	private var source: Blob;
	
	public function new(source: Blob) {
		this.source = source;
		initFragmentShader();
		cpp.vm.Gc.setFinalizer(this, cpp.Function.fromStaticFunction(destroy));
	}
	
	@:void private static function destroy(shader: FragmentShader): Void {
		untyped __cpp__('delete shader->shader;');
	}
	
	@:functionCode("
		shader = new Kore::Shader(source->bytes->b->Pointer(), source->get_length(), Kore::FragmentShader);
	")
	private function initFragmentShader(): Void {
		
	}
	
	public function unused(): Void {
		var include: Bytes = Bytes.ofString("");
	}
}
