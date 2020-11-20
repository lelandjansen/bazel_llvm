# LLVM 6.0.0.
package(default_visibility = ["//visibility:public"])

licenses(["notice"])

# This filegroup is a glob of the clang source tree.

cc_library(
    name = "6.0.0",
    data = select({
        "//:darwin": ["@clang-llvm-6.0.0-x86_64-apple-darwin//:libdir"],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:libdir",
        ],
    }),
    linkopts = select({
        # llvm-config --ldflags
        "//:darwin": [
            "-Wl,-rpath,$(location @clang-llvm-6.0.0-x86_64-apple-darwin//:libdir)/",
            "-L$(location @clang-llvm-6.0.0-x86_64-apple-darwin//:libdir)/",
            "-Wl,-search_paths_first",
            "-Wl,-headerpad_max_install_names",
        ],
        "//conditions:default": [
            "-Wl,-rpath,$(location @clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:libdir)/",
            "-L$(location @clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:libdir)/",
        ],
    }) + select({
        # llvm-config --system-libs
        "//:darwin": [
            "-lz",
            "-lcurses",
            "-lm",
            "-lxml2",
        ],
        "//conditions:default": [
            "-lrt",
            "-ldl",
            "-ltinfo",
            "-lpthread",
            "-lm",
        ],
    }) + [
        # clang libs
        "-lclangARCMigrate",
        "-lclangFrontend",
        "-lclangFrontendTool",
        "-lclangDriver",
        "-lclangSerialization",
        "-lclangCodeGen",
        "-lclangParse",
        "-lclangSema",
        "-lclangRewriteFrontend",
        "-lclangRewrite",
        "-lclangStaticAnalyzerFrontend",
        "-lclangStaticAnalyzerCheckers",
        "-lclangStaticAnalyzerCore",
        "-lclangAnalysis",
        "-lclangEdit",
        "-lclangAST",
        "-lclangASTMatchers",
        "-lclangLex",
        "-lclangBasic",
        "-lclangTooling",
        "-lclangToolingCore",
        # llvm-config --libs
        "-lLLVMXRay",
        "-lLLVMWindowsManifest",
        "-lLLVMTableGen",
        "-lLLVMSymbolize",
        "-lLLVMDebugInfoPDB",
        "-lLLVMOrcJIT",
        "-lLLVMOrcError",
        "-lLLVMJITLink",
        "-lLLVMObjectYAML",
        "-lLLVMMCA",
        "-lLLVMLTO",
        "-lLLVMPasses",
        "-lLLVMObjCARCOpts",
        "-lLLVMLineEditor",
        "-lLLVMLibDriver",
        "-lLLVMInterpreter",
        "-lLLVMFuzzMutate",
        "-lLLVMFrontendOpenMP",
        "-lLLVMMCJIT",
        "-lLLVMExecutionEngine",
        "-lLLVMRuntimeDyld",
        "-lLLVMDWARFLinker",
        "-lLLVMDlltoolDriver",
        "-lLLVMOption",
        "-lLLVMDebugInfoGSYM",
        "-lLLVMCoverage",
        "-lLLVMCoroutines",
        "-lLLVMXCoreDisassembler",
        "-lLLVMXCoreCodeGen",
        "-lLLVMXCoreDesc",
        "-lLLVMXCoreInfo",
        "-lLLVMX86Disassembler",
        "-lLLVMX86AsmParser",
        "-lLLVMX86CodeGen",
        "-lLLVMX86Desc",
        "-lLLVMX86Utils",
        "-lLLVMX86Info",
        "-lLLVMWebAssemblyDisassembler",
        "-lLLVMWebAssemblyCodeGen",
        "-lLLVMWebAssemblyDesc",
        "-lLLVMWebAssemblyAsmParser",
        "-lLLVMWebAssemblyInfo",
        "-lLLVMSystemZDisassembler",
        "-lLLVMSystemZCodeGen",
        "-lLLVMSystemZAsmParser",
        "-lLLVMSystemZDesc",
        "-lLLVMSystemZInfo",
        "-lLLVMSparcDisassembler",
        "-lLLVMSparcCodeGen",
        "-lLLVMSparcAsmParser",
        "-lLLVMSparcDesc",
        "-lLLVMSparcInfo",
        "-lLLVMRISCVDisassembler",
        "-lLLVMRISCVCodeGen",
        "-lLLVMRISCVAsmParser",
        "-lLLVMRISCVDesc",
        "-lLLVMRISCVUtils",
        "-lLLVMRISCVInfo",
        "-lLLVMPowerPCDisassembler",
        "-lLLVMPowerPCCodeGen",
        "-lLLVMPowerPCAsmParser",
        "-lLLVMPowerPCDesc",
        "-lLLVMPowerPCInfo",
        "-lLLVMNVPTXCodeGen",
        "-lLLVMNVPTXDesc",
        "-lLLVMNVPTXInfo",
        "-lLLVMMSP430Disassembler",
        "-lLLVMMSP430CodeGen",
        "-lLLVMMSP430AsmParser",
        "-lLLVMMSP430Desc",
        "-lLLVMMSP430Info",
        "-lLLVMMipsDisassembler",
        "-lLLVMMipsCodeGen",
        "-lLLVMMipsAsmParser",
        "-lLLVMMipsDesc",
        "-lLLVMMipsInfo",
        "-lLLVMLanaiDisassembler",
        "-lLLVMLanaiCodeGen",
        "-lLLVMLanaiAsmParser",
        "-lLLVMLanaiDesc",
        "-lLLVMLanaiInfo",
        "-lLLVMHexagonDisassembler",
        "-lLLVMHexagonCodeGen",
        "-lLLVMHexagonAsmParser",
        "-lLLVMHexagonDesc",
        "-lLLVMHexagonInfo",
        "-lLLVMBPFDisassembler",
        "-lLLVMBPFCodeGen",
        "-lLLVMBPFAsmParser",
        "-lLLVMBPFDesc",
        "-lLLVMBPFInfo",
        "-lLLVMARMDisassembler",
        "-lLLVMARMCodeGen",
        "-lLLVMARMAsmParser",
        "-lLLVMARMDesc",
        "-lLLVMARMUtils",
        "-lLLVMARMInfo",
        "-lLLVMAMDGPUDisassembler",
        "-lLLVMAMDGPUCodeGen",
        "-lLLVMMIRParser",
        "-lLLVMipo",
        "-lLLVMInstrumentation",
        "-lLLVMVectorize",
        "-lLLVMLinker",
        "-lLLVMIRReader",
        "-lLLVMAsmParser",
        "-lLLVMAMDGPUAsmParser",
        "-lLLVMAMDGPUDesc",
        "-lLLVMAMDGPUUtils",
        "-lLLVMAMDGPUInfo",
        "-lLLVMAArch64Disassembler",
        "-lLLVMMCDisassembler",
        "-lLLVMAArch64CodeGen",
        "-lLLVMCFGuard",
        "-lLLVMGlobalISel",
        "-lLLVMSelectionDAG",
        "-lLLVMAsmPrinter",
        "-lLLVMDebugInfoDWARF",
        "-lLLVMCodeGen",
        "-lLLVMTarget",
        "-lLLVMScalarOpts",
        "-lLLVMInstCombine",
        "-lLLVMAggressiveInstCombine",
        "-lLLVMTransformUtils",
        "-lLLVMBitWriter",
        "-lLLVMAnalysis",
        "-lLLVMProfileData",
        "-lLLVMObject",
        "-lLLVMTextAPI",
        "-lLLVMBitReader",
        "-lLLVMCore",
        "-lLLVMRemarks",
        "-lLLVMBitstreamReader",
        "-lLLVMAArch64AsmParser",
        "-lLLVMMCParser",
        "-lLLVMAArch64Desc",
        "-lLLVMMC",
        "-lLLVMDebugInfoCodeView",
        "-lLLVMDebugInfoMSF",
        "-lLLVMBinaryFormat",
        "-lLLVMAArch64Utils",
        "-lLLVMAArch64Info",
        "-lLLVMSupport",
        "-lLLVMDemangle",
    ],
    deps = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:headers",
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:libs",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04//:headers",
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04//:static_libs",
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04//:LLVMPolly",
        ],
    }),
)

