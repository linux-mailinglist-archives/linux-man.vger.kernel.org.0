Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B37926877C
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 10:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726141AbgINItF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 04:49:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726110AbgINItD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 04:49:03 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3F5AC06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 01:49:02 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id t10so17784344wrv.1
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 01:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Qw1REfSzdExVlq/UGrw5wkicWg6B5n1naLJghBpb680=;
        b=ZkNyrVHsqFS9G1W8G/zG3H9Y/odOmGHI18naNWZQa8+LjquJpfyFO2Hvb5cbZ1oO5k
         /fBHA84ysOQok6n0sq+4900TEumRgwssnKN0lDSc13riGTDZA/V/oBaO0r1OlEFuERiN
         tlxEnRWRZcQN3YILmfCdod819zRP1L4qBtIGy+Tq+6NfFi7WPSn178v9zY3dWZuejpYD
         MlxpwohnFx+HHFtKBx/p/6l1q5WS6FDODT3Cd0lUs10GSj752s+XacrznqMbh0Tcom0v
         nJY7P52ICPocpVUX9SG7WdFBZ80YO8EaffXli93jjqbQ9/c+w5CkKlbVNzdTQfZ5Kf6/
         Aimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Qw1REfSzdExVlq/UGrw5wkicWg6B5n1naLJghBpb680=;
        b=nHn4L4j2+YLCa5XBMrCDbtPsHeIntDTtIc87bkARJwjpdQqvK0DEHjgjy9BJSJZOIe
         JkeMHFIvX1TKp55U5hLo7Ph25mOaDXsOyz4io7BCRFCgMVpKy+Q9phXARTIttfiLuCjP
         sAb6QNRN6PVpsFSy/HlKnro18QwE2uDbePutgp/+7ylYw/o4SqyZYg/nwZwRF2j8xXKG
         kU4f6ZzZw6GeKTPPFzgzMfTXQjaPtfLkh1mzBhlNLVC6N+CuEb4Jrboe0ofwWV4wEw0P
         xHTLRjDcddfQIGtxXzIu0M0ZB6OlP9STzXGCKsi1JBicFha9K8RmkCtOEMF4YjbVIWk3
         1upQ==
X-Gm-Message-State: AOAM532GAWtnV5yDrZV5CPnH5ggM+S8YQcIurq14+YXewtcEk73UUvhK
        SGwnsbElreUXiYYHzTLCCKvyVOu863Y=
X-Google-Smtp-Source: ABdhPJzxtkR7UNYBH7OoGDY3oCGXjylpZQZ2/WPZ+FuoIBy+aagUcxs9rUfvo44PYVpmSJ8VNlAl9w==
X-Received: by 2002:adf:8544:: with SMTP id 62mr14621568wrh.262.1600073341157;
        Mon, 14 Sep 2020 01:49:01 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id y1sm17685109wma.36.2020.09.14.01.49.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 01:49:00 -0700 (PDT)
Subject: [PATCH v2] add_key.2, clock_getres.2, clone.2, futex.2, getdents.2,
 getpid.2, getrlimit.2, ioctl_ns.2, kcmp.2, keyctl.2, memfd_create.2,
 request_key.2, stat.2, timer_create.2, wait.2, clock_getcpuclockid.3,
 dl_iterate_phdr.3, getgrent_r.3, getpwent_r.3, getpwnam.3, posix_spawn.3,
 pthread_getcpuclockid.3, strcat.3, feature_test_macros.7, user_namespaces.7:
 Cast types that don't have a printf() length modifier to ([u]intmax_t) for
 printing
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20200913175506.576683-1-colomar.6.4.3@gmail.com>
 <d74dd859-91a2-5fad-af6d-b241b0783a9a@gmail.com>
Message-ID: <c85f7e74-8888-8313-be9f-406d351aeb3f@gmail.com>
Date:   Mon, 14 Sep 2020 10:48:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d74dd859-91a2-5fad-af6d-b241b0783a9a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 2a45d1642b689927b0766a29e6eaef3fcb09bd4f Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Mon, 14 Sep 2020 10:44:59 +0200
Subject: [PATCH v2] add_key.2, clock_getres.2, clone.2, futex.2, getdents.2,
 getpid.2, getrlimit.2, ioctl_ns.2, kcmp.2, keyctl.2, memfd_create.2,
 request_key.2, stat.2, timer_create.2, wait.2, clock_getcpuclockid.3,
 dl_iterate_phdr.3, getgrent_r.3, getpwent_r.3, getpwnam.3, posix_spawn.3,
 pthread_getcpuclockid.3, strcat.3, feature_test_macros.7,
