Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 642453316CC
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231430AbhCHSyr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231296AbhCHSy2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:28 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA20C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:28 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id a18so12544109wrc.13
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FA5xURTscEDjq6p7Ue0kIj0OdWueUjrFZBc0avtfRvM=;
        b=AsDdkN3XgsqQGX+sgRNqA4rkzocNsgQuCCO+QTPUhsAjxzGp1h2ijeK5XtGQW1Blyc
         ONfLe+8zAuLc/+jeddJ6jTI5gSoXGOUf/xjmZgDDR+a3+tmsLb5oUNR9Nnfuzg118F09
         TviuYCz/dMRLcx6B/jSQ3DsZDcshNzqLziGuiGqvgCaAcbCCqPsN7konQzOYDYmKMxJV
         becxtReRda2Dv2J4DJE13ltFgQYSFgag+GVVTq957SaGqFnW00msDsKHm6cmoqd/mXb8
         kTWaiZ+ADA0wH+ifIZF1uPgP0tygkxvI8DJCJhnZ8BHk5EXPAXtGd14iFOYKrl6Q74jo
         9P3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FA5xURTscEDjq6p7Ue0kIj0OdWueUjrFZBc0avtfRvM=;
        b=BInvlcWLUscF8w2EdPZLtWUq8TOSnO/IFTGdiSlNhp0MJyC2AseUqVjIl0/RZSpGOP
         7BzE6gRQzU8oilo7Z+Tq6kO1yG5MYt5IWnHcRw0CV/PZquU5s4/VVT0Uewxt7AuatjVI
         Sntk9NjnGwdZu4fYTG3m9DWLW30HyrZnVMqppBtYiSAX67lodi2PKEru2k3cnnbXy4cV
         t44VPdJJG2ymW/C87qXj9EmXkIf12GBa7k1XuwJtEMkxPPtw1JDkU0CfnTzUjnYu+0iZ
         mllncANFNG9ErSa4iLXNjEDFQlRUvBVWAT7HZ7X8wlPd6TKE8XpKmuig3BXRxKNNoVNV
         xIjw==
X-Gm-Message-State: AOAM533EK+r3FuFpYPnOdXzEXAXArYVWZ5X0d7exwJ3MXAxIexIZGBy3
        +uCr33EGDqX3QzsrkT9PfFk=
X-Google-Smtp-Source: ABdhPJz67PEWi5lbzedCQycPiDDoqakdhBJRsTICHDZnfq2GeIxomCLQkrRfbGSrJu2UHFKn8UasVA==
X-Received: by 2002:adf:a1d8:: with SMTP id v24mr23431910wrv.378.1615229667111;
        Mon, 08 Mar 2021 10:54:27 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:26 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 19/23] realpath.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:28 +0100
Message-Id: <20210308185331.242176-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in realpath().
Let's use it here too.

.../glibc$ grep_glibc_prototype realpath
stdlib/stdlib.h:800:
extern char *realpath (const char *__restrict __name,
		       char *__restrict __resolved) __THROW __wur;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/realpath.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/realpath.3 b/man3/realpath.3
index 643cdaaec..100567217 100644
--- a/man3/realpath.3
+++ b/man3/realpath.3
@@ -33,7 +33,8 @@ realpath \- return the canonicalized absolute pathname
 .B #include <limits.h>
 .B #include <stdlib.h>
 .PP
-.BI "char *realpath(const char *" path ", char *" resolved_path );
+.BI "char *realpath(const char *restrict " path ,
+.BI "               char *restrict " resolved_path );
 .fi
 .PP
 .RS -4
-- 
2.30.1

