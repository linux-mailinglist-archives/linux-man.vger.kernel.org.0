Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B1FE3778C4
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229953AbhEIVpF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbhEIVpD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:03 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 126C8C061760
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:00 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id x5so14536747wrv.13
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G+5RlmWesv0WW+xgVvqXIPhEsXBMEsGR98Ol6MLerSw=;
        b=dHRqmIQ7wX+8n6TbYoW42NLZil4pK9q9GMMGZFmd+iZ3Dq1P18quKmQab+qnuQuBPw
         xeOkJ31pEevRAvqmQzU0UipPfOIRKymQA3biNxuwmx9fxCGvPP07Wohuwdv6Yh9SCJxQ
         fwGWRLEllIuUfb7z3P8CuxTbJ6HJMzqCS9JfOgRvmhqN0AHZcZID87up8aCtSnueo61g
         qdLGDuF6JM80B59NjwKSeM/bPLxypPF8SLsV2gVPmm8h8L7n/S902/2EInVSMIiHZvS/
         ZKwZrjArILSBJSuXJSkQtIOlisjiJXSV4lxsVR8oIGsCyRbRb7eQM/07HFQFH6/51PNT
         NRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G+5RlmWesv0WW+xgVvqXIPhEsXBMEsGR98Ol6MLerSw=;
        b=Av7TBYNKBNhicnQylDTyRvkTrEyjn/M0pDKdtP1Wpfh3ftPtMZ+Sruo/k8et8Ci3Br
         jf4fRzJ5Y7MremVcB214gp7AwEk0XMld0TDmP0V8tV94H2Z8Wy7ZwM9IlvUVEpFnjYL1
         ubmRkED8BCRLaa/H5ODm5NI4iTEQRHeMZtq3f/oo0C3BmvvlPyPBLbNQl8SPfjrhMlLt
         IxNO9D4qouUDt1kBJQ8h0J1VcYnLLFh7KDb9XVbGTjoWEzs/jouyicJrqkNjzu517kHe
         TiCzPcF/iu/H1VT2O8Uy2+0VRZdA5NVxREJ6d/HJlEdnHgNDyZL1/SrzH2dZsYBEuTqX
         TaSg==
X-Gm-Message-State: AOAM533OsdHNf7Gv7LCUyNCVe4hHyEFLvqxtFrJLQRJ5VmOBWD+pYgz/
        /AzXX7az97jFkDTuaWqPuf8=
X-Google-Smtp-Source: ABdhPJw+9gXXJDbIOlJyYjVlQcw23aeU+7ynqul0XpC9Eou+8CnIKlJ/trqJXsE8nto2khZNuu6C8Q==
X-Received: by 2002:a5d:5351:: with SMTP id t17mr26955492wrv.83.1620596638867;
        Sun, 09 May 2021 14:43:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:43:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] basename.3: SYNOPSIS: Add missing 'const'
Date:   Sun,  9 May 2021 23:38:58 +0200
Message-Id: <20210509213930.94120-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'const' for the basename() parameter.
Fix the prototype.

......

.../glibc$ grep_glibc_prototype basename
string/string.h:511:
extern char *basename (const char *__filename) __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/basename.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/basename.3 b/man3/basename.3
index 65a14e8cb..51825eca4 100644
--- a/man3/basename.3
+++ b/man3/basename.3
@@ -32,7 +32,7 @@ basename, dirname \- parse pathname components
 .B #include <libgen.h>
 .PP
 .BI "char *dirname(char *" path );
-.BI "char *basename(char *" path );
+.BI "char *basename(const char *" path );
 .fi
 .SH DESCRIPTION
 Warning: there are two different functions
-- 
2.31.1

