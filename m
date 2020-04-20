Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5B6B1B14EB
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:43:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726947AbgDTSnO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:43:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbgDTSnN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:43:13 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0272DC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:13 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k13so12286323wrw.7
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5WQIi1ze2bsxe6s3KlsKIewn9mtku6WXsxENVhpcTks=;
        b=dcu+YxgcPKvwjBz5+BdAQL0zFQGbTfQ+S/aJiX6Ww9OUDlJY2Wb45T+0cipAoW45y2
         /KLSxidZY4eOOLU8om0v5l7Yvk5O9A0lm0NIHpD8vI5BT1rphu0H2MhU5koPAcy65JJB
         LgyqWJYxVJpiNR5cncX+vZx+7cYnPsbO54a4U5Wwk+1LpDl8hLMr6z6k/BBF0h8Ry12O
         rIvaHlMPEYAcHQqVJh1gYC6xWzdWLOoovKrpgE8leXQXNUv71jB4ooNUQu8dbP01Ai3M
         IjLKU1Zye7d0IwiQ39PvV1zRGk5Pq6vQ3LPe+Tx/USaQjWzVIUt+kHw2cNM9LJ4u0r7U
         tpjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5WQIi1ze2bsxe6s3KlsKIewn9mtku6WXsxENVhpcTks=;
        b=j52ViAonDI4uvRGCSStUHmGSI7mWrny/IspqXpBPvQrDPWSDQVKohAMJr44H1d/xHU
         bP3y1PjzYT/EcNCVZldcfxwfwfZcmO3WZQEmLVbDMMXsCyb6ODomAL4Q4LWPOWhKHGvX
         6y07Rt8OIhxKsw/oDy78Iq3pUS194o0SiVK8MsMHG2TYdUN5JjusHSwt1P96Hb5tPdoO
         oKkHZ1YNzTCIVc5gIBoocPO1x6erMWoc40aIHjBzBDE7pD7Fm1Zhlxmdu18d1eIiIGH2
         hjmxvmM5IYA/HPAKUhhkAkKTyh3mSU3QgOAmZAAsWXtfkNrWRpwkxrE5fnoY6aajt0ik
         apZQ==
X-Gm-Message-State: AGi0Pua2jzuJQJNAWHLKwU0fhUVtwjq/U0TWeBAXc+liimjFj4QzfwpQ
        BHdIahvRFP+fKl4A3/zG54o=
X-Google-Smtp-Source: APiQypI3nsQzhl1s+6lwvmUSWe4SaT/Oi2XygsROzEonNzlBqszffm4siClxo6kWbFRJkHfvAm8Msw==
X-Received: by 2002:a5d:6188:: with SMTP id j8mr11712277wru.119.1587408191747;
        Mon, 20 Apr 2020 11:43:11 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id n9sm438873wrx.61.2020.04.20.11.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 11:43:11 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/4] fanotify.7: Fix fanotify_fid.c example
Date:   Mon, 20 Apr 2020 21:42:58 +0300
Message-Id: <20200420184259.29406-4-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420184259.29406-1-amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- The condition for printing "subdirectory created" was always true.
- The arguments and error check of open_by_handle_at() were incorrect.
- Fix example description inconsistencies.
- Nicer indentation of example output.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
Reviewed-by: Jan Kara <jack@suse.cz>
---
 man7/fanotify.7 | 38 ++++++++++++++++++++++----------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index eaf2acf25..72e7e4fb9 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -938,21 +938,20 @@ This is followed by the creation of a regular file,
 .IR /home/user/testfile.txt .
 This results in a
 .B FAN_CREATE
-event being created and reported against the file's parent watched
+event being generated and reported against the file's parent watched
 directory object.
 Program execution ends once all events captured within the buffer have
 been processed.
-Program execution ends once all events captured within the buffer are
-processed.
 .PP
 .in +4n
 .EX
 # \fB./fanotify_fid /home/user\fP
 Listening for events.
-FAN_CREATE (file created): Directory /home/user has been modified.
+FAN_CREATE (file created):
+        Directory /home/user has been modified.
 All events processed successfully. Program exiting.
 
-$ \fBtouch /home/user/testing\fP              # In another terminal
+$ \fBtouch /home/user/testfile.txt\fP              # In another terminal
 .EE
 .in
 .PP
@@ -960,11 +959,11 @@ The second session shows a mark being placed on
 .IR /home/user .
 This is followed by the creation of a directory,
 .IR /home/user/testdir .
-This specific action results in the program producing a
+This specific action results in a
 .B FAN_CREATE
-and
+event being generated and is reported with the
 .B FAN_ONDIR
-event.
+flag set.
 .PP
 .in +4n
 .EX
@@ -974,7 +973,7 @@ FAN_CREATE | FAN_ONDIR (subdirectory created):
         Directory /home/user has been modified.
 All events processed successfully. Program exiting.
 
-$ \fBmkdir \-p /home/user/testing\fP          # In another terminal
+$ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
 .EE
 .in
 .SS Program source: fanotify_fid.c
@@ -996,7 +995,7 @@ $ \fBmkdir \-p /home/user/testing\fP          # In another terminal
 int
 main(int argc, char **argv)
 {
-    int fd, ret, event_fd;
+    int fd, ret, event_fd, mount_fd;
     ssize_t len, path_len;
     char path[PATH_MAX];
     char procfd_path[PATH_MAX];
@@ -1010,6 +1009,13 @@ main(int argc, char **argv)
         exit(EXIT_FAILURE);
     }
 
+    mount_fd = open(argv[1], O_DIRECTORY | O_RDONLY);
+    if (mount_fd == \-1) {
+        perror(argv[1]);
+        exit(EXIT_FAILURE);
+    }
+
+
     /* Create an fanotify file descriptor with FAN_REPORT_FID as a flag
        so that program can receive fid events. */
 
@@ -1055,10 +1061,10 @@ main(int argc, char **argv)
         }
 
         if (metadata\->mask == FAN_CREATE)
-            printf("FAN_CREATE (file created):");
+            printf("FAN_CREATE (file created):\en");
 
-        if (metadata\->mask == FAN_CREATE | FAN_ONDIR)
-            printf("FAN_CREATE | FAN_ONDIR (subdirectory created):");
+        if (metadata\->mask == (FAN_CREATE | FAN_ONDIR))
+            printf("FAN_CREATE | FAN_ONDIR (subdirectory created):\en");
 
         /* metadata\->fd is set to FAN_NOFD when FAN_REPORT_FID is enabled.
            To obtain a file descriptor for the file object corresponding to
@@ -1068,8 +1074,8 @@ main(int argc, char **argv)
            to accommodate for the situation where the file handle for the
            object was deleted prior to this system call. */
 
-        event_fd = open_by_handle_at(AT_FDCWD, file_handle, O_RDONLY);
-        if (ret == \-1) {
+        event_fd = open_by_handle_at(mount_fd, file_handle, O_RDONLY);
+        if (event_fd == \-1) {
             if (errno == ESTALE) {
                 printf("File handle is no longer valid. "
                         "File has been deleted\en");
@@ -1077,7 +1083,7 @@ main(int argc, char **argv)
             } else {
                 perror("open_by_handle_at");
                 exit(EXIT_FAILURE);
-	    }
+            }
         }
 
         snprintf(procfd_path, sizeof(procfd_path), "/proc/self/fd/%d",
-- 
2.17.1

