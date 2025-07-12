; ModuleID = 'vowel_or_consonant.c'
source_filename = "vowel_or_consonant.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [30 x i8] c"The character %c is a vowel.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"The character %c is a consonant.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, ptr %1, align 4
  store i8 65, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 97
  br i1 %5, label %42, label %6

6:                                                ; preds = %0
  %7 = load i8, ptr %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 65
  br i1 %9, label %42, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 101
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 69
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %2, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 105
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %2, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 73
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr %2, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 111
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr %2, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 79
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %2, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 117
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %2, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 85
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34, %30, %26, %22, %18, %14, %10, %6, %0
  %43 = load i8, ptr %2, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %44)
  br label %50

46:                                               ; preds = %38
  %47 = load i8, ptr %2, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %48)
  br label %50

50:                                               ; preds = %46, %42
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 17.0.0 (clang-1700.0.13.5)"}
