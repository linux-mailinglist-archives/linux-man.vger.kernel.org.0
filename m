Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F40D6612C83
	for <lists+linux-man@lfdr.de>; Sun, 30 Oct 2022 20:56:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiJ3T42 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 15:56:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbiJ3T4Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 15:56:25 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8323D9FD3
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 12:56:19 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id a14so13374276wru.5
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 12:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H2uDVn34RKDgh7MkZUFkX8yCLwPXz5BhUPASsw+EYL8=;
        b=k1l5Mid4CkN6iDD9c63CODmT0gFlZjrX1z0eHexgLIX7c7SJt4pzoQo07NyCyg4mOS
         pFfULGtVKIhPjWxGyWeYe4v1CZVzXmwN3YXG7u29Rsl9Jvxyv+9zgYpObdJG1CqSgBE9
         WSRszUrbzYaNS8AfcA23xCZdVI6XDcCXTv3zJdsHdumbONwbRXVKm6cLYjfHKx2p6IaO
         k/lWYORWDLJtEKIhFH2ZuiICyGgdrsyjkgolzfhPuKMPX0OVKSyv1dO027573Wq52lif
         xUk++NT/xl23YG7t0TCjVq50xcZjD/I4gS85GZcRFk1n9EZA649RTQHBCdbM4QZObfCv
         PQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H2uDVn34RKDgh7MkZUFkX8yCLwPXz5BhUPASsw+EYL8=;
        b=SqB5psynz9FfYe364YXZ+qLAxRoCgayV58zJS1JFlYnP+Ks1kM1X5CP893hRboBcQG
         63p43KgUt0k9Nzgq4xE9ZBPBvn0K3F92HO/EXhMZJZPeEIIqpSV5FionMESuSvOIEzHW
         glDqhVmXRBIifwJ0vUsrXe3kSPT9I30yEeVd61NfB25SBzHQGAks8RJcL8ItMGu3TQm+
         /lj3LBJ1qFZfjKGd2hszCGDu+6GEMyJSUjQtMgr+hMM59dqvfbkkWU/SWZ4Ls7MmxJfG
         KIPlZbsqWHvSa/D9L94oAsbnFKEEfxm7j5yUMCNvxxdBSfroDavmTKYuaumL9mU9ivnp
         vtxA==
X-Gm-Message-State: ACrzQf0CeEn1qzFK1QcAg3WWO/qlN3c2H8j+gGaNe7LWRGqIZ559HEvE
        U3unh0R840BMnPIV182T5x6qSSS+NLo=
X-Google-Smtp-Source: AMsMyM4FnIxRSzoExVhKZOEhAE+sib5NlYzek0Mx7VGcQZJp56kafC6yQuLAlScht148SQbCWbOojw==
X-Received: by 2002:a5d:560e:0:b0:236:c325:4858 with SMTP id l14-20020a5d560e000000b00236c3254858mr2537428wrv.259.1667159778031;
        Sun, 30 Oct 2022 12:56:18 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id bg14-20020a05600c3c8e00b003b497138093sm5398141wmb.47.2022.10.30.12.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 12:56:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Ingo Schwarze <schwarze@openbsd.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2 3/3] get_nprocs.3, get_nprocs_conf.3, program_invocation_name.3, sysvipc.7: Match page title with file name and NAME section
