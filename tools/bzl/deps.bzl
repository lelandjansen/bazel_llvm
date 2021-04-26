load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def llvm_deps():
  """Pull in dependencies of LLVM workspace.

  This function should be loaded and run from your WORKSPACE file:
    load("@llvm//tools/bzl:deps.bzl", "llvm_deps")
    llvm_deps()
  """
  srcs_build_file = """
filegroup(
    name = "readme",
    srcs = ["README.txt"],
    visibility = ["//visibility:public"]
)

filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"]
)
"""

  http_archive(
    name="clang-12.0.0",
    build_file_content = srcs_build_file,
    sha256 = "e26e452e91d4542da3ebbf404f024d3e1cbf103f4cd110c26bf0a19621cca9ed",
    strip_prefix="clang-12.0.0.src",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/clang-12.0.0.src.tar.xz",
    ],
  )

  http_archive(
    name="llvm-12.0.0",
    build_file_content = srcs_build_file,
    sha256 = "49dc47c8697a1a0abd4ee51629a696d7bfe803662f2a7252a3b16fc75f3a8b50",
    strip_prefix="llvm-12.0.0.src",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/llvm-12.0.0.src.tar.xz",
    ],
  )

  http_archive(
    name="clang-llvm-12.0.0-x86_64-apple-darwin",
    build_file="@llvm//:llvm_macos.BUILD",
    sha256="7bc2259bf75c003f644882460fc8e844ddb23b27236fe43a2787870a4cd8ab50",
    strip_prefix="clang+llvm-12.0.0-x86_64-apple-darwin",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/clang+llvm-12.0.0-x86_64-apple-darwin.tar.xz"
    ],
  )

  http_archive(
    name="clang-llvm-12.0.0-x86_64-linux-gnu-ubuntu-20.04",
    build_file="@llvm//:llvm_linux.BUILD",
    sha256 = "a9ff205eb0b73ca7c86afc6432eed1c2d49133bd0d49e47b15be59bbf0dd292e",
    strip_prefix="clang+llvm-12.0.0-x86_64-linux-gnu-ubuntu-20.04",
    urls=[
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/clang+llvm-12.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz"
    ],
  )