user_namespaces.7:
 Cast types that don't have a printf() length modifier to ([u]intmax_t) for
 printing

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I forgot to include one of the previous patches: dl_iterate_phdr.3

Cheers,

Alex

 man2/add_key.2               |  3 ++-
 man2/clock_getres.2          |  9 +++++----
 man2/clone.2                 |  3 ++-
 man2/futex.2                 |  5 +++--
 man2/getdents.2              |  5 +++--
 man2/getpid.2                |  7 ++++---
 man2/getrlimit.2             |  9 +++++----
 man2/ioctl_ns.2              | 17 +++++++++--------
 man2/kcmp.2                  |  9 +++++----
 man2/keyctl.2                | 22 +++++++++++++---------
 man2/memfd_create.2          |  5 +++--
 man2/request_key.2           |  3 ++-
 man2/stat.2                  | 31 ++++++++++++++++---------------
 man2/timer_create.2          |  5 +++--
 man2/wait.2                  |  3 ++-
 man3/clock_getcpuclockid.3   |  5 +++--
 man3/dl_iterate_phdr.3       |  7 ++++---
 man3/getgrent_r.3            |  3 ++-
 man3/getpwent_r.3            |  5 +++--
 man3/getpwnam.3              |  4 +++-
 man3/posix_spawn.3           |  3 ++-
 man3/pthread_getcpuclockid.3 |  3 ++-
 man3/strcat.3                |  3 ++-
 man7/feature_test_macros.7   |  4 +++-
 man7/user_namespaces.7       | 23 +++++++++++++----------
 25 files changed, 114 insertions(+), 82 deletions(-)

diff --git a/man2/add_key.2 b/man2/add_key.2
index bbd2d1d03..090c42804 100644
--- a/man2/add_key.2
+++ b/man2/add_key.2
@@ -240,6 +240,7 @@ $ \fBgrep \(aq64a4dca\(aq /proc/keys\fP
 .EX
 #include <sys/types.h>
 #include <keyutils.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -262,7 +263,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    printf("Key ID is %lx\en", (unsigned long) key);
+    printf("Key ID is %jx\en", (uintmax_t) key);

     exit(EXIT_SUCCESS);
 }
diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 0c14203ee..5a1a63875 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -467,6 +467,7 @@ CLOCK_BOOTTIME :      72691.019 (20h 11m 31s)
 */
 #define _XOPEN_SOURCE 600
 #include <time.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <stdbool.h>
@@ -484,8 +485,8 @@ displayClock(clockid_t clock, char *name, bool showRes)
         exit(EXIT_FAILURE);
     }

-    printf("%\-15s: %10ld.%03ld (", name,
-            (long) ts.tv_sec, ts.tv_nsec / 1000000);
+    printf("%\-15s: %10jd.%03ld (", name,
+            (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);

     long days = ts.tv_sec / SECS_IN_DAY;
     if (days > 0)
@@ -503,8 +504,8 @@ displayClock(clockid_t clock, char *name, bool showRes)
     }

     if (showRes)
-        printf("     resolution: %10ld.%09ld\en",
-                (long) ts.tv_sec, ts.tv_nsec);
+        printf("     resolution: %10jd.%09ld\en",
+                (intmax_t) ts.tv_sec, ts.tv_nsec);
 }

 int
diff --git a/man2/clone.2 b/man2/clone.2
index aa366690f..5f6992012 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1802,6 +1802,7 @@ so we should include it for portability.
 #include <sys/utsname.h>
 #include <sched.h>
 #include <string.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
@@ -1865,7 +1866,7 @@ main(int argc, char *argv[])
     pid = clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[1]);
     if (pid == \-1)
         errExit("clone");
-    printf("clone() returned %ld\en", (long) pid);
+    printf("clone() returned %jd\en", (intmax_t) pid);

     /* Parent falls through to here */

