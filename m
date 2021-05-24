Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 638B538E24A
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 10:29:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232311AbhEXIar (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 04:30:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232279AbhEXIar (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 04:30:47 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BB1AC061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:29:18 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id y184-20020a1ce1c10000b02901769b409001so10540184wmg.3
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fzJPautmq4LFK4+f5say0mbTt7qAwg80wRIscQKThAY=;
        b=qyJSZKHdxgpNUpLQQLaVSZRQCahxaCjcTh+g2p5Y/v3v41x4plX/YNrl2/nBWsmR1L
         QF9dU7fs1RxSOnFkCn6ht3S3iE8DJt2IMu/EMlYxukkFUCbkDDfNinjJsqoIsKQ53f7M
         GgDbt1alj4IJP868ORbGVhVL0nw7Ug/vDS88JVu5vUiayKBTo8u5lF5RY0zgUps0DX6K
         tvkumSXzCVfFFoMPAmSYFFlAIugBcDw5qgypxVElOaVQSEVdnAD+roCcwMbXzbXTm2sL
         xl5W7uui25pi6rzeV5xuGPct6jF04Kaz8hElwwzjI5YeXiD0MXXCvuhxZSnH/C0MkbHs
         sEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fzJPautmq4LFK4+f5say0mbTt7qAwg80wRIscQKThAY=;
        b=b9cVLaRuycMOk13j3NDhB8XLfp26w6+ue2HcKIpjdhGzn1UxcCc42+lAsR7gCyWYSz
         gOp/MAZe/GXYa2kKSktqMCo3X28DyfEBOV8qMHVrMimizrYriWjnyI8Fc1xR/aMjOumF
         WQ8HVBpoLQn7dwOZ2W3qW3SCHfHpJf/v2FvrlvSJArqm7EO+C/Ah0JY6c3bObNBA+T8x
         ts9A5OwLqI9lQzSkquGEUGNj+RYCa0iAXiFRnQOE9JEEuDzeT7D41k290aPMhDexcXCI
         vplQg6Z3lwr1LjMkUpQlvnIwwiDsBK0j/EIlObPnNwUpm8gq89Td7czds/5Hyln/AYam
         xFTA==
X-Gm-Message-State: AOAM531c8XdNbmoOSud1MpU79n4VYdrpSmtgM1jUPulcnzZYvxRMUXuL
        Y1bhPBNloC0JM9BEv0oQCeI=
X-Google-Smtp-Source: ABdhPJxoSQamlpE835t54KmncqIAutj43kcr6Q4ZvSIESd04wbnduo/XvdEptb5WrSWVtL1eoVqXww==
X-Received: by 2002:a1c:9843:: with SMTP id a64mr2113209wme.170.1621844957003;
        Mon, 24 May 2021 01:29:17 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id v16sm7209653wml.6.2021.05.24.01.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 01:29:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/3] stat.2, system_data_types.7: Document 'struct stat' in system_data_types(7)
Date:   Mon, 24 May 2021 10:28:09 +0200
Message-Id: <20210524082810.374535-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
References: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Move the definition of the struct present in stat(2), and put
there a reference to stat-struct(3) instead.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/stat.2              | 143 +--------------------------------------
 man7/system_data_types.7 | 143 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 146 insertions(+), 140 deletions(-)

diff --git a/man2/stat.2 b/man2/stat.2
index d356ce15a..98424eb79 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -117,47 +117,8 @@ is specified by the file descriptor
 .SS The stat structure
 All of these system calls return a
 .I stat
-structure, which contains the following fields:
-.PP
-.in +4n
-.EX
-struct stat {
-    dev_t     st_dev;         /* ID of device containing file */
-    ino_t     st_ino;         /* Inode number */
-    mode_t    st_mode;        /* File type and mode */
-    nlink_t   st_nlink;       /* Number of hard links */
-    uid_t     st_uid;         /* User ID of owner */
-    gid_t     st_gid;         /* Group ID of owner */
-    dev_t     st_rdev;        /* Device ID (if special file) */
-    off_t     st_size;        /* Total size, in bytes */
-    blksize_t st_blksize;     /* Block size for filesystem I/O */
-    blkcnt_t  st_blocks;      /* Number of 512B blocks allocated */
-
-    /* Since Linux 2.6, the kernel supports nanosecond
-       precision for the following timestamp fields.
-       For the details before Linux 2.6, see NOTES. */
-
-    struct timespec st_atim;  /* Time of last access */
-    struct timespec st_mtim;  /* Time of last modification */
-    struct timespec st_ctim;  /* Time of last status change */
-
-#define st_atime st_atim.tv_sec      /* Backward compatibility */
-#define st_mtime st_mtim.tv_sec
-#define st_ctime st_ctim.tv_sec
-};
-.EE
-.in
-.PP
-.IR Note :
-the order of fields in the
-.I stat
-structure varies somewhat
-across architectures.
-In addition,
-the definition above does not show the padding bytes
-that may be present between some fields on various architectures.
-Consult the glibc and kernel source code
-if you need to know the details.
+structure (see
+.BR stat-struct (3)).
 .PP
 .\" Background: inode attributes are modified with i_mutex held, but
 .\" read by stat() without taking the mutex.
@@ -183,69 +144,6 @@ or the old
 .I st_uid
 together with the new
 .IR st_mode .
-.PP
-The fields in the
-.I stat
-structure are as follows:
-.TP
-.I st_dev
-This field describes the device on which this file resides.
-(The
-.BR major (3)
-and
-.BR minor (3)
-macros may be useful to decompose the device ID in this field.)
-.TP
-.I st_ino
-This field contains the file's inode number.
-.TP
-.I st_mode
-This field contains the file type and mode.
-See
-.BR inode (7)
-for further information.
-.TP
-.I st_nlink
-This field contains the number of hard links to the file.
-.TP
-.I st_uid
-This field contains the user ID of the owner of the file.
-.TP
-.I st_gid
-This field contains the ID of the group owner of the file.
-.TP
-.I st_rdev
-This field describes the device that this file (inode) represents.
-.TP
-.I st_size
-This field gives the size of the file (if it is a regular
-file or a symbolic link) in bytes.
-The size of a symbolic link is the length of the pathname
-it contains, without a terminating null byte.
-.TP
-.I st_blksize
-This field gives the "preferred" block size for efficient filesystem I/O.
-.TP
-.I st_blocks
-This field indicates the number of blocks allocated to the file,
-in 512-byte units.
-(This may be smaller than
-.IR st_size /512
-when the file has holes.)
-.TP
-.I st_atime
-This is the time of the last access of file data.
-.TP
-.I st_mtime
-This is the time of last modification of file data.
-.TP
-.I st_ctime
-This is the file's last status change timestamp
-(time of last change to the inode).
-.PP
-For further information on the above fields, see
-.BR inode (7).
-.\"
 .SS fstatat()
 The
 .BR fstatat ()
@@ -491,42 +389,6 @@ fields may be less portable.
 The interpretation differs between systems,
 and possibly on a single system when NFS mounts are involved.)
 .SH NOTES
