Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA58059AF18
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 19:14:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230179AbiHTRNz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Aug 2022 13:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345157AbiHTRNx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Aug 2022 13:13:53 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3115B19006
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 10:13:52 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id bq11so1890662wrb.12
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 10:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=ZZ5eEQiZQ2hZC28aQWEFgC1Y5wfN74HnLG8ChRBveZs=;
        b=qOdbm7qfkOBS9TAa3r+fSWi5YMAEeFZspQhjum76AdxVdOmMhab98X1FFORbDWCCmv
         27oS9q6jbYBoEZqGDuu/PKnbxVcPEd4h27Ldw/hh9swXSthFIuWwdV1CsRMyHSfPftpZ
         65u37AKkxGnViD2Yp3WaT3bfIDE5nMszNxHJIDS7ZlpirYVDuEOhETXuvF0RQqlV4hJS
         m651zXCRu/mlDOzK8Zu+BYcxg4KbYHEKiLWTWpFIh2crLZf+4J4gYkm2++Qk7QmVg/g2
         +UQsOqRVVPKnzxKdxl75yodTeJ1NCDN/u72GFC3fjlhWdB+S04oqrJKsBjh13MpTnDlh
         y4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=ZZ5eEQiZQ2hZC28aQWEFgC1Y5wfN74HnLG8ChRBveZs=;
        b=blW+cBPt2Tw0o0gw0lrH13EQjTAPF/uYBhAL3deCwjVDX36EVDI65hyLCd7yfOAqAh
         sBzTvj0qtxj47n8PoiPpxIc6OALG69tSVgxmQx4eD5ITQoxCsVq/1xb2eFUsFio1rV7t
         sZqc5wz553hIh4CZdb9WrPAQuzIpCvtaZc37+1vVhISz21NndJwBflFvNP3WOoEY0fnl
         cVo0TMBZMkHZr2wap67sx/vmlKFJrIz8jOfuMtrIDxqXNJuv6MaqKrdZyiOE5D8eVQRR
         bzD+JYE8THt9wniqbo7iSimTkgVVZp1BDGWPcQu2iKFSwoKNwMzmxWKOAjD2otau0hkr
         O6tA==
X-Gm-Message-State: ACgBeo3TeYimsBw1V47/bLvNgtAb8CJFUzuMM5tV2+enjwA8y6XpPUaV
        bhefap5Po35gHAzofiFdfF95Ge10nfE=
X-Google-Smtp-Source: AA6agR6bAAAS9fBdc7P6xoBnNM3Ei1MJuyesqj7GWfF5rOKd2+KcCoayfyBcx7V9eoy54AMdg0QBtw==
X-Received: by 2002:a5d:5b19:0:b0:225:3ed4:ff64 with SMTP id bx25-20020a5d5b19000000b002253ed4ff64mr3839170wrb.537.1661015630701;
        Sat, 20 Aug 2022 10:13:50 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g17-20020a5d46d1000000b0020fff0ea0a3sm7193881wrs.116.2022.08.20.10.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 10:13:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
