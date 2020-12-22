Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF522E0882
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 11:10:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725811AbgLVKK3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 05:10:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725807AbgLVKK2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 05:10:28 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0052C0613D6
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 02:09:47 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id t16so13965580wra.3
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 02:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rB5GPpvG8D+TGIX++UxCnRfeFW7w06RgrBIDD3ANSlA=;
        b=CZwgYmLHqabUOtyKZpvVn1WyPIwqFGt2ejGaMehrj/4Sw9gM+nVQEVScNltgxWs870
         Bfh7xXGzVVwrODV3+NY3T8/w1n/s6zMPz1WnmJWl58TJucYvl1NFqY+nLmrrWpraehU2
         vFMzZsxtgKeplgSmPA/31eg1wB88t12xkcvf/APGjelxWhVToMC1+fAxkgWK5+0TQ5MV
         ZpxZg/0xoZE4U4dOkcxz1ii4gxD3bA9futGAbsYRSKrqgXpeMRK4ETy/PecnCEa2KNYa
         cAqKbA3KIrsCvCUJ8XE90t1R0IrG+aFdrjUSnJZwVh04MofaLIxh+FRtH/waLgWV1yeR
         i/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rB5GPpvG8D+TGIX++UxCnRfeFW7w06RgrBIDD3ANSlA=;
        b=XY3WIafXVoFE/WWlYLSI42g5V57PUEqLJQLuOc3a69XViScec0lMnzwWnvwqyfLUfJ
         ISmb0KDY81G8BElLXuHKwxtJLb1RxEzdTqvihGIx96r7U/m/hkbKO9/u1l3v7FKzdpaF
         qfX4OlK0zD+vFF7bI6PPbL7q9sry7jYyBh/YTe7ylMcRpQ+e/FEai8Wo+oW3pIEJfmac
         lRFbDERUJGWZiZE4Nt5MCs79YV1Q73+aZi99mV4adP5F3s6vvvQ3qT4cIhKB+6RH6kdM
         gmnD1zmoyo/n/y8Df/UJOpuYPVYnErb9uXKjcGG2uMW+G1XOsotF12rwmKqtX10kZGpj
         qlzw==
X-Gm-Message-State: AOAM531uj7QACS1cQbHqO+4g86UusRflfoUusGt71CwUeoCS00FUbQST
        evUtB4fjXlZ8Br8Fxt+9bLc=
X-Google-Smtp-Source: ABdhPJyyQArNRUxdwyI41pf7CuRBoUAUKxgP3onrgoZSVclezTbV7eTjK2ek/pkjL0fG4m6v//vjBA==
X-Received: by 2002:a05:6000:14b:: with SMTP id r11mr23688150wrx.53.1608631786272;
        Tue, 22 Dec 2020 02:09:46 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id b19sm25427770wmj.37.2020.12.22.02.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Dec 2020 02:09:45 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] _exit.2, accept.2, access.2, bpf.2, chmod.2, chown.2, dup.2 getgroups.2, keyctl.2, mkdir.2, mknod.2, mprotect.2, pipe.2 poll.2, readlink.2, reboot.2, rename.2, set_thread_area.2, stat.2 symlink.2, unlink.2, abs.3, crypt.3, encrypt.3, err.3, fpurge.3 gethostbyname.3, getmntent.3, getspnam.3, getutent.3 inet_net_pton.3, mempcpy.3, mkfifo.3, open_memstream.3, openpty.3 perror.3, posix_memalign.3, printf.3, rpc.3, scandir.3, scanf.3 strchr.3, towupper.3, unlocked_stdio.3, cgroups.7, symlink.7 time_namespaces.7:  ffix:  '1,/^\.EX/s/^$/.PP/' '/^\.EE/,/^\.EX/s/^$/.PP/'
Date:   Tue, 22 Dec 2020 11:04:25 +0100
Message-Id: <20201222100424.107183-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I fixed some of them manually.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

There are a few cases that I didn't add,
because I don't know what you would do.
Those are cases inside lists.
You can run the command below
and will see a few remaining cases:

