Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B20038F2DA
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:19:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233103AbhEXSVZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232985AbhEXSVY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:24 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D653C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:55 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id q5so29478644wrs.4
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0VtqldnPZkn+ka06U4Er/IHvDI5lB2i1Z+gwZQ0W+qo=;
        b=VETc7VdumYHUquoJsszBkb3+lxFzXhNOKQvBus6gwA4lwM8xxnlb6Rc//Zg6W1lEgR
         9nte+BaPdcb3Ih/cdBH4FO8N2JTFZysOQ01f2wsvfRE4OENwBFgKJYHpinGy7QsRsyco
         PmychfGiABhnUEM5RlXXSDtTSF/1BpFsYNtc1Q5QQ7iX/U/Jkk/wuzLq1gISiiyi3zjF
         0zor47/UMf3L4eKdPBq3rfTGLlnjLYF6alMM+24VAZlofIeht3mxhiqg7YObunHNM7/U
         EYJn9+rBCbtckHWLWBkuH1FanU/tx0c6AXljfo3/aPYG6mCZzaCYuUFBD5Tbei78XOdx
         AGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0VtqldnPZkn+ka06U4Er/IHvDI5lB2i1Z+gwZQ0W+qo=;
        b=RxQ9aFGp2z4SHULA4qyinqVDT2Sve2Umd+IJ8FdOQUt1OqJmuCJpYSr5lYCyQwqarY
         XZBrPSVJRnnIndBsqbQP80Wp4rqN20H1r0gsI1h3I2ng2wcEKSPBKhE5Tj8jKpTBUKz2
         UkK8sdm+5a/NJT0HeI+K2or5Z02986UmjwLmeGyIpSw8h45LJaZz58/RFxt5/JinaHNq
         YSgExCVL5aYoBgyZBY/AnRSiKpPytBHQGUdMAY7EEq0rK0wR+UmJIpAMrjAKiOdFz3ei
         DCZAaHjrbZW7AQL3NqIf8N+qLhLdzSCqrjQWsihN8+27j0DhhXzvPq3LTwr79Gvl2HxG
         1VNA==
X-Gm-Message-State: AOAM531/5WLzVJnRHlvBhEQdmUPk9F41gJjEeb6qOKSR9QCXp2BpXbe+
        PSc3iWROqpIFMbS44ZCj9WQ=
X-Google-Smtp-Source: ABdhPJx9jxRmpIXAl+I7tgev/MjxTJHw16FFmWAY6ZoLsYoqBRpZmWNdLJcbXfHc4RcTAHDqi6bFfQ==
X-Received: by 2002:a5d:4902:: with SMTP id x2mr23100551wrq.233.1621880394281;
        Mon, 24 May 2021 11:19:54 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:19:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Tyler Hicks <tyhicks@canonical.com>,
        Will Drewry <wad@chromium.org>
Subject: [PATCH v2 03/10] seccomp.2: Document why each header is needed
Date:   Mon, 24 May 2021 20:19:40 +0200
Message-Id: <20210524181947.459437-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Tyler Hicks <tyhicks@canonical.com>
Cc: Will Drewry <wad@chromium.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
---
 man2/seccomp.2 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 584a16f22..1be7d6766 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -30,11 +30,11 @@
 seccomp \- operate on Secure Computing state of the process
 .SH SYNOPSIS
 .nf
-.B #include <linux/seccomp.h>
-.B #include <linux/filter.h>
-.B #include <linux/audit.h>
-.B #include <linux/signal.h>
-.B #include <sys/ptrace.h>
+.BR "#include <linux/seccomp.h>" "  /* Definition of " SECCOMP_* " constants */"
+.BR "#include <linux/filter.h>" "   /* Definition of " "struct sock_fprog" " */"
+.BR "#include <linux/audit.h>" "    /* Definition of " AUDIT_* " constants */"
+.BR "#include <linux/signal.h>" "   /* Definition of " SIG* " constants */"
+.BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
 .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
 .\"                  need <sys/ptrace.h>
 .PP
-- 
2.31.1

