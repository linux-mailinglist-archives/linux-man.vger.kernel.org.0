Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59D113796A0
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233109AbhEJR5y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233271AbhEJR5x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:53 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C05DC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:48 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id o6-20020a05600c4fc6b029015ec06d5269so3006594wmq.0
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GyUIwXdSyudN1G4d7iXB5z6xFgqxMhn6F97pZeGHJXY=;
        b=svyHq4iJFz/YA5xSJSYvMAR6FuRgYObzc0vxapQDn95UwPsk7wSvGO3XJ7QHMT3SJI
         NY1lkY4LwWrN798nfQ8Pv9jkcOfEZZfJcmb5uPlzpV+uAFeigt106u2YPjPNW03IzBeD
         SOu5jc+r5qsiZNMvtksMKUknmWXFO6LMVoQtcjkZO96nsVpquuKWivopQkE5jTDmLSkE
         S0sD8f8akroaocEHs7t3j7L3Wxh7vaRPwamLp1rvXRe0N901PuVW+uR8/ro+SIYAuJd+
         E5edrBaXIDHEwM0cpdS8MY3rN63BWk4nIUtZMlQ8yybLERiOPCJTVf/s5jrkC9WzMNd3
         CHTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GyUIwXdSyudN1G4d7iXB5z6xFgqxMhn6F97pZeGHJXY=;
        b=rG6MxID1qTrLdznWoGfF9UjCK+0YwVxjmEqGYYnLtmjxHm/zD5mV9M+D4vKz/A+cSH
         XXivbxqJy0sbfRJeY0i/kNfHWNycg+quRjvY4JKyT5/s5ODg4lvnz1/lxPsWocOv6orh
         CGZr/eMBuxsCmHXkoVraNkr4LESXFW+RcS1j7r580IjsKrG0brD9A3H6XvDdjd1UXixm
         UfXq/9l80VCe1r6wS1KTu37IH/LQG9096pfSF3Wks6GtWvsleh4L1vbCMdNQkqltMFi+
         oNeNH0nhg6rGzMo5ZonbeWwV5dLgxik1pBI9PpfGtLms2DRaApT7BK5qMsYWXEOHM54W
         VugQ==
X-Gm-Message-State: AOAM5318/TsU5pBiQ0FnYL8AlT6Az5jUlAc+1Rc1EF5tlZ9Zruebml5m
        VCI0BFWqGRDL9LkU27PK6FU=
X-Google-Smtp-Source: ABdhPJzAz4NGAYbgBVWT9g2P/i1wQ+58R3U+vdQ+XXD6BIfh8d+HMZTCvSNtazh5juyg2CbGMdDcTw==
X-Received: by 2002:a1c:9897:: with SMTP id a145mr378090wme.9.1620669406857;
        Mon, 10 May 2021 10:56:46 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:46 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 20/39] mincore.2: Remove unused include
Date:   Mon, 10 May 2021 19:55:29 +0200
Message-Id: <20210510175546.28445-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

AFAICS, there's no use for <unistd.h> here.  The prototype is
declared in <sys/mman.h>, and there are no constants needed.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/mincore.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/mincore.2 b/man2/mincore.2
index b816e10c6..38ee7d6fa 100644
--- a/man2/mincore.2
+++ b/man2/mincore.2
@@ -36,7 +36,6 @@
 mincore \- determine whether pages are resident in memory
 .SH SYNOPSIS
 .nf
-.B #include <unistd.h>
 .B #include <sys/mman.h>
 .PP
 .BI "int mincore(void *" addr ", size_t " length ", unsigned char *" vec );
-- 
2.31.1

