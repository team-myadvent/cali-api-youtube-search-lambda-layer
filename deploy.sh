#!/bin/bash

AWS_REGION="ap-northeast-2"
ECR_REPOSITORY_NAME="cali-youtube-selenium-crawler"
IMAGE_TAG="latest"
ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)

echo "🔧 ECR 리포지토리를 생성 중..."
aws ecr create-repository \
  --repository-name ${ECR_REPOSITORY_NAME} \
  --region ${AWS_REGION} 2>/dev/null || echo "ECR 레포지토리가 이미 존재합니다."

echo "🔐 ECR 로그인 중..."
aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com

echo "🐳 Docker 이미지를 빌드 중..."
docker build --platform linux/x86_64 -t ${ECR_REPOSITORY_NAME}:${IMAGE_TAG} .

ECR_URI="${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${ECR_REPOSITORY_NAME}:${IMAGE_TAG}"
docker tag ${ECR_REPOSITORY_NAME}:${IMAGE_TAG} ${ECR_URI}

echo "📤 Docker 이미지를 ECR에 푸시 중..."
docker push ${ECR_URI}

echo "✅ Docker 이미지가 ECR에 성공적으로 푸시되었습니다!"
echo "ECR URI: ${ECR_URI}"
