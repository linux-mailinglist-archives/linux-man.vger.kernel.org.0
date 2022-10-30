Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41CA5612C34
	for <lists+linux-man@lfdr.de>; Sun, 30 Oct 2022 19:21:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiJ3SVW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 14:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbiJ3SVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 14:21:21 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AFE6B85F
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 11:21:18 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id v1so13126560wrt.11
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 11:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/5Y8u0MVR1pS74lQD7j6GuQnkttzHY5hOh2CpkhO+o=;
        b=ieXt3vPzgLJiGpU/R4FVE3SCXAZZw0gMl1nWlAyMtShwfmduHCjHxk9IFUdM2Pf7ht
         AhqRP84oZBGMMNqH4JF8EhRRxSMXwOUYSUtdhBuXp34tu6ranI60Ne9HSRqmrKZ82GiS
         fXmRC9jzj9x5jeDwqs5I2se0PE+jBW00dBHWF98mV5Tz+LDvxJYWEV8EnMlUxDDart4E
         gEmozQbGolzdDaBYkKzhopxGDqJ6vxtJJ0nw/AiNlkLjPNEpAJO3KMwgEh87YvZ152jQ
         NCij14oSYHHdaiW4lIBNCva5u3y3VlZe8DTCSgqzLyb5j3YcUrezaPWbEhyWrEaHoyKu
         mmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q/5Y8u0MVR1pS74lQD7j6GuQnkttzHY5hOh2CpkhO+o=;
        b=hGYKzG6aBOkrtpMSifu9eKNZe9l5DVFnWDkFMJ+yLzn2ZMaENvGnlOrPYYiWSV/80t
         T0/H67N3dBbyM330hu2B0twbAGDIZcjaCnV4PiB4lVJ0ZFvLT7+hO89Pvh5GtcSeKfqF
         /TRgxvmyL0DExG/5BVBTb6Qm9VhfHyuzRKFCATqCnJGTJEdXPO5ZD5yvyXK1bGPCVEcz
         oCkKTO2gRAtT/6KTXWFgBxHG+12m4HKhtUPOnkJGBzd7at9H8Xymy0i233gWfDLjPlkl
         eehpc4v+2dwTe8Y7C64Is5KemvrQkyHfiCC+tWdFEVAPLm0JBRTEu3fIw5Kk81xdcmqF
         y9MQ==
X-Gm-Message-State: ACrzQf3+t5yJ9EXtKuqUYLp6ZcXhuot4/mkz5JcOvEkl3iMpBGx4I2hK
        zd8L0vJFCi8bEldwR69QudCzo4BYwCs=
X-Google-Smtp-Source: AMsMyM6OvbEdMgSykNJhrgSUDhGahcS75xRxg3cAW+xYOfOwrzaj++roNrklf30DTYCQWx4He/0dOQ==
X-Received: by 2002:a05:6000:6:b0:236:c963:ab6e with SMTP id h6-20020a056000000600b00236c963ab6emr1463298wrx.148.1667154076806;
        Sun, 30 Oct 2022 11:21:16 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18-20020a05600c081200b003b4935f04a4sm5398913wmp.5.2022.10.30.11.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 11:21:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Ingo Schwarze <schwarze@openbsd.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH 2/2] get_nprocs.3, get_nprocs_conf.3, program_invocation_name.3, sysvipc.7: Match page title with file name
Date:   Sun, 30 Oct 2022 19:16:52 +0100
Message-Id: <20221030181651.98670-2-alx@kernel.org>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221030181651.98670-1-alx@kernel.org>
References: <20221030181651.98670-1-alx@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6353; i=alx@kernel.org; h=from:subject; bh=4oE5tEgL819LccLoiTmmWO/aNrgzk5Dj7jOqs91kc40=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjXr+Jb28+4By3JIp1HreKXgwWDaa5cQBzomQ0aghN L9C+oNOJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCY16/iQAKCRCejBr7vv/bMtvgD/ 9On+Yz9NkYAiMThKu1vg0gS/i6AvJvcMzcS5lwxF6zjeJBEnGFAv5JEDYfK1rmf2eNp6YeFJEvRU0t R9GDt5Jccfq0a+XOYLKCFsqarn+nmQCfxqG5Xbhio4IAN55t29x1DW6/c00+tfMh489qrF/4YjlglR 3Y2f37fk/SYGzb/H5eLKSgKSjU5LmdjxfV8eRNb3VHectJ/W+i/UUpM6WVfwBG5WwUyHn+tFCO7yCp Ok3iSTJpu2q4UZcvmr5x5JO3A9Ra1LD3BzbpF572fI37JKvxaalEs5T9vmNumo5NuT4V8sfYJjD1+0 3cdMNzDblwZGOrpPZq48sVmFqoQcA64Pov1AZH1SyKPmt8aHoVfy3UNbP5G7q426pBHYqoive4pfaB YWdn9m+c525hqP3xs8Pp1BHmaEhSfrPoUy25RPpjI4ODW9VUw/TyA15ReN9AHBGupwyV1a0ittMJs4 9GHG7QE45DQBMaw127kikzxIEsh8aByZoITVq2ujIECzjvue1rk2rDTP4e6gdE+edV8I+15gR9Yx8v xvQYXApNr547G0I9WfEGH+gcBMOUmvhQQZPx9LpPQwC4OnLGHLN9zRIjBJe+s/xHsrHmBVncAol1st wU9HyVf3G9B7suju3GLPC7E4GbtsdjJYI0trsguf5Au9nMR6sHJD4uWCUx2A==
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

Manually tweak a few pages that weren't covered by the script used
in the previous commit.

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

