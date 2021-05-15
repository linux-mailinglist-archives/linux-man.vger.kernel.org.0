Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31F9C381A70
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234384AbhEOSVz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234377AbhEOSVy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:54 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62484C06175F
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:40 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id f75-20020a1c1f4e0000b0290171001e7329so1288514wmf.1
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7qyp+HgbxTz2i0T82MgFcTh0R87tL3kBcb1lzJkd//A=;
        b=H7RS/nzl0+p+S1XwxFmhgfFF1PZu/2DfY2bgkuhVBEBlh7MQu0DZV4HoKD+92EABEo
         lYTHuHTD9QPfXgB/ZIbJwRs5bEqQmZdHMSCtQKh2Uj5aVVHMYdNUKSxQoFpYOD+XV45M
         SyU8NRNH+MZIORya+U533GYS/yTeyaVW7FSM/wS7FDJNCC1ZjOqRFDdjIOtYY4P3diDq
         evhmbGxuJxVytiqsXBHe0nihY1c50Lcaj0Zry/YN2dgAbqmbk7p2zLEKcrkT8+s9AtrO
         cz53vw/0vu+B/2dt+e+W1d+P113ZL6x66Z3DY7gsO1YqLXxmB1qTayQ7oeXSO7gMTeHt
         A8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7qyp+HgbxTz2i0T82MgFcTh0R87tL3kBcb1lzJkd//A=;
        b=bkNaUmJ/aVHjDHLKlfz03uV+L21RnyhXUBWcgxVXTXsIuftACz/EsVU5RqBgTM8iTj
         8bDJo6DwVaZncARq4IBUOj46ZLzz7zcmvY+O/zw9/+em+VsY5ZbZuhEY75cWKbQ6+KE+
         spmjaZ8WWOaL2+eI+r2NDgr+krxcNIUlqazYqdZOxbtZD1LfqwSqiltBxAojll8iijCD
         6joO7vRnKipPAiT/VE4ce/p+Lkq1u+5LLG9NOK7CQlsDa8jQlA6YJBACsf2fu/41lHij
         i/N/GSLfDHeHSGDHodSYD7iXlY09UhcRGXuXoy28D59b+UrY4Dh/TblFhVxkhjyk9Aqd
         LpWA==
X-Gm-Message-State: AOAM531F40pS8GPiGLjgd+WXaX//OUdPQgXz0qO7s4q14Dw5rkUr84sW
        COgZJQp30uE05TgNHJ8eDOOZrHOIpalqsQ==
X-Google-Smtp-Source: ABdhPJxZoNxEfz1qEpsPDcZhKqUzmz0kCeOBhgpOlzcPz2asmqDYt6L70fevaXJmLtWN0nM0XzBALQ==
X-Received: by 2002:a7b:c258:: with SMTP id b24mr1775865wmj.52.1621102839168;
        Sat, 15 May 2021 11:20:39 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 4/8] s390_pci_mmio_write.2: Use syscall(SYS_...); for system calls without a wrapper; fix includes too
Date:   Sat, 15 May 2021 20:20:24 +0200
Message-Id: <20210515182027.186403-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This function doesn't use any flags or special types, so there's
no reason to include <asm/unistd.h>; remove it.  Add the includes
needed for syscall(2) only.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_pci_mmio_write.2 | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/s390_pci_mmio_write.2 b/man2/s390_pci_mmio_write.2
index 57eb54601..4e34889db 100644
--- a/man2/s390_pci_mmio_write.2
+++ b/man2/s390_pci_mmio_write.2
@@ -28,16 +28,19 @@ s390_pci_mmio_write, s390_pci_mmio_read \- transfer data to/from PCI
 MMIO memory page
 .SH SYNOPSIS
 .nf
-.B #include <asm/unistd.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int s390_pci_mmio_write(unsigned long " mmio_addr ,
+.BI "int syscall(SYS_s390_pci_mmio_write, unsigned long " mmio_addr ,
 .BI "                       const void *" user_buffer ", size_t " length );
-.BI "int s390_pci_mmio_read(unsigned long " mmio_addr ,
+.BI "int syscall(SYS_s390_pci_mmio_read, unsigned long " mmio_addr ,
 .BI "                       void *" user_buffer ", size_t " length );
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR s390_pci_mmio_write ()
@@ -102,8 +105,5 @@ These system calls are available since Linux 3.19.
 .SH CONFORMING TO
 This Linux-specific system call is available only on the s390 architecture.
 The required PCI support is available beginning with System z EC12.
-.SH NOTES
-Glibc does not provide wrappers for these system calls; call them using
-.BR syscall (2)
 .SH SEE ALSO
 .BR syscall (2)
-- 
2.31.1

