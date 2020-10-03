Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 046E6282354
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 11:49:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725681AbgJCJtV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 05:49:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725770AbgJCJtV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 05:49:21 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B28EBC0613D0
        for <linux-man@vger.kernel.org>; Sat,  3 Oct 2020 02:49:20 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k15so4368575wrn.10
        for <linux-man@vger.kernel.org>; Sat, 03 Oct 2020 02:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ASxF3LWk6aWaLa19+Ix6MpaEI/hPeAlVtR3zgwezMTU=;
        b=Yb9mdaxN8Ho/ITCJ+p14WJW9Ay0rALC/1Zr/0928HCCRemkckeHTs4uxzvfd49A04A
         p5QFUnFH1kGTjYUZdHKne+QuzZ+T4TX7Np7CwnvqUb6By9HaTAfEQvyIcLVxJ5QxNu87
         q/1bSNpZeuFxM8Pt+m50KnASmJKbcg+teqSVPvO8mePlboQmZKfS0YezwU7xc0X3g3AC
         QFqRy29a5MGjnCJIZrnTFqYdqiWOrZCuiT3xDW19OTVUygCNhdXCLf+QQK1AqzbtN+Ze
         7Q3YDBUzlm4oLtlCvY9pELGDpmruNYBmfF9XRaH7Yp686xkGG1TFHYBrbwDyiSCaMGds
         qN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ASxF3LWk6aWaLa19+Ix6MpaEI/hPeAlVtR3zgwezMTU=;
        b=C8dOq2ImDMCwkZjU7PfnAKSlbPn1L/C4Xtukbho+GuO4cg+boXNuUBfkHVPcnZxHXA
         reLdLrqb1bL+C0BTRvhjf1vy4Y//x5wV6i6AhtMlb0qKICVv3eJy22hhNgOTfIqURPtV
         4OhE2IMIIV2jSMaZEjVEZ3S3xQCA5Dkbp3fhgD5lL9f0abcbU0reCmV9ZF/InQ0Vl2tV
         t9LafhKhWMc1dx5QPQtPgsEWaRZIAEKrjmndpB/xpJ+83ZDVF1q+XAo52/xYnOkYWWbr
         65MThh6qIP9ckdd51oMPGosHyDNlcwgQbtE7OuZbso+VqUAhgKAT1gp0Fqjknezt0rhs
         qG/Q==
X-Gm-Message-State: AOAM531a4peb3b8sJqxYTFV8fhgnQ0QreBtAwgaWghdDsssCv++m1e8j
        kmRbqC8U9F8wezEukFOwCDEIHPVJuWo4IQ==
X-Google-Smtp-Source: ABdhPJyJU68MmJYheV//YPFh7zuSVfwvjpQG66v5MHb+J8DZmz7cD3UzMSaT5UFn82AYkUDKFj2iDg==
X-Received: by 2002:adf:f34a:: with SMTP id e10mr1428348wrp.91.1601718559306;
        Sat, 03 Oct 2020 02:49:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k82sm3553805wmf.15.2020.10.03.02.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 02:49:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, eggert@cs.ucla.edu,
        jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: [PATCH] Revert [u]int_*astN_t commits
Date:   Sat,  3 Oct 2020 11:48:48 +0200
Message-Id: <20201003094846.7853-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Revert "uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3, uint_leastN_t.3: New links to system_data_types(7)"
This reverts commit a5d13a32b79508c3224b678c67c1d5bcec0dd78e.

Revert "system_data_types.7: Add uint_leastN_t family of types"
This reverts commit 3450a5621e2a0bbba96add77002d5bf92412fd80.

Revert "int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3, int_leastN_t.3: New links to system_data_types(7)"
This reverts commit 876838354df6f32a3ba6c91698bdd8fb25e8167b.

Revert "system_data_types.7: Add int_leastN_t family of types"
This reverts commit f9b54d3a2eb5da554f9c6979b588fec534082586.

Revert "uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3, uint_fastN_t.3: New links to system_data_types(7)"
This reverts commit 496b1aad79db5662cac02b4a2c51851c8b37a5c5.

Revert "system_data_types.7: Add uint_fastN_t family of types"
This reverts commit 3c9ae6e5a264f1346260931132661cceb74f2539.

Revert "int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3, int_fastN_t.3: New links to system_data_types(7)"
This reverts commit 9df81a23e563ca1e65aafaaec981321816e35f25.

