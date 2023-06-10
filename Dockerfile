# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oavelar <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/31 16:10:04 by oavelar           #+#    #+#              #
#    Updated: 2021/04/09 15:10:35 by oavelar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-20230502

LABEL maintainer="Otavio Avelar <oavelar@student.42lisboa.com>"

RUN apt-get update 
RUN apt-get -y install php7.3-fpm php7.3-mysql php7.3-mbstring
RUN apt-get -y install mariadb-server \
						nginx \
						wget \
						vim

RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64 && \
	mv mkcert-v1.4.3-linux-amd64 mkcert && chmod +x mkcert && \
	./mkcert -install && ./mkcert localhost

COPY srcs ./root/
WORKDIR /root/

CMD bash start.sh
