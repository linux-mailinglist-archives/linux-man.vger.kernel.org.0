Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB1332517EE
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730050AbgHYLl3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:41:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730090AbgHYLlK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:41:10 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 936B7C061757
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:09 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id s20so2090324wmj.1
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rSQOv97EsGyMlC01xBjmj8u5bC1JLV0emyHWTtaoKFA=;
        b=gdN4IjWkTSa4OyjAsg8t1S4XuqHOngdg/SA62Q1MaU2uAendauAptPQ6ULLXesgzQZ
         nB/cH49WsIUb21M3qjXHW/Ai/36bJNx3/lCruq//xQn1mI4Qelzbg9FkE6o7ViVKI1sc
         WQttR0KiyKxqUFuJmx6XKGaZHVegS/BzU3Dfhw7Gg/k9GIu6onflFPi8UH8F3ZtXqu/3
         LcjkbXYEH1qKRBvYh8LdgLyK1bUX3+szBvZEg6XAvmO0YNcNwc2rRGmoO2ujqivcSPAu
         ILNWPd7o4lNldk0kDeu0bslLNXGwlbXS0Bz/EOIGHHLfI3+DXCHCQp8aXwvBAWwtpTaC
         kFdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rSQOv97EsGyMlC01xBjmj8u5bC1JLV0emyHWTtaoKFA=;
        b=qURIT17Xrnv+koTnY2odg7q3MxhZmRK1S/ek/D3J/TTHLcuQY+4PvFRXShaOrIqJ5Z
         oltO5GcJjWt1vkMeRRd/jTqQoJtw7WzMAH5nUdBDFV9lHUu4NcFulSUuDMsFBbOXGPDH
         zvA5ETa7N+yq0J3qcU34hGI/XYi+7oo4GLY7/A95grk6Xr5aGrXo9hGnrGpoCmoR/G+E
         pW3UPpQTzqFcscVdzFDGFZxpru9UiJVLFopa6fWKg0/UollnzSvVfuQTKlTCoexokW6A
         Dru7CZ97mWx20wZQrQVC4+adKLfY6AkkMDXKn9vEr6sQ4UYngAzWHYGjOJ3mNPVjYU3C
         c0+Q==
X-Gm-Message-State: AOAM530HUnKW2I/kAwC/BU5umL2ZvGto2QQqWlKMDlhVmPXUgCz13uZB
        fTqPFZ1LvYKVRgrZVAP8UhWnShAzS9o=
X-Google-Smtp-Source: ABdhPJz983okXJtRnfeYZ/Y3x7Hp2fFhZuC8a3jM+Bw72NeFsiDgdEaEF5OGvc5KNfq955vX9h5N9w==
X-Received: by 2002:a1c:2b04:: with SMTP id r4mr1611142wmr.76.1598355668114;
        Tue, 25 Aug 2020 04:41:08 -0700 (PDT)
Received: from localhost.localdomain ([141.226.8.56])
        by smtp.gmail.com with ESMTPSA id g18sm31256574wru.27.2020.08.25.04.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 04:41:07 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 3/3] fanotify.7, fanotify_init.2: Document FAN_REPORT_NAME
Date:   Tue, 25 Aug 2020 14:40:56 +0300
Message-Id: <20200825114056.5179-4-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200825114056.5179-1-amir73il@gmail.com>
References: <20200825114056.5179-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document fanotify_init(2) flag FAN_REPORT_NAME and the format of the
event info type FAN_EVENT_INFO_TYPE_DFID_NAME.