sed -i -e '1,/^\.EX/s/^$/.PP/' -e '/^\.EE/,/^\.EX/s/^$/.PP/' man?/*

Thanks,

Alex

 man2/_exit.2           | 2 +-
 man2/accept.2          | 2 +-
 man2/access.2          | 4 ++--
 man2/bpf.2             | 2 +-
 man2/chmod.2           | 2 +-
 man2/chown.2           | 2 +-
 man2/dup.2             | 2 +-
 man2/getgroups.2       | 2 +-
 man2/keyctl.2          | 2 +-
 man2/mkdir.2           | 2 +-
 man2/mknod.2           | 2 +-
 man2/mprotect.2        | 2 +-
 man2/pipe.2            | 2 +-
 man2/poll.2            | 2 +-
 man2/readlink.2        | 2 +-
 man2/reboot.2          | 2 +-
 man2/rename.2          | 2 +-
 man2/set_thread_area.2 | 2 +-
 man2/stat.2            | 2 +-
 man2/symlink.2         | 2 +-
 man2/unlink.2          | 2 +-
 man3/abs.3             | 2 +-
 man3/crypt.3           | 2 +-
 man3/encrypt.3         | 4 ++--
 man3/err.3             | 2 +-
 man3/fpurge.3          | 2 +-
 man3/gethostbyname.3   | 2 +-
 man3/getmntent.3       | 2 +-
 man3/getspnam.3        | 2 +-
 man3/getutent.3        | 2 +-
 man3/inet_net_pton.3   | 2 +-
 man3/mempcpy.3         | 2 +-
 man3/mkfifo.3          | 2 +-
 man3/open_memstream.3  | 2 +-
 man3/openpty.3         | 2 +-
 man3/perror.3          | 2 +-
 man3/posix_memalign.3  | 2 +-
 man3/printf.3          | 2 +-
 man3/rpc.3             | 2 +-
 man3/scandir.3         | 2 +-
 man3/scanf.3           | 2 +-
 man3/strchr.3          | 2 +-
 man3/towupper.3        | 1 -
 man3/unlocked_stdio.3  | 2 +-
 man7/cgroups.7         | 1 -
 man7/symlink.7         | 3 +--
 man7/time_namespaces.7 | 1 -
 47 files changed, 46 insertions(+), 50 deletions(-)

diff --git a/man2/_exit.2 b/man2/_exit.2
index 469c3475c..f62a0f544 100644
--- a/man2/_exit.2
+++ b/man2/_exit.2
@@ -33,7 +33,7 @@ _exit, _Exit \- terminate the calling process
 .B #include <unistd.h>
 .PP
 .BI "void _exit(int " status );
-
+.PP
 .B #include <stdlib.h>
 .PP
 .BI "void _Exit(int " status );
diff --git a/man2/accept.2 b/man2/accept.2
index f4407d932..bc24f5c81 100644
--- a/man2/accept.2
+++ b/man2/accept.2
@@ -47,7 +47,7 @@ accept, accept4 \- accept a connection on a socket
 .B #include <sys/socket.h>
 .PP
 .BI "int accept(int " sockfd ", struct sockaddr *" addr ", socklen_t *" addrlen );
-
+.PP
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
 .B #include <sys/socket.h>
 .PP
diff --git a/man2/access.2 b/man2/access.2
index 70ae113dd..a74128a8b 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -48,14 +48,14 @@ access, faccessat, faccessat2 \- check user's permissions for a file
 .B #include <unistd.h>
 .PP
 .BI "int access(const char *" pathname ", int " mode );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <unistd.h>
 .PP
 .BI "int faccessat(int " dirfd ", const char *" pathname ", int " \
 mode ", int " flags );
                 /* But see C library/kernel differences, below */
-
+.PP
 .BI "int faccessat2(int " dirfd ", const char *" pathname ", int " \
 mode ", int " flags );
 .fi
diff --git a/man2/bpf.2 b/man2/bpf.2
index 86f3c3a40..d8ce40943 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -29,7 +29,7 @@ bpf \- perform a command on an extended BPF map or program
 .SH SYNOPSIS
 .nf
 .B #include <linux/bpf.h>
-
+.PP
 .BI "int bpf(int " cmd ", union bpf_attr *" attr ", unsigned int " size );
 .fi
 .SH DESCRIPTION
