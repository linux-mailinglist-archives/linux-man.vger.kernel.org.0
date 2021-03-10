Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0C703346D3
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233424AbhCJSci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233461AbhCJScV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:21 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5F5BC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:20 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id j4-20020a05600c4104b029010c62bc1e20so11361568wmi.3
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H8k9UdQsMXTORYdmaOp/4Mj59+nJPP71f8MfYKUnTEw=;
        b=RCwRKlbMi3zZhw13WA++n/3qJs9BT3vz254Jy6dqSV6Ng5ICia1znMgYcIIPT80z7h
         0J0JK1d1UXOzSyMuB1So9rJ5jZlK84HwUGvq7FYxEchy+Vj7y4Xm17gcLN+YmqpPZe2K
         rFl4/Joqe/hwWWRPly0IwJaISNc5iPjIM7JysabrQJmxRaW3X1e+qK/E30RduB/9j5a2
         ids6mJdOqkp5/stF8m449yNRwpG/qowbtTauGj0kp/aOdGicjr/qZ0xFoeaVEgILO6Qf
         dix3arpQh0EhuYguDOnDmrMQHohM2Ssn4zNuuMHUwGpQTfYRTltg4FkPAnS6uq2+RCgy
         muNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H8k9UdQsMXTORYdmaOp/4Mj59+nJPP71f8MfYKUnTEw=;
        b=XRK4TjOnq4/bflD8uh1HqjhV1iYvdUqLUG7k+hWgqMA3dfv36UgqGKJUjmRNQE/5N2
         BfBg8wHHwbqpqqEUlGmOFS8GZwMdb3Fg3u5ztOplRo80iNhPlwSGgt6KOeqmYPgytD9l
         WJSeiAYPaEgsRU+ppEF+KC3NYISCvTskVXmPUWJ/cVaJSjVNIQTqRvc1PiLtD4liqN6v
         qbYX5ZIe3Jg49Mhh+qjXLuvLZiQnsGNB9oKOvg2uB9jlnK9wkU6+M3fcPEmlJFmKi91z
         6id+cjSZ8IVPk6Vb54ttqC1aiYxUQe7O3Hg1o1seBZRurCE5aG9nEx1XDp41unL3Y8EO
         cUzw==
X-Gm-Message-State: AOAM533884nsevKmgClOCOBvVlHFO0l2v3WyLYzaPWGNCYn2lD1AS7ll
        E1y4/0Vz5bPWfnczzChXcJ8=
X-Google-Smtp-Source: ABdhPJxMct7E4+JoqDh4LKVOIYI62RobQsVXQNuC6CpU0tcCpo3uHR1gUbkqXG4mZ8iO1qTk5upYlw==
X-Received: by 2002:a7b:c010:: with SMTP id c16mr4713344wmb.134.1615401139412;
        Wed, 10 Mar 2021 10:32:19 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 16/24] string.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:42 +0100
Message-Id: <20210310183149.194717-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in strsep().
Let's use it here too.

.../glibc$ grep_glibc_prototype strsep
string/string.h:455:
extern char *strsep (char **__restrict __stringp,
		     const char *__restrict __delim)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/string.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/string.3 b/man3/string.3
index 06da21c28..4bacd8d8b 100644
--- a/man3/string.3
+++ b/man3/string.3
@@ -171,7 +171,7 @@ Return a pointer to the last occurrence of the character
 in the string
 .IR s .
 .TP
-.BI "char *strsep(char **" stringp ", const char *" delim );
+.BI "char *strsep(char **restrict " stringp ", const char *restrict " delim );
 Extract the initial token in
 .I stringp
 that is delimited by one of the bytes in
-- 
2.30.1.721.g45526154a5

