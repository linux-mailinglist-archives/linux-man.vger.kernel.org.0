Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF52C275AD9
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 16:56:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726184AbgIWO4l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 10:56:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726156AbgIWO4l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 10:56:41 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E2D5C0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 07:56:41 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id e16so390626wrm.2
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 07:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K/j3NSDohnXnUi68SbkZlQssB3+u2XUBi5qGzYfUQs4=;
        b=i3GlD0rygW+bXjJbaYOYpdXv3Y7F5LvOrJ6La6162DTNDoPyHO8L45yPe7QcA96l4k
         vgET56gBnkXEgTm3yzhwiNZuRxv/p8vTztw0w5NXsYStOrtvOxVxDcKW4k/Z9+WW3urd
         WI2SpaQhw9UREvW0frmXqRQ9eU/7WMVGbd+p6CvijgHWj/5BUYSGMgiU+77rKOyTHMzH
         guqFPHS/Jeq/GP5nm5EyKe134YxEN1Cg1/COmOxtSk0L+HOBqR01fopJtGURHrdzt7vq
         zhkJ9ybecrWn9mExdqYELD5fZs3a3LXQfB/cn6aMgmDOO4/MrokGhwViioHzx5hIgEzg
         8GSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K/j3NSDohnXnUi68SbkZlQssB3+u2XUBi5qGzYfUQs4=;
        b=P1swETZDcbHoqftG0/grAUvzH/C7QJjTZinddwHqm0YpymolzqM6wYDj/i0i12TRQL
         LXn2l5ymlzm1X8mIrkC0LW7OT2QL7qS8JBfCBC75wqcHnc6U+Z4E6FF0jS76rwLEX43F
         eHgW5wTBTkZ4MN7zzSdV/LGnWCWXLEQF7CKzixlYbEjfLZA0GVkMX8z8nY6+VLSxh0aC
         CDGORqCu0v5F/o4eR4KkqyarGPqMifdhJc5aiz+QIIUXwILN0w8j3UVZ3TQahGs9W2nC
         cpT8s1GTTSjqOK2sQ6hRDxRB92VE5GXs5ZVSr2sY74VRVx09StuM5CMgXaDZVIultoMB
         spxg==
X-Gm-Message-State: AOAM5306qlh3c14RBZ3xZE73LGRughKmWEMocn1xZTgUpakNFC3bXkhx
        6nUyVUFbN5ondKHYCrjGeLGm8zyh8TEgfA==
X-Google-Smtp-Source: ABdhPJxCDk5XxFGxjMnDm12bP7XzAs0UrdSiFmSaNWbTrVlDeWtezmwTTyJXL9CZLpoT6qAf7UFBzg==
X-Received: by 2002:a5d:460c:: with SMTP id t12mr3982wrq.225.1600873000195;
        Wed, 23 Sep 2020 07:56:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m18sm42139wmg.32.2020.09.23.07.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2020 07:56:39 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Konstantin Bukin <kbukin@gmail.com>
Subject: [PATCH] ioctl_ns.2, stat.2: Fix signedness of printf specifiers
Date:   Wed, 23 Sep 2020 16:54:26 +0200
Message-Id: <20200923145425.41073-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These variables are either of an unsigned integer type per POSIX;
or of an integer type per POSIX, that Linux defines as an unsigned integer type.

Print them with 'uintmax_t' instead of 'intmax_t' to avoid
big positive numbers being printed as negative numbers.

Bug report:
From: Konstantin Bukin @ 2020-09-13 15:04 UTC
  To: mtk.manpages; +Cc: Konstantin Bukin, linux-man

inode numbers are expected to be positive. Casting them to a signed type
may result in printing negative values. E.g. running example program on
the following file:

$ ls -li test.txt
9280843260537405888 -r--r--r-- 1 kbukin hardware 300 Jul 21 06:36 test.txt

resutls in the following output:

$ ./example test.txt
ID of containing device:  [0,480]
File type:                regular file
I-node number:            -9165900813172145728
Mode:                     100444 (octal)
Link count:               1
Ownership:                UID=2743   GID=30
Preferred I/O block size: 32768 bytes
File size:                300 bytes
Blocks allocated:         8
Last status change:       Tue Jul 21 06:36:50 2020
Last file access:         Sat Sep 12 14:13:38 2020
Last file modification:   Tue Jul 21 06:36:50 2020

Such erroneous reporting happens for inode values greater than maximum
value which can be stored in signed long. Casting does not seem to be
necessary here. Printing inode as unsigned long fixes the issue.

Reported-by: Konstantin Bukin <kbukin@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I wrote a patch similar to Konstantin's patch,
but using `uintmax_t` as we discussed.
I further fixed a few more cases of incorrect casts.
I found all of those related to `struct stat`'s members,
but there may be more incorrect casts out there.

Cheers,

Alex

 man2/ioctl_ns.2 | 8 ++++----
 man2/stat.2     | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
index b83db74e0..87b5168a7 100644
--- a/man2/ioctl_ns.2
+++ b/man2/ioctl_ns.2
@@ -317,10 +317,10 @@ main(int argc, char *argv[])
             exit(EXIT_FAILURE);
         }
         printf("Device/Inode of owning user namespace is: "
-                "[%jx,%jx] / %jd\en",
+                "[%jx,%jx] / %ju\en",
                 (uintmax_t) major(sb.st_dev),
                 (uintmax_t) minor(sb.st_dev),
-                (intmax_t) sb.st_ino);
+                (uintmax_t) sb.st_ino);
 
         close(userns_fd);
     }
@@ -347,10 +347,10 @@ main(int argc, char *argv[])
             perror("fstat\-parentns");
             exit(EXIT_FAILURE);
         }
-        printf("Device/Inode of parent namespace is: [%jx,%jx] / %jd\en",
+        printf("Device/Inode of parent namespace is: [%jx,%jx] / %ju\en",
                 (uintmax_t) major(sb.st_dev),
                 (uintmax_t) minor(sb.st_dev),
-                (intmax_t) sb.st_ino);
+                (uintmax_t) sb.st_ino);
 
         close(parent_fd);
     }
diff --git a/man2/stat.2 b/man2/stat.2
index f71cc3831..13a1f37f7 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -682,14 +682,14 @@ main(int argc, char *argv[])
     default:       printf("unknown?\en");                break;
     }
 
-    printf("I\-node number:            %jd\en", (intmax_t) sb.st_ino);
+    printf("I\-node number:            %ju\en", (uintmax_t) sb.st_ino);
 
     printf("Mode:                     %jo (octal)\en",
             (uintmax_t) sb.st_mode);
 
-    printf("Link count:               %jd\en", (intmax_t) sb.st_nlink);
-    printf("Ownership:                UID=%jd   GID=%jd\en",
-            (intmax_t) sb.st_uid, (intmax_t) sb.st_gid);
+    printf("Link count:               %ju\en", (uintmax_t) sb.st_nlink);
+    printf("Ownership:                UID=%ju   GID=%ju\en",
+            (uintmax_t) sb.st_uid, (uintmax_t) sb.st_gid);
 
     printf("Preferred I/O block size: %jd bytes\en",
             (intmax_t) sb.st_blksize);
-- 
2.28.0