Revert "system_data_types.7: Add int_fastN_t family of types"
This reverts commit 8f12d3f6838e1b65e872211286cb33418953a94d.

Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/int_fast16_t.3      |   1 -
 man3/int_fast32_t.3      |   1 -
 man3/int_fast64_t.3      |   1 -
 man3/int_fast8_t.3       |   1 -
 man3/int_fastN_t.3       |   1 -
 man3/int_least16_t.3     |   1 -
 man3/int_least32_t.3     |   1 -
 man3/int_least64_t.3     |   1 -
 man3/int_least8_t.3      |   1 -
 man3/int_leastN_t.3      |   1 -
 man3/uint_fast16_t.3     |   1 -
 man3/uint_fast32_t.3     |   1 -
 man3/uint_fast64_t.3     |   1 -
 man3/uint_fast8_t.3      |   1 -
 man3/uint_fastN_t.3      |   1 -
 man3/uint_least16_t.3    |   1 -
 man3/uint_least32_t.3    |   1 -
 man3/uint_least64_t.3    |   1 -
 man3/uint_least8_t.3     |   1 -
 man3/uint_leastN_t.3     |   1 -
 man7/system_data_types.7 | 304 ---------------------------------------
 21 files changed, 324 deletions(-)
 delete mode 100644 man3/int_fast16_t.3
 delete mode 100644 man3/int_fast32_t.3
 delete mode 100644 man3/int_fast64_t.3
 delete mode 100644 man3/int_fast8_t.3
 delete mode 100644 man3/int_fastN_t.3
 delete mode 100644 man3/int_least16_t.3
 delete mode 100644 man3/int_least32_t.3
 delete mode 100644 man3/int_least64_t.3
 delete mode 100644 man3/int_least8_t.3
 delete mode 100644 man3/int_leastN_t.3
 delete mode 100644 man3/uint_fast16_t.3
 delete mode 100644 man3/uint_fast32_t.3
 delete mode 100644 man3/uint_fast64_t.3
 delete mode 100644 man3/uint_fast8_t.3
 delete mode 100644 man3/uint_fastN_t.3
 delete mode 100644 man3/uint_least16_t.3
 delete mode 100644 man3/uint_least32_t.3
 delete mode 100644 man3/uint_least64_t.3
 delete mode 100644 man3/uint_least8_t.3
 delete mode 100644 man3/uint_leastN_t.3

diff --git a/man3/int_fast16_t.3 b/man3/int_fast16_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_fast16_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_fast32_t.3 b/man3/int_fast32_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_fast32_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_fast64_t.3 b/man3/int_fast64_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_fast64_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_fast8_t.3 b/man3/int_fast8_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_fast8_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_fastN_t.3 b/man3/int_fastN_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_fastN_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_least16_t.3 b/man3/int_least16_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_least16_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_least32_t.3 b/man3/int_least32_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_least32_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_least64_t.3 b/man3/int_least64_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_least64_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_least8_t.3 b/man3/int_least8_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_least8_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/int_leastN_t.3 b/man3/int_leastN_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/int_leastN_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_fast16_t.3 b/man3/uint_fast16_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_fast16_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_fast32_t.3 b/man3/uint_fast32_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_fast32_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_fast64_t.3 b/man3/uint_fast64_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_fast64_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_fast8_t.3 b/man3/uint_fast8_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_fast8_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_fastN_t.3 b/man3/uint_fastN_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_fastN_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_least16_t.3 b/man3/uint_least16_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_least16_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_least32_t.3 b/man3/uint_least32_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_least32_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_least64_t.3 b/man3/uint_least64_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_least64_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_least8_t.3 b/man3/uint_least8_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_least8_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man3/uint_leastN_t.3 b/man3/uint_leastN_t.3
deleted file mode 100644
index db50c0f09..000000000
--- a/man3/uint_leastN_t.3
+++ /dev/null
@@ -1 +0,0 @@
-.so man7/system_data_types.7
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 07864ad1e..bcc97d19d 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -331,155 +331,6 @@ C99 and later; POSIX.1-2001 and later.
 See also:
 .BR imaxdiv (3)
 .RE
-.\"------------------------------------- int_fastN_t ------------------/
-.TP
-.IR int_fast N _t
-.RS
-Include:
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-.IR int_fast8_t ,
-.IR int_fast16_t ,
-.IR int_fast32_t ,
-.I int_fast64_t
-.PP
-Usually the fastest (see Notes) signed integer type
-of a width of at least N bits,
-N being the value specified in its type name.
-According to the C language standard, they shall be
-capable of storing values in the range
-.RB [ INT_FAST N _MIN ,
-.BR INT_FAST N _MAX ],
-substituting N by the appropriate number.
-.PP
-The length modifiers for the
-.IR int_fast N _t
-types for the
-.BR printf (3)
-family of functions
-are expanded by macros of the forms
-.BR PRIdFAST N
-and
-.BR PRIiFAST N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"PRIdFAST64"
-or
-.B %"PRIiFAST64"
-for printing
-.I int_fast64_t
-values.
-The length modifiers for the
-.IR int_fast N _t
-types for the
-.BR scanf (3)
-family of functions
-are expanded by macros of the forms
-.BR SCNdFAST N
-and
-.BR SCNiFAST N,
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"SCNdFAST8"
-or
-.B %"SCNiFAST8"
-for scanning
-.I int_fast8_t
-values.
-.PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
-Notes:
-Where there is no single type that is fastest for all purposes,
-the implementation may choose any type
-with the required signedness and at least the minimum width.
-.PP
-See also the
-.IR int_least N _t ,
-.IR int N _t ,
-.IR uint_fast N _t ,
-.IR uint_least N _t
-and
-.IR uint N _t
-types in this page.
-.RE
-.\"------------------------------------- int_leastN_t -----------------/
-.TP
-.IR int_least N _t
-.RS
-Include:
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-.IR int_least8_t ,
-.IR int_least16_t ,
-.IR int_least32_t ,
-.I int_least64_t
-.PP
-The narrowest signed integer type
-of a width of at least N bits,
-N being the value specified in its type name.
-According to the C language standard, they shall be
-capable of storing values in the range
-.RB [ INT_LEAST N _MIN ,
-.BR INT_LEAST N _MAX ],
-substituting N by the appropriate number.
-.PP
-The length modifiers for the
-.IR int_least N _t
-types for the
-.BR printf (3)
-family of functions
-are expanded by macros of the forms
-.BR PRIdLEAST N
-and
-.BR PRIiLEAST N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"PRIdLEAST64"
-or
-.B %"PRIiLEAST64"
-for printing
-.I int_least64_t
-values.
-The length modifiers for the
-.IR int_least N _t
-types for the
-.BR scanf (3)
-family of functions
-are expanded by macros of the forms
-.BR SCNdLEAST N
-and
-.BR SCNiLEAST N,
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"SCNdLEAST8"
-or
-.B %"SCNiLEAST8"
-for scanning
-.I int_least8_t
-values.
-.PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
-See also the
-.IR int_fast N _t ,
-.IR int N _t ,
-.IR uint_fast N _t ,
-.IR uint_least N _t
-and
-.IR uint N _t
-types in this page.
-.RE
 .\"------------------------------------- intmax_t ---------------------/
 .TP
 .I intmax_t