diff --git a/man2/chmod.2 b/man2/chmod.2
index b5e985a2d..1a0e43ed3 100644
--- a/man2/chmod.2
+++ b/man2/chmod.2
@@ -38,7 +38,7 @@ chmod, fchmod, fchmodat \- change permissions of a file
 .PP
 .BI "int chmod(const char *" pathname ", mode_t " mode );
 .BI "int fchmod(int " fd ", mode_t " mode );
-
+.PP
 .BR "#include <fcntl.h>" "           /* Definition of AT_* constants */"
 .B #include <sys/stat.h>
 .PP
diff --git a/man2/chown.2 b/man2/chown.2
index c5958dd75..c93169524 100644
--- a/man2/chown.2
+++ b/man2/chown.2
@@ -45,7 +45,7 @@ chown, fchown, lchown, fchownat \- change ownership of a file
 .BI "int chown(const char *" pathname ", uid_t " owner ", gid_t " group );
 .BI "int fchown(int " fd ", uid_t " owner ", gid_t " group );
 .BI "int lchown(const char *" pathname ", uid_t " owner ", gid_t " group );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <unistd.h>
 .PP
diff --git a/man2/dup.2 b/man2/dup.2
index 614e0d174..a54ea04ed 100644
--- a/man2/dup.2
+++ b/man2/dup.2
@@ -43,7 +43,7 @@ dup, dup2, dup3 \- duplicate a file descriptor
 .PP
 .BI "int dup(int " oldfd );
 .BI "int dup2(int " oldfd ", int " newfd );
-
+.PP
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
 .BR "#include <fcntl.h>" "              /* Obtain O_* constant definitions */"
 .B #include <unistd.h>
diff --git a/man2/getgroups.2 b/man2/getgroups.2
index 7b5fed87b..bae901f28 100644
--- a/man2/getgroups.2
+++ b/man2/getgroups.2
@@ -38,7 +38,7 @@ getgroups, setgroups \- get/set list of supplementary group IDs
 .B #include <unistd.h>
 .PP
 .BI "int getgroups(int " size ", gid_t " list []);
-
+.PP
 .B #include <grp.h>
 .PP
 .BI "int setgroups(size_t " size ", const gid_t *" list );
diff --git a/man2/keyctl.2 b/man2/keyctl.2
index 4fa54bc14..daf889797 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -34,7 +34,7 @@ keyctl \- manipulate the kernel's key management facility
 .B #include <keyutils.h>
 .PP
 .BI "long keyctl(int " operation ", ...);"
-
+.PP
 .B "/* For direct call via syscall(2): */"
 .B #include <asm/unistd.h>
 .B #include <linux/keyctl.h>
diff --git a/man2/mkdir.2 b/man2/mkdir.2
index 97dd7442f..10cf34001 100644
--- a/man2/mkdir.2
+++ b/man2/mkdir.2
@@ -18,7 +18,7 @@ mkdir, mkdirat \- create a directory
 .\" .B #include <unistd.h>
 .PP
 .BI "int mkdir(const char *" pathname ", mode_t " mode );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <sys/stat.h>
 .PP
diff --git a/man2/mknod.2 b/man2/mknod.2
index daf449342..af4ac4f53 100644
--- a/man2/mknod.2
+++ b/man2/mknod.2
@@ -23,7 +23,7 @@ mknod, mknodat \- create a special or ordinary file
 .B #include <unistd.h>
 .PP
 .BI "int mknod(const char *" pathname ", mode_t " mode ", dev_t " dev );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <sys/stat.h>
 .PP
diff --git a/man2/mprotect.2 b/man2/mprotect.2
index 9cfedccbb..bd23d2fc0 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -38,7 +38,7 @@ mprotect, pkey_mprotect \- set protection on a region of memory
 .B #include <sys/mman.h>
 .PP
 .BI "int mprotect(void *" addr ", size_t " len ", int " prot );
-
+.PP
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
 .B #include <sys/mman.h>
 .PP
diff --git a/man2/pipe.2 b/man2/pipe.2
index 117f8950c..ef282300e 100644
--- a/man2/pipe.2
+++ b/man2/pipe.2
@@ -48,7 +48,7 @@ pipe, pipe2 \- create pipe
 .PP
 /* On all other architectures */
 .BI "int pipe(int " pipefd "[2]);"
