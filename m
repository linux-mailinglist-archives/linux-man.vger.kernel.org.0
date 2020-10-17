Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83B4D2911F5
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 15:14:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438023AbgJQNOG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 09:14:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438022AbgJQNOF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 09:14:05 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DB98C061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:14:05 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g12so6466317wrp.10
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WfJPhcUAeLs9qNgaCOAzNBn7+4QTtz5Ai8erz6CFNT4=;
        b=rnM1+PSelwQOV700tqh1H7OfA8CqXwDntZP6XuqxlIW/aDTmJZcCUmRK+bOB6Lrdoc
         498v7WHfXPWd7l7143ZS1KTXaZ2HL+mLafvAc7V3gZQQ4u5nQZwMky/CDgJ7ZxBRw1Mr
         9NTCULJ+LFJ6jP363xreJc6aGXcSKYXGXr1XNe/24j1s6Z83iYwx3gS5WYx/kbvJJpb9
         uPJlWnlBdBkV7EQszVMYXrSIyWSn9ai3q75fadrqN8VJNpK2c5BUaXTbc426PfO/plo2
         fAcE0qc2OpeMCpEJunm8/q9PO3RhJjYKAgKHe5TY05g7bY4hvRBUbSNFAbHpe7CR03YG
         GsNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WfJPhcUAeLs9qNgaCOAzNBn7+4QTtz5Ai8erz6CFNT4=;
        b=oCovQpMxcW/sJaixXcBy32Gl8FOP6kVL2XKr3J21/n25rRfENx47X3GeGclGTN3Sr3
         /6jI2/vq/VuDV/Ay8hKljeym46BxiE2QTxjN9pAMOH4IFzFT/nc6SeGEBau33ffu2Hnz
         EIF/Dl0N3HH/d4LO+OAfNZagH5TwgIOXuetWP5wa5kvJcjel5xcE/jUA0aPUo1mpjGRr
         zTuRswJRsh/arRLpfkhDnbFFy6tAQ86eJTsZ9EZmi9iKsKiOnF7rNWTPU6ewYy4oqWi5
         qrA6EV4OgfHk5ViDBQusZyJs2r6a/Tbv7LVoxL72/+sTJKOsv6vVKw0fm+Dixp8+LPQ2
         +HOQ==
X-Gm-Message-State: AOAM5329htehmFYoI2bHHaQxzUBm88QdL6Dm9qqLVTpvPGkIJ0TFHf61
        5Tkmu/4SpSws7YPdJje1cqI=
X-Google-Smtp-Source: ABdhPJyqW4nnAhe5eGXnJxeukVy8OoFzPFTAqys5UdTY4a733XowB1y+8TECClfn97D9eErCgiTAKg==
X-Received: by 2002:adf:e8cb:: with SMTP id k11mr10058653wrn.91.1602940443680;
        Sat, 17 Oct 2020 06:14:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id c18sm8532205wrq.5.2020.10.17.06.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 06:14:02 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] regex.3: Add example program
Date:   Sat, 17 Oct 2020 15:13:25 +0200
Message-Id: <20201017131324.123039-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

$ gcc -Wall -Wextra -Werror -pedantic regex.c -o regex
$ ./regex
String = "1) John Driverhacker;
2) John Doe;
3) John Foo;
"
#0 match:
rm_so = 25; rm_eo = 32; len = 7
substring = "John Do"
#1 match:
rm_so = 6; rm_eo = 14; len = 8
substring = "John Foo"

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hello Michael,

Here's the example for regex.3 :-}

Best regards,

Alex


 man3/regex.3 | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/man3/regex.3 b/man3/regex.3
index 7c5132995..94da88b7e 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -337,6 +337,50 @@ T}	Thread safety	MT-Safe
 .TE
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
+.SH EXAMPLES
+.EX
+#include <stddef.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <regex.h>
+
+#define ARRAY_SIZE(arr) (sizeof((arr)) / sizeof((arr)[0]))
+
+static const char *const str =
+        "1) John Driverhacker;\en2) John Doe;\en3) John Foo;\en";
+static const char *const re = "John.*o";
+
+int main(void)
+{
+    static const char *s = str;
+    regex_t     regex;
+    regmatch_t  pmatch[1];
+    regoff_t    len;
+
+    if (regcomp(&regex, re, REG_NEWLINE))
+        exit(EXIT_FAILURE);
+
+    printf("String = \\"%s\\"\en", str);
+
+    for (ptrdiff_t i = 0; ; i++) {
+        if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))
+            break;
+
+        len = pmatch[0].rm_eo \- pmatch[0].rm_so;
+        printf("#%td match:\en", i);
+        printf("rm_so = %jd; rm_eo = %jd; len = %jd\en",
+                (intmax_t) pmatch[0].rm_so,
+                (intmax_t) pmatch[0].rm_eo,
+                (intmax_t) len);
+        printf("substring = \\"%.*s\\"\en", len, s + pmatch[0].rm_so);
+
+        s += pmatch[0].rm_eo;
+    }
+
+    exit(EXIT_SUCCESS);
+}
+.EE
 .SH SEE ALSO
 .BR grep (1),
 .BR regex (7)
-- 
2.28.0

