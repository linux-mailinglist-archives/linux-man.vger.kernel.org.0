Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4FD59B3A4
	for <lists+linux-man@lfdr.de>; Sun, 21 Aug 2022 13:56:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbiHUL4Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Aug 2022 07:56:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbiHUL4Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Aug 2022 07:56:24 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B1FE13EA2
        for <linux-man@vger.kernel.org>; Sun, 21 Aug 2022 04:56:23 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id ay12so4285617wmb.1
        for <linux-man@vger.kernel.org>; Sun, 21 Aug 2022 04:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=yPDRCaFTwR89X6qnzxFiGM3Na+MOQwBNc1+XVW829x4=;
        b=A2mRy1pmTGUByVWJ/VMOmEp13QvBA7rVwwwSPDJ91CusmfZAZ963IjtnkJeJn9kfnC
         xWNxw3b/YlJ9AmQnbbhDrXgE5AsNNJEweEwM1/+WzjZ094RKp0II+aKJGlwSBB/1fqq5
         jz3L0uYgazZwiP3XhCUFM3kL3PO0JUQ5oCFWjVnd5QixlIIe6/SB9jTUJb/hhnblAwdz
         w+bAkVYwoPx9e99ATM6D0x8FDyRYPfGYq+pobvNPI8S5kaUEnimd5aGT6uQwM5Nbkrla
         brC4SaNgzLDtf0+tr8O82yyZfOFLbQZpnkgJxBu6w7OdyrY5ZV2frxv+9QfBUBVY0WB4
         aJpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=yPDRCaFTwR89X6qnzxFiGM3Na+MOQwBNc1+XVW829x4=;
        b=M+TtSHBOKTzGTzcXZTz6PMPv6EvGAnjK0XiSInw3lS93pTTo9DIv01ezF4zypikD1D
         EceYVbkI4eWtvVHNMuz2xMvBZkbSi3Ux/usxUNC0FnmL56ak5Z9ZYjIaWD+U6PjUWpyL
         Bzuxq4jeevttFUN/RkSsIVj148WdUA9yuIudxtYfWtSTBxKbug6m/DIgpR2IZH2rFac3
         mT8RijJbz2LpSyfRxiBhj7oRq5OZJYr8LCAXiNZ4enrTVCGTcj2QGr3/WFnGxliggNzI
         t/dIuaUyVinFg7r1fK9SunU5xB9C2LxTBYZK6ikzM2454yPs/4S8XOYbMO73LwyvBw4X
         ErhA==
X-Gm-Message-State: ACgBeo1IXWqzgIEmfzHUEHZCfuQT7PTBM5p1Lj8L5oxnQKiF2GXJfHLB
        nFoaYq8SjsdyK1M2R7gtAe3Eo965qRM=
X-Google-Smtp-Source: AA6agR7APqOR5DOzHVNvnnvtPV7QCLMxeIlkcc0uwD/5Cr8ZczOqUNBW3vA3RONOF27UunrlOFpT/w==
X-Received: by 2002:a05:600c:1d9b:b0:3a5:d66e:6370 with SMTP id p27-20020a05600c1d9b00b003a5d66e6370mr9436833wms.73.1661082981765;
        Sun, 21 Aug 2022 04:56:21 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g2-20020a5d4882000000b002211fc70174sm10231992wrq.99.2022.08.21.04.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Aug 2022 04:56:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
Subject: [PATCH v2] _Generic.3: New page documenting _Generic()
Date:   Sun, 21 Aug 2022 13:55:07 +0200
Message-Id: <20220821115506.22850-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220820171009.34196-1-alx.manpages@gmail.com>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2339; i=alx.manpages@gmail.com;
 h=from:subject; bh=+fLE9WdfQBU1ZjAWEK4ZhIIkQ7CqFQI9/AdBBI3eIPQ=;
 b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjAh0Xwsdx/gkVm0O1CnjjNYLyVeNkEx1Q8A+aXxS/
 ce6VK6eJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYwIdFwAKCRCejBr7vv/bMh0QEA
 CE3u9Fki3DpkLKqEMP+vQaglPXjrZfzj6adEs8ZBONwfa9tTpSAZ5cuGwtWr0XEqP2VDfI5r/PsDe9
 4v0w5uwO8lByTln77fA0/6KNEoAkiZJheUVpa0155GbFLUjlNz7LAsbl1X5IZZ5jPqg5f5JduGPsxS
 2WQybq8p2q+kELfOsfBn2O4pLLZb6SaRTYYm4960K0qdKV9xo4YZu7c/3Gb7t2Z8tCHKiHertyG14m
 v/ICBYoL8kZsb6xtc4zhlVrJuLCYXIwuh/VicikDbQyMG5W7AacgQeGWi3ESl072y8tqJLDQ/NAoI8
 VliXtwpuCRg6sroqXpjlIvrc2KsIv3agRGZxRZtX1DX15JYxolvCRCk71Tc7mO2n74/haHhsYxmNCb
 QY52wNi9HMbzAtsZCrkN13ruA97hO8sYzppGVxdaUdhwJRRHI9FobzEOi4c+3s1BuxVYdiKdKAXZGY
 K017VQgMd9fn6uGx40udfo4GK1N0SbpyBE8/KojfnCDhsD5463ALktyXkkCaPLqBW8Vj/ymi/Lftcm
 INWj+MaaT3A/9J+Q5eiln03FbK6ChBhxRnisHZAxI/VNon7oJCApXg4c3V9uy3cl25r+qHdlh6dEhx
 cMfdj59ceu6EGYnwoNMZ7P7UhFJgBZbXnXHKllNg+w5We0fEoPOpGj1wNwkQ==
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

v2:

- Use a type that really needs to be converted to (intmax_t).
- Compatc _Generic().

 man3/_Generic.3 | 60 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 man3/_Generic.3

diff --git a/man3/_Generic.3 b/man3/_Generic.3
new file mode 100644
index 000000000..3e1c159ab
--- /dev/null
+++ b/man3/_Generic.3
@@ -0,0 +1,60 @@
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
+#define my_imaxabs(j)  _Generic((intmax_t) 0,  \e
+    int:            abs(j),                    \e
+    long:           labs(j),                   \e
+    long long:      llabs(j)                   \e
+ /* long long long: lllabs(j) */               \e
+)
+
+int
+main(void)
+{
+    off_t a;
+
+    a = \-42;
+    printf("imaxabs(%jd) == %jd\en", (intmax_t) a, my_imaxabs(a));
+
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
-- 
2.37.2

