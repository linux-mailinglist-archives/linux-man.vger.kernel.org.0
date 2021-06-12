Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F73F3A4D97
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230208AbhFLIdz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:33:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIdz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:33:55 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFC0DC061767
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:55 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id b205so4565844wmb.3
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kjDsHgSmJ98CZinPxQ0iFmwo1UfbV1JSdSWo7uUKicY=;
        b=gwpQ+Fn7zLIpDDr//sauu6aye5ROBAADvlIugw6QpPP4Zx/2vdPjjnj8u6N3y3DKr9
         nc6evhfbUBz4CM9/SlKT6UYqALcXmlcil3HZR6bsy7+0b//S8jbZFB2JFS8QJdDVieoZ
         3lTQiKWLDTze3FHcDc2KHNCNHgPCeUnoFs68SSXGGxt1lYtsJoWWsZzeGVg2MyJnqW9f
         HvGWJQe3s9zwXycUaks0MfT6/2IbffRNfrsomils5sP13SCGAFxAIcOuwxFeitSf0T1E
         XdgIFLWQ3iVscCRnusidCYKuMjuR/MvJ3I+yKOpVH3oNSTmalVE07TkKCuue2qOFEkHa
         zV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kjDsHgSmJ98CZinPxQ0iFmwo1UfbV1JSdSWo7uUKicY=;
        b=ZOHGJ7r0LleckqR56T3hzo/qcsdW2qnmeOirIz1Sq5oTOWOssqunEsK9NOPPu0k9tl
         aEkqVnDsX9ZtVgdVq9md7XXbSLxQf/N+sTgpfqm0jNZfToaWJLHoT3YOB/XxxcAUfl6N
         fCl9zCfxF3O7BiLuDTDwQq8RJxKU/XYxE8IxSgEPN88QHlNUua/oscJEKNXjIOSCm+ti
         +h6b7fn4jBQqWQCHKha6fWLKI0y6dfRmZWPHKmwce9tAiA/Mf/1CZS9PkIAFkVvDjSLy
         WAWi5aVmbdcGbkyATNCHuE5q79Y07PhxK8WrP30VjypHRBu7z0+iIcIEc0b1NLW3JFPA
         xb9w==
X-Gm-Message-State: AOAM5305lVaK/7Kh2ygfT4a3ufKKbpDkunFjS6/hX1q8SPlkqoQlJmqm
        LT6sSu9ijJUyA0h8wkWO/eqNAkvmjyg=
X-Google-Smtp-Source: ABdhPJy9yuCEhrdiabnEogTj7VN/FyVZpEGgNdGTF6ppmDb9vgJ7DDRZ7AP1e1kZNkKcGo32oIzPhw==
X-Received: by 2002:a7b:c38f:: with SMTP id s15mr24374549wmj.16.1623486714443;
        Sat, 12 Jun 2021 01:31:54 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 09/28] subpage_prot.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 12 Jun 2021 10:31:26 +0200
Message-Id: <20210612083145.12485-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/subpage_prot.2 | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/man2/subpage_prot.2 b/man2/subpage_prot.2
index dc07753b5..91bb789e1 100644
--- a/man2/subpage_prot.2
+++ b/man2/subpage_prot.2
@@ -32,12 +32,18 @@
 subpage_prot \- define a subpage protection for an address range
 .SH SYNOPSIS
 .nf
-.BI "int subpage_prot(unsigned long " addr ", unsigned long " len \
-", uint32_t *" map );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_subpage_prot, unsigned long " addr ", unsigned long " len ,
+.BI "            uint32_t *" map );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR subpage_prot (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The PowerPC-specific
 .BR subpage_prot ()
@@ -96,9 +102,6 @@ No library support is provided.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 Normal page protections (at the 64-kB page level) also apply;
 the subpage protection mechanism is an additional constraint,
 so putting 0 in a 2-bit field won't allow writes to a page that is otherwise
-- 
2.32.0

