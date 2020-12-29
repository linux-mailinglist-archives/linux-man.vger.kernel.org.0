Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 946102E73F2
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:39:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726138AbgL2UjJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:39:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2UjI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:39:08 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41B25C0613D6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:28 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id c5so15685401wrp.6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q2qH/el22rXGM23ZMx+ROOrsUC1TpRLy7ujs84MjuHY=;
        b=fS1IBThUbPHXPm7vFUH5G9G8OpK+mv+akV1Y+AH4h4ZMVvWiYkXXxlA4MkZXqYoFQ9
         gsnpcpX2YOROcZrWWIG0gz9/PIS9temZN5XcbLQwWpaVsLs1pr1fbw8XQugfQYpnTqJK
         mAcJdAal6OFbSw9A1wpA7njeyePwohZQEK4mVizUdFDjzDqB9YeIl4rzQXH/hTtZAXXF
         AYou0mFsUFyWAEY724qA4Sv7A/+mt9hpowSgeNvbjeQ4DN7QNiuZpsWyrvuJCzOJRuYG
         kPveFMk/4wqBSfSAaM4oxfcYiTg4/UKIYssRvO/e1Db29Ep2qLwEI/QbzjnQfQLu71bM
         NgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q2qH/el22rXGM23ZMx+ROOrsUC1TpRLy7ujs84MjuHY=;
        b=QByhbk2KPV6jlccBQjf1QqcYJvP/0nHIhusMgs3V9fCyxRRLVg9BPxe1KLg8XatKDd
         PqviEnE4bEGG4RmLnn953meywKg1qzM9Ns9NMUpgcQg/Rkz8nzwnizQbE1fvqNi6ssV1
         fi3r4bkCWo1TZVxQ3L9jsgFrrxZA4hPtcs4c0GiNlx3FhLWARFnmr82RwwOclhifFF0j
         O9NLJGOs6BOzlA/qxMoNKNfYvBYYFwhGNsXX31VTcKIxZ11cP0rGRZ80Mz0EjNnzxHmq
         T0MdbWnrvFVOFA2laF8adEEnip6BDLk+w3BYFx0mEtESKRoW9jNc4tbY5pxUgQGK1Jqk
         d8mw==
X-Gm-Message-State: AOAM5313AfVW5PfZULUMjqgJX982j5xZj64pt2VSN90fxOrSwQBwLZ1G
        iSEaW5WIxCam0QUC1p9hGIA=
X-Google-Smtp-Source: ABdhPJwDGh0QEUb6IId6Qpa0AdZLPjgkGl454oI+jfaFcA3M62ouqOih6YBzHy+90CRPnbz5WjMO5Q==
X-Received: by 2002:adf:dcc5:: with SMTP id x5mr56798952wrm.167.1609274307071;
        Tue, 29 Dec 2020 12:38:27 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l8sm4783226wmf.35.2020.12.29.12.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 12:38:26 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 1/4] signal.7: tfix
Date:   Tue, 29 Dec 2020 21:37:45 +0100
Message-Id: <20201229203747.3199-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201228094211.4917-4-alx.manpages@gmail.com>
References: <20201228094211.4917-4-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/signal.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/signal.7 b/man7/signal.7
index e5b9e00ca..1b48356b8 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -357,7 +357,7 @@ From the kernel's point of view,
 execution of the signal handler code is exactly the same as the execution
 of any other user-space code.
 That is to say, the kernel does not record any special state information
-indicating that the thread is currently excuting inside a signal handler.
+indicating that the thread is currently executing inside a signal handler.
 All necessary state information is maintained in user-space registers
 and the user-space stack.
 The depth to which nested signal handlers may be invoked is thus
-- 
2.29.2