Date:   Sun, 30 Oct 2022 20:51:09 +0100
Message-Id: <20221030195108.548959-3-alx@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221030181651.98670-1-alx@kernel.org>
References: <20221030181651.98670-1-alx@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6357; i=alx@kernel.org; h=from:subject; bh=Vv1hz2D6ky3NARLdLPYslo/QQ+B8lMgt26PfZ8sQZW0=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjXtWqzOOSar90L40N11DZc9Em6/Eu9e0xcXcP9DAU h1ILtwWJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCY17VqgAKCRCejBr7vv/bMuiaD/ 9pq0cjd3QHv0607M5aRTBepz5wsTU2vI+nzfmXyfxHItZtpu8X9lwhTPPt5Aeh5tZiBEj4cDdDtpUq ABl43hH/VFFoFoN2xmadBBuJoIBavu2904LJf0dO7o2PKOThDzo6MemkY2K4sZrY1+K4T8//b1gPtr hyM15dQauZ6XJZ+tk0WUWSn40Gy7NkM0Jc2eY84iCWuSYrMxVPU1ayV3Z4mNn5dDjjRK0RfLATetYC nFN02Z08XQGIK2W0o5lv3mx7C4pdAyh4aE6cj6MuuU2Md4KIHjTol6UAq4ZUa2fu6aN42Dt3kiZapu DSska8iGfxxgkhEGmmaXAYN5Up2xo7hUNl/JUXa5drDbc02vQULoLgQzkQhOH7PFVw5n3n8pA5R/23 4f5VulbnNreGrk+SLudYRTxt9j3DVyPtZL6e5sW0IdFyG14W4eZ08QWyNDPZOhSwb43+Hq//vbYiOG OkhSJqhIdtZcwjFfG9tK7NrOAJYoZ4gh3XdU5wqhghL9MwasYOKt/SlHMIBJolyhO038mSueEHD2MM Tjky0uxE2iyfCNtpWq8GyoMD8nSvi/x8cBkCzfChmnw/7kxs5uxcMcbkcpPy6vohzI+1UqsEDL5Ol6 eCxrvciTGkT5RW5c8qHQcQ6W+W6I6By/yPgIaCBCeiM4/ld3SWRLm3Ney7gQ==
X-Developer-Key: i=alx@kernel.org; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Manually tweak a few pages that weren't covered by the scripts
used in the 2 previous commits.

Cc: Ingo Schwarze <schwarze@openbsd.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/get_nprocs.3              | 96 +++++++++++++++++++++++++++++++++-
 man3/get_nprocs_conf.3         | 96 +---------------------------------
 man3/program_invocation_name.3 |  2 +-
 man7/sysvipc.7                 |  2 +-
 4 files changed, 98 insertions(+), 98 deletions(-)

