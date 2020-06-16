package dsHelper.haxe.io;
/**
 * switches between Lime, NME and haxe.io.UInt8Array
 */
#if (lime&&!js)
typedef UInt8Array = lime.utils.UInt8Array;
#elseif (nme)
typedef UInt8Array = nme.utils.UInt8Array;
#else
typedef UInt8Array = haxe.io.UInt8Array; // js.lib.Float32Array
#end
