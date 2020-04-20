Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D13931B14EE
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:43:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727828AbgDTSnP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:43:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726392AbgDTSnO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:43:14 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9634DC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:14 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j1so8059624wrt.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pexAltMPHGHi6IyLQRBWswJT+AlCyZTqhOnMCQHU4/A=;
        b=OqYrzHR5a3rdQGI2kUnVhiEiHj9h9JgDdjjbHRUTdToggrZhOtjVuwb99tSeVR7bWE
         n1qDwFMofC7ghjJF5U9Uxb1dWvVJ9ciGFBhRBPeU0jlHLhcXKfIBSPL1JSFap0WKSf7Q
         Pz31QfCbDVl8HTchK1PqYEHAOrapdwgbIpZWd/VOfrKVnASq1BAgCnGG5t44w2gBrCpS
         lwDE++HWCUG4LG2Rgq+jwq49DAMnqh7RKhbk8lCtvERPjh6d/Sz/uxuw/AqH2qyEyOUy
         46QdDSaFSLMbyAM/cb9fpouay5PXot+VnjvQ8dqt+kBcwDl7HpeOgCVJ/CPz9zZ2bnHb
         +mHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pexAltMPHGHi6IyLQRBWswJT+AlCyZTqhOnMCQHU4/A=;
        b=j1Qllr7DbdWQ/vc7en1f90Wnzc2v9F5PfAoLzGmOHXCA11lleGs4l82b0sJownFzXV
         QrMXkMS+GL63Ux+SiUQSoar2l9qNqxXOtIOZiXMSBiAmp0RRXr8TuQ/Lse4+86OYMOKJ
         zOdMsYzCSKaYFyUBkMB+xWSAElgrJ1OAGO+WtF4IBnfE+bGEHHUW3e/0Uk3t5dOqm2xi
         e2dYp9tSwBICw7YjN+tMLbhhd3GdnWRwwocbxoPW6MJCdNcHTdzo457vcbSStIMT/Ms7
         9wdVkZIntwTev26eUJ3cDB6ouPPRH39wGnS/PMgyUCYPupbH3jQJDgXWg+7ehg+Nj4XT
         dL6g==
X-Gm-Message-State: AGi0PubKBZI+jODfdjCRTliw0BXSdCnYntiIrC4hoXjnjdd/7vmX6mf0
        h6XuuyNF1KVVOccn69xztgw=
X-Google-Smtp-Source: APiQypKiDYQGfwGCKjNk2WHgiySFGuvw3wWQBvLxUS2eh97Gyk6tTQXV3Fio4hDA69qN207WRUCIjg==
X-Received: by 2002:a5d:68ca:: with SMTP id p10mr20275946wrw.154.1587408193136;
        Mon, 20 Apr 2020 11:43:13 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id n9sm438873wrx.61.2020.04.20.11.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 11:43:12 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 4/4] fanotify.7, fanotify_mark.2: Document FAN_DIR_MODIFY
Date:   Mon, 20 Apr 2020 21:42:59 +0300
Message-Id: <20200420184259.29406-5-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420184259.29406-1-amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document the details of the new FAN_DIR_MODIFY event, which introduces
entry name information to the fanotify event reporting format.

