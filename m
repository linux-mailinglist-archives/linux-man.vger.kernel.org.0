Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E03512E20AE
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 20:06:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727505AbgLWTE2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 14:04:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727225AbgLWTE2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 14:04:28 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DB0FC061794
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:03:47 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id m5so172758wrx.9
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z7THc6kL5S94HDJbsevKEWcDxZLIfnQC1334rilYhZw=;
        b=ooGQajG3FgW4BVxBWaVuNVOu3ZcZUSrQr4DmfN69bXZTratzGx9TQvJQEsEtfMQ/+F
         vMnLF050q0EL/yURX0r/fBtsfoFsmgL/01uRMy2Vtm8gpSigY6I2Pr/gxSnKtkADnNHI
         T/sQT+u/DkpsElvi46KMG5+pQyuLD3H68qu0tvFAsRu+uJhs5KKA+Gz1wbWoekdY6Eey
         B9GGyErXBaP/nm2RR+numC6HD71Nh3LEqAk8yY5bcJ5F/jlqxebEu3ffq8Kjrs0s1d+s
         sqlfIjnoUY2BRF1xfjABmSzzH6FoPZErP/GG9aIVGufzjFJa/6HSZdLYW1DSkxxrl2GH
         +CTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z7THc6kL5S94HDJbsevKEWcDxZLIfnQC1334rilYhZw=;
        b=Sf+GQCwTB6MO4NF7F5r3gDOlnk4d/s0041iygFXl9f9NzJgX3D+XhkRRBS7/gk1RLV
         axM3tRbvdqOqVJZmdA82gWpzn6odbxUYQPfVXF8GOBjiYJ2l/p7ZA851l8YeO7b0z39s
         q5vFO9SMHLG9KpY5s5K9Ze0pnuox88LCpVJ0exL41fetZnjHkvnakDuTD9edKnM+yyRu
         wKuy3ehk5l+oaCuckgil76Lb7QHoTsqEx1mL9chhVPGK2jcOSYwAPkzfoEQdzm14pmgh
         mtoUsW/l1UM/a9WPn1+pUzgsjdbJaisEw9rGTX3KN+gpQeYfUFTuwfi9cB3PyBEbGv0s
         aO7g==
X-Gm-Message-State: AOAM530ER0NfCBpB2fwCn4e4/sgOL5sEY3/E918b/yOHoGYtVgvOIoGV
        g8E7mZHf0vk3j2gHu9yM7m+Mwkr45i0=
X-Google-Smtp-Source: ABdhPJwAc8SGxriFiPzrKXoKT/+3UsQpsGQ0/bGXuBLqwomhqN6qMgOeU7svqp6KRcE5SKVxGdLc2Q==
X-Received: by 2002:a5d:650f:: with SMTP id x15mr30783090wru.332.1608750224631;
        Wed, 23 Dec 2020 11:03:44 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id y68sm892028wmc.0.2020.12.23.11.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 11:03:44 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Various pages: tfix
Date:   Wed, 23 Dec 2020 20:02:03 +0100
Message-Id: <20201223190202.12758-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Remove "." at the end of sentence fragments/short single sentences
in comments.  See: c2e81ff9641a7743b1f47cbf4fcf899c391df77f.

$ sed -i '/[^.]\. \*\//s%\. \*/% */%' man?/*

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/bpf.2                   |  4 ++--
 man2/clone.2                 |  4 ++--
 man2/dup.2                   |  2 +-
 man2/futex.2                 |  6 +++---
 man2/membarrier.2            |  2 +-
 man2/mprotect.2              |  2 +-
 man2/nfsservctl.2            | 14 +++++++-------
 man2/open_by_handle_at.2     |  4 ++--
 man2/quotactl.2              |  6 +++---
 man2/readlink.2              |  6 +++---
 man2/select.2                |  6 +++---
 man2/select_tut.2            |  4 ++--
 man2/sendfile.2              |  2 +-
 man2/setns.2                 |  2 +-
 man2/shmop.2                 |  2 +-
 man2/stat.2                  |  2 +-
 man2/timer_create.2          |  2 +-
 man2/userfaultfd.2           |  8 ++++----
 man2/wait.2                  |  2 +-
 man3/dlopen.3                |  2 +-
 man3/getaddrinfo.3           |  4 ++--
 man3/getaddrinfo_a.3         |  4 ++--
 man3/inet_net_pton.3         |  4 ++--
 man3/malloc_get_state.3      |  2 +-
 man3/malloc_info.3           |  2 +-
 man3/mbstowcs.3              |  2 +-
 man3/mq_notify.3             |  2 +-
 man3/newlocale.3             |  2 +-
 man3/posix_spawn.3           |  4 ++--
 man3/pthread_setschedparam.3 |  2 +-
 man3/pthread_setschedprio.3  |  2 +-
 man3/pthread_sigmask.3       |  2 +-
 man3/shm_open.3              |  2 +-
 man5/utmp.5                  |  2 +-
 man7/fanotify.7              |  8 ++++----
 man7/inotify.7               | 10 +++++-----
 man7/locale.7                |  6 +++---
 man7/user_namespaces.7       | 12 ++++++------
 38 files changed, 77 insertions(+), 77 deletions(-)

diff --git a/man2/bpf.2 b/man2/bpf.2
index d8ce40943..348d968de 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -376,7 +376,7 @@ enum bpf_map_type {
     BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE,
     BPF_MAP_TYPE_QUEUE,
     BPF_MAP_TYPE_STACK,
-    /* See /usr/include/linux/bpf.h for the full list. */
+    /* See /usr/include/linux/bpf.h for the full list */
 };
 .EE
 .in
