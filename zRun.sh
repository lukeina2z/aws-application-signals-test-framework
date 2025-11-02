#!/bin/bash



# export JAVA_HOME=$(/usr/libexec/java_home -v 17)
# ./gradlew clean
# ./gradlew :validator:build




# echo "Setup vEnv for ADOT Python 0.12"
# rm -fr ./vAdot12
# python -m venv ./vAdot12
# source ./vAdot12/bin/activate
# pip install --upgrade pip setuptools wheel
# pip list
# pip install /Users/lukezha/github/otel-python/adot-python-main/aws-otel-python-instrumentation/dist/aws_opentelemetry_distro-0.12.1.dev0-py3-none-any.whl
# pip list


# pushd ./sample-apps/python/django_frontend_service
# pip install -r ec2-requirements.txt
# export DJANGO_SETTINGS_MODULE="django_frontend_service.settings"
#       export OTEL_PYTHON_DISTRO="aws_distro"
#       export OTEL_PYTHON_CONFIGURATOR="aws_configurator"
#       export OTEL_METRICS_EXPORTER=otlp
#       export OTEL_TRACES_EXPORTER=otlp
#       export OTEL_AWS_APPLICATION_SIGNALS_ENABLED=true
#       export OTEL_AWS_APPLICATION_SIGNALS_EXPORTER_ENDPOINT=http://127.0.0.1:4315
#       export OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=http://127.0.0.1:6317
#       export OTEL_EXPORTER_OTLP_TRACES_PROTOCOL=grpc
#       export OTEL_EXPORTER_OTLP_METRICS_PROTOCOL=grpc
#       export OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=127.0.0.1:4317
#       export OTEL_EXPORTER_OTLP_METRICS_INSECURE=true
#       export OTEL_TRACES_SAMPLER=always_on
#       export OTEL_RESOURCE_ATTRIBUTES="service.name=python-sample-application-lk12,deployment.environment.name=ec2:default"
#       export AWS_REGION='us-east-1'
#       python manage.py migrate
#       opentelemetry-instrument python manage.py runserver 0.0.0.0:8000 --noreload
# popd




# echo "Setup vEnv for ADOT Python 0.999"
# rm -fr ./vAdot999
# python -m venv ./vAdot999
# source ./vAdot999/bin/activate
# pip install --upgrade pip setuptools wheel
# pip list
# pip install /Users/lukezha/github/otel-python/adot-python-pr-to3.17/aws-otel-python-instrumentation/dist/aws_opentelemetry_distro-0.13.0.dev0-py3-none-any.whl
# pip list



# pushd ./sample-apps/python/django_frontend_service
# pip install -r ec2-requirements.txt
# export DJANGO_SETTINGS_MODULE="django_frontend_service.settings"
#       export OTEL_PYTHON_DISTRO="aws_distro"
#       export OTEL_PYTHON_CONFIGURATOR="aws_configurator"
#       export OTEL_METRICS_EXPORTER=otlp
#       export OTEL_TRACES_EXPORTER=otlp
#       export OTEL_AWS_APPLICATION_SIGNALS_ENABLED=true
#       export OTEL_AWS_APPLICATION_SIGNALS_EXPORTER_ENDPOINT=http://127.0.0.1:4315
#       export OTEL_EXPORTER_OTLP_TRACES_ENDPOINT=http://127.0.0.1:6317
#       export OTEL_EXPORTER_OTLP_TRACES_PROTOCOL=grpc
#       export OTEL_EXPORTER_OTLP_METRICS_PROTOCOL=grpc
#       export OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=127.0.0.1:4317
#       export OTEL_EXPORTER_OTLP_METRICS_INSECURE=true
#       export OTEL_TRACES_SAMPLER=always_on
#       export OTEL_RESOURCE_ATTRIBUTES="service.name=python-sample-application-lk13,deployment.environment.name=ec2:default"
#       export AWS_REGION='us-east-1'
#       python manage.py migrate
#       opentelemetry-instrument python manage.py runserver 0.0.0.0:8000 --noreload
# popd




# echo "Setup vEnv for No-ADOT"
# rm -fr ./v-no-adot
# python -m venv ./v-no-adot
# source ./v-no-adot/bin/activate
# pip install --upgrade pip setuptools wheel
# pip list

pushd ./sample-apps/python/django_frontend_service
pip install -r ec2-requirements.txt
export DJANGO_SETTINGS_MODULE="django_frontend_service.settings"
export AWS_REGION='us-east-1'
python manage.py migrate
python manage.py runserver 0.0.0.0:8000 --noreload
popd