Subject: [PATCH] _Generic.3: New page documenting _Generic()
Date:   Sat, 20 Aug 2022 19:10:10 +0200
Message-Id: <20220820171009.34196-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2585; i=alx.manpages@gmail.com;
 h=from:subject; bh=Yrc0UyZIxyt+peO7pdFlZ59tsww06n55vazR7pSzmNM=;
 b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjARVwM+faPqTobxLrjp+jASD2A5x2y79ns3l+4azY
 FFAZlgOJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYwEVcAAKCRCejBr7vv/bMvHQD/
 99/ZyLvERCwZaNKL/x2gVWKWVWtx3rh5cSSQtGeWM3SizqXKR69kzslicXvQvJZueN9KYqdJ+kUzye
 2Cwg5reDTjNVmHZKvW+PtROEfYQIY7OziKzT6TKk/NzaMKVyTsJdVAIk7pFZlxyhMYJysEiWuKl3Cw
 /9Qko5DjClGphSJX3fvBHpWkCIk7il8QJ0kB31NQ9PnnuYDIl7Q9HerX07Axe9mom6QseuATYlHEJx
 z/YpE1OQZ3LHS2FDbW4IXsKwxgx9ySa9OohSVAIX4kB/ClFZHNxUO7bLoA/naG3FX5ByqOFztn/8+Z
 VWwsAfrWafY+BBOuXGM4+qDBA2iYHRkRVCtejja56M59qEjg8YeH6TYSdA9fSZ9uf7lZwo/saGHzIa
 JiSXrqK6s9V/Rsqo77A6Hs8bNXdmokEYmnMWzw3lmcgx3edeCwW9k2B1wwwwzWVtL6H2/YA9si0zQu
 Foh5aDCDJeWJsMtyaEMTQDSXY4QnedwTWEhyBPvY/GTI9itLOCp/tKYB1yTwqFpA08xq4XVc7czsHO
 dt2ozaO2xTbyWUTh8A+vk0ZB3HSyb8sw36IjM+PyP9TYpelscNH/Q8U2w7pVFeSDPQR4ocOGVNsArf
 tiA+sPaGGVLwPUSQMPRxa+odxgJucEb+zTk7yDBtMkJ4jRMcVH2N2hCCpTXA==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Also add a hint of how intmax(3) and other functions using
[u]intmax_t types could be better defined by ISO C, by requiring
that they're implemented as type-generic macros, to avoid having
problems with the ABI.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: JeanHeyd Meneide <wg14@soasis.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>
---

Hi,

This page is one of the first using true-case page title, and the
first one using the new Linux man-pages 4th .TH argument.

I always forget about the syntax details of using _Generic(),
since it's different to anything else (why didn't they just use
switch-case syntax??!).

I hope this is useful for others as it is for me.

Cheers,

Alex


 man3/_Generic.3 | 69 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 man3/_Generic.3

diff --git a/man3/_Generic.3 b/man3/_Generic.3
new file mode 100644
index 000000000..7c88a6975
--- /dev/null
+++ b/man3/_Generic.3
@@ -0,0 +1,69 @@
+.\" Copyright (C) 2022 Alejandro Colomar <alx.manpages@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH _Generic 3 2022-08-20 "Linux man-pages (unreleased)" "Linux Programmer's Manual"
+.SH NAME
+_Generic \- type-generic selection
+.SH SYNOPSIS
+.nf
+.BR _Generic( \fIexpression\fP ", type1: " e1 ", " "... /*" \
+", default: " "e */" );
+.fi
+.SH DESCRIPTION
+.BR _Generic ()
+evaluates the path of code under the type selector
+that is compatible with the type of the controlling
+.IR expression ,
+or
+.B default:
+if no type is compatible.
+.PP
+.I expression
+is not evaluated.
+.PP
+This is especially useful for writing type-generic macros,
+that will behave differently depending on the type of the argument.
+.SH STANDARDS
+C11 and later.
+.SH EXAMPLES
+The following program demonstrates how to write
+a replacement for the standard
+.BR imaxabs (3)
+function, which being a function can't really provide what it promises:
+seamlessly upgrading to the widest available type.
+.PP
+.\" SRC BEGIN (_Generic.c)
+.EX
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+
+#define my_imaxabs(j)  _Generic \e
+((intmax_t) 0,                  \e
+                                \e
+    int:                        \e
+        abs(j),                 \e
+                                \e
+    long:                       \e
+        labs(j),                \e
+                                \e
+    long long:                  \e
+        llabs(j)                \e
+                                \e
+    /* long long long: */       \e
+    /*  lllabs(j)     */        \e
+)
+
+int
+main(void)
+{
+    short a;
+
+    a = \-42;
+    printf("imaxabs(%d) == %jd\en", a, my_imaxabs(a));
+
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
-- 
2.37.2

