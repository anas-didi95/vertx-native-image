FROM maven:3.8.5-openjdk-17-slim as build-jar
WORKDIR /workspace
COPY src/ /workspace/src/
COPY pom.xml /workspace/pom.xml
RUN mvn clean package -DskipTests

FROM ghcr.io/graalvm/native-image:ol8-java17-22.3.3 as build-nativeimage
WORKDIR /workspace
COPY --from=build-jar /workspace/target/nativeimage-1.0.0-SNAPSHOT-fat.jar /workspace/nativeimage-1.0.0-SNAPSHOT-fat.jar
RUN native-image --static -jar nativeimage-1.0.0-SNAPSHOT-fat.jar nativeimage

FROM alpine:3.18.3
WORKDIR /workspace
COPY --from=build-nativeimage /workspace/nativeimage /workspace/nativeimage
COPY --from=build-nativeimage /workspace/reports/ /workspace/reports/
EXPOSE 8888
ENTRYPOINT ["sh", "-c"]
CMD ["exec ./nativeimage run com.anasdidi.nativeimage.MainVerticle"]
