Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F10429BB91
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:30:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1808742AbgJ0QV0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:21:26 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38456 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1808739AbgJ0QVZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:21:25 -0400
Received: by mail-wr1-f65.google.com with SMTP id n18so2601686wrs.5
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m9J+Uskm0+ply0kWxk7sH2y1TMta4YV8x7wQ2ccMSq8=;
        b=vL94V8LI2x7uCoBAYBFNvjn6Po67QrLL2gO3cnshcb+/Z07d6v5iYNrHymvcmemHqX
         ESp/MUVpqgW9X3AB3Dqb+Ra6Ecviu/hyq246Yss8TLOST8FBoWOVW1peq5q6D4o9LEFP
         PT46KCqMQbq6+CyNbsEJnZvkdhvETQ1T4UEHFC9ObWmiaWeHhXm4HVabVFffT/S5f6Ny
         lZUw8cQLYTFmR9qnN1TnBQVSdxFEwXqGgU1fjQgf5Fvlml1RqqUlh30HmQnSREDKA88V
         qIKHr7gWj9cNRYsNKIqSmQnN7dvQKmN7h4Wc6DT0SnnIQmcbRO2DYy+hwenhAapQf/Lm
         QdiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m9J+Uskm0+ply0kWxk7sH2y1TMta4YV8x7wQ2ccMSq8=;
        b=oS1oQ+N+dQzxU0FGXnDN9PGVbfyNHPSiWnhEX1iHuBh7P+sd74GwfGDoErBRZpp1zU
         00wCGeyCWh7WSkfhlx+yHMvcR8p2fTBFvMcEDZL2YvexG7pdCZF2WkzJsDNHsTcxJLXI
         F4HNxek8VEqLclOBAIXyL9cslUlSV3a4DyPyujT7r9NXi5NPgHEZXTnSqfRVrK/TYeZE
         ppUBGi638mN0M7X2W9FoE3HBnbBuXeqa2LVIcehUYJw4/ActVGgLyonokPifA2Q6GGdR
         RrLFsy5ODDGPI1t2jk9L39mpP42nUMNfTutn53k8bmhqXMm4jam9uzPWC+XJK8VJoAJ2
         DPWA==
X-Gm-Message-State: AOAM530IOC11Kkyswreki0PuogU0qi0wrG1FAWHj7A4tBFepOPBZbqdk
        qlhl+8NKVJiYq4jp9Qe2534=
X-Google-Smtp-Source: ABdhPJyHZ9riBVr33s3GLUCZtzM4ogmoxldjDqhgYElolO079jS/Hfxk1zV/HJZBB7LwT1Rc8s/FBg==
X-Received: by 2002:adf:cf0c:: with SMTP id o12mr3625053wrj.287.1603815683764;
        Tue, 27 Oct 2020 09:21:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u5sm3108839wru.63.2020.10.27.09.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 09:21:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/6] system_data_types.7: off_t: SEE ALSO: Uncomment loff_t, off64_t
Date:   Tue, 27 Oct 2020 17:21:09 +0100
Message-Id: <20201027162114.47521-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
References: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e93495eea..c02782ed8 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -769,12 +769,12 @@ POSIX.1-2001 and later.
 .\" .BR getdirentries (3),
 .BR lockf (3),
 .BR posix_fallocate (3)
-.\".PP		TODO: loff_t, off64_t
-.\"See also the
-.\".I loff_t
-.\"and
-.\".I off64_t
-.\"types in this page.
+.PP
+See also the
+.I loff_t
+and
+.I off64_t
+types in this page.
 .RE
 .\"------------------------------------- pid_t ------------------------/
 .TP
-- 
2.28.0

