struct Vertex {
    var x, y, z: Float      // position
    //var r, g, b, a: Float   // color
    var tx, ty: Float       // texture coordinates
    
    func floatBuffer() -> [Float] {
        //return [x, y, z, r, g, b, a, tx, ty]
        return [x, y, z, tx, ty]
    }
}
