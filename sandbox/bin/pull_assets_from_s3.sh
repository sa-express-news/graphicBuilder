#!/usr/bin/env bash

echo "S3 BUCKET: "${npm_package_config_s3_bucket:?"The S3 bucket needs to be set in the package.json"}
echo "PROJECT SLUG: "${npm_package_config_slug:?"The project's slug needs to be set in the package.json"}
echo

export GRAPHIC_S3_BUCKET=$npm_package_config_s3_bucket
export PROJECT_SLUG=$npm_package_config_slug

echo "Pulling assets from S3..."
aws s3 sync --profile graphicBuilder s3://$GRAPHIC_S3_BUCKET/graphics/$PROJECT_SLUG/raw_assets/ app/assets