-.SS Timestamp fields
-Older kernels and older standards did not support nanosecond timestamp
-fields.
-Instead, there were three timestamp
-.RI fields\(em st_atime ,
-.IR st_mtime ,
-and
-.IR st_ctime \(emtyped
-as
-.IR time_t
-that recorded timestamps with one-second precision.
-.PP
-Since kernel 2.5.48, the
-.I stat
-structure supports nanosecond resolution for the three file timestamp fields.
-The nanosecond components of each timestamp are available
-via names of the form
-.IR st_atim.tv_nsec ,
-if suitable feature test macros are defined.
-Nanosecond timestamps were standardized in POSIX.1-2008,
-and, starting with version 2.12,
-glibc exposes the nanosecond component names if
-.BR _POSIX_C_SOURCE
-is defined with the value 200809L or greater, or
-.BR _XOPEN_SOURCE
-is defined with the value 700 or greater.
-Up to and including glibc 2.19,
-the definitions of the nanoseconds components are also defined if
-.B _BSD_SOURCE
-or
-.B _SVID_SOURCE
-is defined.
-If none of the aforementioned macros are defined,
-then the nanosecond values are exposed with names of the form
-.IR st_atimensec .
-.\"
 .SS C library/kernel differences
 Over time, increases in the size of the
 .I stat
@@ -707,6 +569,7 @@ main(int argc, char *argv[])
 .BR readlink (2),
 .BR statx (2),
 .BR utime (2),
+.BR stat-struct (3),
 .BR capabilities (7),
 .BR inode (7),
 .BR symlink (7)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 6f6f8a095..64e25fa56 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1433,6 +1433,149 @@ and
 .I size_t
 types in this page.
 .RE
+.\"------------------------------------- stat -------------------------/
+.TP
+.I stat
+.RS
+.IR Include :
+.IR <sys/stat.h> .
+Alternatively,
+.IR <ftw.h> .
+.PP
+.EX
+struct stat {
+    dev_t     st_dev;     /* ID of device containing file */
+    ino_t     st_ino;     /* Inode number */
+    mode_t    st_mode:    /* File type and mode */
+    nlink_t   st_nlink;   /* Number of hard links */
+    uid_t     st_uid;     /* User ID of owner */
+    gid_t     st_gid;     /* Group ID of owner */
+    dev_t     st_rdev;    /* Device ID (if special file) */
+    off_t     st_size;    /* Total size, in bytes */
+    blksize_t st_blksize; /* Block size for filesystem I/O */
+    blkcnt_t  st_blocks;  /* Number of 512 B blocks allocated */
+
+    /* Since POSIX.1-2008, this structure supports nanosecond
+       precision for the following timestamp fields.
+       For the details before POSIX.1-2008, see Notes. */
+
+    struct timespec st_atim;  /* Time of last access */
+    struct timespec st_mtim;  /* Time of last modification */
+    struct timespec st_ctim;  /* Time of last status change */
+
+#define st_atime st_atim.tv_sec  /* Backward compatibility */
+#define st_mtine st_mtim.tv_sec
+#define st_ctime st_ctim.tv_sec
+};
+.EE
+.PP
+Describes information about a file.
+.PP
+The fields are as follows:
+.TP
+.I st_dev
+This field describes the device on which this file resides.
+(The
+.BR major (3)
+and
+.BR minor (3)
+macros may be useful to decompose the device ID in this field.)
+.TP
+.I st_ino
+This field contains the file's inode number.
+.TP
+.I st_mode
+This field contains the file type and mode.
+See
+.BR inode (7)
+for further information.
+.TP
+.I st_nlink
+This field contains the number of hard links to the file.
+.TP
+.I st_uid
+This field contains the user ID of the owner of the file.
+.TP
+.I st_gid
+This field contains the ID of the group owner of the file.
+.TP
+.I st_rdev
+This field describes the device that this file (inode) represents.
+.TP
+.I st_size
+This field gives the size of the file (if it is a regular
+file or a symbolic link) in bytes.
+The size of a symbolic link is the length of the pathname
+it contains, without a terminating null byte.
+.TP
+.I st_blksize
+This field gives the "preferred" block size for efficient filesystem I/O.
+.TP
+.I st_blocks
+This field indicates the number of blocks allocated to the file,
+in 512-byte units.
+(This may be smaller than
+.IR st_size /512
+when the file has holes.)
+.TP
+.I st_atime
+This is the time of the last access of file data.
+.TP
+.I st_mtime
+This is the time of last modification of file data.
+.TP
+.I st_ctime
+This is the file's last status change timestamp
+(time of last change to the inode).
+.PP
+For further information on the above fields, see
+.BR inode (7).
+.\"
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later (see Notes).
+.PP
+.IR Notes :
+Old kernels and old standards did not support nanosecond timestamp fields.
+Instead, there were three timestamp
+.RI fields\(em st_atime ,
+.IR st_mtime ,
+and
+.IR st_ctime \(emtyped
+as
+.IR time_t
+that recorded timestamps with one-second precision.
+.PP
+Since Linux 2.5.48, the
+.I stat
+structure supports nanosecond resolution for the three file timestamp fields.
+The nanosecond components of each timestamp are available
+via names of the form
+.IR st_atim.tv_nsec ,
+if suitable test macros are defined.
+Nanosecond timestamps were standardized in POSIX.1-2008,
+and, starting with version 2.12,
+glibc exposes the nanosecond component names if
+.BR _POSIX_C_SOURCE
+is defined with the value 200809L or greater, or
+.BR _XOPEN_SOURCE
+is defined with the value 700 or greater.
+Up to and including glibc 2.19,
+the definitions of the nanoseconds components are also defined if
+.B _BSD_SOURCE
+or
+.B _SVID_SOURCE
+is defined.
+If none of the aforementioned macros are defined,
+then the nanosecond values are exposed with names of the form
+.IR st_atimensec .
+.PP
+.IR "See also" :
+.BR accept (2),
+.BR getpeername (2),
+.BR getsockname (2),
+.BR socket (2)
+.RE
 .\"------------------------------------- suseconds_t ------------------/
 .TP
 .I suseconds_t
-- 
2.31.1

