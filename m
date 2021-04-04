Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C2A83537F0
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbhDDL7u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbhDDL7u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:50 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CBBFC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:44 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id z6-20020a1c4c060000b029010f13694ba2so4365921wmf.5
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q0jKLIqj3qeyEIhaBjfiAz+YCJa/50JK+Uxol1J6xcg=;
        b=dtm+D8IGqzf/LiLLdtvlilDHxMN9qhl0/c5JEPgX4elSOrzuVFkxqLxWmiYtsneFna
         XY6AmXzNgfvPCoe8wHavymKOeymwhySxSDE/jjVy97H66EDf/I0qQpV28EklbUbmRij8
         cGY1aoKvPckq2K2zjulaHQ4ygheE/vEc6jaK9pE2WVheWsJq1tWRIGKinKrhK5/Z2jqP
         Kr3BasAeQMQkVQZf4k8yxlIVznIBSQnOkH5x9aOqLe6g04ogfxHAZlDnhd/kcdHuJ/jJ
         iGLkRO92iQgcmnIXkMiPXv1vgariRYX1vFYRpItFjYMpP/JB40zVqVIAVGtzwBhHZyqm
         eBLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q0jKLIqj3qeyEIhaBjfiAz+YCJa/50JK+Uxol1J6xcg=;
        b=huEsCopxfgqjs9os6eY7PtglIndU1Uvm45OLmioM/YpuTNIuqUqJZQvPtK1/nbXXJ1
         HWZ11TIf5TU3XCteKpJjzgZlLjptJuX7a9gFwa8K+OIPKsZuQNXJ1ncIvCZx3lNTJpuE
         jbvpdfrM2w6GA8RC/9vzsLzfwf49XibsOCeGqTbR7NwBlNXc+fidBIQXrFY6ayf8H6ct
         FwlNSqRRn/pDnmw4wXNNBEvxeGutm8flbTSPAbES4jEnH2t410hmvk5rUm0IB4XbtBfj
         aDYlRZBJrtdRjR0Jvw8HPbn2yhdNHZs9qUA9DJdThHvalx4mtF4AlccmyxKkI2IWF1zv
         DWfA==
X-Gm-Message-State: AOAM532GeHhHKKKuGQzGVHwlxubcJj5myFGDk5VhiisRxu0f11GBLPej
        9iLty0aoYTqFyZ++iYzCm2xYVEaz2Gk=
X-Google-Smtp-Source: ABdhPJzevbhW2cjzRtP35qFttwl+d80KjifhaABu6+An2ab1hO5ddv6U1ekKTKLesvgCeKKaRv+B5A==
X-Received: by 2002:a1c:5446:: with SMTP id p6mr6379801wmi.44.1617537583315;
        Sun, 04 Apr 2021 04:59:43 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 15/35] exit_group.2: Use 'noreturn' in prototypes
Date:   Sun,  4 Apr 2021 13:58:28 +0200
Message-Id: <20210404115847.78166-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This function never returns to its caller.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/exit_group.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index d26ec8c70..4fd314262 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -29,7 +29,7 @@ exit_group \- exit all threads in a process
 .nf
 .B #include <linux/unistd.h>
 .PP
-.BI "void exit_group(int " status );
+.BI "noreturn void exit_group(int " status );
 .fi
 .SH DESCRIPTION
 This system call is equivalent to
-- 
2.31.0

