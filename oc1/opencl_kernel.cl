__kernel void vector_add(__global const int *A, __global const int *B, __global int *C) {
    int i = get_global_id(0);
    int j = get_global_id(1);
    printf("%d %d\n", i, j);
        // // C[i] = A[i] + B[i];
    // if (i < 64 && i >= 60)
    //     C[i] = 10;
}