diff --git a/man2/futex.2 b/man2/futex.2
index e5fc28b4a..9cf1bbfe6 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1753,6 +1753,7 @@ Child  (18535) 4
 #include <stdio.h>
 #include <errno.h>
 #include <stdatomic.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <unistd.h>
 #include <sys/wait.h>
@@ -1860,7 +1861,7 @@ main(int argc, char *argv[])
     if (childPid == 0) {        /* Child */
         for (int j = 0; j < nloops; j++) {
             fwait(futex1);
-            printf("Child  (%ld) %d\en", (long) getpid(), j);
+            printf("Child  (%jd) %d\en", (intmax_t) getpid(), j);
             fpost(futex2);
         }

@@ -1871,7 +1872,7 @@ main(int argc, char *argv[])

     for (int j = 0; j < nloops; j++) {
         fwait(futex2);
-        printf("Parent (%ld) %d\en", (long) getpid(), j);
+        printf("Parent (%jd) %d\en", (intmax_t) getpid(), j);
         fpost(futex1);
     }

diff --git a/man2/getdents.2 b/man2/getdents.2
index 4c02726ea..c08019fac 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -256,6 +256,7 @@ inode#    file type  d_reclen  d_off   d_name
 #define _GNU_SOURCE
 #include <dirent.h>     /* Defines DT_* constants */
 #include <fcntl.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <unistd.h>
 #include <stdlib.h>
@@ -307,8 +308,8 @@ main(int argc, char *argv[])
                              (d_type == DT_LNK) ?  "symlink" :
                              (d_type == DT_BLK) ?  "block dev" :
                              (d_type == DT_CHR) ?  "char dev" : "???");
-            printf("%4d %10lld  %s\en", d\->d_reclen,
-                    (long long) d\->d_off, d\->d_name);
+            printf("%4d %10jd  %s\en", d\->d_reclen,
+                    (intmax_t) d\->d_off, d\->d_name);
             bpos += d\->d_reclen;
         }
     }
diff --git a/man2/getpid.2 b/man2/getpid.2
index 24f74dfe9..ea34beb8e 100644
--- a/man2/getpid.2
+++ b/man2/getpid.2
@@ -97,6 +97,7 @@ in the child would return the wrong value
 .\" #define _GNU_SOURCE
 .\" #include <sys/syscall.h>
 .\" #include <sys/wait.h>
+.\" #include <stdint.h>
 .\" #include <stdio.h>
 .\" #include <stdlib.h>
 .\" #include <unistd.h>
@@ -106,13 +107,13 @@ in the child would return the wrong value
 .\" {
 .\"    /* The following statement fills the getpid() cache */
 .\"
-.\"    printf("parent PID = %ld\n", (long) getpid());
+.\"    printf("parent PID = %ld\n", (intmax_t) getpid());
 .\"
 .\"    if (syscall(SYS_fork) == 0) {
 .\"        if (getpid() != syscall(SYS_getpid))
-.\"            printf("child getpid() mismatch: getpid()=%ld; "
+.\"            printf("child getpid() mismatch: getpid()=%jd; "
 .\"                    "syscall(SYS_getpid)=%ld\n",
-.\"                    (long) getpid(), (long) syscall(SYS_getpid));
+.\"                    (intmax_t) getpid(), (long) syscall(SYS_getpid));
 .\"        exit(EXIT_SUCCESS);
 .\"    }
 .\"    wait(NULL);
diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 9c88edf24..7674e17f7 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -783,6 +783,7 @@ The program below demonstrates the use of
 .EX
 #define _GNU_SOURCE
 #define _FILE_OFFSET_BITS 64
+#include <stdint.h>
 #include <stdio.h>
 #include <time.h>
 #include <stdlib.h>
@@ -819,15 +820,15 @@ main(int argc, char *argv[])

     if (prlimit(pid, RLIMIT_CPU, newp, &old) == \-1)
         errExit("prlimit\-1");
-    printf("Previous limits: soft=%lld; hard=%lld\en",
-            (long long) old.rlim_cur, (long long) old.rlim_max);
+    printf("Previous limits: soft=%jd; hard=%jd\en",
+            (intmax_t) old.rlim_cur, (intmax_t) old.rlim_max);

     /* Retrieve and display new CPU time limit */

     if (prlimit(pid, RLIMIT_CPU, NULL, &old) == \-1)
         errExit("prlimit\-2");
