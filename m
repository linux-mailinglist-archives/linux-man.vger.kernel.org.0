Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00B1D291207
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 15:30:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438115AbgJQNa1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 09:30:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438114AbgJQNa0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 09:30:26 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97CD1C061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:30:25 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id h5so6518195wrv.7
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 06:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wEUoTYDCivi1nJNA5EPs1uUTPf5tj0A1VuN3l4I+7NI=;
        b=Sug0rSReWuBd9wUhJYFBy4sNU+flD5dV4IlPVY4Ocqg9Ktk9k08OqEAeXuNZdUw5OP
         jmW3Xm6p9kFiHrQcZfynAYarh5IOnmHRHMVCWulyBS/Z1wZkw309yPF3oj2oY7PLu2tc
         YfLfQcQIZGXygzBvvxepEKBGoRUSMXdalfIuaCDcSsBI7fZQX4lsTLOjo2G4h08XMsq1
         FfcvXU3k9FcOO8pfmiaiRL6H9BGbBR5z8009vCvQDAV9MoSZb7omR9ZIVmruQ13gYUVM
         o3LAhoiwrskSEL+d0vLAKIeCd39kuNVlz+7DvM0ev54JMJNQCFmPtk1DvK6Ypdb3Oyjd
         NRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wEUoTYDCivi1nJNA5EPs1uUTPf5tj0A1VuN3l4I+7NI=;
        b=FoVhBdFT5r69yrpWRvcx6AhgFq57OxOdU+0MVsroMGQLO8z6CARzYgzPIc3oOWvun9
         ScbuEf//AIhCb8JZE8VLHMiY+/Nl7QNwLa5IEOqmetVSoxDhqeohApvqXYMpIdfVGPgX
         00/tMI8WaLuw2znuEXm5Dv4Lpg+C9rnknQbZkqoJiCjhsLiA6twhAdho1Xc+cNeRQ5Up
         /JE8thI95FUjrpR5x3XiJsUuzO6t+OmVOyfE0qfuvnnqInXiSDUaS/wgAXCzaOpUt9+g
         l9pTO7a+gvUoHg1eLFhdVfI0V7QysqALYElz4exgYmuY2VDhChF8y2uEGR4Xj7qqlhKH
         MnWA==
X-Gm-Message-State: AOAM5328bkGMHYq4X5vBcbURJ52chokLCdGh4rcyttNJrru6B+p6ltmr
        u9sbl0rmgIaYiFa4iKW0aqE=
X-Google-Smtp-Source: ABdhPJwwa64KCvA0fl6gpwRmwqVPPmikNki0LEwMU6HfJ3Atd0ZpfWAWNWdYO0DOckar7tAiQmAJmw==
X-Received: by 2002:adf:b787:: with SMTP id s7mr10698458wre.390.1602941424370;
        Sat, 17 Oct 2020 06:30:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id s1sm7209347wmh.22.2020.10.17.06.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 06:30:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v2] regex.3: Add example program
Date:   Sat, 17 Oct 2020 15:27:49 +0200
Message-Id: <20201017132748.150322-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <efc1c2c5-3cf9-e755-cab3-c19e100f210b@gmail.com>
References: <efc1c2c5-3cf9-e755-cab3-c19e100f210b@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

$ gcc -Wall -Wextra -Werror -pedantic regex.c -o regex
$ ./regex.3
String = "1) John Driverhacker;
2) John Doe;
3) John Foo;
"
Matches:
#0:
offset = 25; length = 7
substring = "John Do"
#1:
offset = 38; length = 8
substring = "John Foo"

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

Now it's much better :)

Cheers,

Alex

 man3/regex.3 | 42 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/man3/regex.3 b/man3/regex.3
index 7c5132995..72e576cc6 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -337,6 +337,48 @@ T}	Thread safety	MT-Safe
 .TE
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
+.SH EXAMPLES
+.EX
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
+    regoff_t    off, len;
+
+    if (regcomp(&regex, re, REG_NEWLINE))
+        exit(EXIT_FAILURE);
+
+    printf("String = \\"%s\\"\en", str);
+    printf("Matches:\en");
+
+    for (int i = 0; ; i++) {
+        if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))
+            break;
+
+        off = pmatch[0].rm_so + (s \- str);
+        len = pmatch[0].rm_eo \- pmatch[0].rm_so;
+        printf("#%d:\en", i);
+        printf("offset = %jd; length = %jd\en", (intmax_t) off, (intmax_t) len);
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

