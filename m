Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C811B437A9D
	for <lists+linux-man@lfdr.de>; Fri, 22 Oct 2021 18:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232835AbhJVQLx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Oct 2021 12:11:53 -0400
Received: from mout.kundenserver.de ([212.227.126.134]:54013 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231453AbhJVQLw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Oct 2021 12:11:52 -0400
Received: from localhost ([178.142.98.90]) by mrelayeu.kundenserver.de
 (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MYLqs-1m8W4s3Ack-00VOHe; Fri, 22 Oct 2021 18:09:32 +0200
Date:   Fri, 22 Oct 2021 18:09:42 +0200
From:   Tobias Stoeckmann <tobias@stoeckmann.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [patch] getgrouplist.3: Improve example code
Message-ID: <20211022160942.3w3zh2mxehzrdkx7@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Provags-ID: V03:K1:X+/QYmOSoDYf0FUNscfQxHacd7AM1DIwLZbX/TdhbSOtH6SO59W
 8VMx2fIWHV1aE4L2CRTstqxO6TPRI2Hd1SEtKzksTQozsMCqHY9JyatlauTysvs/af1FaAH
 4TYk0Rq1XXI78G55SJHcBKTKy1iGK1z90Nei1npw9/ghEJmWRwUCgj7T2NC9VI3GGGNvoYH
 2kaRmqovUDQCwUd/4MMAw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iqaeEIFod3U=:HTVkqtaH90dbAKpRATdSEq
 VI8mhqf3A31NRtlxFjCcNNNrpWKL36dBIvvmmkBSPjvWgTjcf1Eh7o3z7PCIBsOGssNatXJC4
 FNKq9vG8i8PuIGjo0T3duv75iYC0jFzPZbu2WtgLrPhPAzRrwJ4PKn2XpAT8B1iw1+PXGpRnV
 qPmp0jfb7PNvMeo5In8dVgtOzMAhom0xR9k2ka1GwaV7C0HG6yipjsax/Hs9BscXN9r4zKi2Y
 FMM/aUiS0WGgbiS0r7Ev1G5xw6wjjcIeOS990bEYeVpmnSUNAvtZOjXyfRM9zWJR7AOXSeUvS
 pgm0coqJLnE/1T7yTUXd/ZMprJ8C186d1d+s0a92PBKiKOiYFq5rDzZOca3a24MeThL6NmzG9
 mXv7IohLDI326d0niMZA3+IWZYp0csGkK43+x92uudaMO4zpfl8vU9Vjzln4DPtRTpCe2ZN6j
 iWDrNdRohp9hWQ9vpqs5h1HDsud/MYlr5EMFBiqMJk/vCPoCRsYEgZrFrbMEceXYnzRNwav9p
 J5DBMJsxR/qwH1kW80hPS7SWpOcFIgp462T1eh5vtHHSCZVlZGX+AcsZlkvTR2pIpS1OmnaAB
 g1xWb25TsmqYMgy8Bx92xsW8OQYm1KCPhH+lWqFtdwzHX9di5UkcZ9WyD7BZPLpH+OV9PuYRw
 dMTc/b9Y7q4cjJXP7wQfGJT+RGqENdR7nehJBuW9k9yKk0OMVRqbi7dIHQAGNPDsAd/k=
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The example code does not validate the supplied ngroup argument.
On 32 bit systems this code can lead to heap overflows within
getgrouplist call.

Verify that ngroups really contains the amount of entries for
which memory has been allocated.

While at it fixed a small typo ("to" was missing).

Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>
---
 man3/getgrouplist.3 | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 1fe260b..da36cc7 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -97,7 +97,7 @@ groups, then
 returns \-1.
 In this case, the value returned in
 .IR *ngroups
-can be used to resize the buffer passed to a further call
+can be used to resize the buffer passed to a further call to
 .BR getgrouplist ().
 .SH VERSIONS
 This function is present since glibc 2.2.4.
@@ -152,6 +152,7 @@ ngroups = 3
 .SS Program source
 \&
 .EX
+#include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <grp.h>
@@ -163,6 +164,7 @@ main(int argc, char *argv[])
     int ngroups;
     struct passwd *pw;
     struct group *gr;
+    gid_t *groups;
 
     if (argc != 3) {
         fprintf(stderr, "Usage: %s <user> <ngroups>\en", argv[0]);
@@ -171,7 +173,12 @@ main(int argc, char *argv[])
 
     ngroups = atoi(argv[2]);
 
-    gid_t *groups = malloc(sizeof(*groups) * ngroups);
+    if (ngroups < 0 || (size_t)ngroups > SIZE_MAX / sizeof(*groups)) {
+        fprintf(stderr, "ngroups invalid\en");
+        exit(EXIT_FAILURE);
+    }
+
+    groups = malloc(sizeof(*groups) * ngroups);
     if (groups == NULL) {
         perror("malloc");
         exit(EXIT_FAILURE);
-- 
2.33.1

