Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4E12407948
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232948AbhIKQCw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbhIKQCt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:49 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3FB7C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:36 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l18-20020a05600c4f1200b002f8cf606262so3669873wmq.1
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Uivf9zhCW0tp0DTPSLHSTmCUS0p6BIxiWAWduIetJwU=;
        b=Y23bT4iSnQMt/t1fjfDPSCaBbcckeETp4xrWQ8Vy4Bc+wXv/bjyCa0srylxMzPY244
         VzAynYWrTl1jdCgjeJkAZ3hWUSIAXf1m7V2hj+EU2H7J+yxkxSHHg92mpMdh1/bs4+QL
         ADWiAfrtdXHyGrALfxuq1Owm/3rJsOMCjesCvDTt+ge16LscstOdBjjc6ZBNzfCaDzi6
         LTe6VFM1DvEtjliGqwzvrcL21xh07nUS1tro/FVhhJFIMNweYinYc52Celol/f7wThdv
         aOfehmxSS7ICpQD48Nu41n+6TMJhqK+WMtaC72i7BlxEDQKxIUNasJnGdlPbijQgLrof
         tz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Uivf9zhCW0tp0DTPSLHSTmCUS0p6BIxiWAWduIetJwU=;
        b=0MBhoRyOmOLrwzyglxUJ0/4B+1y+QVtUmut1P9GjNafJLhT7wO/TVsi1URaNWXzdKA
         u6YLgTx6K39UfqAd0t/f3w7qhDHcGEUACKPcDqr1uhopHkj16Ny07zDhAn4E15Jtlgnu
         WCCwMdfgikdF62KoYQwq76CzeCGEpibuKUFp3Uc2Xkp80FAanWlt5w3KOadf9rEHj23w
         9XzqCM1J9hc53e2BrEtVQJBk6Xu5qVULkjzGno9y6XIxnKF8xyv8MI/j9gk7eHYbNMKq
         nfTww9Ip1y16/bQ7GwxssMsY9+9SLZWifx+7qF0sb5jz7aHCP9htGE5nyqFWIKyvXc7u
         zjmg==
X-Gm-Message-State: AOAM530blu2rNiZe/S+hke4/teSWOY6/PPZIxiFAg62CEtVg+2E6FvEl
        hSN/kSqCW5o4sgaybQouljs=
X-Google-Smtp-Source: ABdhPJw96hLsaAzmZ+e/OiHN5AdgIUqPv1d/DF/2o2wvLQGdFA/vSZKoQ9v+0KoZCLtVtdJEEJT6IA==
X-Received: by 2002:a05:600c:a4b:: with SMTP id c11mr3273337wmq.97.1631376095685;
        Sat, 11 Sep 2021 09:01:35 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:35 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 09/45] vm86.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:42 +0200
Message-Id: <20210911160117.552617-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/vm86.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/vm86.2 b/man2/vm86.2
index 743882f02..09ffee46c 100644
--- a/man2/vm86.2
+++ b/man2/vm86.2
@@ -26,6 +26,9 @@
 .TH VM86 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 vm86old, vm86 \- enter virtual 8086 mode
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/vm86.h>
-- 
2.33.0