-    printf("New limits: soft=%lld; hard=%lld\en",
-            (long long) old.rlim_cur, (long long) old.rlim_max);
+    printf("New limits: soft=%jd; hard=%jd\en",
+            (intmax_t) old.rlim_cur, (intmax_t) old.rlim_max);

     exit(EXIT_SUCCESS);
 }
diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
index 8b8789d1f..b83db74e0 100644
--- a/man2/ioctl_ns.2
+++ b/man2/ioctl_ns.2
@@ -254,6 +254,7 @@ The owning user namespace is outside your namespace
scope

    Licensed under the GNU General Public License v2 or later.
 */
+#include <stdint.h>
 #include <stdlib.h>
 #include <unistd.h>
 #include <stdio.h>
@@ -316,10 +317,10 @@ main(int argc, char *argv[])
             exit(EXIT_FAILURE);
         }
         printf("Device/Inode of owning user namespace is: "
-                "[%lx,%lx] / %ld\en",
-                (unsigned long) major(sb.st_dev),
-                (unsigned long) minor(sb.st_dev),
-                (long) sb.st_ino);
+                "[%jx,%jx] / %jd\en",
+                (uintmax_t) major(sb.st_dev),
+                (uintmax_t) minor(sb.st_dev),
+                (intmax_t) sb.st_ino);

         close(userns_fd);
     }
@@ -346,10 +347,10 @@ main(int argc, char *argv[])
             perror("fstat\-parentns");
             exit(EXIT_FAILURE);
         }
-        printf("Device/Inode of parent namespace is: [%lx,%lx] / %ld\en",
-                (unsigned long) major(sb.st_dev),
-                (unsigned long) minor(sb.st_dev),
-                (long) sb.st_ino);
+        printf("Device/Inode of parent namespace is: [%jx,%jx] / %jd\en",
+                (uintmax_t) major(sb.st_dev),
+                (uintmax_t) minor(sb.st_dev),
+                (intmax_t) sb.st_ino);

         close(parent_fd);
     }
diff --git a/man2/kcmp.2 b/man2/kcmp.2
index 568ab1361..3301b860b 100644
--- a/man2/kcmp.2
+++ b/man2/kcmp.2
@@ -352,6 +352,7 @@ Child duplicated FD 3 to create FD 5
 #include <sys/syscall.h>
 #include <sys/wait.h>
 #include <sys/stat.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <stdio.h>
 #include <unistd.h>
