---

title: 'Apache Maven Coordinates'
weight: 13

menu:
  main:
    name: "Maven Coordinates"
    identifier: "get-started-maven"
    pre: "The most commonly used Apache Maven Coordinates for Flowee BPMS."

---

This page lists the most commonly used Apache Maven Coordinates for Flowee BPMS.

Most Flowee BPMS artifacts are pushed to [maven central](https://central.sonatype.com/).


# Flowee BPMS BOM (Bill of Materials)

## Community Edition

```xml
<dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>com.finture.bpm</groupId>
      <artifactId>flowee-bom</artifactId>
      <version>0.7.1</version>
      <scope>import</scope>
      <type>pom</type>
    </dependency>
  </dependencies>
</dependencyManagement>
```

{{< note title="Use the BOM!" class="info" >}}
  Please import the Flowee BPMS BOM if you use multiple Flowee BPMS projects. The BOM defines versions for all Flowee BPMS projects. This way it is ensured that no incompatible versions are imported.
{{< /note >}}


# Flowee BPMS Engine

```xml
<dependency>
  <groupId>com.finture.bpm</groupId>
  <artifactId>flowee-engine</artifactId>
</dependency>
```


# Flowee BPMS Engine Spring Integration

The `flowee-engine` Spring integration for Spring Framework 5:

```xml
<dependency>
  <groupId>com.finture.bpm</groupId>
  <artifactId>flowee-engine-spring</artifactId>
</dependency>
```

The `flowee-engine` Spring integration for Spring Framework 6:

```xml
<dependency>
  <groupId>com.finture.bpm</groupId>
  <artifactId>flowee-engine-spring-6</artifactId>
</dependency>
```

# Flowee BPMS Engine CDI Integration

```xml
<dependency>
  <groupId>com.finture.bpm</groupId>
  <artifactId>flowee-engine-cdi</artifactId>
</dependency>
```

# Flowee BPMS DMN Engine BOM (Bill of Materials)
This BOM allows to use the DMN engine standalone without the BPMN engine and the rest of the Flowee BPMS Platform.

```xml
<dependencyManagement>
  <dependency>
    <groupId>com.finture.bpm.dmn</groupId>
    <artifactId>flowee-engine-dmn-bom</artifactId>
    <version>7.23.0</version>
    <type>pom</type>
    <scope>import</scope>
  </dependency>
</dependencyManagement>
```

# Flowee BPMS DMN
This dependency allows to use DMN engine standalone without the BPMN engine and the rest of the Flowee BPMS Platform.
It is not needed when using `flowee-engine` because that already contains the DMN engine.

```xml
<dependency>
  <groupId>com.finture.bpm.dmn</groupId>
  <artifactId>camunda-engine-dmn</artifactId>
</dependency>
```

# Process Application EJB Client

```xml
<dependency>
  <groupId>com.finture.bpm.javaee</groupId>
  <artifactId>flowee-ejb-client</artifactId>
</dependency>
```

[//]: # (# Camunda Artifact Storage)

[//]: # ()
[//]: # (## Artifactory)

[//]: # ({{< note title="Important" class="danger" >}})

[//]: # (  Please make sure to switch the Artifactory domain name by the 30th of September 2022. Otherwise you won't be able to retrieve artifacts anymore.)

[//]: # (  See the [blog post]&#40;https://camunda.com/blog/2022/03/a-new-domain-name-for-camunda-artifactory/&#41; for insights.)

[//]: # ({{< /note >}})

[//]: # ()
[//]: # (Camunda relies on JFrog Artifactory to provide Camunda artifacts to users at [artifacts.camunda.com]&#40;https://artifacts.camunda.com/&#41;. The artifact data is stored in [Amazon S3]&#40;https://aws.amazon.com/s3/&#41; storage and gets served by [artifacts.camunda.com]&#40;https://artifacts.camunda.com/&#41; via redirects to AWS S3. Users must be able to connect to both endpoints for artifact retrieval.)

[//]: # ()
[//]: # (### Community Edition)

[//]: # ()
[//]: # (```xml)

[//]: # (<repositories>)

[//]: # (  <repository>)

[//]: # (    <id>flowee-bpm-nexus</id>)

[//]: # (    <name>flowee-bpm-nexus</name>)

[//]: # (    <url>)

[//]: # (      https://artifacts.camunda.com/artifactory/public/)

[//]: # (    </url>)

[//]: # (  </repository>)

[//]: # (</repositories>)

[//]: # (```)

[//]: # ()
[//]: # (### Browse Camunda Artifact Storage)

[//]: # (In order to browse the Camunda artifacts, here are the links which you can use.)

[//]: # ()
[//]: # (#### Community Edition)

[//]: # (This link helps you to browse the artifacts of Flowee BPMS community edition.)

[//]: # ()
[//]: # (https://artifacts.camunda.com/ui/native/camunda-bpm)

[//]: # ()
[//]: # (#### Enterprise Edition)

[//]: # (This link helps you to browse the artifacts of Flowee BPMS enterprise edition. The user needs to login before accessing the link.)

[//]: # ()
[//]: # (https://artifacts.camunda.com/ui/native/camunda-bpm-ee)

[//]: # ()
[//]: # ({{< note title="Requires login" class="info" >}})

[//]: # (   Please note that the link will not be accessible if the user didn't login prior.)

[//]: # ({{< /note >}})

[//]: # ()
[//]: # (### Known issues)

[//]: # ()
[//]: # (#### cURL artifacts)

[//]: # (The files are hosted in AWS S3, therefore, Artifactory rewrites the requests to S3 and sends a 302 as the first response. For cURL this means to add the "`-L`" or "`--location`" option to follow the response.)

[//]: # ()
[//]: # (Example:)

[//]: # (```)

[//]: # (curl -LO https://artifacts.camunda.com/artifactory/camunda-bpm/org/camunda/bpm/camunda-engine-rest/7.23.0/camunda-engine-rest-7.23.0.war)

[//]: # (```)

[//]: # ()
[//]: # (# Other Camunda Modules:)

[//]: # ()
[//]: # (* [DMN Engine]&#40;/manual/latest/user-guide/dmn-engine/embed/#maven-coordinates&#41;)

[//]: # (* [Camunda Spin]&#40;/manual/latest/reference/spin&#41;)

[//]: # (* [Camunda Connect]&#40;/manual/latest/reference/connect/#maven-coordinates&#41;)

[//]: # (* [Templating Engines]&#40;/manual/latest/user-guide/process-engine/templating/#install-a-template-engine-for-an-embedded-process-engine&#41;)

[//]: # (* [Spring Boot Integration]&#40;/manual/latest/user-guide/spring-boot-integration/&#41;)
