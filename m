Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C76632412E
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235824AbhBXPno (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237418AbhBXOtW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:49:22 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84770C0611C2
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:03 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id j187so2014701wmj.1
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HsEqrkLM9lULsy3fWm7WmO4ilkVxN0FvQlcTybVSn8s=;
        b=SlDejaGW0aVsU5n0vsQjypMRws4NqzirJUUBu9HSVtvkqXUh1GYeFHzQYFaWqEP/rA
         UxchDWyKQg0FYE8UcDAf3N1yeEzqcCcC7wRpSumFYtPiAzaDyZJxwOTKYHDnXPwtF3tc
         Uovb1HqE3b88Jf1he16esQ61r/+Akew0ty/Ty7G+aWKUfDOAVsSHCWz/YP2k8ALgSVdc
         PhlUn1Vq5hCtmRiec6FjvPkXEExJlGAFTxoQuQ90ewxNHA6Iu0hM1wotPPThnZGsRwLy
         i41K1dfQCPTna5+AAJV5GJDU3xK1PsnJSeTwfVkbIxqFlIxCkjLFOzGeLedBlCVSiEqk
         P5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HsEqrkLM9lULsy3fWm7WmO4ilkVxN0FvQlcTybVSn8s=;
        b=OI5DqxquMLYslIhXvwnIylefT3P/UpIzEuX67RGikVLw+D5Jtxtsu5gnhqTt9TMQw5
         NjVKpdFqytkJKUzcllNLU84yPl0hC9eIpEgRqrzyqgHtS2JPe1HLLw8YaScO/CBRQHZj
         kHYrQsWIA4wiIITPwen7PcRqkatFU4RBlLwFuvicoc+Yo97wJjndvJaMGxPBLM8e9aew
         1SHqDCMlVU7vUEULvRHcfscoepqdjVBUsuq6+HjoUvNkA68CHV7QUz7EfzVnvmaZ16Rp
         +EYVkS2D9Y8VhiYSx8cv7TGhDOn0agWlDpDIJ51Vkh/SgiiGeK6p3kNIp3ZclNpK656Q
         WF5w==
X-Gm-Message-State: AOAM531anNdf1GQUvpgT2AR7pVHz+BzEMIKdnu2pZXkN7J391Nbt+90X
        9/PP8rRdugqaxTp9z1UOYEklj8+IpZV3Bw==
X-Google-Smtp-Source: ABdhPJz8FmvpbGuSmgpMd+2zGxfzpm39LIlCiGeQboGVaFuoM2TnrGbWWeIK1LRNhBq2OnZgLexQ+w==
X-Received: by 2002:a7b:c922:: with SMTP id h2mr4116070wml.44.1614177842294;
        Wed, 24 Feb 2021 06:44:02 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:02 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 09/20] dlsym.3: SYNOPSIS: Use 'restrict' in prototypes; add missing 'const' too
Date:   Wed, 24 Feb 2021 15:43:00 +0100
Message-Id: <20210224144310.140649-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of dlsym()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

The glibc specific dlvsym() also uses 'restrict'.
Its 2nd and 3rd parameters are 'const' too.

Fix the prototypes to add these qualifiers.

......

.../glibc$ grep_glibc_prototype dlsym
dlfcn/dlfcn.h:64:
extern void *dlsym (void *__restrict __handle,
		    const char *__restrict __name) __THROW __nonnull ((2));
.../glibc$ grep_glibc_prototype dlvsym
dlfcn/dlfcn.h:73:
extern void *dlvsym (void *__restrict __handle,
		     const char *__restrict __name,
		     const char *__restrict __version)
     __THROW __nonnull ((2, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/dlsym.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/dlsym.3 b/man3/dlsym.3
index ed3804963..d6a73fb5b 100644
--- a/man3/dlsym.3
+++ b/man3/dlsym.3
@@ -29,12 +29,13 @@ dlsym, dlvsym \- obtain address of a symbol in a shared object or executable
 .nf
 .B #include <dlfcn.h>
 .PP
-.BI "void *dlsym(void *" handle ", const char *" symbol );
+.BI "void *dlsym(void *restrict " handle ", const char *restrict " symbol );
 .PP
 .B #define _GNU_SOURCE
 .B #include <dlfcn.h>
 .PP
-.BI "void *dlvsym(void *" handle ", char *" symbol ", char *" version );
+.BI "void *dlvsym(void *restrict " handle ", const char *restrict " symbol ,
+.BI "             const char *restrict " version );
 .PP
 Link with \fI\-ldl\fP.
 .fi
-- 
2.30.1.721.g45526154a5

