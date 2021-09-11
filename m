Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 284C940796C
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230051AbhIKQDW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbhIKQDV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:21 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9A5CC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:08 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id t8so2328246wrq.4
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ihsm+nUI+ibfCdv9Np1Y8GeBm6TVhuxVw1ATAl8Zr8w=;
        b=o1PtTZCh3X30U7b0WgP+vJW5fqpGROJs6s9RFMr/lgaUY8FnaT29+Qzf7/MSMAk18c
         fTgGFQP/kxrGJmvD9S8UyEkKL1KyQmNM/nPe9ms/0A6AuIaXnLZF2zIXkjOU4jX/UNDz
         ruULlm99XaOePup8esDk5cddsNxFnkXKKizxzi8MqbDnF5asXb+aoD4i1mMbor/Empe1
         0zHo6Bhf5NqJED7vPdvq/n7u9GmL2jiJ5CkJqBXyCboS639i0SuorD7Akua2JWK5GAat
         n1U8LxSJMy9A60oK5BF5zLXue1bZPGysCs0XqsP0U7m6T2+3dyUlPD4pvv6/wih3ffZF
         Jxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ihsm+nUI+ibfCdv9Np1Y8GeBm6TVhuxVw1ATAl8Zr8w=;
        b=Kyq/kCE7a68eqpgMlDdEHxhPaTbtRl4o0/FvUYvy3Jmd0r9VuIRzfohc3MkN81b10l
         xC9WdO2aoQucDsYTRrvbiL96u34Q5OGkTEd3gsaZEzLbEd28ffR3c9r5S3Rji8sEXSB6
         pFFdRsytnc5TshuqGBpfltEB5Rewn35TPUTXdLeBPrmCB7iiG+Xa5oTH3D2Ak5skGT5d
         fcOEOrPF8oH59S6BALBUoR4DycUn5xRWlbxFQgB9lxePQQqOeWpkD6kywgOQ7g/z2WOe
         Z6UIKcWCDeQKMAbY/a2f0L0tuwPOQd2Lqli3r+72z94VMsebxHMbaawRE8Pn/4+Ymz+d
         EdzA==
X-Gm-Message-State: AOAM5316j1nF04IRLydKwTdg7aJzpmhQd1DfWm5Hp/sydleK2Ql7LXFE
        imrmV3M2cBnC+UMmqRd7xGuW01ag2v0=
X-Google-Smtp-Source: ABdhPJzAuwMbm34mXK0FX7wYIVbijCMvb0i6ULY1ySOVHDLElubI1BUt/GDqCSNlf4uSrpGkSfsKqQ==
X-Received: by 2002:a5d:410b:: with SMTP id l11mr3814682wrp.76.1631376127564;
        Sat, 11 Sep 2021 09:02:07 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 45/45] sigwaitinfo.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:17 +0200
Message-Id: <20210911160117.552617-45-alx.manpages@gmail.com>
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
 man2/sigwaitinfo.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 00bc50485..08f318769 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -26,6 +26,9 @@
 .SH NAME
 sigwaitinfo, sigtimedwait, rt_sigtimedwait \- synchronously wait
 for queued signals
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <signal.h>
-- 
2.33.0

