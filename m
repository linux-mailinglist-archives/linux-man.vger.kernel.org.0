Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25D623346D6
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233488AbhCJScj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233514AbhCJSc0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:26 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39896C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:26 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id d139-20020a1c1d910000b029010b895cb6f2so11351673wmd.5
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KaFj7Tr9fR/tAVTbWXI0CsnmRuh98rZPZlMDuCQ86yA=;
        b=D3K7rnD7JnLb+qZBCPo6hJfRuFFqe6zeay6zejILt4gYM/bRSey0wD7kIx+MYn0DFh
         eKSvYfTY4ys2PaYa4V/AtQTD/TUuUljDOCgXAW13cYZMfaxZ6AivYjZm732gHlR/Dea2
         zKLyXJqklYq3SKaF3dIg78wsMEtEfLHmhBIkhtYfH77foN6CmzAvQF8sH4Fw1qHK6m48
         eUWUTCfOZ2Ky4tzjRirrAiYk2kAdiz7iXQ6mMbCireaDw1uIffhqniNXD4aINlYhnNkz
         DSCE6k2NQPZxagREF+DqOtnPuosQAd989xNkDKsqm+8l5D8UtJTAFDAQ5uZyJ7sR/R7h
         SWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KaFj7Tr9fR/tAVTbWXI0CsnmRuh98rZPZlMDuCQ86yA=;
        b=qEr5a1QDWyvuZevLZyekHY7c/JSLr2E9GoJPi7sIH8GwNz8Au9qQJsrH5uvpbWBQZZ
         gmNZEQfyYd5+HK/VUrI8fDgs8Fs3uSGcmRwZB5gQex5b4UB7YOwi+9kwcJN2I3+4FAle
         KW+n/+ltMlZ2ntcnovJHUZ/I3JkSJNbmJc0gRKROSSqDi3Ey63Mvp8Pyces64qY1g+yw
         faxaYacupomB9rSdt48+inpRQ74xB/FlSaa1CIWzwbYpd8iFRQhZc1Bq/3u0zK7N8xcT
         oALTsJvBK2S/R+PlhLifG9yaJzeU7HGCxiCYdRXPvQknyrRcJQ4Drjz2tqpCxSxH9zbK
         En8A==
X-Gm-Message-State: AOAM5336bHT7QPTxc7tk1b3qQoA4MXFzALs6YvekNxnZ/x+L+WH8d/MF
        /bxhEyqkmdA9aoPTBHc5ZvE=
X-Google-Smtp-Source: ABdhPJwm2W+d5W6AgtTJA61TYoI2c7AS5coRvVnDlXra1cQychOeMafqXyIj7Ii+G9M8gFpPCM2mLg==
X-Received: by 2002:a1c:6543:: with SMTP id z64mr4707167wmb.50.1615401145084;
        Wed, 10 Mar 2021 10:32:25 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 23/24] strxfrm.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:49 +0100
Message-Id: <20210310183149.194717-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strxfrm().
Let's use it here too.

.../glibc$ grep_glibc_prototype strxfrm
string/string.h:150:
extern size_t strxfrm (char *__restrict __dest,
		       const char *__restrict __src, size_t __n)
    __THROW __nonnull ((2)) __attr_access ((__write_only__, 1, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strxfrm.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/strxfrm.3 b/man3/strxfrm.3
index a6e0e4515..276497450 100644
--- a/man3/strxfrm.3
+++ b/man3/strxfrm.3
@@ -34,7 +34,8 @@ strxfrm \- string transformation
 .nf
 .B #include <string.h>
 .PP
-.BI "size_t strxfrm(char *" dest ", const char *" src ", size_t " n );
+.BI "size_t strxfrm(char *restrict " dest ", const char *restrict " src ,
+.BI "               size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