-
+.PP
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
 .BR "#include <fcntl.h>" "              /* Obtain O_* constant definitions */"
 .B #include <unistd.h>
diff --git a/man2/poll.2 b/man2/poll.2
index 17533b22b..b91418aaa 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -35,7 +35,7 @@ poll, ppoll \- wait for some event on a file descriptor
 .B #include <poll.h>
 .PP
 .BI "int poll(struct pollfd *" fds ", nfds_t " nfds ", int " timeout );
-
+.PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <signal.h>
 .B #include <poll.h>
diff --git a/man2/readlink.2 b/man2/readlink.2
index 24c101737..6a1767caa 100644
--- a/man2/readlink.2
+++ b/man2/readlink.2
@@ -50,7 +50,7 @@ readlink, readlinkat \- read value of a symbolic link
 .PP
 .BI "ssize_t readlink(const char *" pathname ", char *" buf \
 ", size_t " bufsiz );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <unistd.h>
 .PP
diff --git a/man2/reboot.2 b/man2/reboot.2
index b192cb625..c3d9dee1b 100644
--- a/man2/reboot.2
+++ b/man2/reboot.2
@@ -37,7 +37,7 @@ reboot \- reboot or enable/disable Ctrl-Alt-Del
 .B #include <linux/reboot.h>
 .PP
 .BI "int reboot(int " magic ", int " magic2 ", int " cmd ", void *" arg );
-
+.PP
 /* Under glibc and most alternative libc's (including uclibc, dietlibc,
    musl and a few others), some of the constants involved have gotten
    symbolic names RB_*, and the library call is a 1-argument
diff --git a/man2/rename.2 b/man2/rename.2
index a475af616..cda50269d 100644
--- a/man2/rename.2
+++ b/man2/rename.2
@@ -38,7 +38,7 @@ rename, renameat, renameat2 \- change the name or location of a file
 .B #include <stdio.h>
 .PP
 .BI "int rename(const char *" oldpath ", const char *" newpath );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <stdio.h>
 .PP
diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
index 2e6116532..01cfdc0d9 100644
--- a/man2/set_thread_area.2
+++ b/man2/set_thread_area.2
@@ -12,7 +12,7 @@ get_thread_area, set_thread_area \- manipulate thread-local storage information
 .SH SYNOPSIS
 .nf
 .B #include <linux/unistd.h>
-
+.PP
 .B #if defined __i386__ || defined __x86_64__
 .B # include <asm/ldt.h>
 .PP
diff --git a/man2/stat.2 b/man2/stat.2
index 6b52e9cd0..f4bef98ab 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -48,7 +48,7 @@ stat, fstat, lstat, fstatat \- get file status
 .BI "int stat(const char *" pathname ", struct stat *" statbuf );
 .BI "int fstat(int " fd ", struct stat *" statbuf );
 .BI "int lstat(const char *" pathname ", struct stat *" statbuf );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <sys/stat.h>
 .PP
diff --git a/man2/symlink.2 b/man2/symlink.2
index 0c229f98d..ca71ddf42 100644
--- a/man2/symlink.2
+++ b/man2/symlink.2
@@ -38,7 +38,7 @@ symlink, symlinkat \- make a new name for a file
 .B #include <unistd.h>
 .PP
 .BI "int symlink(const char *" target ", const char *" linkpath );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <unistd.h>
 .PP
diff --git a/man2/unlink.2 b/man2/unlink.2
index b42153db6..7b148801e 100644
--- a/man2/unlink.2
+++ b/man2/unlink.2
@@ -38,7 +38,7 @@ unlink, unlinkat \- delete a name and possibly the file it refers to
 .B #include <unistd.h>
 .PP
 .BI "int unlink(const char *" pathname );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <unistd.h>
 .PP
diff --git a/man3/abs.3 b/man3/abs.3
index eb25650d7..d1b36461d 100644
--- a/man3/abs.3
+++ b/man3/abs.3
@@ -41,7 +41,7 @@ abs, labs, llabs, imaxabs \- compute the absolute value of an integer
 .BI "int abs(int " j );
 .BI "long labs(long " j );
 .BI "long long llabs(long long " j );
-
+.PP
 .B #include <inttypes.h>
 .PP
 .BI "intmax_t imaxabs(intmax_t " j );
diff --git a/man3/crypt.3 b/man3/crypt.3
index a24d8ffc2..9bcf718a4 100644
--- a/man3/crypt.3
+++ b/man3/crypt.3
@@ -42,7 +42,7 @@ crypt, crypt_r \- password and data encryption
 .B #include <unistd.h>
 .PP
 .BI "char *crypt(const char *" key ", const char *" salt );
-
+.PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <crypt.h>
 .PP
diff --git a/man3/encrypt.3 b/man3/encrypt.3
index b30560777..63912ca9b 100644
--- a/man3/encrypt.3
+++ b/man3/encrypt.3
@@ -36,12 +36,12 @@ encrypt, setkey, encrypt_r, setkey_r \- encrypt 64-bit messages
 .B #include <unistd.h>
 .PP
 .BI "void encrypt(char " block "[64], int " edflag );
-
+.PP
 .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"
 .B #include <stdlib.h>
 .PP
 .BI "void setkey(const char *" key );
-
+.PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B "#include <crypt.h>"
 .PP
diff --git a/man3/err.3 b/man3/err.3
index 39965b780..7a5056a1e 100644
--- a/man3/err.3
+++ b/man3/err.3
@@ -50,7 +50,7 @@ err, verr, errx, verrx, warn, vwarn, warnx, vwarnx \- formatted error messages
 .BI "void warn(const char *" fmt ", ...);"
 .PP
 .BI "void warnx(const char *" fmt ", ...);"
-
+.PP
 .B #include <stdarg.h>
 .PP
 .BI "void verr(int " eval ", const char *" fmt ", va_list " args );
diff --git a/man3/fpurge.3 b/man3/fpurge.3
index ef7abf097..308f77a75 100644
--- a/man3/fpurge.3
+++ b/man3/fpurge.3
@@ -31,7 +31,7 @@ fpurge, __fpurge \- purge a stream
 .B #include <stdio.h>
 .PP
 .BI "int fpurge(FILE *" stream );
-
+.PP
 /* supported */
 .B #include <stdio.h>
 .B #include <stdio_ext.h>
diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
index d54e72d2b..c0e7a51a0 100644
--- a/man3/gethostbyname.3
+++ b/man3/gethostbyname.3
@@ -49,7 +49,7 @@ gethostent_r \- get network host entry
 .B extern int h_errno;
 .PP
 .BI "struct hostent *gethostbyname(const char *" name );
-
+.PP
 .BR "#include <sys/socket.h>" "       /* for AF_INET */"
 .BI "struct hostent *gethostbyaddr(const void *" addr ,
 .BI "                              socklen_t " len ", int " type );
diff --git a/man3/getmntent.3 b/man3/getmntent.3
index 1be98e639..ca7c96924 100644
--- a/man3/getmntent.3
+++ b/man3/getmntent.3
@@ -47,7 +47,7 @@ getmntent_r \- get filesystem descriptor file entry
 .BI "int endmntent(FILE *" streamp );
 .PP
 .BI "char *hasmntopt(const struct mntent *" mnt ", const char *" opt );
-
+.PP
 /* GNU extension */
 .B #include <mntent.h>
 .PP
diff --git a/man3/getspnam.3 b/man3/getspnam.3
index f75730e53..b7e39f085 100644
--- a/man3/getspnam.3
+++ b/man3/getspnam.3
@@ -32,7 +32,7 @@ lckpwdf, ulckpwdf \- get shadow password file entry
 .B int lckpwdf(void);
 .PP
 .B int ulckpwdf(void);
-
+.PP
 /* GNU extension */
 .B #include <shadow.h>
 .PP
diff --git a/man3/getutent.3 b/man3/getutent.3
index ca61291f4..074f7e0d5 100644
--- a/man3/getutent.3
+++ b/man3/getutent.3
@@ -273,7 +273,7 @@ Glibc adds reentrant versions
 .PP
 .nf
 .B #include <utmp.h>
-
+.PP
 .BI "int getutent_r(struct utmp *" ubuf ", struct utmp **" ubufp );
 .BI "int getutid_r(struct utmp *" ut ,
 .BI "              struct utmp *" ubuf ", struct utmp **" ubufp );
diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
index c5c71f9b8..0eca2e149 100644
--- a/man3/inet_net_pton.3
+++ b/man3/inet_net_pton.3
@@ -31,7 +31,7 @@ inet_net_pton, inet_net_ntop \- Internet network number conversion
 .PP
 .BI "int inet_net_pton(int " af ", const char *" pres ,
 .BI "                  void *" netp ", size_t " nsize );
-
+.PP
 .BI "char *inet_net_ntop(int " af ", const void *" netp ", int " bits ,
 .BI "                    char *" pres ", size_t " psize );
 .fi
diff --git a/man3/mempcpy.3 b/man3/mempcpy.3
index 53558147f..fcf1d9759 100644
--- a/man3/mempcpy.3
+++ b/man3/mempcpy.3
@@ -16,7 +16,7 @@ mempcpy, wmempcpy  \- copy memory area
 .B #include <string.h>
 .PP
 .BI "void *mempcpy(void *" dest ", const void *" src ", size_t " n );
-
+.PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <wchar.h>
 .PP
diff --git a/man3/mkfifo.3 b/man3/mkfifo.3
index c64e80db8..d3a0bdbd8 100644
--- a/man3/mkfifo.3
+++ b/man3/mkfifo.3
@@ -34,7 +34,7 @@ mkfifo, mkfifoat \- make a FIFO special file (a named pipe)
 .B #include <sys/stat.h>
 .PP
 .BI "int mkfifo(const char *" pathname ", mode_t " mode );
-
+.PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <sys/stat.h>
 .PP
diff --git a/man3/open_memstream.3 b/man3/open_memstream.3
index 07892c688..c3af2f5a7 100644
--- a/man3/open_memstream.3
+++ b/man3/open_memstream.3
@@ -14,7 +14,7 @@ open_memstream, open_wmemstream \-  open a dynamic memory buffer stream
 .B #include <stdio.h>
 .PP
 .BI "FILE *open_memstream(char **" ptr ", size_t *" sizeloc );
-
+.PP
 .B #include <wchar.h>
 .PP
 .BI "FILE *open_wmemstream(wchar_t **" ptr ", size_t *" sizeloc );
diff --git a/man3/openpty.3 b/man3/openpty.3
index 9d3dcc236..ff37d50a9 100644
--- a/man3/openpty.3
+++ b/man3/openpty.3
@@ -45,7 +45,7 @@ openpty, login_tty, forkpty \- terminal utility functions
 .BI "pid_t forkpty(int *" amaster ", char *" name ,
 .BI "              const struct termios *" termp ,
 .BI "              const struct winsize *" winp );
-
+.PP
 .B #include <utmp.h>
 .PP
 .BI "int login_tty(int " fd );
diff --git a/man3/perror.3 b/man3/perror.3
index 276b8addb..05e274635 100644
--- a/man3/perror.3
+++ b/man3/perror.3
@@ -35,7 +35,7 @@ perror \- print a system error message
 .B #include <stdio.h>
 .PP
 .BI "void perror(const char *" s );
-
+.PP
 .B #include <errno.h>
 .PP
 .BI "const char * const " sys_errlist [];
diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
index 4249963d7..458a9cf71 100644
--- a/man3/posix_memalign.3
+++ b/man3/posix_memalign.3
@@ -36,7 +36,7 @@ posix_memalign, aligned_alloc, memalign, valloc, pvalloc \- allocate aligned mem
 .BI "int posix_memalign(void **" memptr ", size_t " alignment ", size_t " size );
 .BI "void *aligned_alloc(size_t " alignment ", size_t " size );
 .BI "void *valloc(size_t " size );
-
+.PP
 .B #include <malloc.h>
 .PP
 .BI "void *memalign(size_t " alignment ", size_t " size );
diff --git a/man3/printf.3 b/man3/printf.3
index 7dc563c0e..946a591a5 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -44,7 +44,7 @@ vsprintf, vsnprintf \- formatted output conversion
 .BI "int dprintf(int " fd ", const char *" format ", ...);"
 .BI "int sprintf(char *" str ", const char *" format ", ...);"
 .BI "int snprintf(char *" str ", size_t " size ", const char *" format ", ...);"