@@ -372,8 +373,8 @@ static void
 test_kcmp(char *msg, id_t pid1, pid_t pid2, int fd_a, int fd_b)
 {
     printf("\et%s\en", msg);
-    printf("\et\etkcmp(%ld, %ld, KCMP_FILE, %d, %d) ==> %s\en",
-            (long) pid1, (long) pid2, fd_a, fd_b,
+    printf("\et\etkcmp(%jd, %jd, KCMP_FILE, %d, %d) ==> %s\en",
+            (intmax_t) pid1, (intmax_t) pid2, fd_a, fd_b,
             (kcmp(pid1, pid2, KCMP_FILE, fd_a, fd_b) == 0) ?
                         "same" : "different");
 }
@@ -388,7 +389,7 @@ main(int argc, char *argv[])
     if (fd1 == \-1)
         errExit("open");

-    printf("Parent PID is %ld\en", (long) getpid());
+    printf("Parent PID is %jd\en", (intmax_t) getpid());
     printf("Parent opened file on FD %d\en\en", fd1);

     switch (fork()) {
@@ -396,7 +397,7 @@ main(int argc, char *argv[])
         errExit("fork");

     case 0:
-        printf("PID of child of fork() is %ld\en", (long) getpid());
+        printf("PID of child of fork() is %jd\en", (intmax_t) getpid());

         test_kcmp("Compare duplicate FDs from different processes:",
                 getpid(), getppid(), fd1, fd1);
diff --git a/man2/keyctl.2 b/man2/keyctl.2
index e5d23afbe..1f3a79389 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -2080,6 +2080,7 @@ $ \fBcat /proc/keys | egrep \(aqmykey|256e6a6\(aq\fP
 #include <keyutils.h>
 #include <time.h>
 #include <fcntl.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
@@ -2129,13 +2130,16 @@ main(int argc, char *argv[])
     fprintf(fp, "Command line arguments:\en");
     fprintf(fp, "  argv[0]:            %s\en", argv[0]);
     fprintf(fp, "  operation:          %s\en", operation);
-    fprintf(fp, "  key_to_instantiate: %lx\en",
-            (long) key_to_instantiate);
-    fprintf(fp, "  UID:                %ld\en", (long) uid);
-    fprintf(fp, "  GID:                %ld\en", (long) gid);
-    fprintf(fp, "  thread_keyring:     %lx\en", (long) thread_keyring);
-    fprintf(fp, "  process_keyring:    %lx\en", (long) process_keyring);
-    fprintf(fp, "  session_keyring:    %lx\en", (long) session_keyring);
+    fprintf(fp, "  key_to_instantiate: %jx\en",
+            (uintmax_t) key_to_instantiate);
+    fprintf(fp, "  UID:                %jd\en", (intmax_t) uid);
+    fprintf(fp, "  GID:                %jd\en", (intmax_t) gid);
+    fprintf(fp, "  thread_keyring:     %jx\en",
+            (uintmax_t) thread_keyring);
+    fprintf(fp, "  process_keyring:    %jx\en",
+            (uintmax_t) process_keyring);
+    fprintf(fp, "  session_keyring:    %jx\en",
+            (uintmax_t) session_keyring);
     fprintf(fp, "\en");

     /*
@@ -2184,7 +2188,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    fprintf(fp, "Auth key ID:          %lx\en", (long) auth_key);
+    fprintf(fp, "Auth key ID:          %jx\en", (uintmax_t) auth_key);

     /*
      * Fetch key ID for the request_key(2) destination keyring.
@@ -2197,7 +2201,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    fprintf(fp, "Destination keyring:  %lx\en", (long) dest_keyring);
+    fprintf(fp, "Destination keyring:  %jx\en", (uintmax_t) dest_keyring);

     /*
      * Fetch the description of the authorization key. This
diff --git a/man2/memfd_create.2 b/man2/memfd_create.2
index f315be686..5c28667f6 100644
--- a/man2/memfd_create.2
+++ b/man2/memfd_create.2
@@ -407,6 +407,7 @@ Existing seals: WRITE SHRINK
 \&
 .EX
 #define _GNU_SOURCE
+#include <stdint.h>
 #include <sys/mman.h>
 #include <fcntl.h>
 #include <stdlib.h>
@@ -454,8 +455,8 @@ main(int argc, char *argv[])
     if (ftruncate(fd, len) == \-1)
         errExit("truncate");

-    printf("PID: %ld; fd: %d; /proc/%ld/fd/%d\en",
-            (long) getpid(), fd, (long) getpid(), fd);
+    printf("PID: %jd; fd: %d; /proc/%jd/fd/%d\en",
+            (intmax_t) getpid(), fd, (intmax_t) getpid(), fd);

     /* Code to map the file and populate the mapping with data
        omitted */
diff --git a/man2/request_key.2 b/man2/request_key.2
index c14bcb000..ac38617ce 100644
--- a/man2/request_key.2
+++ b/man2/request_key.2
@@ -515,6 +515,7 @@ For another example of the use of this program, see

 #include <sys/types.h>
 #include <keyutils.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -537,7 +538,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    printf("Key ID is %lx\en", (unsigned long) key);
+    printf("Key ID is %jx\en", (uintmax_t) key);

     exit(EXIT_SUCCESS);
 }
diff --git a/man2/stat.2 b/man2/stat.2
index 7e5417480..f71cc3831 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -644,6 +644,7 @@ structure.
 .EX
 #include <sys/types.h>
 #include <sys/stat.h>
+#include <stdint.h>
 #include <time.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -664,9 +665,9 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    printf("ID of containing device:  [%lx,%lx]\en",
-            (unsigned long) major(sb.st_dev),
-            (unsigned long) minor(sb.st_dev));
+    printf("ID of containing device:  [%jx,%jx]\en",
+            (uintmax_t) major(sb.st_dev),
+            (uintmax_t) minor(sb.st_dev));

     printf("File type:                ");

@@ -681,21 +682,21 @@ main(int argc, char *argv[])
     default:       printf("unknown?\en");                break;
     }

-    printf("I\-node number:            %ld\en", (long) sb.st_ino);
+    printf("I\-node number:            %jd\en", (intmax_t) sb.st_ino);

-    printf("Mode:                     %lo (octal)\en",
-            (unsigned long) sb.st_mode);
+    printf("Mode:                     %jo (octal)\en",
+            (uintmax_t) sb.st_mode);

-    printf("Link count:               %ld\en", (long) sb.st_nlink);
-    printf("Ownership:                UID=%ld   GID=%ld\en",
-            (long) sb.st_uid, (long) sb.st_gid);
+    printf("Link count:               %jd\en", (intmax_t) sb.st_nlink);
+    printf("Ownership:                UID=%jd   GID=%jd\en",
+            (intmax_t) sb.st_uid, (intmax_t) sb.st_gid);

-    printf("Preferred I/O block size: %ld bytes\en",
-            (long) sb.st_blksize);
-    printf("File size:                %lld bytes\en",
-            (long long) sb.st_size);
-    printf("Blocks allocated:         %lld\en",
-            (long long) sb.st_blocks);
+    printf("Preferred I/O block size: %jd bytes\en",
+            (intmax_t) sb.st_blksize);
+    printf("File size:                %jd bytes\en",
+            (intmax_t) sb.st_size);
+    printf("Blocks allocated:         %jd\en",
+            (intmax_t) sb.st_blocks);

     printf("Last status change:       %s", ctime(&sb.st_ctime));
     printf("Last file access:         %s", ctime(&sb.st_atime));
diff --git a/man2/timer_create.2 b/man2/timer_create.2
index 05482f6d9..ea8d360d2 100644
--- a/man2/timer_create.2
+++ b/man2/timer_create.2
@@ -369,6 +369,7 @@ Caught signal 34
 .SS Program source
 \&
 .EX
+#include <stdint.h>
 #include <stdlib.h>
 #include <unistd.h>
 #include <stdio.h>
@@ -390,7 +391,7 @@ print_siginfo(siginfo_t *si)
     tidp = si\->si_value.sival_ptr;

     printf("    sival_ptr = %p; ", si\->si_value.sival_ptr);
-    printf("    *sival_ptr = %#lx\en", (unsigned long) *tidp);
+    printf("    *sival_ptr = %#jx\en", (uintmax_t) *tidp);

     or = timer_getoverrun(*tidp);
     if (or == \-1)
@@ -454,7 +455,7 @@ main(int argc, char *argv[])
     if (timer_create(CLOCKID, &sev, &timerid) == \-1)
         errExit("timer_create");

-    printf("timer ID is %#lx\en", (unsigned long) timerid);
+    printf("timer ID is %#jx\en", (uintmax_t) timerid);

     /* Start the timer */

diff --git a/man2/wait.2 b/man2/wait.2
index eda36bb68..a68478eca 100644
--- a/man2/wait.2
+++ b/man2/wait.2
@@ -657,6 +657,7 @@ $
 \&
 .EX
 #include <sys/wait.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <unistd.h>
 #include <stdio.h>
@@ -674,7 +675,7 @@ main(int argc, char *argv[])
     }

     if (cpid == 0) {            /* Code executed by child */
-        printf("Child PID is %ld\en", (long) getpid());
+        printf("Child PID is %jd\en", (intmax_t) getpid());
         if (argc == 1)
             pause();                    /* Wait for signals */
         _exit(atoi(argv[1]));
diff --git a/man3/clock_getcpuclockid.3 b/man3/clock_getcpuclockid.3
index 050d7ad13..744e3a45d 100644
--- a/man3/clock_getcpuclockid.3
+++ b/man3/clock_getcpuclockid.3
@@ -127,6 +127,7 @@ CPU-time clock for PID 1 is 2.213466748 seconds
 \&
 .EX
 #define _XOPEN_SOURCE 600
+#include <stdint.h>
 #include <stdio.h>
 #include <unistd.h>
 #include <stdlib.h>
@@ -153,8 +154,8 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    printf("CPU-time clock for PID %s is %ld.%09ld seconds\en",
-            argv[1], (long) ts.tv_sec, ts.tv_nsec);
+    printf("CPU-time clock for PID %s is %jd.%09ld seconds\en",
+            argv[1], (intmax_t) ts.tv_sec, ts.tv_nsec);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index 70206a0ba..a8a85d8e6 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -302,6 +302,7 @@ Name: "/lib64/ld-linux-x86-64.so.2" (7 segments)
 #include <link.h>
 #include <stdlib.h>
 #include <stdio.h>
+#include <stdint.h>

 static int
 callback(struct dl_phdr_info *info, size_t size, void *data)
@@ -325,10 +326,10 @@ callback(struct dl_phdr_info *info, size_t size,
void *data)
                 (p_type == PT_GNU_STACK) ? "PT_GNU_STACK" :
                 (p_type == PT_GNU_RELRO) ? "PT_GNU_RELRO" : NULL;

-        printf("    %2d: [%14p; memsz:%7lx] flags: %#x; ", j,
+        printf("    %2d: [%14p; memsz:%7jx] flags: %#jx; ", j,
                 (void *) (info\->dlpi_addr + info\->dlpi_phdr[j].p_vaddr),
-                info\->dlpi_phdr[j].p_memsz,
-                info\->dlpi_phdr[j].p_flags);
+                (uintmax_t) info\->dlpi_phdr[j].p_memsz,
+                (uintmax_t) info\->dlpi_phdr[j].p_flags);
         if (type != NULL)
             printf("%s\en", type);
         else
diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
index 76deec370..8170cd417 100644
--- a/man3/getgrent_r.3
+++ b/man3/getgrent_r.3
@@ -174,6 +174,7 @@ in the stream with all other threads.
 #define _GNU_SOURCE
 #include <grp.h>
 #include <stdio.h>
+#include <stdint.h>
 #include <stdlib.h>
 #define BUFLEN 4096

@@ -189,7 +190,7 @@ main(void)
         i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
         if (i)
             break;
-        printf("%s (%d):", grpp\->gr_name, grpp\->gr_gid);
+        printf("%s (%jd):", grpp\->gr_name, (intmax_t) grpp\->gr_gid);
         for (int j = 0; ; j++) {
             if (grpp\->gr_mem[j] == NULL)
                 break;
diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
index b6c1c281f..ef4c01c21 100644
--- a/man3/getpwent_r.3
+++ b/man3/getpwent_r.3
@@ -179,6 +179,7 @@ in the stream with all other threads.
 #define _GNU_SOURCE
 #include <pwd.h>
 #include <stdio.h>
+#include <stdint.h>
 #define BUFLEN 4096

 int
@@ -194,8 +195,8 @@ main(void)
         i = getpwent_r(&pw, buf, sizeof(buf), &pwp);
         if (i)
             break;
-        printf("%s (%d)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
-               pwp\->pw_uid, pwp\->pw_dir, pwp\->pw_shell);
+        printf("%s (%jd)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
+               (intmax_t) pwp\->pw_uid, pwp\->pw_dir, pwp\->pw_shell);
     }
     endpwent();
     exit(EXIT_SUCCESS);
diff --git a/man3/getpwnam.3 b/man3/getpwnam.3
index b383c0c18..79c06bfe9 100644
--- a/man3/getpwnam.3
+++ b/man3/getpwnam.3
@@ -283,6 +283,7 @@ supplied as a command-line argument.
 .PP
 .EX
 #include <pwd.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
@@ -323,7 +324,8 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    printf("Name: %s; UID: %ld\en", pwd.pw_gecos, (long) pwd.pw_uid);
+    printf("Name: %s; UID: %jd\en", pwd.pw_gecos,
+            (intmax_t) pwd.pw_uid);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index a7472bce5..9bc0d34d1 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -682,6 +682,7 @@ Child status: exited, status=127
 \&
 .EX
 #include <spawn.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <unistd.h>
 #include <stdlib.h>
@@ -780,7 +781,7 @@ main(int argc, char *argv[])
             errExitEN(s, "posix_spawn_file_actions_destroy");
     }

