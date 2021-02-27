target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

define protected amdgpu_kernel void @cvt_s64_s32(ptr addrspace(4) byref(i64) %"18", ptr addrspace(4) byref(i64) %"19") #0 {
"24":
  %"8" = alloca i1, align 1, addrspace(5)
  store i1 false, ptr addrspace(5) %"8", align 1
  %"9" = alloca i1, align 1, addrspace(5)
  store i1 false, ptr addrspace(5) %"9", align 1
  %"4" = alloca i64, align 8, addrspace(5)
  %"5" = alloca i64, align 8, addrspace(5)
  %"6" = alloca i32, align 4, addrspace(5)
  %"7" = alloca i64, align 8, addrspace(5)
  %"10" = load i64, ptr addrspace(4) %"18", align 8
  store i64 %"10", ptr addrspace(5) %"4", align 8
  %"11" = load i64, ptr addrspace(4) %"19", align 8
  store i64 %"11", ptr addrspace(5) %"5", align 8
  %"13" = load i64, ptr addrspace(5) %"4", align 8
  %"21" = inttoptr i64 %"13" to ptr
  %"20" = load i32, ptr %"21", align 4
  store i32 %"20", ptr addrspace(5) %"6", align 4
  %"15" = load i32, ptr addrspace(5) %"6", align 4
  %"14" = sext i32 %"15" to i64
  store i64 %"14", ptr addrspace(5) %"7", align 8
  %"16" = load i64, ptr addrspace(5) %"5", align 8
  %"17" = load i64, ptr addrspace(5) %"7", align 8
  %"22" = inttoptr i64 %"16" to ptr
  store i64 %"17", ptr %"22", align 8
  ret void
}

attributes #0 = { "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "no-trapping-math"="true" "uniform-work-group-size"="true" }
