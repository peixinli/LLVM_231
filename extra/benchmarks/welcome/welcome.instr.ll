; ModuleID = 'welcome.instr.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Welcome to CSE231!\0A\00", align 1
@0 = private unnamed_addr constant [7 x i8] c"alloca\00"
@1 = private unnamed_addr constant [5 x i8] c"call\00"
@2 = private unnamed_addr constant [4 x i8] c"ret\00"
@3 = private unnamed_addr constant [6 x i8] c"store\00"

; Function Attrs: uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0))
  call void @_Z5CountPci(i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([5 x i8]* @1, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i32 1)
  call void @_Z5CountPci(i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i32 1)
  call void @_Z7printDIv()
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare void @_Z5CountPci(i8*, i32)

declare void @_Z7printDIv()

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
