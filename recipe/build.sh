mkdir build
cd build

cmake ${CMAKE_ARGS} \
  -DCMAKE_PREFIX_PATH:PATH=${PREFIX} \
  -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE=Release \
  -DNINJA_QTGUI=False \
  -DNINJAFOAM=False \
  -DCMAKE_CXX_STANDARD=11 \
  -DOPENMP_SUPPORT=False \
  -DBUILD_FETCH_DEM=False \
  -DBUILD_STL_CONVERTER=False \
  -DBUILD_CONVERT_OUTPUT=False \
  -DBUILD_SOLAR_GRID=False \
  ..

make -j${CPU_COUNT} install