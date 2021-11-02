Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4F30443547
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234957AbhKBSRr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234961AbhKBSRq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:46 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 771C6C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:11 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id b71so47203wmd.2
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qwXucHawd2NRgqkwCZ3Yb9AUcFGtV3Uz3V9Wlk5O+w4=;
        b=h9oppvSGAGFD8FDIPq/q+zOd/p66nQbxF+tof2i1ZexbG9eLLIVGw+Akrj4oi5vXKA
         +M5A/wBVJFzaLKdLhYJpyOqW0vu9II87crbqGKrY1ogJuCq3n7gesHLw58xp5sV4sl8k
         j+275uqTkhQRZlH7dlxAgs6u36/jq/oUcaGH4MI3vNn3ZtoG9QuVpFvJxaqVNNVC0dmq
         jW02z887VttT3Gv+qWgyi5gtaYK1aDjUQ8vFr7juq/s/+8ytuBj2KFQ7u66e3SNp6QwF
         J0l+0KKjKs5AtPHNx42JyvFY/6zGzmN32z0a/NkgUHcO64LcPfcKC2OLM9LvLKpSly/W
         wMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qwXucHawd2NRgqkwCZ3Yb9AUcFGtV3Uz3V9Wlk5O+w4=;
        b=5ZZIdN68CoHVq0gWoMP9+svzeJa0akWZEaKWI5CauxwwC3ZVwFz6+IkKg6HDb4F8/b
         R1/yJ1FyOvWDXN/Kqr3ZUzwm466+chNryXED4CQBMnVIfVu0n4WJnoGCDrOsSVkpaPep
         9l0VMcMfniCoW57xM8YW4+DB2IqGUiNKuoIglcF2ubJEWC/gF+BnolY6svzColvQkBpR
         GPUjCp4FZkN4QRupnxq1Ska8+6p3dc+n68NZwuEX84ggdZpeOtdLvNZiU9Ki0dCkttQD
         Kxhw0SJ9d3siebsHJjhwG6xp58QrBkPowlcCaCzVfXwX3l9JmsIugPUV5AISbh7I/b2K
         xC+w==
X-Gm-Message-State: AOAM532wlcJ+el9QQU4/wmNTGvFNepSK0Pw2t9mCRZyZ90zPMPzdfaLl
        fjq+CegjQVTO3Xk2xepTMOU=
X-Google-Smtp-Source: ABdhPJyVqPoNgsCSKDFNAmTwDDZL57qNJ91S8QaaO+BmYSE3ccnXx09gNqV9xqo4QY3JFHSxwCbvsQ==
X-Received: by 2002:a05:600c:1c8d:: with SMTP id k13mr5970252wms.177.1635876910134;
        Tue, 02 Nov 2021 11:15:10 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:09 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 11/37] blksize_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:28 +0100
Message-Id: <20211102181454.280919-12-alx.manpages@gmail.com>
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
 man3/blksize_t.3         | 21 ++++++++++++++++++++-
 man7/system_data_types.7 | 20 --------------------
 2 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/man3/blksize_t.3 b/man3/blksize_t.3
index db50c0f09..6fdde1a13 100644
--- a/man3/blksize_t.3
+++ b/man3/blksize_t.3
@@ -1 +1,20 @@
-.so man7/system_data_types.7
+.TH BLKSIZE_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+blksize_t \- file block sizes
+.SH SYNOPSIS
+.nf
+.B #include <sys/types.h>
+.PP
+.BR typedef " /* ... */ " blksize_t;
+.fi
+.SH DESCRIPTION
+Used for file block sizes.
+According to POSIX,
+it shall be a signed integer type.
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH NOTES
+The following header also provides this type:
+.IR <sys/stat.h> .
+.SH SEE ALSO
+.BR stat-struct (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index cc46a0858..6a0029c85 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -53,26 +53,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- aiocb ------------------------/
 .\"------------------------------------- blkcnt_t ---------------------/
 .\"------------------------------------- blksize_t --------------------/
-.TP
-.I blksize_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <sys/stat.h> .
-.PP
-Used for file block sizes.
-According to POSIX,
-it shall be a signed integer type.
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-the
-.I stat
-structure in this page.
-.RE
 .\"------------------------------------- cc_t -------------------------/
 .TP
 .I cc_t
-- 
2.33.1