-    printf("PID of child: %ld\en", (long) child_pid);
+    printf("PID of child: %jd\en", (intmax_t) child_pid);

     /* Monitor status of the child until it terminates */

diff --git a/man3/pthread_getcpuclockid.3 b/man3/pthread_getcpuclockid.3
index 703735b91..a457a4cee 100644
--- a/man3/pthread_getcpuclockid.3
+++ b/man3/pthread_getcpuclockid.3
@@ -115,6 +115,7 @@ Subthread CPU time:        0.992

 #include <time.h>
 #include <stdio.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <unistd.h>
 #include <pthread.h>
@@ -143,7 +144,7 @@ pclock(char *msg, clockid_t cid)
     printf("%s", msg);
     if (clock_gettime(cid, &ts) == \-1)
         handle_error("clock_gettime");
-    printf("%4ld.%03ld\en", ts.tv_sec, ts.tv_nsec / 1000000);
+    printf("%4jd.%03ld\en", (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);
 }

 int
diff --git a/man3/strcat.3 b/man3/strcat.3
index 1d8fb7315..e876ae33f 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -200,6 +200,7 @@ will provide better performance.)
 .SS Program source
 \&
 .EX
+#include <stdint.h>
 #include <string.h>
 #include <time.h>
 #include <stdio.h>
