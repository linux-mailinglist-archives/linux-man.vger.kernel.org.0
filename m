Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7D3FA552F
	for <lists+linux-man@lfdr.de>; Mon,  2 Sep 2019 13:44:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731070AbfIBLn1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Sep 2019 07:43:27 -0400
Received: from 8.mo6.mail-out.ovh.net ([178.33.42.204]:45972 "EHLO
        8.mo6.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731066AbfIBLn0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Sep 2019 07:43:26 -0400
X-Greylist: delayed 17261 seconds by postgrey-1.27 at vger.kernel.org; Mon, 02 Sep 2019 07:43:26 EDT
Received: from player726.ha.ovh.net (unknown [10.108.35.211])
        by mo6.mail-out.ovh.net (Postfix) with ESMTP id C91691DEA9E
        for <linux-man@vger.kernel.org>; Mon,  2 Sep 2019 08:55:42 +0200 (CEST)
Received: from jwilk.net (user-5-173-40-143.play-internet.pl [5.173.40.143])
        (Authenticated sender: jwilk@jwilk.net)
        by player726.ha.ovh.net (Postfix) with ESMTPSA id 5E82E94002D0;
        Mon,  2 Sep 2019 06:55:39 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/4] fanotify.7: tfix
Date:   Mon,  2 Sep 2019 08:55:33 +0200
Message-Id: <20190902065536.4878-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13613818726840129405
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledguddufecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/fanotify.7 | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index b8e0755aa..fb64f06c1 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -927,7 +927,7 @@ and waits until an event of type
 .B FAN_CREATE
 has occurred.
 The event mask indicates which type of filesystem object\(emeither
-a file or a directory\(emwas created".
+a file or a directory\(emwas created.
 Once all events have been read from the buffer and processed accordingly,
 the program simply terminates.
 .PP
@@ -1008,7 +1008,7 @@ main(int argc, char **argv)
     struct fanotify_event_info_fid *fid;
 
     if (argc != 2) {
-        fprintf(stderr, "Invalid number of command line arguments.\e\n");
+        fprintf(stderr, "Invalid number of command line arguments.\en");
         exit(EXIT_FAILURE);
     }
 
@@ -1031,7 +1031,7 @@ main(int argc, char **argv)
         exit(EXIT_FAILURE);
     }
 
-    printf("Listening for events.\e\n");
+    printf("Listening for events.\en");
 
     /* Read events from the event queue into a buffer */
 
@@ -1047,22 +1047,22 @@ main(int argc, char **argv)
             FAN_EVENT_OK(metadata, len);
             metadata = FAN_EVENT_NEXT(metadata, len)) {
         fid = (struct fanotify_event_info_fid *) (metadata + 1);
-        file_handle = (struct file_handle *) fid->handle;
+        file_handle = (struct file_handle *) fid\->handle;
 
         /* Ensure that the event info is of the correct type */
 
-        if (fid->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
-            fprintf(stderr, "Received unexpected event info type.\e\n");
+        if (fid\->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
+            fprintf(stderr, "Received unexpected event info type.\en");
             exit(EXIT_FAILURE);
         }
 
-        if (metadata->mask == FAN_CREATE)
+        if (metadata\->mask == FAN_CREATE)
             printf("FAN_CREATE (file created):");
 
-        if (metadata->mask == FAN_CREATE | FAN_ONDIR)
+        if (metadata\->mask == FAN_CREATE | FAN_ONDIR)
             printf("FAN_CREATE | FAN_ONDIR (subdirectory created):");
 
-        /* metadata->fd is set to FAN_NOFD when FAN_REPORT_FID is enabled.
+        /* metadata\->fd is set to FAN_NOFD when FAN_REPORT_FID is enabled.
            To obtain a file descriptor for the file object corresponding to
            an event you can use the struct file_handle that\(aqs provided
            within the fanotify_event_info_fid in conjunction with the
@@ -1074,7 +1074,7 @@ main(int argc, char **argv)
         if (ret == \-1) {
             if (errno == ESTALE) {
                 printf("File handle is no longer valid. "
-                        "File has been deleted\e\n");
+                        "File has been deleted\en");
                 continue;
             } else {
                 perror("open_by_handle_at");
@@ -1093,15 +1093,15 @@ main(int argc, char **argv)
             exit(EXIT_FAILURE);
         }
 
-        path[path_len] = \(aq\e\0\(aq;
-        printf("\etDirectory \(aq%s\(aq has been modified.\e\n", path);
+        path[path_len] = \(aq\e0\(aq;
+        printf("\etDirectory \(aq%s\(aq has been modified.\en", path);
 
         /* Close associated file descriptor for this event */
 
         close(event_fd);
     }
 
-    printf("All events processed successfully. Program exiting.\e\n");
+    printf("All events processed successfully. Program exiting.\en");
     exit(EXIT_SUCCESS);
 }
 .EE
-- 
2.23.0

