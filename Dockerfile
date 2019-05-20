FROM eedkevin/opencv-java8



COPY install.sh install.sh
RUN chmod +x install.sh && sync && ./install.sh
RUN rm install.sh

VOLUME /gen
WORKDIR /gen

CMD java -Djava.library.path=/opencv-java-bin -jar /usr/src/ESIRTP/target/fatjar-0.0.1-SNAPSHOT.jar

