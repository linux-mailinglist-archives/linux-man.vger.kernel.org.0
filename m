Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAD0A34293A
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 01:01:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbhCTAAg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 20:00:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbhCTAAZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 20:00:25 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06293C061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 17:00:25 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k8so10727109wrc.3
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 17:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O43UEQEFxqfDKnzii37dNLl8vHNNznXZD2GWJNipKjQ=;
        b=JL83OHUKtOpN10yQQxD8j4o8p130vVJOpilwTR941dUvjXqfBHBIztnXeU/icckEYa
         jyFfYuBtYu+VZ5IDCNmUr+Mja6jTP3aR4i6TDaHEsjUTymQbQzlbgWdjsMnrrqflKqH2
         hiFbniJvZRsFaumUg5SToT3GjP0dnGShF0JdthlqiMbdLDsSyl3TIx/xsZ8gEPUHMHVV
         HjJDqbsU8y5zKGhoIQmYjuyYMaq4mrxQtuZUOIMVLhMCACsvHtXRdXs1nfINZesnXPeI
         oea22GQiOkdy5I5kwWp0WUWkpNuvsjZUUuIa7N7HK0ysNkBVNiH3qKMD2vorA+AMRsq9
         p6aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O43UEQEFxqfDKnzii37dNLl8vHNNznXZD2GWJNipKjQ=;
        b=omj5c8MV8AlmGTr0FmK1pGrO3JQdxUAKp0cKy/LM58ZVznI+jvBQJ5TJskfeK6+KhF
         B284tFpsZVB4In4kpR8uLznm4KFpxp8arFAjOHuZMe9H1FM68ytwT6q38XyIa9phVb8q
         GiRQKOE0dz/OYjerD6IREyEaKMmsa8Aqyn4ZV0oetQKc6dmoGySLP5qs7tEXtFlZMIP5
         jg8Xcaqn4zguaw8Rzf2MjPahmeDLrsFQ9CbuE+ENqrtOwIhNkPf4nI/+iZygOuKYzXnE
         7lFpYZGJLKBjAl1VuNu9vxH6VVizUVf+KaDPAqBFlGJU5Ss6fDOfiJu3GBkDxAc+Uz8G
         2HOg==
X-Gm-Message-State: AOAM531G83RuCSbeiQ9abkNzyTCXY3LrAuyUPEa9whXDkyftq1UFbbiA
        3D3myL7Nm42GLIxj15HDh9U=
X-Google-Smtp-Source: ABdhPJx1S/riKL5tU4A5LwFskccGrm3ArWwehc073d+BMhMFqQOzj/lUJQGgUc9DUbK7Fafw7k7hcg==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr6822725wrv.329.1616198423828;
        Fri, 19 Mar 2021 17:00:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q207sm9327832wme.36.2021.03.19.17.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 17:00:23 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mark Kettenis <kettenis@openbsd.org>
Subject: [PATCH] errno.3: ENODATA is an XSI STREAMS extension
Date:   Sat, 20 Mar 2021 00:57:24 +0100
Message-Id: <20210319235717.28264-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Mark Kettenis <kettenis@openbsd.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/errno.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/errno.3 b/man3/errno.3
index fe9b7f715..48e3e63f3 100644
--- a/man3/errno.3
+++ b/man3/errno.3
@@ -403,7 +403,8 @@ No buffer space available (POSIX.1 (XSI STREAMS option)).
 .\" ENOCSI is defined but appears to be unused.
 .TP
 .B ENODATA
-No message is available on the STREAM head read queue (POSIX.1-2001).
+No message is available on the STREAM head read queue
+(POSIX.1-2001 (XSI STREAMS option).
 .TP
 .B ENODEV
 No such device (POSIX.1-2001).
-- 
2.30.1

