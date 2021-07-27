__kernel void matmul_HW2(
    const int N,
    const __global float *A,
    const __global float *B,
    __global float *C
) {

    // int i = get_global_id(0);
    // C[i] = A[i] + B[i];
    int tidx = get_global_id(0);
    int tidy = get_global_id(1);
    // printf("%d\n", N);
    // printf("%lf %lf\n", A[tidx], B[tidx]);
    // int i = get_global_id(0);
    // if (tidx < N && tidy < N) {
        // C[tidx] = A[tidx] + B[tidx];
    // }
    // C[i] = 1;
    if (tidx < N && tidy < N) {
        // int Csub = 0.0f;
        float Csub = 0.0f;
        for (int k = 0; k < N; ++k) {
            Csub += A[tidx * N + k] * B[tidy + N * k];
        }
        C[tidx * N + tidy] = Csub;
        // printf("%lf\n", Csub);
    }
}