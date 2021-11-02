Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 712C944355D
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235016AbhKBSSN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235009AbhKBSSN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:13 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EF35C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:38 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id b184-20020a1c1bc1000000b0033140bf8dd5so26542wmb.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lcyAHkYFev/Mz+eT6D8v+sPfRGsueYD0c6JeW4ka2cs=;
        b=lJLIGtXUTb2XVBbSqiQOUkKj1W1bD6cojKMVHJGc72dKSdN+B3LBF/oq8eR96Wpa8d
         MWoe7zDHB+fd+FhQONJkSBztv32apqS4URXkqWwT5D4ji7B4K0pmGdn9H0yIQ2iRSWW2
         ooT8bZaoDwKaOiC2y5anxIjwPnpUPQEYEpMO38gE4spU6szOMJv4a81ymRo6k41hDyw3
         Bl7fd3tPH1vDxKhxb/Uke3ZR4wwNLRnupAt1SyBGs1UGXf0xwNAwfDxz6UKgOPWT8bVa
         Lzs9eX1sSDqdRR9dQnys2SYl2dJ3SeEILJcM0qg1njjaYHf+29bmyrLzBFovBGuhAC+X
         mrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lcyAHkYFev/Mz+eT6D8v+sPfRGsueYD0c6JeW4ka2cs=;
        b=Fq93WhLxrP6l7ZjurRMH1j7XgnM7m0QuAJfZ8JMspeqLjc2Uy007bL+/GETgZ7e/AK
         g7WBo1KdNJwbr6UGjJBqSlTdReH4UJmmG/QrTk7aJcCJIEH/3JjLDlqtaWB0bCrOw5zK
         C9mZI11x4FnfthFhUqffGbMeUjjInfkksZ49KRSA3UTZeqz/y+wyDKps0ENt7loOdr35
         4k8EB85XvNjrgf8/niCoBYShFtgmEN7+f+njX6a7+NuKx5qqDoUC+5+h+azkzKnb4CAk
         qVFUQOkaui95rrbsN/aVzAOyJsp/0kOcuc+bMxYcTjnLrYSul9ZCUuJ/BGOIJX++rmK2
         Gzyw==
X-Gm-Message-State: AOAM531pMGyce7YJ1o5V/JKc9t2PGNbYW3frJElu5o7NMho8mqWAhDr4
        ujR6Oov4BhCFvgz5U2Pmqsg=
X-Google-Smtp-Source: ABdhPJzTpycjRudSLPbOf2lb7L295eCpCH2CJ5cI8AHL8QMAyrZcorY6MhUHfg8RMRlmGBcOp611Zg==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr9108357wmb.78.1635876936792;
        Tue, 02 Nov 2021 11:15:36 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 32/37] intN_t.3, uint16_t.3, uint32_t.3, uint64_t.3, uint8_t.3, uintN_t.3, system_data_types.7: Move uintN_t to intN_t.3
Date:   Tue,  2 Nov 2021 19:14:49 +0100
Message-Id: <20211102181454.280919-33-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/intN_t.3            | 64 +++++++++++++++++++++---------
 man3/uint16_t.3          |  2 +-
 man3/uint32_t.3          |  2 +-
 man3/uint64_t.3          |  2 +-
 man3/uint8_t.3           |  2 +-
 man3/uintN_t.3           |  2 +-
 man7/system_data_types.7 | 84 ----------------------------------------
 7 files changed, 50 insertions(+), 108 deletions(-)

diff --git a/man3/intN_t.3 b/man3/intN_t.3
index c8a595bac..b7642545f 100644
--- a/man3/intN_t.3
+++ b/man3/intN_t.3
@@ -1,6 +1,8 @@
 .TH INTN_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-intN_t, int8_t, int16_t, int32_t, int64_t \- fixed-width basic integer types
+intN_t, int8_t, int16_t, int32_t, int64_t,
+uintN_t, uint8_t, uint16_t, uint32_t, uint64_t
+\- fixed-width basic integer types
 .SH SYNOPSIS
 .nf
 .B #include <stdint.h>
@@ -9,38 +11,60 @@ intN_t, int8_t, int16_t, int32_t, int64_t \- fixed-width basic integer types
 .BR typedef " /* ... */ " int16_t;
 .BR typedef " /* ... */ " int32_t;
 .BR typedef " /* ... */ " int64_t;
+.PP
+.BR typedef " /* ... */ " uint8_t;
+.BR typedef " /* ... */ " uint16_t;
+.BR typedef " /* ... */ " uint32_t;
+.BR typedef " /* ... */ " uint64_t;
 .fi
 .SH DESCRIPTION
 .IR int N _t
 are
 signed integer types
 of a fixed width of exactly N bits,
-N being the value specified in its type name.
+.I N
+being the value specified in its type name.
 According to the C language standard, they shall be
 capable of storing values in the range