Enhance the fanotify_fid.c example to also report this event.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
Reviewed-by: Jan Kara <jack@suse.cz>
---
 man2/fanotify_mark.2 | 33 ++++++++++++++++++++
 man7/fanotify.7      | 71 +++++++++++++++++++++++++++++++++++++-------
 2 files changed, 94 insertions(+), 10 deletions(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 7fbcd5e36..e94d8a7e1 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -244,6 +244,38 @@ An fanotify file descriptor created with
 .B FAN_REPORT_FID
 is required.
 .TP
+.BR FAN_DIR_MODIFY " (since Linux 5.7)"
+.\" commit 44d705b0370b1d581f46ff23e5d33e8b5ff8ec58
+Create an event when one of the entries in a marked directory has been created,
+deleted or moved.
+This event will encapsulate additional information about the name of the
+modified directory entry.
+It is intended for applications that want to monitor the content of a large
+directory without having to reiterate the directory each time it is modified.
+The directory entry name will follow the directory file handle information in
+the reported event.
+See
+.BR fanotify (7)
+for additional details about the reported event format.
+The
+.BR FAN_DIR_MODIFY
+event will be generated in addition to the events
+.BR FAN_CREATE ,
+.BR FAN_DELETE ,
+.BR FAN_MOVED_FROM ,
+.BR FAN_MOVED_TO
+and will never be merged with the aforementioned events.
+An application receiving this event must not assume that the reported entry name
+exists in the marked directory at the time the event is received and should call
+.BR fstatat (2)
+with the entry name to learn about the current content of the directory entry.
+See
+.BR fanotify (7)
+for an example of its usage.
+An fanotify file descriptor created with
+.BR FAN_REPORT_FID
+is required.
+.TP
 .B FAN_Q_OVERFLOW
 Create an event when an overflow of the event queue occurs.
 The size of the event queue is limited to 16384 entries if
@@ -315,6 +347,7 @@ The flag has no effect when marking mounts and filesystems.
 Note that events are not generated for children of the subdirectories
 of marked directories.
 More specifically, the directory entry modification events
+.BR FAN_DIR_MODIFY ,
 .BR FAN_CREATE ,
 .BR FAN_DELETE ,
 .BR FAN_MOVED_FROM
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 72e7e4fb9..cd258abf4 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -324,6 +324,9 @@ A watched file or directory was moved.
 .B FAN_MODIFY
 A file was modified.
 .TP
+.B FAN_DIR_MODIFY
+A directory entry was created, deleted or moved.
+.TP
 .B FAN_CLOSE_WRITE
 A file that was opened for writing
 .RB ( O_WRONLY
@@ -395,9 +398,11 @@ For example, when an fanotify file descriptor is created using
 the
 .I info_type
 field of this header is set to
-.BR FAN_EVENT_INFO_TYPE_FID .
-Event listeners can use this field to check that the additional
-information received for an event is of the correct type.
+.BR FAN_EVENT_INFO_TYPE_FID
+or
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
+Event listeners can use this field to check what additional information
+is received for an event.
 Additionally, the
 .I fanotify_event_info_header
 also contains a
@@ -443,6 +448,14 @@ and
 will carry the
 .IR file_handle
 information for the child object if the child object is being watched.
+For the event
+.BR FAN_DIR_MODIFY ,
+the
+.I info_type
+field of this header is set to
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
+The file handle describes the modified directory and a null terminated
+name of the modified entry follows directly after the file handle buffer.
 .PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
@@ -627,9 +640,11 @@ events for the monitored directory itself.
 Fanotify monitoring of directories is not recursive:
 to monitor subdirectories under a directory,
 additional marks must be created.
-(But note that the fanotify API provides no way of detecting when a
-subdirectory has been created under a marked directory,
-which makes recursive monitoring difficult.)
+The
+.B FAN_DIR_MODIFY
+event can be used for detecting when a subdirectory has been created under
+a marked directory.
+An additional mark must then be set on the newly created subdirectory.
 Monitoring mounts offers the capability to monitor a whole directory tree.
 Monitoring filesystems offers the capability to monitor changes made from
 any mount of a filesystem instance.
@@ -923,6 +938,8 @@ The program marks the filesystem object that is passed as
 a command-line argument
 and waits until an event of type
 .B FAN_CREATE
+or
+.B FAN_DIR_MODIFY
 has occurred.
 The event mask indicates which type of filesystem object\(emeither
 a file or a directory\(emwas created.
@@ -939,7 +956,9 @@ This is followed by the creation of a regular file,
 This results in a
 .B FAN_CREATE
 event being generated and reported against the file's parent watched
-directory object.
+directory object and a
+.B FAN_DIR_MODIFY
+event being generated and reported with the created file name.
 Program execution ends once all events captured within the buffer have
 been processed.
 .PP
@@ -949,6 +968,9 @@ been processed.
 Listening for events.
 FAN_CREATE (file created):
         Directory /home/user has been modified.
+FAN_DIR_MODIFY (entry changed):
+        Directory /home/user has been modified.
+        Entry 'testfile.txt' is not a subdirectory.
 All events processed successfully. Program exiting.
 
 $ \fBtouch /home/user/testfile.txt\fP              # In another terminal
@@ -963,7 +985,9 @@ This specific action results in a
 .B FAN_CREATE
 event being generated and is reported with the
 .B FAN_ONDIR
-flag set.
+flag set and a
+.B FAN_DIR_MODIFY
+event being generated and reported with the created directory name.
 .PP
 .in +4n
 .EX
@@ -971,6 +995,9 @@ flag set.
 Listening for events.
 FAN_CREATE | FAN_ONDIR (subdirectory created):
         Directory /home/user has been modified.
+FAN_DIR_MODIFY (entry changed):
+        Directory /home/user has been modified.
+        Entry 'testdir' is a subdirectory.
 All events processed successfully. Program exiting.
 
 $ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
@@ -1003,6 +1030,8 @@ main(int argc, char **argv)
     struct file_handle *file_handle;
     struct fanotify_event_metadata *metadata;
     struct fanotify_event_info_fid *fid;
+    const char *file_name;
+    struct stat sb;
 
     if (argc != 2) {
         fprintf(stderr, "Invalid number of command line arguments.\en");
@@ -1028,7 +1057,7 @@ main(int argc, char **argv)
     /* Place a mark on the filesystem object supplied in argv[1]. */
 
     ret = fanotify_mark(fd, FAN_MARK_ADD | FAN_MARK_ONLYDIR,
-                        FAN_CREATE | FAN_ONDIR,
+                        FAN_DIR_MODIFY | FAN_CREATE | FAN_ONDIR,
                         AT_FDCWD, argv[1]);
     if (ret == \-1) {
         perror("fanotify_mark");
@@ -1055,11 +1084,18 @@ main(int argc, char **argv)
 
         /* Ensure that the event info is of the correct type */
 
-        if (fid\->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
+        if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_FID) {
+            file_name = NULL;
+        } else if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_DFID_NAME) {
+            file_name = file_handle->f_handle + file_handle->handle_bytes;
+        } else {
             fprintf(stderr, "Received unexpected event info type.\en");
             exit(EXIT_FAILURE);
         }
 
+        if (metadata\->mask == FAN_DIR_MODIFY)
+            printf("FAN_DIR_MODIFY (entry changed):\en");
+
         if (metadata\->mask == FAN_CREATE)
             printf("FAN_CREATE (file created):\en");
 
@@ -1100,6 +1136,21 @@ main(int argc, char **argv)
         path[path_len] = \(aq\e0\(aq;
         printf("\etDirectory \(aq%s\(aq has been modified.\en", path);
 
+        if (file_name) {
+            ret = fstatat(event_fd, file_name, &sb, 0);
+            if (ret == \-1) {
+                if (errno != ENOENT) {
+                    perror("fstatat");
+                    exit(EXIT_FAILURE);
+                }
+                printf("\etEntry %\(aqs\(aq does not exist.\en", file_name);
+            } else if ((sb.st_mode & S_IFMT) == S_IFDIR) {
+                printf("\etEntry \(aq%s\(aq is a subdirectory.\en", file_name);
+            } else {
+                printf("\etEntry \(aq%s\(aq is not a subdirectory.\en", file_name);
+            }
+        }
+
         /* Close associated file descriptor for this event */
 
         close(event_fd);
-- 
2.17.1