The fanotify_fid.c example is extended to also report the name of the
created file or sub-directory.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
---
 man2/fanotify_init.2 | 54 +++++++++++++++++++++++++++++
 man7/fanotify.7      | 81 ++++++++++++++++++++++++++++++++++----------
 2 files changed, 118 insertions(+), 17 deletions(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 6167a1c37..27dbfe498 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -223,6 +223,60 @@ flag, no event will be reported.
 See
 .BR fanotify (7)
 for additional details.
+.TP
+.BR FAN_REPORT_NAME " (since Linux 5.9)"
+Events for fanotify groups initialized with this flag will contain additional
+information about the name of the directory entry correlated to an event.
+This flag must be provided in conjunction with the flag
+.BR FAN_REPORT_DIR_FID .
+Providing this flag value without
+.BR FAN_REPORT_DIR_FID
+will result in the error
+.BR EINVAL .
+This flag may be combined with the flag
+.BR FAN_REPORT_FID .
+An additional record of type
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
+which encapsulates the information about the directory entry is included
+alongside the generic event metadata structure and substitutes the additional
+information record of type
+.BR FAN_EVENT_INFO_TYPE_DFID .
+The additional record includes a file handle that identifies a directory
+filesystem object followed by a name that identifies an entry in that
+directory.
+For the directory entry modification events
+.BR FAN_CREATE ,
+.BR FAN_DELETE ,
+and
+.BR FAN_MOVE ,
+the reported name is that of the created/deleted/moved directory entry.
+For other events that occur on a directory object, the reported file handle
+is that of the directory object itself and the reported name is '.'.
+For other events that occur on a non-directory object, the reported file handle
+is that of the parent directory object and the reported name is the name of a
+directory entry where the object was located at the time of the event.
+The rationale behind this logic is that the reported directory file handle can
+be passed to
+.BR open_by_handle_at (2)
+to get an open directory file descriptor and that file descriptor along with
+the reported name can be used to call
+.BR fstatat (2).
+The same rule that applies to record type
+.BR FAN_EVENT_INFO_TYPE_DFID
+also applies to record type
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME \ -
+if a non-directory object has no parent, either the event will not be reported
+or it will be reported without the directory entry information.
+Note that there is no guarantee that the filesystem object will be found at the
+location described by the directory entry information at the time the event is
+received.
+See
+.BR fanotify (7)
+for additional details.
+.TP
+.B FAN_REPORT_DFID_NAME
+This is a synonym for
+.RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
 .PP
 The
 .I event_f_flags
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index fa1c85159..65fb2720a 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -467,6 +467,12 @@ the
 .IR file_handle
 identifies the modified directory and not the created/deleted/moved child
 object.
+If the value of
+.I info_type
+field is
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
+the file handle is followed by a null terminated string that identifies the
+created/deleted/moved directory entry name.
 For other events such as
 .BR FAN_OPEN ,
 .BR FAN_ATTRIB ,
@@ -487,7 +493,18 @@ field is
 the
 .IR file_handle
 identifies the directory object correlated to the event or the parent directory
-of the non-directory object correlated to the event.
+of a non-directory object correlated to the event.
+If the value of
+.I info_type
+field is
+.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
+the
+.IR file_handle
+identifies the same directory object that would be reported with
+.BR FAN_EVENT_INFO_TYPE_DFID
+and the file handle is followed by a null terminated string that identifies the
+name of a directory entry in that directory, or '.' to identify the directory
+object itself.
 .PP
 The following macros are provided to iterate over a buffer containing
 fanotify event metadata returned by a
@@ -672,12 +689,17 @@ events for the monitored directory itself.
 Fanotify monitoring of directories is not recursive:
 to monitor subdirectories under a directory,
 additional marks must be created.
-(But note that the fanotify API provides no way of detecting when a
-subdirectory has been created under a marked directory,
-which makes recursive monitoring difficult.)
-Monitoring mounts offers the capability to monitor a whole directory tree.
+The
+.B FAN_CREATE
+event can be used for detecting when a subdirectory has been created under
+a marked directory.
+An additional mark must then be set on the newly created subdirectory.
+This approach is racy, because it can lose events that occurred inside the
+newly created subdirectory, before a mark is added on that subdirectory.
+Monitoring mounts offers the capability to monitor a whole directory tree
+in a race free manner.
 Monitoring filesystems offers the capability to monitor changes made from
-any mount of a filesystem instance.
+any mount of a filesystem instance in a race free manner.
 .PP
 The event queue can overflow.
 In this case, events are lost.
@@ -961,9 +983,8 @@ main(int argc, char *argv[])
 .EE
 .\"
 .SS Example program: fanotify_fid.c
-The second program is an example of fanotify being used with
-.B FAN_REPORT_FID
-enabled.
+The second program is an example of fanotify being used with a group that
+identifies objects by file handles.
 The program marks the filesystem object that is passed as
 a command-line argument
 and waits until an event of type
@@ -984,7 +1005,7 @@ This is followed by the creation of a regular file,
 This results in a
 .B FAN_CREATE
 event being generated and reported against the file's parent watched
-directory object.
+directory object and with the created file name.
 Program execution ends once all events captured within the buffer have
 been processed.
 .PP
@@ -994,6 +1015,7 @@ been processed.
 Listening for events.
 FAN_CREATE (file created):
         Directory /home/user has been modified.
+        Entry 'testfile.txt' is not a subdirectory.
 All events processed successfully. Program exiting.
 
 $ \fBtouch /home/user/testfile.txt\fP              # In another terminal
@@ -1008,7 +1030,7 @@ This specific action results in a
 .B FAN_CREATE
 event being generated and is reported with the
 .B FAN_ONDIR
-flag set.
+flag set and with the created directory name.
 .PP
 .in +4n
 .EX
@@ -1016,6 +1038,7 @@ flag set.
 Listening for events.
 FAN_CREATE | FAN_ONDIR (subdirectory created):
         Directory /home/user has been modified.
+        Entry 'testdir' is a subdirectory.
 All events processed successfully. Program exiting.
 
 $ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
@@ -1048,6 +1071,8 @@ main(int argc, char **argv)
     struct file_handle *file_handle;
     struct fanotify_event_metadata *metadata;
     struct fanotify_event_info_fid *fid;
+    const char *file_name;
+    struct stat sb;
 
     if (argc != 2) {
         fprintf(stderr, "Invalid number of command line arguments.\en");
@@ -1061,10 +1086,10 @@ main(int argc, char **argv)
     }
 
 
-    /* Create an fanotify file descriptor with FAN_REPORT_FID as a flag
-       so that program can receive fid events. */
+    /* Create an fanotify file descriptor with FAN_REPORT_DFID_NAME as a flag
+       so that program can receive fid events with directory entry name. */
 
-    fd = fanotify_init(FAN_CLASS_NOTIF | FAN_REPORT_FID, 0);
+    fd = fanotify_init(FAN_CLASS_NOTIF | FAN_REPORT_DFID_NAME, 0);
     if (fd == \-1) {
         perror("fanotify_init");
         exit(EXIT_FAILURE);
@@ -1100,7 +1125,13 @@ main(int argc, char **argv)
 
         /* Ensure that the event info is of the correct type */
 
-        if (fid\->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
+        if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_FID ||
+            fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_DFID) {
+            file_name = NULL;
+        } else if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_DFID_NAME) {
+            file_name = file_handle->f_handle +
+                        file_handle->handle_bytes;
+        } else {
             fprintf(stderr, "Received unexpected event info type.\en");
             exit(EXIT_FAILURE);
         }
@@ -1111,8 +1142,8 @@ main(int argc, char **argv)
         if (metadata\->mask == (FAN_CREATE | FAN_ONDIR))
             printf("FAN_CREATE | FAN_ONDIR (subdirectory created):\en");
 
-        /* metadata\->fd is set to FAN_NOFD when FAN_REPORT_FID is
-           enabled.  To obtain a file descriptor for the file object
+        /* metadata\->fd is set to FAN_NOFD when the group identifies objects
+           by file handles.  To obtain a file descriptor for the file object
            corresponding to an event you can use the struct file_handle
            that\(aqs provided within the fanotify_event_info_fid in
            conjunction with the open_by_handle_at(2) system call.
@@ -1146,6 +1177,22 @@ main(int argc, char **argv)
         path[path_len] = \(aq\e0\(aq;
         printf("\etDirectory \(aq%s\(aq has been modified.\en", path);
 
+        if (file_name) {
+            ret = fstatat(event_fd, file_name, &sb, 0);
+            if (ret == \-1) {
+                if (errno != ENOENT) {
+                    perror("fstatat");
+                    exit(EXIT_FAILURE);
+                }
+                printf("\etEntry \(aq%s\(aq does not exist.\en", file_name);
+            } else if ((sb.st_mode & S_IFMT) == S_IFDIR) {
+                printf("\etEntry \(aq%s\(aq is a subdirectory.\en", file_name);
+            } else {
+                printf("\etEntry \(aq%s\(aq is not a subdirectory.\en",
+                        file_name);
+            }
+        }
+
         /* Close associated file descriptor for this event */
 
         close(event_fd);
-- 
2.17.1