@@ -1420,161 +1271,6 @@ See also:
 .BR getpwnam (2),
 .BR credentials (7)
 .RE
-.\"------------------------------------- uint_fastN_t -----------------/
-.TP
-.IR uint_fast N _t
-.RS
-Include:
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-.IR uint_fast8_t ,
-.IR uint_fast16_t ,
-.IR uint_fast32_t ,
-.I uint_fast64_t
-.PP
-Usually the fastest (see Notes) unsigned integer type
-of a width of at least N bits,
-N being the value specified in its type name.
-According to the C language standard, they shall be
-capable of storing values in the range [0,
-.BR UINT_FAST N _MAX ],
-substituting N by the appropriate number.
-.PP
-The length modifiers for the
-.IR uint_fast N _t
-types for the
-.BR printf (3)
-family of functions
-are expanded by macros of the forms
-.BR PRIuFAST N,
-.BR PRIoFAST N,
-.BR PRIxFAST N
-and
-.BR PRIXFAST N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"PRIuFAST32"
-or
-.B %"PRIxFAST32"
-for printing
-.I uint_fast32_t
-values.
-The length modifiers for the
-.IR uint_fast N _t
-types for the
-.BR scanf (3)
-family of functions
-are expanded by macros of the forms
-.BR SCNuFAST N,
-.BR SCNoFAST N,
-.BR SCNxFAST N
-and
-.BR SCNXFAST N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"SCNuFAST16"
-or
-.B %"SCNxFAST16"
-for scanning
-.I uint_fast16_t
-values.
-.PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
-Notes:
-Where there is no single type that is fastest for all purposes,
-the implementation may choose any type
-with the required signedness and at least the minimum width.
-.PP
-See also the
-.IR int_fast N _t ,
-.IR int_least N _t ,
-.IR int N _t ,
-.IR uint_least N _t
-and
-.IR uint N _t
-types in this page.
-.RE
-.\"------------------------------------- uint_leastN_t ----------------/
-.TP
-.IR uint_least N _t
-.RS
-Include:
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-.IR uint_least8_t ,
-.IR uint_least16_t ,
-.IR uint_least32_t ,
-.I uint_least64_t
-.PP
-The narrowest unsigned integer type
-of a width of at least N bits,
-N being the value specified in its type name.
-According to the C language standard, they shall be
-capable of storing values in the range [0,
-.BR UINT_LEAST N _MAX ],
-substituting N by the appropriate number.
-.PP
-The length modifiers for the
-.IR uint_least N _t
-types for the
-.BR printf (3)
-family of functions
-are expanded by macros of the forms
-.BR PRIuLEST N,
-.BR PRIoLEAST N,
-.BR PRIxLEAST N
-and
-.BR PRIXLEAST N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"PRIuLEAST32"
-or
-.B %"PRIxLEAST32"
-for printing
-.I uint_least32_t
-values.
-The length modifiers for the
-.IR uint_least N _t
-types for the
-.BR scanf (3)
-family of functions
-are expanded by macros of the forms
-.BR SCNuLEAST N,
-.BR SCNoLEAST N,
-.BR SCNxLEAST N
-and
-.BR SCNXLEAST N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"SCNuLEAST16"
-or
-.B %"SCNxLEAST16"
-for scanning
-.I uint_least16_t
-values.
-.PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
-See also the
-.IR int_fast N _t ,
-.IR int_least N _t ,
-.IR int N _t ,
-.IR uint_fast N _t
-and
-.IR uint N _t
-types in this page.
-.RE
 .\"------------------------------------- uintmax_t --------------------/
 .TP
 .I uintmax_t
-- 
2.28.0

