Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C9BE3E3998
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231262AbhHHImH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231254AbhHHImH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:07 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC38DC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:48 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id u15so8451145wmj.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hA/ZuQrxtZ6GycJIdwp4YgsMsbI2VO1kHyLpnidM62s=;
        b=LFUJwtNxiliGxVM9DtYvHXOvYNIM6+M/86s7Q7pcnqjWRsvqzFgF7sT7Z80gglXsA0
         y5g5TGk0MbHwMplhg0QTtegjLgCqMF/euyS4uEjHtQuGPz80ar1irHeFqJ9mMKmmLL/E
         A4NCbVl0oifsoaaebChwd5sNuDxsHVozaksghB2d/rC9NTn8TtoF1OnIabzr6/PD8Jx7
         znEfv537nr+ZIFpShi68VQrk8ccV8SLmfFnJ9LxNIakpfJw5714eqEr337Bw/IDRAFTf
         yqMa2QEuhNGyjC3ALBpMPcdgIjcBAy52xmFWGIemI+fTJy8J1xWC7r+UQsGFNbr9YQu0
         AxAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hA/ZuQrxtZ6GycJIdwp4YgsMsbI2VO1kHyLpnidM62s=;
        b=bHQpfdekCH/B1O9JTTGk72/YfZ8XjvE7FR3k1qc2Va/SDQcyvzk6iyiiyuuKXg6JpF
         ezyzSu6JjMP1Vz9mqloGK4kfSdgFZWjnIc8LFT62TcMtldXZAhLfkbEJfdQagGEtLNJC
         NEdvEeKX+gAG6RN1t2sUi35tjoODBZmr78x8JAciOUEovRfcHkC5a/IW0dy7yvuNXN6r
         U9OLWHbGmQOGqEO9xHmO3GRdLxpBEw/hAo0AnU/b9WARzaJ0CVSJXK+Uoh8fZbWt831X
         iwCGxNtFMzB/U1esSO3EVnGCJU+AqRoON2MyLpOYKRvANDUhYI1VXjDIT0mjSMY+oKhT
         AZCg==
X-Gm-Message-State: AOAM533cYPZbYviRY/qmHsvOUa0FhljoQ+FOadvDQClvmBYxUL2uXLbn
        mD1tGhmJvPEkG9njUX9aXio=
X-Google-Smtp-Source: ABdhPJzsbxxHbGfn/sddxJMCFEhrFU7q4AuBug05Yymbi8UczwTh4dsoTtWJ321FmrP17C4vo8YJEQ==
X-Received: by 2002:a7b:c942:: with SMTP id i2mr10838800wml.153.1628412107542;
        Sun, 08 Aug 2021 01:41:47 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Michael=20Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 04/23] namespaces.7: ffix
Date:   Sun,  8 Aug 2021 10:41:14 +0200
Message-Id: <20210808084133.734274-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Michael Weiß <michael.weiss@aisec.fraunhofer.de>

Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/namespaces.7 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man7/namespaces.7 b/man7/namespaces.7
index 0ac32c77e..850dca844 100644
--- a/man7/namespaces.7
+++ b/man7/namespaces.7
@@ -71,7 +71,8 @@ Time	CLONE_NEWTIME	\fBtime_namespaces\fP(7)	T{
 Boot and monotonic
 clocks
 T}
-User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{User and group IDs
+User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{
+User and group IDs
 T}
 UTS	CLONE_NEWUTS	\fButs_namespaces\fP(7)	T{
 Hostname and NIS
-- 
2.32.0

