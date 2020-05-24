package dsHelper.iterArr;
abstract ArrayDozen<T>( Array<T> ) {
    public function new( arr: Array<T> ):Void this = arr;
    public var length( get, never ):Int;
    inline function get_length() return Std.int( this.length/12 );
    @:arrayAccess inline function access( key: Int ): { a: T, b: T, c: T, d: T
                                                      , e: T, f: T, g: T, h: T
                                                      , i: T, j: T, k: T, l: T } {
        return getObj( key );
    }
    public inline
    function getObj( key: Int ): { a: T, b: T, c: T, d: T
                                 , e: T, f: T, g: T, h: T
                                 , i: T, j: T, k: T, l: T } {
       var i: Int = Std.int( key*12 );
       return { 
         a: this[ i ],      b: this[ i + 1 ],  c: this[ i + 2 ],  d: this[ i + 3 ]
       , e: this[ i + 4 ],  f: this[ i + 5 ],  g: this[ i + 6 ],  h: this[ i + 7 ]
       , i: this[ i + 8 ],  j: this[ i + 9 ],  k: this[ i + 10 ], l: this[ i + 11 ]            };
    }
    public inline
    function reverse(): Array<T>{
        var arr = [];
        for( i in new ArrayDozen( this ) ){
              arr.unshift( i.l );
              arr.unshift( i.k );
              arr.unshift( i.j );
              arr.unshift( i.i );
            arr.unshift( i.h );
            arr.unshift( i.g );
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
