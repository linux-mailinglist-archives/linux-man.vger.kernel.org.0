Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 555F044354E
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234975AbhKBSR5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBSR5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:57 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBDEAC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:21 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id i5so27013363wrb.2
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=59Zh42LHJPhCb8VaQegNdeV2+4pThCVAUNfaErisKfY=;
        b=lLvHDIZnieDlogAsHEwp9KZFZti65O/1C40VerBvLKV3OrOTdqF7ydKJcSvWiouDZd
         xLSpACL8kbrQbkFAIrcAvql5E7zSZXj9jY8ZRju0OT11IweU3HjSGZTuwWnrRQ9TxFf+
         iNwYNIUgs+B0gAagJ+7RJ5ZdSzD2fpwkVrww1SPxxwK6mn0QNUvECVkCS7nWiNjes7Zs
         /4ZlL62h0RsYmkU4LXQj8fxySscRmp2KhsmFnQP/PhNZus8Kfo/ObJovoxDPhWXg2fRx
         DFCz1H/bdd6OX2iM6OLw99P7YIzEOs+KgWks1x7cmk/fsgtnSN0VDci1izzBIGQjNj6q
         N21g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=59Zh42LHJPhCb8VaQegNdeV2+4pThCVAUNfaErisKfY=;
        b=X8rl6mIP6NpfO2UohMGguDWN7XuxqXxIeorFI5WkbRiG7t+ni7mJp0Ntri699gWL8k
         drpkAKtk0fMh4d3vHGHmAB2NtX29YBIRCS6BCdmR7escsyK1kiSblIsEi6BjdB2CHsFU
         mSAnBbe2XJFiidRBT36KmnH9p2NU5S+C/2g0Sfn9UcRBktZtuE8S0V4RYE4HRKoApRw4
         rXDApL1nOH1aAxOfc3rlM0tqt6lrcNvoEKqBJZJk7uoWAF1jj6202BwWPWv57N5AED+p
         jyAebeSHA6lzBxrqFIjpliu3aGdYmxyE/8e7yI5sMKV6PRbtsPEN8vu6SrmlEAo+fS13
         rTnQ==
X-Gm-Message-State: AOAM533qEcC2ouralpw0Rf//Vh3uA01DWyUNqljvFpX+FaY4wHq4cp0t
        W3YPswiQ7s3H78Cob0yJ9I/w4nXAbS8=
X-Google-Smtp-Source: ABdhPJzZahlz8K5e2Oa4Ck1c5x2XURx+NWNNEejtGYM1/6UDHC03ERIPWf4j5VOlcCKFYNJy7cxCNQ==
X-Received: by 2002:a5d:6d0a:: with SMTP id e10mr48389725wrq.348.1635876920561;
        Tue, 02 Nov 2021 11:15:20 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:20 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 18/37] double_t.3, float_t.3, system_data_types.7: Move float_t to double_t.3
Date:   Tue,  2 Nov 2021 19:14:35 +0100
Message-Id: <20211102181454.280919-19-alx.manpages@gmail.com>
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
 man3/double_t.3          | 47 +++++++++++++++++++++-------------------
 man3/float_t.3           |  2 +-
 man7/system_data_types.7 | 42 -----------------------------------
 3 files changed, 26 insertions(+), 65 deletions(-)

diff --git a/man3/double_t.3 b/man3/double_t.3
index 0043fb38b..669aa84b2 100644
--- a/man3/double_t.3
+++ b/man3/double_t.3
@@ -1,41 +1,44 @@
 .TH DOUBLE_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-double_t \- most efficient floating types
+float_t, double_t \- most efficient floating types
 .SH SYNOPSIS
 .nf
 .B #include <math.h>
 .PP
+.BR typedef " /* ... */ " float_t;
 .BR typedef " /* ... */ " double_t;
 .fi
 .SH DESCRIPTION
-The implementation's most efficient floating type at least as wide as
-.IR double .
-Its type depends on the value of the macro
+The implementation's most efficient floating types at least as wide as
+.I float
+and
+.I double
+respectively.
+Their type depends on the value of the macro
 .B FLT_EVAL_METHOD
 (defined in
 .IR <float.h> ):
-.TP
-0
-.I double_t
-is
-.IR double .
-.TP
-1
-.I double_t
-is
-.IR double .
-.TP
-2
-.I double_t
-is
-.IR "long double" .
+.PP
+.TS
+lB rI rI.
+FLT_EVAL_METHOD	float_t	double_t
+.T&
+n rI rI.
+_
+0	float	double
+1	double	double
+2	long double	long double
+.TE
 .PP
 For other values of
 .BR FLT_EVAL_METHOD ,
-the type of
+the types of
+.I float_t
+and
 .I double_t
-is implementation-defined.
+are implementation-defined.
 .SH CONFORMING TO
 C99 and later; POSIX.1-2001 and later.
 .SH SEE ALSO
-.BR float_t (3)
+.BR float.h (0p),
+.BR math.h (0p)
diff --git a/man3/float_t.3 b/man3/float_t.3
index db50c0f09..b1dd69fdd 100644
--- a/man3/float_t.3
+++ b/man3/float_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/double_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e847c2e64..d71a06344 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -140,48 +140,6 @@ C99 and later; POSIX.1-2001 and later.
 .BR stdio (3)
 .RE
 .\"------------------------------------- float_t ----------------------/
-.TP
-.I float_t
-.RS
-.IR Include :
-.IR <math.h> .
-.PP
-The implementation's most efficient floating type at least as wide as
-.IR float .
-Its type depends on the value of the macro
-.B FLT_EVAL_METHOD
-(defined in
-.IR <float.h> ):
-.TP
-0
-.I float_t
-is
-.IR float .
-.TP
-1
-.I float_t
-is
-.IR double .
-.TP
-2
-.I float_t
-is
-.IR "long double" .
-.PP
-For other values of
-.BR FLT_EVAL_METHOD ,
-the type of
-.I float_t
-is implementation-defined.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-the
-.I double_t
-type in this page.
-.RE
 .\"------------------------------------- gid_t ------------------------/
 .TP
 .I gid_t
-- 
2.33.1