@@ -216,7 +217,7 @@ main(int argc, char *argv[])

     for (int j = 0; j < LIM; j++) {
         if ((j % 10000) == 0)
-            printf("%d %ld\en", j, (long) (time(NULL) \- base));
+            printf("%d %jd\en", j, (intmax_t) (time(NULL) \- base));
         strcat(p, "a");
     }
 }
diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index 01ada59cc..e9fa64dc1 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -827,6 +827,7 @@ _GNU_SOURCE defined
 .EX
 /* ftm.c */

+#include <stdint.h>
 #include <stdio.h>
 #include <unistd.h>
 #include <stdlib.h>
@@ -839,7 +840,8 @@ main(int argc, char *argv[])
 #endif

 #ifdef _POSIX_C_SOURCE
-    printf("_POSIX_C_SOURCE defined: %ldL\en", (long) _POSIX_C_SOURCE);
+    printf("_POSIX_C_SOURCE defined: %jdL\en",
+            (intmax_t) _POSIX_C_SOURCE);
 #endif

 #ifdef _ISOC99_SOURCE
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index a5650e610..4edfe4602 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1076,6 +1076,7 @@ CapEff:	0000001fffffffff
 #define _GNU_SOURCE
 #include <sched.h>
 #include <unistd.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <sys/wait.h>
 #include <signal.h>
