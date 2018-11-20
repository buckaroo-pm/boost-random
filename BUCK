load('//:buckaroo_macros_skylark.bzl', 'buckaroo_deps')
load('//:subdir_glob.bzl', 'subdir_glob')

cxx_library(
  name = 'random', 
  header_namespace = '', 
  exported_headers = subdir_glob([
    ('include', '**/*.hpp'), 
  ]), 
  srcs = glob([
    'src/**/*.cpp', 
  ]), 
  deps = buckaroo_deps(), 
  visibility = [
    'PUBLIC', 
  ], 
)
