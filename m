Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 338372E7CC5
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 22:43:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726491AbgL3Vmr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 16:42:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726486AbgL3Vmq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 16:42:46 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64646C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:06 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id n16so3107615wmc.0
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ipmXgJf6kgs/WuTCgPQkqSpphcxd9/C4LDB3pT2ComY=;
        b=pqW+Ci/1btSQE65JLVw0Mx3zJpySlw1LarjGbz2VouGk6FOBWc5kwCS0PuGgrCvmCK
         zfXvxxeo64zp7d5w7cphoPXJLZBrvcEcc+QDZTL2bt9hwZJQImD7lSdQGgapCpJhX34J
         gfnZrHuUqgcysRMlnmxyEobFHM3VnM2i1tF6g8UBEdDaSds1Hb7vQOeiGK/VUqoYVAHN
         kHNmb1TGs+5FOgzV7/OBUfQVLuGUQgu7f5UnNVmKYseJ9H5R8m/sPX9oy07oOSivCGEV
         8WPY/va6gCNx9Ys9V7J2xAE37BjAmIhSnt19fLCC6z0kbqjdxhbslDZC15RusVyb6XjL
         rGpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ipmXgJf6kgs/WuTCgPQkqSpphcxd9/C4LDB3pT2ComY=;
        b=Z58nEwfHiZTZWwFP5ARGXffrrbQHRu5WdVtMbViHgxaHHqMIC707NeVBkItVU6MW3q
         49U1v0dIOnxiv1Dnf6YiHHNIKfN4MpeY88K7leQ5Ntt0ntulYI4WKqO9dBApR4iPq9Su
         I9cTDS8nlAmN+GrpW1tZQm8Pm2QQcX/ZJ/+eMOBxLHCosJXzSszVMDjPxPKpgGUoVXL6
         OW4M2mQi9UVrzXWI2NQamhHhIFDU5RCftlSzaS3z5nFu4ANHwLp5hbPS9PIIJpnUTqyE
         B98JrEwrQCr93nngGvlyBL5MTfeYD654BhZ9Ck6wthcvhlMxeXP8z79n1cCuZvNK0QND
         AXLA==
X-Gm-Message-State: AOAM532yKqlWzCdH1pgShMT4lD5Y1GdG+TDAgutSGz1knrJgJYbPGvEC
        EoScH7vP547aN0zQubMbzfw=
X-Google-Smtp-Source: ABdhPJz7T4qaaRytW1cUppRKm4M4npvEeZpr4TGbYeS7ZPDyve1db89ENMhoBhC0njnP00ogljhgsw==
X-Received: by 2002:a1c:b487:: with SMTP id d129mr9259829wmf.177.1609364525249;
        Wed, 30 Dec 2020 13:42:05 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id 67sm9519234wmb.47.2020.12.30.13.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 13:42:04 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] delete_module.2: SYNOPSIS: Fix prototype parameter types
Date:   Wed, 30 Dec 2020 22:41:43 +0100
Message-Id: <20201230214147.874671-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses 'unsigned int' instead of 'int' for the
'flags' parameter.  As glibc provides no wrapper, use the same
type the kernel uses.

......

$ syscall='delete_module';
$ find linux/ -type f -name '*.c' \
  |xargs pcregrep -Mn "(?s)^[\w_]*SYSCALL_DEFINE.\(${syscall},.*?\)";
linux/kernel/module.c:977:
SYSCALL_DEFINE2(delete_module, const char __user *, name_user,
		unsigned int, flags)

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/delete_module.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index e63545d51..1030e9698 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -27,7 +27,7 @@
 delete_module \- unload a kernel module
 .SH SYNOPSIS
 .nf
-.BI "int delete_module(const char *" name ", int " flags );
+.BI "int delete_module(const char *" name ", unsigned int " flags );
 .fi
 .PP
 .IR Note :
-- 
2.29.2

