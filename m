Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEB216D00
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2019 23:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728506AbfEGVRk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 May 2019 17:17:40 -0400
Received: from mail-wr1-f52.google.com ([209.85.221.52]:46514 "EHLO
        mail-wr1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727257AbfEGVRk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 May 2019 17:17:40 -0400
Received: by mail-wr1-f52.google.com with SMTP id r7so24191075wrr.13
        for <linux-man@vger.kernel.org>; Tue, 07 May 2019 14:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version:organization
         :content-transfer-encoding;
        bh=yKoGWp1ppQ0A+2KeSzhadmLEKllK5sj3E/XyV+WNBdM=;
        b=CqxpnTwTQ+xLF5E0yF9/wjzSG3YSm45+TxUAFF+pUnEmTK1ekVfqvDL46lOSvI7BpL
         ApqCzqVtCwql7KH2TolZe7/qesIvG4+GtTuteUt6EzZwV/ucfxoAzza8/sNMYYF+FtVQ
         sYQP9tLN+r3O+vl+VM2MPTBPh2ttdIPyyz6YUYrd5ccpHqDLuzbubYxu5dbBG/t80HRk
         53gL8M+ltEnhIyLiUY3zKCATCoifno/Y3KfdU99rPVOVKqdAOM/fwN/r3OfTTdlZUoyU
         vfIsgvJQgOTBYSLd2hbez0yfxjeDPRyFMh4UI8PcwUbTJhYeio00Tch+3NuSJwkQAsSw
         fZSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:organization:content-transfer-encoding;
        bh=yKoGWp1ppQ0A+2KeSzhadmLEKllK5sj3E/XyV+WNBdM=;
        b=YiFDAPsST0lmhcgPCtClgBxzJgQ9GcrOprDOZnF7+lywU/Bn8vSzwP9fpEL18frbe4
         8RtYqBDmBxT8fTPN7WV6nyDFBod8oGv4guA7hTxE89WFuUeJP/CmKM6dLiTmGz4nf/vc
         1g6gRRpXdMMAEeuxCRFDYr2eY/qilbhzMjrRjdOLSjCp0eE5p05A6tYguPOXzom6sQnU
         5p8bqydnK2slFyul5Y43x4pkMJrhn8wz35VAbVvYWKobRD8J7cyp1fY7fWTrXX/c7TRD
         OTl75BBWhcJ1gc2yTugHzD4YksKB2xmKhaCmQkcuoKLLpKo2mLK5pgZ3cO1PtLov8VGa
         cB8Q==
X-Gm-Message-State: APjAAAXLig7yweNrZIxWwXyn4w0orPR2vEEoY0AmUMsRKQ6GsACdAWwX
        y0Z/C5iRyD+wTGJTDj13Nzw=
X-Google-Smtp-Source: APXvYqxFp9IZPgfN8t5aL80Q0ht/UPmHaZAxisbH60BRx/c2LicOjRHo9d3MTGDLRvO367HBi6aymw==
X-Received: by 2002:adf:ec06:: with SMTP id x6mr2079363wrn.159.1557263858399;
        Tue, 07 May 2019 14:17:38 -0700 (PDT)
Received: from localhost (82-71-26-41.dsl.in-addr.zen.co.uk. [82.71.26.41])
        by smtp.gmail.com with ESMTPSA id j13sm46928720wrd.88.2019.05.07.14.17.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 07 May 2019 14:17:37 -0700 (PDT)
From:   Sami Kerola <kerolasa@iki.fi>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Sami Kerola <kerolasa@iki.fi>
Subject: [patch] on_exit.3: Add example code
Date:   Tue,  7 May 2019 22:17:35 +0100
Message-Id: <20190507211735.31785-1-kerolasa@iki.fi>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Organization: Cloudflare
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Example tries to clarify one should not refer to variables that are not in
on_exit() scope.  Such variables include heap in main().  In short only
variables allocated from stack make is sense when calling on_exit().
Possible referal to global variables would technically work, but at the same
go makes function argument pointless and in such case one ought to prefer
atexit() instead.

Signed-off-by: Sami Kerola <kerolasa@iki.fi>
---
 man3/on_exit.3 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/man3/on_exit.3 b/man3/on_exit.3
index d2c2c3b17..c074cda76 100644
--- a/man3/on_exit.3
+++ b/man3/on_exit.3
@@ -100,6 +100,46 @@ It no longer occurs in Solaris (SunOS 5).
 Portable application should avoid this function, and use the standard
 .BR atexit (3)
 instead.
+.SH EXAMPLE
+Following program uses
+.BR on_exit (3)
+to display data, that is allocated until processing is done.
+Notice that variables main() in heap are not in on_exit() scope.
+.PP
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+
+struct data {
+    int argc;
+    char *argv;
+};
+
+static void run_on_exit(int exit_val, void *arg)
+{
+    struct data *d = (struct data *)arg;
+
+    printf("argc: %d argv: %s\n", d->argc, d->argv);
+    free(d->argv);
+    free(d);
+    _exit(exit_val);
+}
+
+int main(int argc, char **argv)
+{
+    struct data *d;
+
+    if (1 < argc) {
+        d = malloc(sizeof(*d));
+        d->argc = argc;
+        d->argv = strdup(argv[1]);
+        on_exit(run_on_exit, d);
+    }
+    return 0;
+}
+.EE
 .SH SEE ALSO
 .BR _exit (2),
 .BR atexit (3),
-- 
2.21.0