@@ -1190,8 +1191,8 @@ proc_setgroups_write(pid_t child_pid, char *str)
     char setgroups_path[PATH_MAX];
     int fd;

-    snprintf(setgroups_path, PATH_MAX, "/proc/%ld/setgroups",
-            (long) child_pid);
+    snprintf(setgroups_path, PATH_MAX, "/proc/%jd/setgroups",
+            (intmax_t) child_pid);

     fd = open(setgroups_path, O_RDWR);
     if (fd == \-1) {
@@ -1323,16 +1324,17 @@ main(int argc, char *argv[])
     /* Parent falls through to here */

     if (verbose)
-        printf("%s: PID of child created by clone() is %ld\en",
-                argv[0], (long) child_pid);
+        printf("%s: PID of child created by clone() is %jd\en",
+                argv[0], (intmax_t) child_pid);

     /* Update the UID and GID maps in the child */

     if (uid_map != NULL || map_zero) {
-        snprintf(map_path, PATH_MAX, "/proc/%ld/uid_map",
-                (long) child_pid);
+        snprintf(map_path, PATH_MAX, "/proc/%jd/uid_map",
+                (intmax_t) child_pid);
         if (map_zero) {
-            snprintf(map_buf, MAP_BUF_SIZE, "0 %ld 1", (long) getuid());
+            snprintf(map_buf, MAP_BUF_SIZE, "0 %jd 1",
+                    (intmax_t) getuid());
             uid_map = map_buf;
         }
         update_map(uid_map, map_path);
@@ -1341,10 +1343,11 @@ main(int argc, char *argv[])
     if (gid_map != NULL || map_zero) {
         proc_setgroups_write(child_pid, "deny");

-        snprintf(map_path, PATH_MAX, "/proc/%ld/gid_map",
-                (long) child_pid);
+        snprintf(map_path, PATH_MAX, "/proc/%jd/gid_map",
+                (intmax_t) child_pid);
         if (map_zero) {
-            snprintf(map_buf, MAP_BUF_SIZE, "0 %ld 1", (long) getgid());
+            snprintf(map_buf, MAP_BUF_SIZE, "0 %ld 1",
+                    (intmax_t) getgid());
             gid_map = map_buf;
         }
         update_map(gid_map, map_path);
-- 
2.28.0
