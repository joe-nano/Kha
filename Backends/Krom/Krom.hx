extern class Krom {
	static function clear(flags: Int, color: Int, depth: Float, stencil: Int): Void;
	
	static function createVertexShader(data: haxe.io.BytesData, name: String): Dynamic;
	static function createFragmentShader(data: haxe.io.BytesData, name: String): Dynamic;
	static function createGeometryShader(data: haxe.io.BytesData, name: String): Dynamic;
	static function createTessellationControlShader(data: haxe.io.BytesData, name: String): Dynamic;
	static function createTessellationEvaluationShader(data: haxe.io.BytesData, name: String): Dynamic;
	static function deleteShader(shader: Dynamic): Dynamic;
	static function createProgram(): Dynamic;
	static function deleteProgram(program: Dynamic): Dynamic;
	static function compileProgram(program: Dynamic, structure0: Array<kha.graphics4.VertexElement>, structure1: Array<kha.graphics4.VertexElement>, structure2: Array<kha.graphics4.VertexElement>, structure3: Array<kha.graphics4.VertexElement>, length: Int, vertexShader: Dynamic, fragmentShader: Dynamic, geometryShader: Dynamic, tessellationControlShader: Dynamic, tessellationEvaluationShader: Dynamic): Void;
	static function setProgram(program: Dynamic): Void;
	static function getConstantLocation(program: Dynamic, name: String): Dynamic;
	static function getTextureUnit(program: Dynamic, name: String): Dynamic;
	static function setTexture(stage: kha.graphics4.TextureUnit, texture: kha.Canvas): Void;
	static function setTextureDepth(unit: kha.graphics4.TextureUnit, texture: kha.Canvas): Void;
	static function setImageTexture(stage: kha.graphics4.TextureUnit, texture: kha.Canvas): Void;
	static function setTextureParameters(texunit: kha.graphics4.TextureUnit, uAddressing: Int, vAddressing: Int, minificationFilter: Int, magnificationFilter: Int, mipmapFilter: Int): Void;
	static function setTexture3DParameters(texunit: kha.graphics4.TextureUnit, uAddressing: Int, vAddressing: Int, wAddressing: Int, minificationFilter: Int, magnificationFilter: Int, mipmapFilter: Int): Void;
	static function setBool(location: kha.graphics4.ConstantLocation, value: Bool): Void;
	static function setInt(location: kha.graphics4.ConstantLocation, value: Int): Void;
	static function setFloat(location: kha.graphics4.ConstantLocation, value: Float): Void;
	static function setFloat2(location: kha.graphics4.ConstantLocation, value1: Float, value2: Float): Void;
	static function setFloat3(location: kha.graphics4.ConstantLocation, value1: Float, value2: Float, value3: Float): Void;
	static function setFloat4(location: kha.graphics4.ConstantLocation, value1: Float, value2: Float, value3: Float, value4: Float): Void;
	static function setFloats(location: kha.graphics4.ConstantLocation, values: kha.arrays.Float32Array): Void;
	static function setFloat4s(location: kha.graphics4.ConstantLocation, values: kha.arrays.Float32Array): Void;
	static function setMatrix(location: kha.graphics4.ConstantLocation, matrix: kha.math.FastMatrix4): Void;
	static function setMatrix3(location: kha.graphics4.ConstantLocation, matrix: kha.math.FastMatrix3): Void;
	
	static function begin(renderTarget: kha.Canvas, additionalRenderTargets: Array<kha.Canvas>): Void;
	static function beginFace(renderTarget: kha.Canvas, face: Int): Void;
	static function end(): Void;
	static function renderTargetsInvertedY(): Bool;
	static function viewport(x: Int, y: Int, width: Int, height: Int): Void;
	static function scissor(x: Int, y: Int, width: Int, height: Int): Void;
	static function disableScissor(): Void;
	static function setDepthMode(write: Bool, mode: Int): Void;
	static function setCullMode(mode: Int): Void;
	static function setStencilParameters(compareMode: Int, bothPass: Int, depthFail: Int, stencilFail: Int, referenceValue: Int, readMask: Int, writeMask: Int): Void;
	static function setBlendingMode(source: Int, destination: Int, alphaSource: Int, alphaDestination: Int): Void;
	static function setColorMask(red: Bool, green: Bool, blue: Bool, alpha: Bool): Void;
	static function createRenderTarget(width: Int, height: Int, depthBufferBits: Int, format: Int, stencilBufferBits: Int, contextId: Int): Dynamic;
	static function createRenderTargetCubeMap(cubeMapSize: Int, depthBufferBits: Int, format: Int, stencilBufferBits: Int, contextId: Int): Dynamic;
	static function createTexture(width: Int, height: Int, format: Int): Dynamic;
	static function createTexture3D(width: Int, height: Int, depth: Int, format: Int): Dynamic;
	static function createTextureFromBytes(data: haxe.io.BytesData, width: Int, height: Int, format: Int, readable: Bool): Dynamic;
	static function unlockTexture(texture: Dynamic, data: haxe.io.BytesData): Void;
	static function generateMipmaps(texture: Dynamic, levels: Int): Void;
	static function setMipmaps(texture: Dynamic, mipmaps: Array<kha.Image>): Void;
	static function setDepthStencilFrom(target: Dynamic, source: Dynamic): Void;
	static function clearTexture(target: Dynamic, x: Int, y: Int, z: Int, width: Int, height: Int, depth: Int, color: Int): Void;
	static function createIndexBuffer(count: Int): Dynamic;
	static function deleteIndexBuffer(buffer: Dynamic): Dynamic;
	static function setIndices(buffer: Dynamic, indices: Array<Int>): Void;
	static function setIndexBuffer(buffer: Dynamic): Void;
	static function createVertexBuffer(count: Int, structure: Array<kha.graphics4.VertexElement>, instanceDataStepRate: Int): Dynamic;
	static function deleteVertexBuffer(buffer: Dynamic): Dynamic;
	static function setVertices(buffer: Dynamic, vertices: kha.arrays.Float32Array): Void;
	static function setVertexBuffer(buffer: Dynamic): Void;
	static function setVertexBuffers(vb0: Dynamic, vb1: Dynamic, vb2: Dynamic, vb3: Dynamic, count: Int): Void;
	static function drawIndexedVertices(start: Int, count: Int): Void;
	static function drawIndexedVerticesInstanced(instanceCount: Int, start: Int, count: Int): Void;
	
	static function loadImage(file: String, readable: Bool): Dynamic;
	static function unloadImage(image: kha.Image): Void;
	static function loadSound(file: String): Dynamic;
	static function writeAudioBuffer(bufferValue: Float): Dynamic;
	static function loadBlob(file: String): js.html.ArrayBuffer;
	
	static function init(title: String, width: Int, height: Int, samplesPerPixel: Int): Void;
	static function log(string: String): Void;
	static function setCallback(callback: Void->Void): Void;
	static function setKeyboardDownCallback(callback: Int->Int->Void): Void;
	static function setKeyboardUpCallback(callback: Int->Int->Void): Void;
	static function setMouseDownCallback(callback: Int->Int->Int->Void): Void;
	static function setMouseUpCallback(callback: Int->Int->Int->Void): Void;
	static function setMouseMoveCallback(callback: Int->Int->Int->Int->Void): Void;
	static function setMouseWheelCallback(callback: Int->Void): Void;
	static function setGamepadAxisCallback(callback: Int->Int->Float->Void): Void;
	static function setGamepadButtonCallback(callback: Int->Int->Float->Void): Void;
	static function setAudioCallback(callback: Int->Void): Void;
	static function audioThread(lock: Bool): Void;
	static function getTime(): Float;
	static function windowWidth(id: Int): Int;
	static function windowHeight(id: Int): Int;
	static function screenDpi(): Int;
}
