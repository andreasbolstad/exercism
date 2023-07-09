19:45:14.888 [main] WARN com.pinterest.ktlint.cli.internal.KtlintCommandLine - Can not parse input from <stdin> as Kotlin, due to error below:
    Not a valid Kotlin file (3:1 expecting a top level declaration)
Now, trying to read the input as Kotlin Script.
import org.gradle.api.tasks.testing.logging.TestExceptionFormat

plugins { kotlin("jvm") }

repositories { mavenCentral() }

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    testImplementation("junit:junit:4.13.2")
    testImplementation(kotlin("test-junit"))
}

tasks.withType<Test> {
    testLogging {
        exceptionFormat = TestExceptionFormat.FULL
        events("passed", "failed", "skipped")
    }
}
