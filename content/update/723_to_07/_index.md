---

title: "Update from 7.23 to Flowee BPMS 0.7"
weight: 1
layout: "single"

menu:
  main:
    name: "Camunda 7.23 to Flowee BPMS 0.7"
    identifier: "migration-guide-07"
    parent: "migration-guide"
    pre: "Update from `7.23.x` to `0.7.x`."

---

# Migration Guide

Migration from Camunda BPM 7 to Flowee BPMS is straightforward, but there are some differences and improvements that you should be aware of. This guide will help you transition smoothly.

## Key Differences
- **Package Names**: The package names have changed from `org.camunda.bpm` to `org.flowee.bpm`. Make sure to update your imports accordingly.
- **Configuration Files**: The configuration files have been updated. Review the new configuration options in `flowee-bpms.cfg.xml` and adjust your settings as needed.
- **API Changes**: Some APIs have been deprecated or modified. Check the [Flowee BPMS API documentation](https://finture.com/flowee-bpms/docs/manual/latest/api/) for details on the changes and how to adapt your code.
- **Process Definitions**: Process definitions are still compatible, but you may want to take advantage of new features and improvements in Flowee BPMS. Review your BPMN files and consider updating them to utilize the latest capabilities.
- **Extensions and Plugins**: If you have custom extensions or plugins, ensure they are compatible with Flowee BPMS. You may need to refactor them to align with the new package structure and API changes.
- **Documentation**: The documentation has been updated to reflect the changes in Flowee BPMS. Refer to the [Flowee BPMS documentation](https://finture.com/flowee-bpms/docs/manual/latest/) for detailed information on new features, configuration options, and best practices.

## Migration Steps
1. **Update Dependencies**: Update your project dependencies to include Flowee BPMS artifacts instead of Camunda BPM 7.
2. **Refactor Code**: Go through your codebase and update package names, imports, and API calls as necessary.
3. **Review Configuration**: Update your configuration files to match the new Flowee BPMS settings. Pay attention to any new options that may enhance your BPM setup.
4. **Test Your Processes**: Run your existing processes in Flowee BPMS to ensure they work as expected. Look out for any issues related to API changes or process definitions.
5. **Update Extensions**: If you have custom extensions or plugins, refactor them to be compatible with Flowee BPMS. Test them thoroughly to ensure they function correctly.
6. **Review Documentation**: Familiarize yourself with the updated Flowee BPMS documentation to understand new features and best practices.
7. **Deploy and Monitor**: Once you have completed the migration, deploy your updated application and monitor it for any issues. Use Flowee BPMS tools like Cockpit and Tasklist to manage and monitor your processes effectively.

## Changes in package names
The package names have changed from `org.camunda` to `com.finture`. Here are some examples of how to update your imports:
```java
// Before migration
import org.camunda.bpm.engine.ProcessEngine;
// After migration
import org.flowee.bpm.engine.ProcessEngine;
```

## Changes in POM files
If you are using Maven, update your `pom.xml` to include Flowee BPMS dependencies. Here is an example of how to change the dependency:
```xml
<!-- Before migration -->
<dependency>
    <groupId>org.camunda.bpm</groupId>
    <artifactId>camunda-engine</artifactId>
    <version>7.23.0</version>
</dependency>
<!-- After migration -->
<dependency>
    <groupId>com.finture.bpm</groupId>
    <artifactId>flowee-engine</artifactId>
    <version>0.7</version>
</dependency>
```