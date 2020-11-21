Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7279E2BC11B
	for <lists+linux-man@lfdr.de>; Sat, 21 Nov 2020 18:34:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726660AbgKUReo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Nov 2020 12:34:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726640AbgKUReo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Nov 2020 12:34:44 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C1EAC0613CF;
        Sat, 21 Nov 2020 09:34:44 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id w24so13381832wmi.0;
        Sat, 21 Nov 2020 09:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=flwT+iURKLpYtLG5AlpA8Euuebh0s1kBcUIZ+rA7YaQ=;
        b=eA5wM3W1GGMzK+9Hh3e8lW8rH8c5LSX2Tt8HemDN8YWSxcq6vF4g9Ad5UfGzbjJaBC
         OcaudtmGn27vpZ0MjBVpcOJ2MBC0b1AV2Jg9cDSzjVLg8fS0FXsAEcySmJNuxxhsKjI0
         BSSre8tlbDAaJqfveBjsq+IKR0+VS9gcqc5Vi9SAgAE6YR6lakhi/hUsSNLLooEmDNdc
         MZx7vmSKJydm2sO8Nxk4u40FLfFs/czaSWCl0O3vxOvdLNFDHHJA1MDTXXxtjrM3fHiQ
         QexIrKsXlmJ2rvgMbLUAWFQ1AtCfVFPNzirk2IoSr4bi3KuYw+DebDedHCSGVoJ0KJiL
         FRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=flwT+iURKLpYtLG5AlpA8Euuebh0s1kBcUIZ+rA7YaQ=;
        b=nSa8K+a+MvKdEbcQNlcjdpNQYFmUD565thZppbB4xjIVbIGOL4+tH0PH1cZDTlKiiW
         T+AielINYr5Jqjdu4ya7lbZyFa1O1jHUlP8TFJnxyIENRWOayAeKBjBAbsVw6GGaurVf
         Z8McaK9H6V6xa1YY9XyzDl9QZzbVQOttG3ENrIrJZEMULnlnRHC4OoNV3qNtaCeR9czt
         RuDp9SYn1wuQu+dIi0vCF/vs5uA+gGFmZeDke6PRQDVaMYk2UPzdIsgUIoApVnDD33CA
         uURbznMsArq9NkDHLL6xVsVqi45/C8UBe1GIAqxfPmju7jmBreR3z68jrhy2UfzcBYdb
         6qfg==
X-Gm-Message-State: AOAM533FSo8FCMh/321fz8XP+PS+Z1y3TbJFS05RL5uHIHfKyseAuFL+
        4letOLVFil15FjmdnHR99NI=
X-Google-Smtp-Source: ABdhPJxsSvF4HlyGXI+JDzIX9uLXNQ8Jp+1PsAmfm100yu02DW1vmpYiONqx5O9L00/4Fm3jF8pfvQ==
X-Received: by 2002:a1c:6043:: with SMTP id u64mr15137362wmb.166.1605980082827;
        Sat, 21 Nov 2020 09:34:42 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id w17sm9345125wru.82.2020.11.21.09.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 09:34:42 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] lseek.2: SYNOPSIS: Use correct types
Date:   Sat, 21 Nov 2020 18:30:56 +0100
Message-Id: <20201121173054.12172-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses 'unsigned int' instead of 'int'
for 'fd' and 'whence'.
As glibc provides no wrapper, use the same types the kernel uses.

src/linux$ grep -rn "SYSCALL_DEFINE.*lseek"
fs/read_write.c:322:SYSCALL_DEFINE3(lseek, unsigned int, fd, off_t, offset, unsigned int, whence)
fs/read_write.c:328:COMPAT_SYSCALL_DEFINE3(lseek, unsigned int, fd, compat_off_t, offset, unsigned int, whence)
fs/read_write.c:336:SYSCALL_DEFINE5(llseek, unsigned int, fd, unsigned long, offset_high,
arch/mips/kernel/linux32.c:65:SYSCALL_DEFINE5(32_llseek, unsigned int, fd, unsigned int, offset_high,

src/linux$ sed -n 322,325p fs/read_write.c
SYSCALL_DEFINE3(lseek, unsigned int, fd, off_t, offset, unsigned int, whence)
{
	return ksys_lseek(fd, offset, whence);
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/lseek.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/lseek.2 b/man2/lseek.2
index e35e410a6..2ff878ffa 100644
--- a/man2/lseek.2
+++ b/man2/lseek.2
@@ -51,7 +51,7 @@ lseek \- reposition read/write file offset
 .br
 .B #include <unistd.h>
 .PP
-.BI "off_t lseek(int " fd ", off_t " offset ", int " whence );
+.BI "off_t lseek(unsigned int " fd ", off_t " offset ", unsigned int " whence );
 .SH DESCRIPTION
 .BR lseek ()
 repositions the file offset of the open file description
-- 
2.29.2