@@ -784,7 +784,7 @@ enum bpf_prog_type {
     BPF_PROG_TYPE_LIRC_MODE2,
     BPF_PROG_TYPE_SK_REUSEPORT,
     BPF_PROG_TYPE_FLOW_DISSECTOR,
-    /* See /usr/include/linux/bpf.h for the full list. */
+    /* See /usr/include/linux/bpf.h for the full list */
 };
 .EE
 .in
diff --git a/man2/clone.2 b/man2/clone.2
index 976738f7d..4bfd18ec0 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1843,7 +1843,7 @@ childFunc(void *arg)
 
     /* Keep the namespace open for a while, by sleeping.
        This allows some experimentation\-\-for example, another
-       process might join the namespace. */
+       process might join the namespace */
 
     sleep(200);
 
@@ -1887,7 +1887,7 @@ main(int argc, char *argv[])
     sleep(1);           /* Give child time to change its hostname */
 
     /* Display hostname in parent\(aqs UTS namespace. This will be
-       different from hostname in child\(aqs UTS namespace. */
+       different from hostname in child\(aqs UTS namespace */
 
     if (uname(&uts) == \-1)
         errExit("uname");
diff --git a/man2/dup.2 b/man2/dup.2
index a54ea04ed..f01f067f5 100644
--- a/man2/dup.2
+++ b/man2/dup.2
@@ -251,7 +251,7 @@ Instead, code something like the following could be used:
 .EX
 /* Obtain a duplicate of \(aqnewfd\(aq that can subsequently
    be used to check for close() errors; an EBADF error
-   means that \(aqnewfd\(aq was not open. */
+   means that \(aqnewfd\(aq was not open */
 
 tmpfd = dup(newfd);
 if (tmpfd == \-1 && errno != EBADF) {
diff --git a/man2/futex.2 b/man2/futex.2
index 5e006784f..167625451 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1777,7 +1777,7 @@ futex(uint32_t *uaddr, int futex_op, uint32_t val,
 }
 
 /* Acquire the futex pointed to by \(aqfutexp\(aq: wait for its value to
-   become 1, and then set the value to 0. */
+   become 1, and then set the value to 0 */
 
 static void
 fwait(uint32_t *futexp)
@@ -1790,7 +1790,7 @@ fwait(uint32_t *futexp)
            if (*ptr == *oldval)
                *ptr = newval;
 
-       It returns true if the test yielded true and *ptr was updated. */
+       It returns true if the test yielded true and *ptr was updated */
 
     while (1) {
 
@@ -1809,7 +1809,7 @@ fwait(uint32_t *futexp)
 
 /* Release the futex pointed to by \(aqfutexp\(aq: if the futex currently
    has the value 0, set its value to 1 and the wake any futex waiters,
-   so that if the peer is blocked in fwait(), it can proceed. */
+   so that if the peer is blocked in fwait(), it can proceed */
 
 static void
 fpost(uint32_t *futexp)
diff --git a/man2/membarrier.2 b/man2/membarrier.2
index c51d357a7..6d3ab99f4 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -406,7 +406,7 @@ init_membarrier(void)
 {
     int ret;
 
-    /* Check that membarrier() is supported. */
+    /* Check that membarrier() is supported */
 
     ret = membarrier(MEMBARRIER_CMD_QUERY, 0, 0);
     if (ret < 0) {
diff --git a/man2/mprotect.2 b/man2/mprotect.2
index bd23d2fc0..d9f5b8cf2 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -324,7 +324,7 @@ handler(int sig, siginfo_t *si, void *unused)
        (and should not be done in production programs), since
        printf() is not async\-signal\-safe; see signal-safety(7).
        Nevertheless, we use printf() here as a simple way of
-       showing that the handler was called. */
+       showing that the handler was called */
 
     printf("Got SIGSEGV at address: %p\en", si\->si_addr);
     exit(EXIT_FAILURE);
diff --git a/man2/nfsservctl.2 b/man2/nfsservctl.2
index 626c483b3..59766d4fb 100644
--- a/man2/nfsservctl.2
+++ b/man2/nfsservctl.2
@@ -25,15 +25,15 @@ filesystem; see
 /*
  * These are the commands understood by nfsctl().
  */
-#define NFSCTL_SVC        0  /* This is a server process. */
-#define NFSCTL_ADDCLIENT  1  /* Add an NFS client. */
-#define NFSCTL_DELCLIENT  2  /* Remove an NFS client. */
-#define NFSCTL_EXPORT     3  /* Export a filesystem. */
-#define NFSCTL_UNEXPORT   4  /* Unexport a filesystem. */
+#define NFSCTL_SVC        0  /* This is a server process */
+#define NFSCTL_ADDCLIENT  1  /* Add an NFS client */
+#define NFSCTL_DELCLIENT  2  /* Remove an NFS client */
+#define NFSCTL_EXPORT     3  /* Export a filesystem */
+#define NFSCTL_UNEXPORT   4  /* Unexport a filesystem */
 #define NFSCTL_UGIDUPDATE 5  /* Update a client\(aqs UID/GID map
-                                (only in Linux 2.4.x and earlier). */
+                                (only in Linux 2.4.x and earlier) */
 #define NFSCTL_GETFH      6  /* Get a file handle (used by mountd)
-                                (only in Linux 2.4.x and earlier). */
+                                (only in Linux 2.4.x and earlier) */
 
 struct nfsctl_arg {
     int                       ca_version;     /* safeguard */
diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
index 4546fd933..8c677f33a 100644
--- a/man2/open_by_handle_at.2
+++ b/man2/open_by_handle_at.2
@@ -628,7 +628,7 @@ main(int argc, char *argv[])
    \(aqmount_id\(aq. (An easier way to do this is to install and use the
    \(aqlibmount\(aq library provided by the \(aqutil\-linux\(aq project.)
    Open the corresponding mount path and return the resulting file
-   descriptor. */
+   descriptor */
 
 static int
 open_mount_path_by_id(int mount_id)
@@ -721,7 +721,7 @@ main(int argc, char *argv[])
     /* Obtain file descriptor for mount point, either by opening
        the pathname specified on the command line, or by scanning
        /proc/self/mounts to find a mount that matches the \(aqmount_id\(aq
-       that we received from stdin. */
+       that we received from stdin */
 
     if (argc > 1)
         mount_fd = open(argv[1], O_RDONLY);
diff --git a/man2/quotactl.2 b/man2/quotactl.2
index baa6f3fa1..5a8c401d0 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -185,7 +185,7 @@ struct dqblk {      /* Definition since Linux 2.4.22 */
 };
 
 /* Flags in dqb_valid that indicate which fields in
-   dqblk structure are valid. */
+   dqblk structure are valid */
 
 #define QIF_BLIMITS   1
 #define QIF_SPACE     2
@@ -311,7 +311,7 @@ struct dqinfo {         /* Defined since kernel 2.4.22 */
                                        a system file */
 
 /* Flags in dqi_valid that indicate which fields in
-   dqinfo structure are valid. */
+   dqinfo structure are valid */
 
 #define IIF_BGRACE  1
 #define IIF_IGRACE  2
@@ -457,7 +457,7 @@ as follows:
 .in +4n
 .EX
 /* All the blk units are in BBs (Basic Blocks) of
-   512 bytes. */
+   512 bytes */
 
 #define FS_DQUOT_VERSION  1  /* fs_disk_quota.d_version */
 
diff --git a/man2/readlink.2 b/man2/readlink.2
index 6a1767caa..17d8ac30e 100644
--- a/man2/readlink.2
+++ b/man2/readlink.2
@@ -309,13 +309,13 @@ main(int argc, char *argv[])
     }
 
     /* Add one to the link size, so that we can determine whether
-       the buffer returned by readlink() was truncated. */
+       the buffer returned by readlink() was truncated */
 
     bufsiz = sb.st_size + 1;
 
     /* Some magic symlinks under (for example) /proc and /sys
        report \(aqst_size\(aq as zero. In that case, take PATH_MAX as
-       a "good enough" estimate. */
+       a "good enough" estimate */
 
     if (sb.st_size == 0)
         bufsiz = PATH_MAX;
@@ -338,7 +338,7 @@ main(int argc, char *argv[])
        the link target was larger than expected (perhaps because the
        target was changed between the call to lstat() and the call to
        readlink()). Warn the user that the returned target may have
-       been truncated. */
+       been truncated */
 
     if (nbytes == bufsiz)
         printf("(Returned buffer may have been truncated)\en");
diff --git a/man2/select.2 b/man2/select.2
index 65ddf5c41..24cb9244e 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -719,12 +719,12 @@ main(void)
     struct timeval tv;
     int retval;
 
-    /* Watch stdin (fd 0) to see when it has input. */
+    /* Watch stdin (fd 0) to see when it has input */
 
     FD_ZERO(&rfds);
     FD_SET(0, &rfds);
 
-    /* Wait up to five seconds. */
+    /* Wait up to five seconds */
 
     tv.tv_sec = 5;
     tv.tv_usec = 0;
@@ -736,7 +736,7 @@ main(void)
         perror("select()");
     else if (retval)
         printf("Data is available now.\en");
-        /* FD_ISSET(0, &rfds) will be true. */
+        /* FD_ISSET(0, &rfds) will be true */
     else
         printf("No data within five seconds.\en");
 
diff --git a/man2/select_tut.2 b/man2/select_tut.2
index f683dd49d..c5a6363d2 100644
--- a/man2/select_tut.2
+++ b/man2/select_tut.2
@@ -488,7 +488,7 @@ main(int argc, char *argv[])
         if (fd1 > 0 && buf1_avail < BUF_SIZE)
             FD_SET(fd1, &readfds);
             /* Note: nfds is updated below, when fd1 is added to
-               exceptfds. */
+               exceptfds */
         if (fd2 > 0 && buf2_avail < BUF_SIZE)
             FD_SET(fd2, &readfds);
 
@@ -540,7 +540,7 @@ main(int argc, char *argv[])
                             inet_ntoa(client_addr.sin_addr));
 
                 /* Skip any events on the old, closed file
-                   descriptors. */
+                   descriptors */
 
                 continue;
             }
diff --git a/man2/sendfile.2 b/man2/sendfile.2
index f0ead4a9b..6306c319c 100644
--- a/man2/sendfile.2
+++ b/man2/sendfile.2
@@ -37,7 +37,7 @@ sendfile \- transfer data between file descriptors
 .\" .br
 .\" .B #include <sys/types.h>
 .\" .br
-.\" .B /* No system prototype before glibc 2.1. */
+.\" .B /* No system prototype before glibc 2.1 */
 .\" .br
 .\" .BI "ssize_t sendfile(int" " out_fd" ", int" " in_fd" ", off_t *" \
 .\"                       offset ", size_t" " count" )
diff --git a/man2/setns.2 b/man2/setns.2
index 535271eae..7aed76a9a 100644
--- a/man2/setns.2
+++ b/man2/setns.2
@@ -399,7 +399,7 @@ main(int argc, char *argv[])
 
     /* Get file descriptor for namespace; the file descriptor is opened
        with O_CLOEXEC so as to ensure that it is not inherited by the
-       program that is later executed. */
+       program that is later executed */
 
     fd = open(argv[1], O_RDONLY | O_CLOEXEC);
     if (fd == \-1)
diff --git a/man2/shmop.2 b/man2/shmop.2
index 4ed8589c6..b93002dc1 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -476,7 +476,7 @@ main(int argc, char *argv[])
     semid = atoi(argv[2]);
 
     /* Attach shared memory into our address space and copy string
-       (including trailing null byte) into memory. */
+       (including trailing null byte) into memory */
 
     addr = shmat(shmid, NULL, 0);
     if (addr == (void *) \-1)
diff --git a/man2/stat.2 b/man2/stat.2
index f4bef98ab..c2e59b217 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -142,7 +142,7 @@ struct stat {
 
     /* Since Linux 2.6, the kernel supports nanosecond
        precision for the following timestamp fields.
-       For the details before Linux 2.6, see NOTES. */
+       For the details before Linux 2.6, see NOTES */
 
     struct timespec st_atim;  /* Time of last access */
     struct timespec st_mtim;  /* Time of last modification */
diff --git a/man2/timer_create.2 b/man2/timer_create.2
index aa8cc26e2..562574bd3 100644
--- a/man2/timer_create.2
+++ b/man2/timer_create.2
@@ -407,7 +407,7 @@ handler(int sig, siginfo_t *si, void *uc)
        (and should not be done in production programs), since
        printf() is not async\-signal\-safe; see signal-safety(7).
        Nevertheless, we use printf() here as a simple way of
-       showing that the handler was called. */
+       showing that the handler was called */
 
     printf("Caught signal %d\en", sig);
     print_siginfo(si);
diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 2fb207e95..2cb8bb3fa 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -656,7 +656,7 @@ fault_handler_thread(void *arg)
 
         /* Copy the page pointed to by \(aqpage\(aq into the faulting
            region. Vary the contents that are copied in, so that it
-           is more obvious that each fault is handled separately. */
+           is more obvious that each fault is handled separately */
 
         memset(page, \(aqA\(aq + fault_cnt % 20, page_size);
         fault_cnt++;
@@ -712,7 +712,7 @@ main(int argc, char *argv[])
     /* Create a private anonymous mapping. The memory will be
        demand\-zero paged\-\-that is, not yet allocated. When we
        actually touch the memory, it will be allocated via
-       the userfaultfd. */
+       the userfaultfd */
 
     addr = mmap(NULL, len, PROT_READ | PROT_WRITE,
                 MAP_PRIVATE | MAP_ANONYMOUS, \-1, 0);
@@ -723,7 +723,7 @@ main(int argc, char *argv[])
 
     /* Register the memory range of the mapping we just created for
        handling by the userfaultfd object. In mode, we request to track
-       missing pages (i.e., pages that have not yet been faulted in). */
+       missing pages (i.e., pages that have not yet been faulted in) */
 
     uffdio_register.range.start = (unsigned long) addr;
     uffdio_register.range.len = len;
@@ -741,7 +741,7 @@ main(int argc, char *argv[])
 
     /* Main thread now touches memory in the mapping, touching
        locations 1024 bytes apart. This will trigger userfaultfd
-       events for all pages in the region. */
+       events for all pages in the region */
 
     int l;
     l = 0xf;    /* Ensure that faulting address is not on a page
diff --git a/man2/wait.2 b/man2/wait.2
index 794a745de..fdcee89a5 100644
--- a/man2/wait.2
+++ b/man2/wait.2
@@ -61,7 +61,7 @@ wait, waitpid, waitid \- wait for process to change state
 .BI "int waitid(idtype_t " idtype ", id_t " id \
 ", siginfo_t *" infop ", int " options );
                 /* This is the glibc and POSIX interface; see
-                   NOTES for information on the raw system call. */
+                   NOTES for information on the raw system call */
 .PP
 .RS -4
 Feature Test Macro Requirements for glibc (see
diff --git a/man3/dlopen.3 b/man3/dlopen.3
index a64dcbcc2..2fcc6d8ff 100644
--- a/man3/dlopen.3
+++ b/man3/dlopen.3
@@ -600,7 +600,7 @@ main(void)
        by requiring that conforming implementations support casting
        \(aqvoid *\(aq to a function pointer.  Nevertheless, some compilers
        (e.g., gcc with the \(aq\-pedantic\(aq option) may complain about the
-       cast used in this program. */
+       cast used in this program */
 .\" http://pubs.opengroup.org/onlinepubs/009695399/functions/dlsym.html#tag_03_112_08
 .\" http://pubs.opengroup.org/onlinepubs/9699919799/functions/dlsym.html#tag_16_96_07
 .\" http://austingroupbugs.net/view.php?id=74
diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 49d4b1e17..5bd365cae 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -697,7 +697,7 @@ main(int argc, char *argv[])
     /* getaddrinfo() returns a list of address structures.
        Try each address until we successfully bind(2).
        If socket(2) (or bind(2)) fails, we (close the socket
-       and) try the next address. */
+       and) try the next address */
 
     for (rp = result; rp != NULL; rp = rp\->ai_next) {
         sfd = socket(rp\->ai_family, rp\->ai_socktype,
@@ -790,7 +790,7 @@ main(int argc, char *argv[])
     /* getaddrinfo() returns a list of address structures.
        Try each address until we successfully connect(2).
        If socket(2) (or connect(2)) fails, we (close the socket
-       and) try the next address. */
+       and) try the next address */
 
     for (rp = result; rp != NULL; rp = rp\->ai_next) {
         sfd = socket(rp\->ai_family, rp\->ai_socktype,
diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index f05fca1e8..ac2e76eb5 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -479,7 +479,7 @@ add_requests(void)
         reqs[nreqs \- 1]\->ar_name = strdup(host);
     }
 
-    /* Queue nreqs_base..nreqs requests. */
+    /* Queue nreqs_base..nreqs requests */
 
     ret = getaddrinfo_a(GAI_NOWAIT, &reqs[nreqs_base],
                         nreqs \- nreqs_base, NULL);
@@ -497,7 +497,7 @@ wait_requests(void)
     char *id;
     int ret, n;
     struct gaicb const **wait_reqs = calloc(nreqs, sizeof(*wait_reqs));
-                /* NULL elements are ignored by gai_suspend(). */
+                /* NULL elements are ignored by gai_suspend() */
 
     while ((id = strtok(NULL, " ")) != NULL) {
         n = atoi(id);
diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
index 0eca2e149..bfb868ca6 100644
--- a/man3/inet_net_pton.3
+++ b/man3/inet_net_pton.3
@@ -356,7 +356,7 @@ main(int argc, char *argv[])
        the output buffer given to inet_net_pton(), so that we can see
        that inet_net_pton() initializes only those bytes needed for
        the network number. If argv[2] is not supplied, then initialize
-       the buffer to zero (as is recommended practice). */
+       the buffer to zero (as is recommended practice) */
 
     addr.s_addr = (argc > 2) ? strtod(argv[2], NULL) : 0;
 
@@ -379,7 +379,7 @@ main(int argc, char *argv[])
     /* Display \(aqaddr\(aq in raw form (in network byte order), so we can
        see bytes not displayed by inet_net_ntop(); some of those bytes
        may not have been touched by inet_net_ntop(), and so will still
-       have any initial value that was specified in argv[2]. */
+       have any initial value that was specified in argv[2] */
 
     printf("Raw address:              %x\en", htonl(addr.s_addr));
 
diff --git a/man3/malloc_get_state.3 b/man3/malloc_get_state.3
index 57781fd6b..d47ae61f0 100644
--- a/man3/malloc_get_state.3
+++ b/man3/malloc_get_state.3
@@ -82,7 +82,7 @@ If the implementation detects that
 the version of the data structure referred to by
 .I state
 is a more recent version than this implementation knows about,
-.\" /* Must fail if the major version is too high. */
+.\" /* Must fail if the major version is too high */
 .\" if((ms->version & ~0xffl) > (MALLOC_STATE_VERSION & ~0xffl)) return -2;
 .BR malloc_set_state ()
 returns \-2.
diff --git a/man3/malloc_info.3 b/man3/malloc_info.3
index 4d3f20da9..8a6991d6f 100644
--- a/man3/malloc_info.3
+++ b/man3/malloc_info.3
@@ -242,7 +242,7 @@ main(int argc, char *argv[])
         /* If we add a sleep interval after the start\-up of each
            thread, the threads likely won\(aqt contend for malloc
            mutexes, and therefore additional arenas won\(aqt be
-           allocated (see malloc(3)). */
+           allocated (see malloc(3)) */
 
         if (sleepTime > 0)
             sleep(sleepTime);
diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
index 0cd2bff0c..42754d1fa 100644
--- a/man3/mbstowcs.3
+++ b/man3/mbstowcs.3
@@ -183,7 +183,7 @@ main(int argc, char *argv[])
     printf("    %zu multibyte characters\en\en", mbslen);
 
     /* Allocate wide character string of the desired size.  Add 1
-       to allow for terminating null wide character (L\(aq\e0\(aq). */
+       to allow for terminating null wide character (L\(aq\e0\(aq) */
 
     wcs = calloc(mbslen + 1, sizeof(*wcs));
     if (wcs == NULL) {
diff --git a/man3/mq_notify.3 b/man3/mq_notify.3
index 85cff527d..05cf30053 100644
--- a/man3/mq_notify.3
+++ b/man3/mq_notify.3
@@ -267,7 +267,7 @@ main(int argc, char *argv[])
     sev.sigev_notify = SIGEV_THREAD;
     sev.sigev_notify_function = tfunc;
     sev.sigev_notify_attributes = NULL;
-    sev.sigev_value.sival_ptr = &mqdes;   /* Arg. to thread func. */
+    sev.sigev_value.sival_ptr = &mqdes;   /* Arg. to thread func */
     if (mq_notify(mqdes, &sev) == \-1)
         handle_error("mq_notify");
 
diff --git a/man3/newlocale.3 b/man3/newlocale.3
index ec463e8f6..c7dc43006 100644
--- a/man3/newlocale.3
+++ b/man3/newlocale.3
@@ -333,7 +333,7 @@ main(int argc, char *argv[])
        locale object to take the LC_TIME settings from the locale
        specified in argv[2]. We assign the result of this newlocale()
        call to \(aqnloc\(aq rather than \(aqloc\(aq, since in some cases, we might
-       want to preserve \(aqloc\(aq if this call fails. */
+       want to preserve \(aqloc\(aq if this call fails */
 
     if (argc > 2) {
         nloc = newlocale(LC_TIME_MASK, argv[2], loc);
diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index 919fa9f4a..36b97e395 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -711,7 +711,7 @@ main(int argc, char *argv[])
     posix_spawn_file_actions_t *file_actionsp;
 
     /* Parse command\-line options, which can be used to specify an
-       attributes object and file actions object for the child. */
+       attributes object and file actions object for the child */
 
     attrp = NULL;
     file_actionsp = NULL;
@@ -760,7 +760,7 @@ main(int argc, char *argv[])
     /* Spawn the child. The name of the program to execute and the
        command\-line arguments are taken from the command\-line arguments
        of this program. The environment of the program execed in the
-       child is made the same as the parent\(aqs environment. */
+       child is made the same as the parent\(aqs environment */
 
     s = posix_spawnp(&child_pid, argv[optind], file_actionsp, attrp,
                      &argv[optind], environ);
diff --git a/man3/pthread_setschedparam.3 b/man3/pthread_setschedparam.3
index 047c28c7a..2a5be2ab9 100644
--- a/man3/pthread_setschedparam.3
+++ b/man3/pthread_setschedparam.3
@@ -98,7 +98,7 @@ and
 .BR pthread_mutexattr_setprotocol (3)).
 .\" FIXME . nptl/pthread_setschedparam.c has the following
 .\"   /* If the thread should have higher priority because of some
-.\"      PTHREAD_PRIO_PROTECT mutexes it holds, adjust the priority. */
+.\"      PTHREAD_PRIO_PROTECT mutexes it holds, adjust the priority */
 .\" Eventually (perhaps after writing the mutexattr pages), we
 .\" may want to add something on the topic to this page.
 .SH RETURN VALUE
diff --git a/man3/pthread_setschedprio.3 b/man3/pthread_setschedprio.3
index c037d9659..40aab6243 100644
--- a/man3/pthread_setschedprio.3
+++ b/man3/pthread_setschedprio.3
@@ -46,7 +46,7 @@ to the value specified in
 changes both the scheduling policy and priority of a thread.)
 .\" FIXME . nptl/pthread_setschedprio.c has the following
 .\"   /* If the thread should have higher priority because of some
-.\"      PTHREAD_PRIO_PROTECT mutexes it holds, adjust the priority. */
+.\"      PTHREAD_PRIO_PROTECT mutexes it holds, adjust the priority */
 .\" Eventually (perhaps after writing the mutexattr pages), we
 .\" may want to add something on the topic to this page.
 .\" nptl/pthread_setschedparam.c has a similar case.
diff --git a/man3/pthread_sigmask.3 b/man3/pthread_sigmask.3
index 8b67d0989..8693aee15 100644
--- a/man3/pthread_sigmask.3
+++ b/man3/pthread_sigmask.3
@@ -145,7 +145,7 @@ main(int argc, char *argv[])
     int s;
 
     /* Block SIGQUIT and SIGUSR1; other threads created by main()
-       will inherit a copy of the signal mask. */
+       will inherit a copy of the signal mask */
 
     sigemptyset(&set);
     sigaddset(&set, SIGQUIT);
diff --git a/man3/shm_open.3 b/man3/shm_open.3
index 5432f4e1a..80a5d4ce3 100644
--- a/man3/shm_open.3
+++ b/man3/shm_open.3
@@ -414,7 +414,7 @@ main(int argc, char *argv[])
 
     /* Unlink the shared memory object. Even if the peer process
        is still using the object, this is okay. The object will
-       be removed only after all open references are closed. */
+       be removed only after all open references are closed */
 
     shm_unlink(shmpath);
 
diff --git a/man5/utmp.5 b/man5/utmp.5
index 641553196..ec2666bb8 100644
--- a/man5/utmp.5
+++ b/man5/utmp.5
@@ -101,7 +101,7 @@ struct utmp {
                                      used by Linux init(1) */
     /* The ut_session and ut_tv fields must be the same size when
        compiled 32- and 64-bit.  This allows data files and shared
-       memory to be shared between 32- and 64-bit applications. */
+       memory to be shared between 32- and 64-bit applications */
 #if __WORDSIZE == 64 && defined __WORDSIZE_COMPAT32
     int32_t ut_session;           /* Session ID (\fBgetsid\fP(2)),
                                      used for windowing */
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 5804a1f30..6be98e7f8 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -848,7 +848,7 @@ handle_events(int fd)
 
             /* metadata\->fd contains either FAN_NOFD, indicating a
                queue overflow, or a file descriptor (a nonnegative
-               integer). Here, we simply ignore queue overflow. */
+               integer). Here, we simply ignore queue overflow */
 
             if (metadata\->fd >= 0) {
 
@@ -1091,7 +1091,7 @@ main(int argc, char **argv)
 
     /* Create an fanotify file descriptor with FAN_REPORT_DFID_NAME as
        a flag so that program can receive fid events with directory
-       entry name. */
+       entry name */
 
     fd = fanotify_init(FAN_CLASS_NOTIF | FAN_REPORT_DFID_NAME, 0);
     if (fd == \-1) {
@@ -1099,7 +1099,7 @@ main(int argc, char **argv)
         exit(EXIT_FAILURE);
     }
 
-    /* Place a mark on the filesystem object supplied in argv[1]. */
+    /* Place a mark on the filesystem object supplied in argv[1] */
 
     ret = fanotify_mark(fd, FAN_MARK_ADD | FAN_MARK_ONLYDIR,
                         FAN_CREATE | FAN_ONDIR,
@@ -1153,7 +1153,7 @@ main(int argc, char **argv)
 	   fanotify_event_info_fid in conjunction with the
 	   open_by_handle_at(2) system call.  A check for ESTALE is
 	   done to accommodate for the situation where the file handle
-	   for the object was deleted prior to this system call. */
+	   for the object was deleted prior to this system call */
 
         event_fd = open_by_handle_at(mount_fd, file_handle, O_RDONLY);
         if (event_fd == \-1) {
diff --git a/man7/inotify.7 b/man7/inotify.7
index e86bdee67..0549f28e6 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -928,7 +928,7 @@ Listening for events stopped.
    wd is the table of watch descriptors for the directories in argv.
    argc is the length of wd and argv.
    argv is the list of watched directories.
-   Entry 0 of wd and argv is unused. */
+   Entry 0 of wd and argv is unused */
 
 static void
 handle_events(int fd, int *wd, int argc, char* argv[])
@@ -937,18 +937,18 @@ handle_events(int fd, int *wd, int argc, char* argv[])
        properly aligned. On other systems, incorrect alignment may
        decrease performance. Hence, the buffer used for reading from
        the inotify file descriptor should have the same alignment as
-       struct inotify_event. */
+       struct inotify_event */
 
     char buf[4096]
         __attribute__ ((aligned(__alignof__(struct inotify_event))));
     const struct inotify_event *event;
     ssize_t len;
 
-    /* Loop while events can be read from inotify file descriptor. */
+    /* Loop while events can be read from inotify file descriptor */
 
     for (;;) {
 
-        /* Read some events. */
+        /* Read some events */
 
         len = read(fd, buf, sizeof(buf));
         if (len == \-1 && errno != EAGAIN) {
@@ -958,7 +958,7 @@ handle_events(int fd, int *wd, int argc, char* argv[])
 
         /* If the nonblocking read() found no events to read, then
            it returns \-1 with errno set to EAGAIN. In that case,
-           we exit the loop. */
+           we exit the loop */
 
         if (len <= 0)
             break;
diff --git a/man7/locale.7 b/man7/locale.7
index 125961337..6eaca1b0e 100644
--- a/man7/locale.7
+++ b/man7/locale.7
@@ -276,14 +276,14 @@ struct lconv {
                            CHAR_MAX means that no further grouping
                            is done.  An element with value 0 means
                            that the previous element is used for
-                           all groups further left. */
+                           all groups further left */
 
     /* Remaining fields are for monetary information */
 
     char *int_curr_symbol;   /* First three chars are a currency
                                 symbol from ISO 4217.  Fourth char
                                 is the separator.  Fifth char
-                                is \(aq\e0\(aq. */
+                                is \(aq\e0\(aq */
     char *currency_symbol;   /* Local currency symbol */
     char *mon_decimal_point; /* Radix character */
     char *mon_thousands_sep; /* Like \fIthousands_sep\fP above */
@@ -307,7 +307,7 @@ struct lconv {
        1 The sign string precedes the quantity and currency_symbol.
        2 The sign string succeeds the quantity and currency_symbol.
        3 The sign string immediately precedes the currency_symbol.
-       4 The sign string immediately succeeds the currency_symbol. */
+       4 The sign string immediately succeeds the currency_symbol */
     char  p_sign_posn;
     char  n_sign_posn;
 };
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index b417afa80..26520bb94 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1145,7 +1145,7 @@ usage(char *pname)
    Requiring the user to supply a string that contains newlines is
    of course inconvenient for command\-line use. Thus, we permit the
    use of commas to delimit records in this string, and replace them
-   with newlines before writing the string to the file. */
+   with newlines before writing the string to the file */
 
 static void
 update_map(char *mapping, char *map_file)
@@ -1183,7 +1183,7 @@ update_map(char *mapping, char *map_file)
    \(aqgid_maps\(aq file, use of the setgroups() system call in this
    user namespace must first be disabled by writing "deny" to one of
    the /proc/PID/setgroups files for this namespace.  That is the
-   purpose of the following function. */
+   purpose of the following function */
 
 static void
 proc_setgroups_write(pid_t child_pid, char *str)
@@ -1205,7 +1205,7 @@ proc_setgroups_write(pid_t child_pid, char *str)
 
            However, if the error from open() was something other than
            the ENOENT error that is expected for that case,  let the
-           user know. */
+           user know */
 
         if (errno != ENOENT)
             fprintf(stderr, "ERROR: open %s: %s\en", setgroups_path,
@@ -1229,7 +1229,7 @@ childFunc(void *arg)
     /* Wait until the parent has updated the UID and GID mappings.
        See the comment in main(). We wait for end of file on a
        pipe that will be closed by the parent process once it has
-       updated the mappings. */
+       updated the mappings */
 
     close(args\->pipe_fd[1]);    /* Close our descriptor for the write
                                    end of the pipe so that we see EOF
@@ -1269,7 +1269,7 @@ main(int argc, char *argv[])
        of command\-line options. That\(aqs useful, since sometimes
        the \(aqcommand\(aq to be executed by this program itself
        has command\-line options. We don\(aqt want getopt() to treat
-       those as options to this program. */
+       those as options to this program */
 
     flags = 0;
     verbose = 0;
@@ -1309,7 +1309,7 @@ main(int argc, char *argv[])
        namespace. Without this synchronization, the child would lose
        its capabilities if it performed an execve() with nonzero
        user IDs (see the capabilities(7) man page for details of the
-       transformation of a process\(aqs capabilities during execve()). */
+       transformation of a process\(aqs capabilities during execve()) */
 
     if (pipe(args.pipe_fd) == \-1)
         errExit("pipe");
-- 
2.29.2