-.RB [ INT N _MIN ,
-.BR INT N _MAX ],
-substituting N by the appropriate number.
+.RB [ INT \fIN\fP _MIN ,
+.BR INT \fIN\fP _MAX ],
+substituting
+.I N
+by the appropriate number.
+.PP
+.IR uint N _t
+are
+unsigned integer types
+of a fixed width of exactly N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range [0,
+.BR UINT \fIN\fP _MAX ],
+substituting
+.I N
+by the appropriate number.
 .PP
 According to POSIX,
-.IR int8_t ,
-.IR int16_t ,
+.RI [ u ] int8_t ,
+.RI [ u ] int16_t ,
 and
-.I int32_t
+.RI [ u ] int32_t
 are required;
-.I int64_t
-is only required in implementations that provide integer types with width 64;
+.RI [ u ] int64_t
+are only required in implementations that provide integer types with width 64;
 and all other types of this form are optional.
 .PP
 The length modifiers for the
-.IR int N _t
+.RI [ u ] int N _t
 types for the
 .BR printf (3)
 family of functions
 are expanded by macros of the forms
-.BR PRId N
+.BR PRId \fIN\fP,
+.BR PRIi \fIN\fP,
+.BR PRIu \fIN\fP,
 and
-.BR PRIi N
+.BI PRIx N
 (defined in
 .IR <inttypes.h> );
 resulting for example in
@@ -51,22 +75,24 @@ for printing
 .I int64_t
 values.
 The length modifiers for the
-.IR int N _t
+.RI [ u ] int N _t
 types for the
 .BR scanf (3)
 family of functions
 are expanded by macros of the forms
-.BR SCNd N
+.BR SCNd \fIN\fP,
+.BR SCNi \fIN\fP,
+.BR SCNu \fIN\fP,
 and
-.BR SCNi N,
+.BI SCNx N,
 (defined in
 .IR <inttypes.h> );
 resulting for example in
-.B %"SCNd8"
+.B %"SCNu8"
 or
-.B %"SCNi8"
+.B %"SCNx8"
 for scanning
-.I int8_t
+.I uint8_t
 values.
 .PP
 .IR "Conforming to" :
diff --git a/man3/uint16_t.3 b/man3/uint16_t.3
index db50c0f09..027707f61 100644
--- a/man3/uint16_t.3
+++ b/man3/uint16_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/uint32_t.3 b/man3/uint32_t.3
index db50c0f09..027707f61 100644
--- a/man3/uint32_t.3
+++ b/man3/uint32_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/uint64_t.3 b/man3/uint64_t.3
index db50c0f09..027707f61 100644
--- a/man3/uint64_t.3
+++ b/man3/uint64_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/uint8_t.3 b/man3/uint8_t.3
index db50c0f09..027707f61 100644
--- a/man3/uint8_t.3
+++ b/man3/uint8_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/uintN_t.3 b/man3/uintN_t.3
index db50c0f09..027707f61 100644
--- a/man3/uintN_t.3
+++ b/man3/uintN_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 836b390c6..f4b30caba 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1154,90 +1154,6 @@ POSIX.1-2001 and later.
 .\"------------------------------------- uid_t ----------------------/
 .\"------------------------------------- uintmax_t --------------------/
 .\"------------------------------------- uintN_t ----------------------/
-.TP
-.IR uint N _t
-.RS
-.IR Include :
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-.IR uint8_t ,
-.IR uint16_t ,
-.IR uint32_t ,
-.I uint64_t
-.PP
-An unsigned integer type
-of a fixed width of exactly N bits,
-N being the value specified in its type name.
-According to the C language standard, they shall be
-capable of storing values in the range [0,
-.BR UINT N _MAX ],
-substituting N by the appropriate number.
-.PP
-According to POSIX,
-.IR uint8_t ,
-.IR uint16_t ,
-and
-.I uint32_t
-are required;
-.I uint64_t
-is only required in implementations that provide integer types
-with width 64;
-and all other types of this form are optional.
-.PP
-The length modifiers for the
-.IR uint N _t
-types for the
-.BR printf (3)
-family of functions
-are expanded by macros of the forms
-.BR PRIu N,
-.BR PRIo N,
-.BR PRIx N,
-and
-.BR PRIX N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"PRIu32"
-or
-.B %"PRIx32"
-for printing
-.I uint32_t
-values.
-The length modifiers for the
-.IR uint N _t
-types for the
-.BR scanf (3)
-family of functions
-are expanded by macros of the forms
-.BR SCNu N,
-.BR SCNo N,
-.BR SCNx N,
-and
-.BR SCNX N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"SCNu16"
-or
-.B %"SCNx16"
-for scanning
-.I uint16_t
-values.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-the
-.IR intmax_t ,
-.IR int N _t ,
-and
-.IR uintmax_t
-types in this page.
-.RE
 .\"------------------------------------- uintptr_t --------------------/
 .TP
 .I uintptr_t
-- 
2.33.1

