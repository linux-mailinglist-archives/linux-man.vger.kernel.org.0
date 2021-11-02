Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90E4744355C
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235013AbhKBSSM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235009AbhKBSSM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:12 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4318EC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:37 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id b184-20020a1c1bc1000000b0033140bf8dd5so26512wmb.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w2f+sETq2AqKMPGon3Q0QEjcG0c8qQOrx2HfYdzCE2U=;
        b=K2aXyDt+P2FKpPOgB56VybmVRkvPxzgq621lKgikdkmOLxGCXfc4SLgPp5etXc2rUC
         AOXhyRSosfnNNFRmyFI+f//8gsgI54hffdGaKe+evA4tMu7ZOl5iNXdiNoFRe0m40Vmx
         VmYndiJr5xJ+X4t/5QP79fMn+jpFSqtcgcy0+ZlnhBHK91E4/EucBZn/NBwAU42L2O5H
         OQm7PsLR2ulkUPOZw0b8Ah6+j0jBae2ia79B66D9yLFag+SaggKfShtbJbFZey1KwLWN
         JsWt/iEJVDYaEkOFaq/4WXPAFyIbfzN3+Okj2ghihfScWts9lYIn4MRJX4LSwzeoloE/
         BFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w2f+sETq2AqKMPGon3Q0QEjcG0c8qQOrx2HfYdzCE2U=;
        b=5gGOlOWTpaX6UjfIbT9GtIRnklhWL3urYDXVybSYpx0ykF1AzDJM1MSyS9bJCMCQXn
         e3kT6/lE/dc0GD1/uevLVtnBxG9Kg8iKfzvI80IAWVAPVhkg4gWYHXtkdnTi9uYLSgoq
         V4BY8D5athhXcBORXeqkOXfBo/+/XTdJemGVZiejyHk2SkglqY8rMESd1MQlVTkPPhZq
         dOkYI4xlkwWYcrBZmYUpWBJP/uY1mdP/BvtcoX6L43bIlkCiNL3YA1mrxdLpwph9XMNi
         4ZI2WwIL2RWORQUoKuUg+zTXf9YuiyIcyBaL6f9CLPeP0eX14Yz/z+Azuseuo+URBbqf
         38xA==
X-Gm-Message-State: AOAM533KHZkyi76Ed4dVCsRdl1FkQ54Hr7WWPzgC7oRSE4w7emtam0El
        8s3YDFIpKV0RWwzPZrXKNjw=
X-Google-Smtp-Source: ABdhPJxyIZDfl1oLIrPVpVdLFJ/8XmMhI9th1gwXqqj33LUKKxcztP6rpiLAnqMfiFo/8S94gkVxhA==
X-Received: by 2002:a7b:c351:: with SMTP id l17mr9187605wmj.120.1635876935774;
        Tue, 02 Nov 2021 11:15:35 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:35 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 31/37] intN_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:48 +0100
Message-Id: <20211102181454.280919-32-alx.manpages@gmail.com>
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
 man3/int16_t.3           |  2 +-
 man3/int32_t.3           |  2 +-
 man3/int64_t.3           |  2 +-
 man3/int8_t.3            |  2 +-
 man3/intN_t.3            | 81 +++++++++++++++++++++++++++++++++++++++-
 man7/system_data_types.7 | 81 ----------------------------------------
 6 files changed, 84 insertions(+), 86 deletions(-)

diff --git a/man3/int16_t.3 b/man3/int16_t.3
index db50c0f09..027707f61 100644
--- a/man3/int16_t.3
+++ b/man3/int16_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/int32_t.3 b/man3/int32_t.3
index db50c0f09..027707f61 100644
--- a/man3/int32_t.3
+++ b/man3/int32_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/int64_t.3 b/man3/int64_t.3
index db50c0f09..027707f61 100644
--- a/man3/int64_t.3
+++ b/man3/int64_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/int8_t.3 b/man3/int8_t.3
index db50c0f09..027707f61 100644
--- a/man3/int8_t.3
+++ b/man3/int8_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intN_t.3
diff --git a/man3/intN_t.3 b/man3/intN_t.3
index db50c0f09..c8a595bac 100644
--- a/man3/intN_t.3
+++ b/man3/intN_t.3
@@ -1 +1,80 @@
-.so man7/system_data_types.7
+.TH INTN_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+intN_t, int8_t, int16_t, int32_t, int64_t \- fixed-width basic integer types
+.SH SYNOPSIS
+.nf
+.B #include <stdint.h>
+.PP
+.BR typedef " /* ... */ " int8_t;
+.BR typedef " /* ... */ " int16_t;
+.BR typedef " /* ... */ " int32_t;
+.BR typedef " /* ... */ " int64_t;
+.fi
+.SH DESCRIPTION
+.IR int N _t
+are
+signed integer types
+of a fixed width of exactly N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range
+.RB [ INT N _MIN ,
+.BR INT N _MAX ],
+substituting N by the appropriate number.
+.PP
+According to POSIX,
+.IR int8_t ,
+.IR int16_t ,
+and
+.I int32_t
+are required;
+.I int64_t
+is only required in implementations that provide integer types with width 64;
+and all other types of this form are optional.
+.PP
+The length modifiers for the
+.IR int N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRId N
+and
+.BR PRIi N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRId64"
+or
+.B %"PRIi64"
+for printing
+.I int64_t
+values.
+The length modifiers for the
+.IR int N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNd N
+and
+.BR SCNi N,
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNd8"
+or
+.B %"SCNi8"
+for scanning
+.I int8_t
+values.
+.PP
+.IR "Conforming to" :
+C99 and later; POSIX.1-2001 and later.
+.SH NOTES
+The following header also provides these types:
+.IR <inttypes.h> .
+.SH SEE ALSO
+.BR intmax_t (3),
+.BR intptr_t (3),
+.BR printf (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 4c5ee6625..836b390c6 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -69,87 +69,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- imaxdiv_t --------------------/
 .\"------------------------------------- intmax_t ---------------------/
 .\"------------------------------------- intN_t -----------------------/
-.TP
-.IR int N _t
-.RS
-.IR Include :
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-.IR int8_t ,
-.IR int16_t ,
-.IR int32_t ,
-.I int64_t
-.PP
-A signed integer type
-of a fixed width of exactly N bits,
-N being the value specified in its type name.
-According to the C language standard, they shall be
-capable of storing values in the range
-.RB [ INT N _MIN ,
-.BR INT N _MAX ],
-substituting N by the appropriate number.
-.PP
-According to POSIX,
-.IR int8_t ,
-.IR int16_t ,
-and
-.I int32_t
-are required;
-.I int64_t
-is only required in implementations that provide integer types
-with width 64;
-and all other types of this form are optional.
-.PP
-The length modifiers for the
-.IR int N _t
-types for the
-.BR printf (3)
-family of functions
-are expanded by macros of the forms
-.BR PRId N
-and
-.BR PRIi N
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"PRId64"
-or
-.B %"PRIi64"
-for printing
-.I int64_t
-values.
-The length modifiers for the
-.IR int N _t
-types for the
-.BR scanf (3)
-family of functions
-are expanded by macros of the forms
-.BR SCNd N
-and
-.BR SCNi N,
-(defined in
-.IR <inttypes.h> );
-resulting for example in
-.B %"SCNd8"
-or
-.B %"SCNi8"
-for scanning
-.I int8_t
-values.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-the
-.IR intmax_t ,
-.IR uint N _t ,
-and
-.I uintmax_t
-types in this page.
-.RE
 .\"------------------------------------- intptr_t ---------------------/
 .TP
 .I intptr_t
-- 
2.33.1

