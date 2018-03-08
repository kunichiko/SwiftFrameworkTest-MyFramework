#!/bin/sh

DERIVED_DATA_DIR=build
BUILD_DIR=${DERIVED_DATA_DIR}/Build/Products
CONFIG=Debug
PRODUCT_NAME=MyFramework

xcodebuild -workspace BuildContainer.xcworkspace -scheme MyFramework -derivedDataPath ${DERIVED_DATA_DIR} -configuration ${CONFIG} -sdk iphoneos        clean build
xcodebuild -workspace BuildContainer.xcworkspace -scheme MyFramework -derivedDataPath ${DERIVED_DATA_DIR} -configuration ${CONFIG} -sdk iphonesimulator clean build


UNIVERSAL_OUTPUT_DIR=${BUILD_DIR}/${CONFIG}-universal/${PRODUCT_NAME}
mkdir -p ${UNIVERSAL_OUTPUT_DIR}
cp -R ${BUILD_DIR}/${CONFIG}-iphoneos/${PRODUCT_NAME}/${PRODUCT_NAME}.framework ${UNIVERSAL_OUTPUT_DIR}

cp -R ${BUILD_DIR}/${CONFIG}-iphonesimulator/${PRODUCT_NAME}/${PRODUCT_NAME}.framework/Modules/${PRODUCT_NAME}.swiftmodule ${UNIVERSAL_OUTPUT_DIR}/${PRODUCT_NAME}.framework/Modules

EXECUTABLE_PATH=${PRODUCT_NAME}/${PRODUCT_NAME}.framework/${PRODUCT_NAME}
lipo -create -output ${BUILD_DIR}/${CONFIG}-universal/${EXECUTABLE_PATH} ${BUILD_DIR}/${CONFIG}-iphonesimulator/${EXECUTABLE_PATH} ${BUILD_DIR}/${CONFIG}-iphoneos/${EXECUTABLE_PATH}
