Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91FA738F2E0
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233771AbhEXSVc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233637AbhEXSVb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:31 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9515EC061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:02 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id j14so27735892wrq.5
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rwPkusHIQr3xDMeEi4vP0rcGAwmX6cCLiPQo/5QP3Eg=;
        b=rTEaiNDIC0YP1WUpKMwwBl4bpvi8t5k2ccEX8S/dnYFpVEHafB8RLw1j1WGbZit8kk
         FnFek9RmIQBiemuGU9EdjpcWC+UOAVAhvl+YlsA8XyZDlSMrx56rxzjb92NGagOxyrC8
         mAy6uzUYA0n2XH/2vZT0BogLuWoKy9veRC1ZZlSin/VIpDbHxaikIdB5WO1lFGzF78EL
         0pWhFSHZky5cDVEOYgHfyhleqEXxvfWp6A8f/aSfKjnWn0awogoE/DjOtBKwiDtwJDWz
         VDqreZOHhI8mOzynELl0P2K9JJeAoxa+WR/3kkEucE+Zbr4htDaaCPDIJB48QFJeTE9e
         8T4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rwPkusHIQr3xDMeEi4vP0rcGAwmX6cCLiPQo/5QP3Eg=;
        b=OPZhth71gx1dzIJtyfWygC88jIZQFeCVPKIcs323JrldTQdqaYEZWDDhO7Gh05q4b2
         /Y8O1tS+x7eCw5YPJd+22SQ0ZgEVCzHYo6f21a+tKyAKmh7TlKiAkEgR5zGWlGsbIakh
         +SIu3YeJ0IldNfIF8tpfSi9a5qmep0I0atCyPnMozTB6GdZZTus/w5pYL+rJga4DxZbs
         xR0uOJOdz8DINd6TB7OgDCZE0Copm1+FRBQ7/4TaS0rxodSfKO5abB+KPd00oZN62JEN
         C+fAKti09e6haeWbwN/BzIU8pAK5fbKC74ARWxPme+PPDBoL12mxTXUpfqio2JCedRDg
         bCmw==
X-Gm-Message-State: AOAM532RYW5/7cEicOzK68MjNGS6OApfmvVmWMO7cJQQvUBNxFMKK9+Z
        g/lvNMA55GulEvS4mDgMPqT3J422wiE=
X-Google-Smtp-Source: ABdhPJxBv3CSFblXvS8rG/5aiTxzG2QsC1FSuBl5pJxhaS3FjEhiC5/kWfMXB7ri9TpPiYkSc47gAg==
X-Received: by 2002:adf:fb87:: with SMTP id a7mr23553007wrr.58.1621880401305;
        Mon, 24 May 2021 11:20:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:20:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 09/10] sigprocmask.2: Use syscall(SYS_...); for raw system calls
Date:   Mon, 24 May 2021 20:19:46 +0200
Message-Id: <20210524181947.459437-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigprocmask.2 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man2/sigprocmask.2 b/man2/sigprocmask.2
index a622e4c18..b82386f14 100644
--- a/man2/sigprocmask.2
+++ b/man2/sigprocmask.2
@@ -37,12 +37,16 @@ sigprocmask, rt_sigprocmask \- examine and change blocked signals
 .BI "int sigprocmask(int " how ", const sigset_t *restrict " set ,
 .BI "                sigset_t *restrict " oldset );
 .PP
+.BR "#include <signal.h>" "           /* Definition of " SIG_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
 /* Prototype for the underlying system call */
-.BI "int rt_sigprocmask(int " how ", const kernel_sigset_t *" set ,
+.BI "int syscall(SYS_rt_sigprocmask, int " how ", const kernel_sigset_t *" set ,
 .BI "                kernel_sigset_t *" oldset ", size_t " sigsetsize );
 .PP
 /* Prototype for the legacy system call (deprecated) */
-.BI "int sigprocmask(int " how ", const old_kernel_sigset_t *" set ,
+.BI "int syscall(SYS_sigprocmask, int " how ", const old_kernel_sigset_t *" set ,
 .BI "                old_kernel_sigset_t *" oldset );
 .fi
 .PP
-- 
2.31.1

