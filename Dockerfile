FROM python

RUN apt-get update && \
	apt-get install -y \
		blender

ENV APP_HOME /app
COPY . $APP_HOME
WORKDIR $APP_HOME

RUN pip install Flask
CMD ["python", "invoker.py"]