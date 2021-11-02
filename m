Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4DF1443546
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234937AbhKBSRp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234957AbhKBSRp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:45 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E76A5C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:09 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b12so30218622wrh.4
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OHJ1RhEuSunuAQtGoXpnmC3q6ttv4WrtKqgwxcNjTr4=;
        b=ocAhK6CfUuN5WFraMeuatXEplYsgzTR0M7w407GDbnu7NEYJxkLaC1HrXJTYJO79tU
         ZhJ7kX9fHdv91Ah938mig+q9NYXxH/OE8DiLjbHeKQz96OAYrjc8CMHSoMYnGQomsgS+
         Rz+zmoO36EF1fEwIINRLSj6+EUmBldjeHeg4HmZrHykUGZ/VVpamBvapKWFkB6E6C4Xq
         O7K4a1iW1LEUGxhTTKM2AC0Pvb1ygOyc6ixqyUnyWIihc3O6t/aUr9Upd6OcFko98gyM
         zqaJQ7ml/Zt7wIgzGfmT4EiOB1NzLkQf6E2jQ0ZcxHKWWwO8yG3nV4ust/8ZtkLKyaJr
         ORmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OHJ1RhEuSunuAQtGoXpnmC3q6ttv4WrtKqgwxcNjTr4=;
        b=rjbaT0J2kFbwebPctsmGIf+y9cOyaXOA3SdVoYqmGkIZFoC0RpnYRUy5RR0auUI6an
         QZLcDLSQh/SnkRvvrdDoiDBfhnjGK0JQhJJX4pBX7e1/i1OLX1wQlDCbCVMhucMp3we1
         pycOngNkaCLxZcPKcmJA3dRJzuoxp+Pt114atu508lQaOs9D72SHr5k9fwMsSSHIckWL
         ikzr+ITIr1Tp81QvAWysWbwsWadjPCcVYMDVaYipl5YXNiPau7AGDqSaXGMgmdk8vVJ1
         mI4WZS8Q/xNtvPmTm2G5y/pcuLLSeh5IuvWQx7WPt+2FsuODSMD2kkdew5nnfZnsEHN3
         s11A==
X-Gm-Message-State: AOAM531Aaf3iihrS4necv8jCorXHxxKOsrUDbiHatBVs4MipTc4MMbgq
        CqMcjuwOI/Vw+a49l4byZ6Q=
X-Google-Smtp-Source: ABdhPJx+9vhNauJaj6ejBF6KpYkby6fiLGOZK/rEbFwgLyq7xaqbbW3tNkaq9o706SRzg6CM1o6qyA==
X-Received: by 2002:a05:6000:2a4:: with SMTP id l4mr22902951wry.238.1635876908522;
        Tue, 02 Nov 2021 11:15:08 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 10/37] blkcnt_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:27 +0100
Message-Id: <20211102181454.280919-11-alx.manpages@gmail.com>
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
 man3/blkcnt_t.3          | 21 ++++++++++++++++++++-
 man7/system_data_types.7 | 20 --------------------
 2 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/man3/blkcnt_t.3 b/man3/blkcnt_t.3
index db50c0f09..f6af95f52 100644
--- a/man3/blkcnt_t.3
+++ b/man3/blkcnt_t.3
@@ -1 +1,20 @@
-.so man7/system_data_types.7
+.TH BLKCNT_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+blkcnt_t \- file block counts
+.SH SYNOPSIS
+.nf
+.B #include <sys/types.h>
+.PP
+.BR typedef " /* ... */ " blkcnt_t;
+.fi
+.SH DESCRIPTION
+Used for file block counts.
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
index 92565d730..cc46a0858 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -52,26 +52,6 @@ system_data_types \- overview of system data types
 .\"		* See also
 .\"------------------------------------- aiocb ------------------------/
 .\"------------------------------------- blkcnt_t ---------------------/
-.TP
-.I blkcnt_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <sys/stat.h> .
-.PP
-Used for file block counts.
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
 .\"------------------------------------- blksize_t --------------------/
 .TP
 .I blksize_t
-- 
2.33.1

