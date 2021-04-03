Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3559353575
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236842AbhDCTmP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236684AbhDCTmP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:15 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12E3CC061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:12 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id j20-20020a05600c1914b029010f31e15a7fso5761478wmq.1
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zA/Kc4vVuNWjWtGr/s1ntmcO/fLpSST0xf2nzzr9+wo=;
        b=eKplmJD3CLYfhe1Nkdebs1WO9HcKlIP6VxqAi6+pJzHTWJvKOtqtLeRL6QXr00NMnh
         tr/YeUp9iAkHiqox09T+37WAP4oglWhUfzEz4p1/Wz1L3SuKLRnVYikfZx2vmpt3GOQE
         +zAU7MwIhLZrkzxYy/fHECH6J8mrx0J0hmJRvduWTtIQwLUzBGkpB55soXMaET9e6Mls
         Abm3TMRZVTwdul97f11k6rcxtZyM7JNVULRGgv4uoF4CfAFpbnFzu79JVE2jrnItc/7p
         lzsze8Ousobkq+t4TWoIsqpK+Wjm+lj1EVBl9iZPNWhPxHwlJi2lR69c59HoAqmDBLzc
         B57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zA/Kc4vVuNWjWtGr/s1ntmcO/fLpSST0xf2nzzr9+wo=;
        b=VyBlg4vf250ffVICuBpjSmYOB9r8ETOxxEIOaqX7mgaLbKGbw/2i4+V6AuKvrg799v
         /6D2OqB964+6kW2NV8ZdQAiu8BoAQQnR/oFLx7sHE/pg8sD3KBYlTRaSHA8QRoLtYqN7
         zbqy+axzqhFemywGkrYnKjg0QMXkHx0nORsT9Yw1jCFo3y1F5QjWbTwySVI4ZD+7MFUv
         0g/BMy42UOqHW5fcERNljAjWZCU7O4V7bd70tQ19a8QbHIwE495km5z2KSSJI44Tj1HE
         nTw9AOw5/2VdnRHIKJ+EWXZdjcSsy4yTwvs/IO9O8oYTMM1BF9C67DMJek9SH9YjtgNt
         UDqw==
X-Gm-Message-State: AOAM530dsavGsp+d1ckXe0pMsLzDlgr3i8OzBYI1GXONh92YMEN9Nl38
        Ps0SgOsKDtTu4zjBGBT2QrY=
X-Google-Smtp-Source: ABdhPJwC25IQcdHBD1o6DAHE5ytc3E+JQeUCKh1nh/25oKA/k49FeOTMr/m8bEN57oYox1J4HrPidQ==
X-Received: by 2002:a1c:5f54:: with SMTP id t81mr18259321wmb.84.1617478930899;
        Sat, 03 Apr 2021 12:42:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 34/35] ioctl_fslabel.2: Make clear why exactly is each header needed
Date:   Sat,  3 Apr 2021 21:40:26 +0200
Message-Id: <20210403194026.102818-35-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Only the include that provides the prototype doesn't need a comment.

Also sort the includes alphabetically.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_fslabel.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_fslabel.2 b/man2/ioctl_fslabel.2
index af17256f0..30435e1e9 100644
--- a/man2/ioctl_fslabel.2
+++ b/man2/ioctl_fslabel.2
@@ -25,8 +25,8 @@
 ioctl_fslabel \- get or set a filesystem label
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fs.h>" "       /* Definition of " *FSLABEL* " constants */"
 .B #include <sys/ioctl.h>
-.B #include <linux/fs.h>
 .PP
 .BI "int ioctl(int " fd ", FS_IOC_GETFSLABEL, char " label [FSLABEL_MAX]);
 .BI "int ioctl(int " fd ", FS_IOC_SETFSLABEL, char " label [FSLABEL_MAX]);
-- 
2.31.0

