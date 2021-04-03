Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6238935356F
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236841AbhDCTmM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236827AbhDCTmL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:11 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CE6FC061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:08 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id d191so3934190wmd.2
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jpTauroY8G8IalgxTPUBztQad5Ip+0cRVxsXmdTky9M=;
        b=f/ZOvoGkbqStgp3xJxjIgGvY+T9JsrifnxDlDnM/zNVHWGYP/ac6rCWNbDzGeyR2WQ
         32dHDQnGAh8+lOO0KxtwZCzF8+0uRwATpXHW2CRNcl4mZJLCRAkhGt1XSRHZUEF0UdY5
         DqcNIKWxefnKUySO/w4zDvMMAffTR5iYp9bJpLy2EjETYp1UsvDPB0bNSZXZLLPCJR3H
         GYW7AnpMn66NiM+vQ0PpMgfC8i0BF0xRbpSRhC6yEHahqarP7Qxxn8N9SyL0L6Fz6lz1
         GAHuT94KZLksqn9M0b1jN6g+WGcpHoNqqJKf3vB/nM+ZCxeD+nCbIaeYEy8FStW5xGiR
         55MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jpTauroY8G8IalgxTPUBztQad5Ip+0cRVxsXmdTky9M=;
        b=Ij6sydaOOz20TD1uFHjjQeBF/2jWyzehWx5HRW8/YqQ4JUcLckAyNcjWmHNgK5zkuw
         f6rBwPhS8hoCuyImK0Nsxr84pbTcUUiGYbUVXCHlH3b4jcUrM9E1N9PTZElsR+gdAcYI
         6fJOfoh/t5/ceDbA1jr7uUH5lBj1iZ9NWPb2XWQ3eugvWUn0hA9dPZOvR59g4E/08EBn
         sCTdwZGAvBBs1E3vlDhueYfuHn4KsMQhaJhi8cHe5JhMGQB/DcvRpzVo/aTQYcYojJ/G
         vb2KrXmlYDyTG8kfI2d4KS+u5QbGy9Qq9+UfFtKVUlcQuWYZ8odjxOn1DCn5vjYGZKRc
         9nHg==
X-Gm-Message-State: AOAM530Q4OVFdns9OgKQBTuvv679onaQaMnr/xcHrJxVAmAYaV4vv4uL
        BL/Itf8pAKG4SVIx71Wk3Zk=
X-Google-Smtp-Source: ABdhPJx3sfIRL3rme+m3vs5efwWrLcaEc6KIXOdBg2pExPGMXzEX5ur0MqQQHKoxO0e/NTufQC59nQ==
X-Received: by 2002:a7b:ca44:: with SMTP id m4mr18176223wml.103.1617478927426;
        Sat, 03 Apr 2021 12:42:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 29/35] ioctl_fat.2: Make clear why is each header exactly needed.
Date:   Sat,  3 Apr 2021 21:40:21 +0200
Message-Id: <20210403194026.102818-30-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Only the one that provides the prototype doesn't need a comment.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_fat.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_fat.2 b/man2/ioctl_fat.2
index 30e410280..ea50bf319 100644
--- a/man2/ioctl_fat.2
+++ b/man2/ioctl_fat.2
@@ -26,7 +26,8 @@
 ioctl_fat \- manipulating the FAT filesystem
 .SH SYNOPSIS
 .nf
-.B #include <linux/msdos_fs.h>
+.BR "#include <linux/msdos_fs.h>" "   /* Definition of [" V ] FAT_*
+.RB    "                               * and " ATTR_* " constants */"
 .B #include <sys/ioctl.h>
 .PP
 .BI "int ioctl(int " fd ", FAT_IOCTL_GET_ATTRIBUTES, uint32_t *" attr );
-- 
2.31.0