-
+.PP
 .B #include <stdarg.h>
 .PP
 .BI "int vprintf(const char *" format ", va_list " ap );
diff --git a/man3/rpc.3 b/man3/rpc.3
index 724de99bb..5845a25e8 100644
--- a/man3/rpc.3
+++ b/man3/rpc.3
@@ -26,7 +26,7 @@ Finally, the procedure call returns to the client.
 .PP
 To take use of these routines, include the header file
 .IR "<rpc/rpc.h>" .
-
+.PP
 The prototypes below make use of the following types:
 .PP
 .RS 4
diff --git a/man3/scandir.3 b/man3/scandir.3
index 292825340..5faf32b53 100644
--- a/man3/scandir.3
+++ b/man3/scandir.3
@@ -76,7 +76,7 @@ a directory for matching entries
 .BI "int alphasort(const struct dirent **" a ", const struct dirent **" b );
 .PP
 .BI "int versionsort(const struct dirent **" a ", const struct dirent **" b );
-
+.PP
 .BR "#include <fcntl.h>" "          /* Definition of AT_* constants */"
 .B #include <dirent.h>
 .PP
diff --git a/man3/scanf.3 b/man3/scanf.3
index 409813c4c..2a2001417 100644
--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -59,7 +59,7 @@ scanf, fscanf, sscanf, vscanf, vsscanf, vfscanf \- input format conversion
 .BI "int scanf(const char *" format ", ...);"
 .BI "int fscanf(FILE *" stream ", const char *" format ", ...);"
 .BI "int sscanf(const char *" str ", const char *" format ", ...);"
-
+.PP
 .B #include <stdarg.h>
 .PP
 .BI "int vscanf(const char *" format ", va_list " ap );
diff --git a/man3/strchr.3 b/man3/strchr.3
index 59fa00283..15c09f543 100644
--- a/man3/strchr.3
+++ b/man3/strchr.3
@@ -40,7 +40,7 @@ strchr, strrchr, strchrnul \- locate character in string
 .BI "char *strchr(const char *" s ", int " c );
 .PP
 .BI "char *strrchr(const char *" s ", int " c );
-
+.PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <string.h>
 .PP
diff --git a/man3/towupper.3 b/man3/towupper.3
index f8a07c9c4..6b5052bc0 100644
--- a/man3/towupper.3
+++ b/man3/towupper.3
@@ -1,4 +1,3 @@
-
 .\" and Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
diff --git a/man3/unlocked_stdio.3 b/man3/unlocked_stdio.3
index 01021d52d..8ceaf4c72 100644
--- a/man3/unlocked_stdio.3
+++ b/man3/unlocked_stdio.3
@@ -49,7 +49,7 @@ putchar_unlocked \- nonlocking stdio functions
 .PP
 .BI "char *fgets_unlocked(char *" s ", int " n ", FILE *" stream );
 .BI "int fputs_unlocked(const char *" s ", FILE *" stream );
-
+.PP
 .B #include <wchar.h>
 .PP
 .BI "wint_t getwc_unlocked(FILE *" stream );
diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 31be771dc..0d525d91f 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -568,7 +568,6 @@ Since Linux 5.0, the
 kernel boot option (described below) can be used to disable cgroup v1
 named hierarchies, by specifying
 .IR cgroup_no_v1=named .
-
 .\"
 .SH CGROUPS VERSION 2
 In cgroups v2,
diff --git a/man7/symlink.7 b/man7/symlink.7
index 55ee2d9a3..a2a34204b 100644
--- a/man7/symlink.7
+++ b/man7/symlink.7
@@ -127,8 +127,7 @@ user categories), and can't be changed.
 However, magic links do not follow this rule.
 They can have a non-0777 mode,
 though this mode is not currently used in any permission checks.
-
-.\"
+.\" .PP
 .\" The
 .\" 4.4BSD
 .\" system differs from historical
diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
index 86acc6759..3291ba006 100644
--- a/man7/time_namespaces.7
+++ b/man7/time_namespaces.7
@@ -326,7 +326,6 @@ and
 .I /proc/[pid]/ns/time_for_children
 symbolic links, we see that the shell is a member of the initial time
 namespace, but its children are created in the new namespace.
-
 .PP
 .in +4n
 .EX
-- 
2.29.2

