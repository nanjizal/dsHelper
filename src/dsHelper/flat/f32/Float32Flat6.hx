package dsHelper.flat.f32;
import dsHelper.flat.io.Float32Flat;
import dsHelper.haxe.io.Float32Array;
@:transitive
@:forward
abstract Float32Flat6( Float32Flat ) {
    @:op([]) public inline 
    function readItem( k: Int ): Float {
        return this.readItem( index*6 + k );
    }
    @:op([]) public inline 
    function writeItem( k: Int, v: Float ): Float {
        this.writeItem( index*6 + k, v );
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
        return this.subarray( 2, this.size*6 + 2 );
    }
}
