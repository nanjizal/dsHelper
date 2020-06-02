package dsHelper.flat.f32;
import haxe.io.Float32Array; 
@:forward
abstract Float32Flat4( Float32Flat ) {
    @:op([]) public inline 
    function readItem( k: Int ): Float {
        return this.readItem( index*4 + k );
    }
    @:op([]) public inline 
    function writeItem( k: Int, v: Float ): Float {
        this.writeItem( index*4 + k, v );
        return v;
    }
    public inline 
    function new( len: Int ){
        this = new Float32Flat( len );
    }
    public var index( get, set ): Int;
    inline
    function get_index(): Int {
        return this.index;
    }
    inline
    function set_index( id: Int ): Int {
        this.index = id;
        return id;
    }
    public inline
    function getArray(): Float32Array {
        return this.subarray( 2, this.size*4 + 2 );
    }
}