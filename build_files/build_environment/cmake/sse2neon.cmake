# ***** BEGIN GPL LICENSE BLOCK *****
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# ***** END GPL LICENSE BLOCK *****

if(APPLE AND ("${CMAKE_OSX_ARCHITECTURES}" STREQUAL "arm64"))
  ExternalProject_Add(external_sse2neon
    GIT_REPOSITORY  ${SSE2NEON_GIT}
    GIT_TAG ${SSE2NEON_GIT_HASH}
    DOWNLOAD_DIR ${DOWNLOAD_DIR}
    PREFIX ${BUILD_DIR}/sse2neon
    CONFIGURE_COMMAND echo sse2neon - Nothing to configure
    BUILD_COMMAND echo sse2neon - nothing to build
    INSTALL_COMMAND mkdir -p ${LIBDIR}/sse2neon && cp ${BUILD_DIR}/sse2neon/src/external_sse2neon/sse2neon.h ${LIBDIR}/sse2neon
    INSTALL_DIR ${LIBDIR}/sse2neon
  )
endif()
