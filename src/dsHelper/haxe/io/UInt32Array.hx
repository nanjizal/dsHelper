package dsHelper.haxe.io;
/**
 * switches between Lime, NME and haxe.io.UInt16Array
 */
#if (lime&&!js)
typedef UInt32Array = lime.utils.UInt32Array;
#elseif (nme)
typedef UInt32Array = nme.utils.UInt32Array;
#else
typedef UInt32Array = haxe.io.UInt32Array; // js.lib.Float32Array
#end
