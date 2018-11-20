def buckaroo_cell(package): 
  cell = native.read_config('buckaroo', package, '')
  if cell == '': 
    # raise Exception('Buckaroo does not have "' + package + '" installed. ')
    fail('Buckaroo does not have "' + package + '" installed. ')
  return cell

def buckaroo_deps(): 
  return native.read_config('buckaroo', 'dependencies', '').split(' ')

def buckaroo_deps_from_package(package): 
  cell = buckaroo_cell(package)
  all_deps = buckaroo_deps()
  return [ x for x in all_deps if x.startswith(cell) ]
