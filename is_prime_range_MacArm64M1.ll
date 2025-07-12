; ModuleID = 'is_prime_range.c'
source_filename = "is_prime_range.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i1 @isPrime(i32 noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i1 false, ptr %2, align 1
  br label %30

11:                                               ; preds = %7
  store i32 2, ptr %4, align 4
  br label %12

12:                                               ; preds = %26, %11
  %13 = load i32, ptr %4, align 4
  %14 = sitofp i32 %13 to double
  %15 = load i32, ptr %3, align 4
  %16 = sitofp i32 %15 to double
  %17 = call double @llvm.sqrt.f64(double %16)
  %18 = fcmp ole double %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %4, align 4
  %22 = srem i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i1 false, ptr %2, align 1
  br label %30

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %4, align 4
  br label %12, !llvm.loop !6

29:                                               ; preds = %12
  store i1 true, ptr %2, align 1
  br label %30

30:                                               ; preds = %29, %24, %10
  %31 = load i1, ptr %2, align 1
  ret i1 %31
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 50, ptr %2, align 4
  store i32 1, ptr %3, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32, ptr %3, align 4
  %10 = call zeroext i1 @isPrime(i32 noundef %9)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  br label %14

14:                                               ; preds = %11, %8
  br label %15

15:                                               ; preds = %14
  %16 = load i32, ptr %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %3, align 4
  br label %4, !llvm.loop !8

18:                                               ; preds = %4
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 17.0.0 (clang-1700.0.13.5)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
