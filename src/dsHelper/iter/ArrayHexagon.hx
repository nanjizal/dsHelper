package dsHelper.iter;
abstract ArrayHexagon<T>( Array<T> ) {
    public function new( arr: Array<T> ):Void this = arr;
    public var length( get, never ):Int;
    inline function get_length() return Std.int( this.length/6 );
    @:arrayAccess inline function access( key: Int ): { a: T, b: T
                                                      , c: T, d: T
                                                      , e: T, f: T } {
        var i: Int = Std.int( key*6 );
        return { a: this[ i ], b: this[ i + 1 ]
               , c: this[ i + 2 ], d: this[ i + 3 ]
               , e: this[ i + 4 ], f: this[ i + 5 ] };
    }
    public inline function reverse(): Array<T>{
        var arr = [];
        for( i in new ArrayTriple( this ) ){
            arr.unshift( i.f );
            arr.unshift( i.e );
            arr.unshift( i.d );
            arr.unshift( i.c );
            arr.unshift( i.b );
            arr.unshift( i.a );
        }
        this = arr;
        return arr;
    }
}
