Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 619BF443559
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235004AbhKBSSK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235009AbhKBSSK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:10 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0673CC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:35 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id d27so16691803wrb.6
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aI9eY1xC3DKdMZT2eR4KhWtGa2RK6KKuNJU6yLD/Bu4=;
        b=BO/hfOuv9Qr3UFqFWY3vuGUc+ACrRMVBMKqsOxLUZ3bHZZBUSdzVPST0K8fsG3ZYsq
         HUxLTpj1xlQz9ORFnku0ql0rqRRbJ3UUP0Wv91b+KsPeYhw6g0YyfqnCz0iw7updNKM1
         GRN68z2+NbHKpAtg42MsVb0z3ogceCQmT3PTTcd0+4cJRGD/AFgSq/8mFl7u7AgCCeSb
         M/fcme2krtgpGHxSZPjSgGDirxFwk0K6DqIM4MCo1TvTT2orWN8JRfm/eUsTOAPEAeI8
         Q3YO9E/ehQomgKs24KZ/TKhFOfq1E3Le29yiE9QGmdHFll7y5Por7th8uFRDJ6CeywXD
         TGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aI9eY1xC3DKdMZT2eR4KhWtGa2RK6KKuNJU6yLD/Bu4=;
        b=GSEHjvndwVYjEJQ/LN6LojHReN9Z8IJrbr3mJIqjwFBsKa8l0hhPNkMgz4J+glkWGW
         3WWkDq9O145DsjiYdWIfIYkQ/YLE+LS9LQnOPtz4ArOQahd7fEeXtMDGnQW4gS42qMc9
         zmjUsU6AJlHem2FslnoIRo4NsONztj5oLNAz3kznG48sSUBjxecHz92TKtAoY3K0HqHC
         EY4exwmJARL7AkMV84lEgKARLjNvKiNP4a4cgvEtuZMUW0X07TnhTYKZMsFandXK2oCf
         BNdaVUI60os/4AFBsGMm7oWssz/StKABZcj1GBRJ4Tqs58mCRf+k1P79zzY/OtOCIpUF
         qpPA==
X-Gm-Message-State: AOAM530ajCsqkW3qJINXV1Aw3goTHZ/SlCINnmupUavshrEnJBtKppkb
        NAkEyM/oIJOVUOoL2do8egQ=
X-Google-Smtp-Source: ABdhPJxv9jPRfHckrlPP+2b7d50DnXMi2SFpn32520WhmgUejUOSl7O8XZ3tUhww0+B8rolNchfHCA==
X-Received: by 2002:a5d:550c:: with SMTP id b12mr21498679wrv.427.1635876933637;
        Tue, 02 Nov 2021 11:15:33 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:33 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 29/37] intmax_t.3, uintmax_t.3, system_data_types.7: Move uintmax_t to intmax_t.3
Date:   Tue,  2 Nov 2021 19:14:46 +0100
Message-Id: <20211102181454.280919-30-alx.manpages@gmail.com>
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
 man3/intmax_t.3          | 38 +++++++++++++++++++++------
 man3/uintmax_t.3         |  2 +-
 man7/system_data_types.7 | 55 ----------------------------------------
 3 files changed, 31 insertions(+), 64 deletions(-)

diff --git a/man3/intmax_t.3 b/man3/intmax_t.3
index e86aac91a..e470c2d3a 100644
--- a/man3/intmax_t.3
+++ b/man3/intmax_t.3
@@ -1,14 +1,16 @@
 .TH INTMAX_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-intmax_t \- greatest-width basic integer type
+intmax_t, uintmax_t \- greatest-width basic integer types
 .SH SYNOPSIS
 .nf
-.B #include stdint.h>
+.B #include <stdint.h>
 .PP
 .BR typedef " /* ... */ " intmax_t;
+.BR typedef " /* ... */ " uintmax_t;
 .fi
 .SH DESCRIPTION
-A signed integer type
+.I intmax_t
+is a signed integer type
 capable of representing any value of any basic signed integer type
 supported by the implementation.
 According to the C language standard, it shall be
@@ -16,13 +18,28 @@ capable of storing values in the range
 .RB [ INTMAX_MIN ,
 .BR INTMAX_MAX ].
 .PP
+.I uintmax_t
+is an unsigned integer type
+capable of representing any value of any basic unsigned integer type
+supported by the implementation.
+According to the C language standard, it shall be
+capable of storing values in the range [0,
+.BR UINTMAX_MAX ].
+.PP
 The macro
 .BR INTMAX_C ()
 expands its argument to an integer constant of type
 .IR intmax_t .
 .PP
+The macro
+.BR UINTMAX_C ()
+expands its argument to an integer constant of type
+.IR uintmax_t .
+.PP
 The length modifier for
 .I intmax_t
+and
+.I uintmax_t
 for the
 .BR printf (3)
 and the
@@ -30,21 +47,26 @@ and the
 families of functions is
 .BR j ;
 resulting commonly in
-.B %jd
+.BR %jd ,
+.BR %ji ,
+.BR %ju ,
 or
-.B %ji
+.B %jx
 for printing
 .I intmax_t
+or
+.I uintmax_t
 values.
 .SH CONFORMING TO
 C99 and later; POSIX.1-2001 and later.
 .SH NOTES
-The following header also provides this type:
+The following header also provides these types:
 .IR <inttypes.h> .
 .SH BUGS
-.I intmax_t
-may not be as large as extended integer types, such as
+These types may not be as large as extended integer types, such as
 .I __int128
 .SH SEE ALSO
+.BR int64_t (3),
+.BR intptr_t (3),
 .BR printf (3),
 .BR strtoimax (3)
diff --git a/man3/uintmax_t.3 b/man3/uintmax_t.3
index db50c0f09..404997f45 100644
--- a/man3/uintmax_t.3
+++ b/man3/uintmax_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/intmax_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index a4a1c3298..4c5ee6625 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1234,61 +1234,6 @@ POSIX.1-2001 and later.
 .RE
 .\"------------------------------------- uid_t ----------------------/
 .\"------------------------------------- uintmax_t --------------------/
-.TP
-.I uintmax_t
-.RS
-.IR Include :
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-An unsigned integer type
-capable of representing any value of any unsigned integer type
-supported by the implementation.
-According to the C language standard, it shall be
-capable of storing values in the range [0,
-.BR UINTMAX_MAX ].
-.PP
-The macro
-.BR UINTMAX_C ()
-.\" TODO: Document UINT*_C(3)
-expands its argument to an integer constant of type
-.IR uintmax_t .
-.PP
-The length modifier for
-.I uintmax_t
-for the
-.BR printf (3)
-and the
-.BR scanf (3)
-families of functions is
-.BR j ;
-resulting commonly in
-.B %ju
-or
-.B %jx
-for printing
-.I uintmax_t
-values.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR Bugs :
-.I uintmax_t
-is not large enough to represent values of type
-.I unsigned __int128
-in implementations where
-.I unsigned __int128
-is defined and
-.I unsigned long long
-is less than 128 bits wide.
-.PP
-.IR "See also" :
-the
-.I intmax_t
-type in this page.
-.RE
 .\"------------------------------------- uintN_t ----------------------/
 .TP
 .IR uint N _t
-- 
2.33.1

