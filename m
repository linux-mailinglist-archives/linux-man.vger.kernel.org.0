Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A16544354B
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234985AbhKBSRx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234975AbhKBSRx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29212C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:18 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id g191-20020a1c9dc8000000b0032fbf912885so28943wme.4
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o7MPESIaai1APrJzETnAD9e/UEXW1OpU/CxfgCF/+DQ=;
        b=jx0kp/cGoPGLbnRBnt9ebs3gq3kB9DOfC+Xv3zs7tf14e29qszDaPlroP4BeQRNiLW
         4t+Mh73C/MCGrDYL+8LYrTqzp9DbqyZ/n7X0W0a3c7K+NsWDUMSZ3vB0OTcmYf6PTESI
         gB5qRFClf8lVd0S+9VSpeZMpebzBjvxNo63kRR92tPo1N7lTnoU2JACQ1xlNFrSHnkZk
         wbw8Jqm5nCpcqW9HqP59PByIWB1R9WiMseuwkYjAwEc9cPzTORxid380/7cdz23GoT9B
         zfFYJs63/+o8Kk5CSYEypc4ZoxnkKi4mnSugfvLQtseyOGA90GmEczsFBFZs9IuoEsit
         BPqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o7MPESIaai1APrJzETnAD9e/UEXW1OpU/CxfgCF/+DQ=;
        b=q1G8bO4pJVu1lUem7WSTP8Avi9A8/ECfR3t8R+l5e0L3oxg3eBvYrGav7VozKuFYgy
         vfqGAk4T8+r1mwOu/wk5x3f2uz/2gkc4SD4Ybe9nOWoR0fNPpzJr1PzA5tCtKiEj+y9z
         QwR14TY0IrlpnmQlh5nyOESiHdycKwJQ+xsDc29lUkRIV9uq1SdVIAttKzgMnub787+o
         wGkiQ3w9TnOM+W25n+Q39gG6/+0EcmRUdvXho6zd06AZ4VZOMk/uCfxEQuKLi1DfzsaS
         x/sQ7z3hr7FkViT+7ykX0fYOiy6lJuBVSlCjfl+2uLygVeDqRCByNZhb2xwizJl897gR
         Ju8A==
X-Gm-Message-State: AOAM532zSPlK9yGca8GBS/5oOYWgWBqUSsEeB72baDfcyV9I4NG/dZKV
        14Au3CxqIg66WoacVWtquiQhRax7/uY=
X-Google-Smtp-Source: ABdhPJz3b6JcYB8F76oAU7moK0Hibf6Y4D0TTb0ATT+9Sp2WuvmoPJF+CmaMgh3wUJlujsXQyd606g==
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr7104711wml.146.1635876916751;
        Tue, 02 Nov 2021 11:15:16 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 15/37] dev_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:32 +0100
Message-Id: <20211102181454.280919-16-alx.manpages@gmail.com>
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
 man3/dev_t.3             | 24 +++++++++++++++++++++++-
 man7/system_data_types.7 | 25 -------------------------
 2 files changed, 23 insertions(+), 26 deletions(-)

diff --git a/man3/dev_t.3 b/man3/dev_t.3
index db50c0f09..5d4ecf964 100644
--- a/man3/dev_t.3
+++ b/man3/dev_t.3
@@ -1 +1,23 @@
-.so man7/system_data_types.7
+.TH DEV_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+dev_t \- devide ID
+.SH SYNOPSIS
+.nf
+.B #include <sys/types.h>
+.PP
+.BR typedef " /* ... */  " dev_t;
+.fi
+.SH DESCRIPTION
+Used for device IDs.
+According to POSIX,
+it shall be an integer type.
+For further details of this type, see
+.BR makedev (3).
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH NOTES
+The following header also provides this type:
+.IR <sys/stat.h> .
+.SH SEE ALSO
+.BR mknod (2),
+.BR stat-struct (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index f41ebc73f..fe071fb1e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -57,31 +57,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- clock_t ----------------------/
 .\"------------------------------------- clockid_t --------------------/
 .\"------------------------------------- dev_t ------------------------/
-.TP
-.I dev_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <sys/stat.h> .
-.PP
-Used for device IDs.
-According to POSIX,
-it shall be an integer type.
-For further details of this type, see
-.BR makedev (3).
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR mknod (2)
-.PP
-.IR "See also" :
-the
-.I stat
-structure in this page.
-.RE
 .\"------------------------------------- div_t ------------------------/
 .TP
 .I div_t
-- 
2.33.1

