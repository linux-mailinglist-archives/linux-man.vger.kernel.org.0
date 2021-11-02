Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF510443557
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234868AbhKBSSK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235006AbhKBSSJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:09 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0082DC061205
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:34 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id d27so16691750wrb.6
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9z6r7QH+Z1tFTl3yTugyBLX2oXmR464ISn1z3MGYwMw=;
        b=L6+wXXfCAOqV0U2faRb1whrezM/iX0uccfY+nQPw8Xw7UGSj/FGxvZdKHZn2ULVGUm
         k5mvS7cbT+IlGKPH/PXOtBPRo3MplhNMWWQDLJsYtls2xJ47EJN8VYKFbqpfC1TfOcNb
         kYCxAGc3MtSs4zDN0thHquGt3mbcKfxEXP7sJCMJSvB/aWlhyPjF4AP6R+JDncmWi3U/
         iL1thYctufr2Voan9Kb/RzWqVsuPAcpmsjpFenOptF3ugtf4n7RZpeBU77Y3l1IRGPcL
         ZNvRIvJa9bnLLOA+5RXgruohyc9g/sH1IdZUfEpaz9eF/pAO/jxPYeJrHOjcAFJyDKoL
         fOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9z6r7QH+Z1tFTl3yTugyBLX2oXmR464ISn1z3MGYwMw=;
        b=RMIaWpwLn16aS6+QXWIa2pZB/jBlxY59ORjlA1kAG1SmGGPGIk7a/MaAQfDM6LV1WK
         AXNwyat41UV9RjXy+hskFXbdyX/GijIE3dyK4Dj9hcwVJK3U/TKQfFOL83rH5x/WUfc/
         RYSswQ71LgFM66+8k+xJesX2F6uWDb5ErzB6P3Hoso9HWD9e9Q+cu/lHbYmueRfbuSVl
         lycl4a1XSJNaJC2VWxiR6mXd0UDLwRjytPO3IpAxZR2zoILHCkWsmCdctmDrAAsgF5Az
         2dtp9Wb5TOK6uKfyv9q7DEJmC+cvpNZHP4+nXyWp3+S9uPsjNlacnHTlhcOFyyCns+Ly
         SAPQ==
X-Gm-Message-State: AOAM532nlU42k31NlKcZaw7m5R1eLgjN54D1Ey+YwJTczq2IpkmlSCH2
        S5osPfNF/Qb40nzAhau4fpC3CPq4/d4=
X-Google-Smtp-Source: ABdhPJxBn/ORbu8aQh7Rf0keulPQPlEOmOrNJWqY0mxS0u+2mNfByIZE4sMfegwRqzqoaVg+2ZqS5Q==
X-Received: by 2002:a5d:5986:: with SMTP id n6mr28928242wri.297.1635876932562;
        Tue, 02 Nov 2021 11:15:32 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:32 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 28/37] intmax_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:45 +0100
Message-Id: <20211102181454.280919-29-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I also reworded the text slightly to talk about 'basic integer
types', not 'integer types', to more clearly exclude 'extended
integer types'.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/intmax_t.3          | 51 +++++++++++++++++++++++++++++++++++-
 man7/system_data_types.7 | 56 ----------------------------------------
 2 files changed, 50 insertions(+), 57 deletions(-)

diff --git a/man3/intmax_t.3 b/man3/intmax_t.3
index db50c0f09..e86aac91a 100644
--- a/man3/intmax_t.3
+++ b/man3/intmax_t.3
@@ -1 +1,50 @@
-.so man7/system_data_types.7
+.TH INTMAX_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+intmax_t \- greatest-width basic integer type
+.SH SYNOPSIS
+.nf
+.B #include stdint.h>
+.PP
+.BR typedef " /* ... */ " intmax_t;
+.fi
+.SH DESCRIPTION
+A signed integer type
+capable of representing any value of any basic signed integer type
+supported by the implementation.
+According to the C language standard, it shall be
+capable of storing values in the range
+.RB [ INTMAX_MIN ,
+.BR INTMAX_MAX ].
+.PP
+The macro
+.BR INTMAX_C ()
+expands its argument to an integer constant of type
+.IR intmax_t .
+.PP
+The length modifier for
+.I intmax_t
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions is
+.BR j ;
+resulting commonly in
+.B %jd
+or
+.B %ji
+for printing
+.I intmax_t
+values.
+.SH CONFORMING TO
+C99 and later; POSIX.1-2001 and later.
+.SH NOTES
+The following header also provides this type:
+.IR <inttypes.h> .
+.SH BUGS
+.I intmax_t
+may not be as large as extended integer types, such as
+.I __int128
+.SH SEE ALSO
+.BR printf (3),
+.BR strtoimax (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 3bdaff8a4..a4a1c3298 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -68,62 +68,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- id_t -------------------------/
 .\"------------------------------------- imaxdiv_t --------------------/
 .\"------------------------------------- intmax_t ---------------------/
-.TP
-.I intmax_t
-.RS
-.IR Include :
-.IR <stdint.h> .
-Alternatively,
-.IR <inttypes.h> .
-.PP
-A signed integer type
-capable of representing any value of any signed integer type
-supported by the implementation.
-According to the C language standard, it shall be
-capable of storing values in the range
-.RB [ INTMAX_MIN ,
-.BR INTMAX_MAX ].
-.PP
-The macro
-.BR INTMAX_C ()
-.\" TODO: Document INT*_C(3)
-expands its argument to an integer constant of type
-.IR intmax_t .
-.PP
-The length modifier for
-.I intmax_t
-for the
-.BR printf (3)
-and the
-.BR scanf (3)
-families of functions is
-.BR j ;
-resulting commonly in
-.B %jd
-or
-.B %ji
-for printing
-.I intmax_t
-values.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR Bugs :
-.I intmax_t
-is not large enough to represent values of type
-.I __int128
-in implementations where
-.I __int128
-is defined and
-.I long long
-is less than 128 bits wide.
-.PP
-.IR "See also" :
-the
-.I uintmax_t
-type in this page.
-.RE
 .\"------------------------------------- intN_t -----------------------/
 .TP
 .IR int N _t
-- 
2.33.1