diff --git a/man3/get_nprocs.3 b/man3/get_nprocs.3
index 63c03bac7..98478cb80 100644
--- a/man3/get_nprocs.3
+++ b/man3/get_nprocs.3
@@ -1 +1,95 @@
-.so man3/get_nprocs_conf.3
+.\" Copyright (c) 2012, Petr Benas
+.\" and Copyright (c) 2012, Michael Kerrisk <mtk.man-pages@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH get_nprocs 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+get_nprocs, get_nprocs_conf \- get number of processors
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <sys/sysinfo.h>
+.PP
+.B int get_nprocs(void);
+.B int get_nprocs_conf(void);
+.fi
+.SH DESCRIPTION
+The function
+.BR get_nprocs_conf ()
+returns the number of processors configured by the operating system.
+.PP
+The function
+.BR get_nprocs ()
+returns the number of processors currently available in the system.
+This may be less than the number returned by
+.BR get_nprocs_conf ()
+because processors may be offline (e.g., on hotpluggable systems).
+.SH RETURN VALUE
+As given in DESCRIPTION.
+.SH ATTRIBUTES
+For an explanation of the terms used in this section, see
+.BR attributes (7).
+.ad l
+.nh
+.TS
+allbox;
+lbx lb lb
+l l l.
+Interface	Attribute	Value
+T{
+.BR get_nprocs (),
+.BR get_nprocs_conf ()
+T}	Thread safety	MT-Safe
+.TE
+.hy
+.ad
+.sp 1
+.SH STANDARDS
+These functions are GNU extensions.
+.SH NOTES
+The current
+.\" glibc 2.15
+implementation of these functions is rather expensive,
+since they open and parse files in the
+.I /sys
+filesystem each time they are called.
+.PP
+The following
+.BR sysconf (3)
+calls make use of the functions documented on this page
+to return the same information.
+.PP
+.in +4n
+.EX
+np = sysconf(_SC_NPROCESSORS_CONF);     /* processors configured */
+np = sysconf(_SC_NPROCESSORS_ONLN);     /* processors available */
+.EE
+.in
+.SH EXAMPLES
+The following example shows how
+.BR get_nprocs ()
+and
+.BR get_nprocs_conf ()
+can be used.
+.PP
+.\" SRC BEGIN (get_nprocs_conf.c)
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/sysinfo.h>
+
+int
+main(void)
+{
+    printf("This system has %d processors configured and "
+            "%d processors available.\en",
+            get_nprocs_conf(), get_nprocs());
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+.BR nproc (1)
diff --git a/man3/get_nprocs_conf.3 b/man3/get_nprocs_conf.3
index 1cf7f2070..7de3e2b31 100644
--- a/man3/get_nprocs_conf.3
+++ b/man3/get_nprocs_conf.3
@@ -1,95 +1 @@
-.\" Copyright (c) 2012, Petr Benas
-.\" and Copyright (c) 2012, Michael Kerrisk <mtk.man-pages@gmail.com>
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.TH GET_NPROCS 3 (date) "Linux man-pages (unreleased)"
-.SH NAME
-get_nprocs, get_nprocs_conf \- get number of processors
-.SH LIBRARY
-Standard C library
-.RI ( libc ", " \-lc )
-.SH SYNOPSIS
-.nf
-.B #include <sys/sysinfo.h>
-.PP
-.B int get_nprocs(void);
-.B int get_nprocs_conf(void);
-.fi
-.SH DESCRIPTION
-The function
-.BR get_nprocs_conf ()
-returns the number of processors configured by the operating system.
-.PP
-The function
-.BR get_nprocs ()
-returns the number of processors currently available in the system.
-This may be less than the number returned by
-.BR get_nprocs_conf ()
-because processors may be offline (e.g., on hotpluggable systems).
-.SH RETURN VALUE
-As given in DESCRIPTION.
-.SH ATTRIBUTES
-For an explanation of the terms used in this section, see
-.BR attributes (7).
-.ad l
-.nh
-.TS
-allbox;
-lbx lb lb
-l l l.
-Interface	Attribute	Value
-T{
-.BR get_nprocs (),
-.BR get_nprocs_conf ()
-T}	Thread safety	MT-Safe
-.TE
-.hy
-.ad
-.sp 1
-.SH STANDARDS
-These functions are GNU extensions.
-.SH NOTES
-The current
-.\" glibc 2.15
-implementation of these functions is rather expensive,
-since they open and parse files in the
-.I /sys
-filesystem each time they are called.
-.PP
-The following
-.BR sysconf (3)
-calls make use of the functions documented on this page
-to return the same information.
-.PP
-.in +4n
-.EX
-np = sysconf(_SC_NPROCESSORS_CONF);     /* processors configured */
-np = sysconf(_SC_NPROCESSORS_ONLN);     /* processors available */
-.EE
-.in
-.SH EXAMPLES
-The following example shows how
-.BR get_nprocs ()
-and
-.BR get_nprocs_conf ()
-can be used.
-.PP
-.\" SRC BEGIN (get_nprocs_conf.c)
-.EX
-#include <stdio.h>
-#include <stdlib.h>
-#include <sys/sysinfo.h>
-
-int
-main(void)
-{
-    printf("This system has %d processors configured and "
-            "%d processors available.\en",
-            get_nprocs_conf(), get_nprocs());
-    exit(EXIT_SUCCESS);
-}
-.EE
-.\" SRC END
-.SH SEE ALSO
-.BR nproc (1)
+.so man3/get_nprocs.3
diff --git a/man3/program_invocation_name.3 b/man3/program_invocation_name.3
index 6110d826e..97d787470 100644
--- a/man3/program_invocation_name.3
+++ b/man3/program_invocation_name.3
@@ -21,7 +21,7 @@
 .\" SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 .\" %%%LICENSE_END
 .\"
-.TH INVOCATION_NAME 3 (date) "Linux man-pages (unreleased)"
+.TH program_invocation_name 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
 program_invocation_name, program_invocation_short_name \- \
 obtain name used to invoke calling program
diff --git a/man7/sysvipc.7 b/man7/sysvipc.7
index e801794b0..4b3576157 100644
--- a/man7/sysvipc.7
+++ b/man7/sysvipc.7
@@ -2,7 +2,7 @@
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-.TH SVIPC 7 (date) "Linux man-pages (unreleased)"
+.TH sysvipc 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 sysvipc \- System V interprocess communication mechanisms
 .SH DESCRIPTION
-- 
2.37.2

