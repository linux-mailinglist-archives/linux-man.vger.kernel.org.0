Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD4D43D2F05
	for <lists+linux-man@lfdr.de>; Thu, 22 Jul 2021 23:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231462AbhGVUk7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Jul 2021 16:40:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231260AbhGVUky (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Jul 2021 16:40:54 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B8CC061575
        for <linux-man@vger.kernel.org>; Thu, 22 Jul 2021 14:21:29 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id gv20-20020a17090b11d4b0290173b9578f1cso4550352pjb.0
        for <linux-man@vger.kernel.org>; Thu, 22 Jul 2021 14:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xPGY9e0OQBf+7CM81A58drfZzUib4cbQB7IlfwfQYK4=;
        b=a5KVrzocDZ0oWxT2cMqSHag9+OsgsPRJJk0CuDZ7cArI6yiIK/nMcUu8Lf22ZcVZ1u
         xVyQJ4+Lm4opIjOpSJ8sGwjnegzyWpZ+0IOrUzAkvT4JqZLT2DTOoOSYijXiu9mrdh6Z
         xrqi4Dv6D7kuanBnaQs3Xuazl4drRGcGS1JJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xPGY9e0OQBf+7CM81A58drfZzUib4cbQB7IlfwfQYK4=;
        b=lsL1dFm46WesG3T95NJYeAMc304uynpqpvZozfHznnAhC+WTavSVF2Ys/8l97gqFrH
         FgiuaG5F8mRfk5fGYRZUC1HQMPntTK0ZO8Ze6Fe6PoVfscf7Bjd9jj2DciQBv/aH8Bo3
         RBhsnG4UGpAQrS9LxxH7PnTKLCJSOI4t3LtheU0/GNUQ1VtzmNbkkOJTtQ9nX8g6ZLfF
         Sflt/7ZOv/kcDGrTlKn5kloRZUIyCLzJPkpggpHbeIXKW+mdBueJeOsG9t12jSKOFXYv
         lRDbDUYahMDr17eRsaiTx19bfKeegbBzDCTEfAMYgW2BYmNKfgN1VComwF/YswxafK9d
         5IOw==
X-Gm-Message-State: AOAM5317E5PP4lJo8PwtcRrC+EUD9kMMQ8QCKyCPrpFafNorH1aeSUC9
        Mst7dI34EXH1tLl9gQo3d+Tvcz5toamC5A==
X-Google-Smtp-Source: ABdhPJwwJe1I8pqQz7Xl58xlzbzVSks0vM8Tc9Q/BAUpyYmojmilX8DEU6noswrtvqUrtzSR4lri1Q==
X-Received: by 2002:a17:90a:3e81:: with SMTP id k1mr2991384pjc.177.1626988888781;
        Thu, 22 Jul 2021 14:21:28 -0700 (PDT)
Received: from evgreen-glaptop.lan ([2601:646:c780:5ba8:87e4:35cd:ee1f:5965])
        by smtp.gmail.com with ESMTPSA id kz18sm26566365pjb.49.2021.07.22.14.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 14:21:28 -0700 (PDT)
From:   Evan Green <evgreen@chromium.org>
To:     linux-man@vger.kernel.org
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Evan Green <evgreen@chromium.org>
Subject: [PATCH] swapon.2: Document NOSWAP and additional DISCARD flags
Date:   Thu, 22 Jul 2021 14:21:20 -0700
Message-Id: <20210722212120.3060163-1-evgreen@chromium.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix the FIXME and finally document SWAP_FLAG_DISCARD_ONCE and
SWAP_FLAG_DISCARD_PAGES from Linux 3.11. Additionally, document
SWAP_FLAG_NOSWAP, a shiny new flag being introduced in Linux 5.14. See
the following link:

https://lore.kernel.org/lkml/20210721143946.v3.1.I09866d90c6de14f21223a03e9e6a31f8a02ecbaf@changeid/

Signed-off-by: Evan Green <evgreen@chromium.org>
---
 man2/swapon.2 | 33 ++++++++++++++++++++++++++-------
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/man2/swapon.2 b/man2/swapon.2
index 07d5fe86c..d568da993 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -33,13 +33,10 @@
 .\" 2004-12-14 mtk, Anand Kumria: added new errors
 .\" 2007-06-22 Ivana Varekova <varekova@redhat.com>, mtk
 .\"     Update text describing limit on number of swap files.
+.\" 2021-07-22 Evan Green <evgreen@chromium.org>
+.\"     Document _DISCARD_ONCE, _DISCARD_PAGES, and _NOSWAP flags.
 .\"
-.\" FIXME Linux 3.11 added SWAP_FLAG_DISCARD_ONCE and SWAP_FLAG_DISCARD_PAGES
-.\"	commit dcf6b7ddd7df8965727746f89c59229b23180e5a
-.\"	Author: Rafael Aquini <aquini@redhat.com>
-.\"	Date:   Wed Jul 3 15:02:46 2013 -0700
-.\"
-.TH SWAPON 2 2021-03-22 "Linux" "Linux Programmer's Manual"
+.TH SWAPON 2 2021-07-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 swapon, swapoff \- start/stop swapping to file/device
 .SH SYNOPSIS
@@ -81,9 +78,23 @@ flag is specified in the
 argument, freed swap pages will be discarded before they are reused,
 if the swap device supports the discard or trim operation.
 (This may improve performance on some Solid State Devices,
-but often it does not.)
+but often it does not.) In conjunction with this flag, callers may add
+.B SWAP_FLAG_DISCARD_ONCE
+to perform a single discard over the entire region at swapon time, and/or
+.B SWAP_FLAG_DISCARD_PAGES
+to perform discards as swap pages are freed. If neither is specified,
+both are assumed.
 See also NOTES.
 .PP
+If the
+.B SWAP_FLAG_NOSWAP
+flag is specified in the
+.BR swapon ()
+.I swapflags
+argument, then the added swap region will not be eligible for regular
+swap activities. It can still be used for hibernate, enabling callers
+to steer the swap and hibernate regions independently.
+.PP
 These functions may be used only by a privileged process (one having the
 .B CAP_SYS_ADMIN
 capability).
@@ -201,6 +212,14 @@ which still discards the
 entire swap area when
 .BR swapon ()
 is called, even if that flag bit is not set.
+.PP
+.B SWAP_FLAG_DISCARD_ONCE
+and
+.B SWAP_FLAG_DISCARD_PAGES
+were introduced in Linux 3.11.
+.PP
+.B SWAP_FLAG_NOSWAP
+was introduced in Linux 5.14.
 .SH SEE ALSO
 .BR mkswap (8),
 .BR swapoff (8),
-- 
2.31.0