# Generated filegroups, see ./scripts/make_llvm_wrapper_scripts.sh.

sh_binary(
    name = "bugpoint",
    srcs = ["bugpoint.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:bugpoint",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:bugpoint",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "c-index-test",
    srcs = ["c-index-test.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:c-index-test",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:c-index-test",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang",
    srcs = ["clang.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang++",
    srcs = ["clang++.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang++",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang++",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-6.0",
    srcs = ["clang-6.0.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-6.0",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-6.0",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-apply-replacements",
    srcs = ["clang-apply-replacements.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-apply-replacements",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-apply-replacements",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-change-namespace",
    srcs = ["clang-change-namespace.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-change-namespace",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-change-namespace",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-check",
    srcs = ["clang-check.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-check",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-check",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-cl",
    srcs = ["clang-cl.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-cl",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-cl",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-cpp",
    srcs = ["clang-cpp.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-cpp",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-cpp",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-format",
    srcs = ["clang-format.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-format",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-format",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-func-mapping",
    srcs = ["clang-func-mapping.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-func-mapping",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-func-mapping",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-import-test",
    srcs = ["clang-import-test.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-import-test",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-import-test",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-include-fixer",
    srcs = ["clang-include-fixer.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-include-fixer",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-include-fixer",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-offload-bundler",
    srcs = ["clang-offload-bundler.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-offload-bundler",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-offload-bundler",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-query",
    srcs = ["clang-query.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-query",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-query",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-refactor",
    srcs = ["clang-refactor.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-refactor",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-refactor",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-rename",
    srcs = ["clang-rename.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-rename",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-rename",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-reorder-fields",
    srcs = ["clang-reorder-fields.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-reorder-fields",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-reorder-fields",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-tidy",
    srcs = ["clang-tidy.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clang-tidy",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clang-tidy",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clangd",
    srcs = ["clangd.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:clangd",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:clangd",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "find-all-symbols",
    srcs = ["find-all-symbols.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:find-all-symbols",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:find-all-symbols",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "git-clang-format",
    srcs = ["git-clang-format.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:git-clang-format",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:git-clang-format",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "ld.lld",
    srcs = ["ld.lld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:ld.lld",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:ld.lld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "ld64.lld",
    srcs = ["ld64.lld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:ld64.lld",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:ld64.lld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llc",
    srcs = ["llc.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llc",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llc",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "lld",
    srcs = ["lld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:lld",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:lld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "lld-link",
    srcs = ["lld-link.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:lld-link",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:lld-link",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "lli",
    srcs = ["lli.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:lli",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:lli",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-ar",
    srcs = ["llvm-ar.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-ar",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-ar",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-as",
    srcs = ["llvm-as.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-as",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-as",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-bcanalyzer",
    srcs = ["llvm-bcanalyzer.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-bcanalyzer",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-bcanalyzer",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-c-test",
    srcs = ["llvm-c-test.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-c-test",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-c-test",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cat",
    srcs = ["llvm-cat.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-cat",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-cat",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cfi-verify",
    srcs = ["llvm-cfi-verify.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-cfi-verify",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-cfi-verify",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-config",
    srcs = ["llvm-config.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-config",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-config",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cov",
    srcs = ["llvm-cov.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-cov",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-cov",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cvtres",
    srcs = ["llvm-cvtres.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-cvtres",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-cvtres",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cxxdump",
    srcs = ["llvm-cxxdump.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-cxxdump",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-cxxdump",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cxxfilt",
    srcs = ["llvm-cxxfilt.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-cxxfilt",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-cxxfilt",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-diff",
    srcs = ["llvm-diff.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-diff",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-diff",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dis",
    srcs = ["llvm-dis.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-dis",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-dis",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dlltool",
    srcs = ["llvm-dlltool.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-dlltool",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-dlltool",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dsymutil",
    srcs = ["llvm-dsymutil.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-dsymutil",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-dsymutil",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dwarfdump",
    srcs = ["llvm-dwarfdump.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-dwarfdump",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-dwarfdump",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dwp",
    srcs = ["llvm-dwp.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-dwp",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-dwp",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-extract",
    srcs = ["llvm-extract.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-extract",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-extract",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-lib",
    srcs = ["llvm-lib.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-lib",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-lib",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-link",
    srcs = ["llvm-link.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-link",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-link",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-lto",
    srcs = ["llvm-lto.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-lto",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-lto",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-lto2",
    srcs = ["llvm-lto2.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-lto2",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-lto2",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-mc",
    srcs = ["llvm-mc.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-mc",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-mc",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-mcmarkup",
    srcs = ["llvm-mcmarkup.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-mcmarkup",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-mcmarkup",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-modextract",
    srcs = ["llvm-modextract.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-modextract",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-modextract",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-mt",
    srcs = ["llvm-mt.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-mt",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-mt",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-nm",
    srcs = ["llvm-nm.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-nm",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-nm",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-objcopy",
    srcs = ["llvm-objcopy.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-objcopy",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-objcopy",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-objdump",
    srcs = ["llvm-objdump.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-objdump",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-objdump",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-opt-report",
    srcs = ["llvm-opt-report.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-opt-report",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-opt-report",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-pdbutil",
    srcs = ["llvm-pdbutil.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-pdbutil",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-pdbutil",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-profdata",
    srcs = ["llvm-profdata.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-profdata",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-profdata",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-ranlib",
    srcs = ["llvm-ranlib.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-ranlib",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-ranlib",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-rc",
    srcs = ["llvm-rc.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-rc",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-rc",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-readelf",
    srcs = ["llvm-readelf.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-readelf",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-readelf",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-readobj",
    srcs = ["llvm-readobj.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-readobj",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-readobj",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-rtdyld",
    srcs = ["llvm-rtdyld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-rtdyld",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-rtdyld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-size",
    srcs = ["llvm-size.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-size",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-size",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-split",
    srcs = ["llvm-split.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-split",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-split",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-stress",
    srcs = ["llvm-stress.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-stress",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-stress",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-strings",
    srcs = ["llvm-strings.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-strings",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-strings",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-symbolizer",
    srcs = ["llvm-symbolizer.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-symbolizer",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-symbolizer",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-tblgen",
    srcs = ["llvm-tblgen.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-tblgen",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-tblgen",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-xray",
    srcs = ["llvm-xray.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:llvm-xray",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:llvm-xray",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "modularize",
    srcs = ["modularize.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:modularize",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:modularize",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "obj2yaml",
    srcs = ["obj2yaml.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:obj2yaml",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:obj2yaml",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "opt",
    srcs = ["opt.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:opt",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:opt",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "sancov",
    srcs = ["sancov.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:sancov",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:sancov",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "sanstats",
    srcs = ["sanstats.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:sanstats",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:sanstats",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "scan-build",
    srcs = ["scan-build.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:scan-build",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:scan-build",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "scan-view",
    srcs = ["scan-view.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:scan-view",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:scan-view",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "verify-uselistorder",
    srcs = ["verify-uselistorder.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:verify-uselistorder",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:verify-uselistorder",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "wasm-ld",
    srcs = ["wasm-ld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:wasm-ld",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:wasm-ld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "yaml2obj",
    srcs = ["yaml2obj.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-6.0.0-x86_64-apple-darwin//:yaml2obj",
        ],
        "//conditions:default": [
            "@clang-llvm-6.0.0-x86_64-linux-gnu-ubuntu-18.04//:yaml2obj",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)
