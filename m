Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 137CC3D9694
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231236AbhG1UUh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhG1UUh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:37 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7AEC061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:34 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id n12so4045845wrr.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ox9Bz2xdM78/A54yVEQPmgTLh+mw8KCKhj+k0uaJ98Y=;
        b=ifknjhMnADNvmpPbfx5ZTDlnBF86LTjgtzQ2RM/bcOqQmAUi0s50BHHTpkNDtSytMx
         +27I4DgoUI5ph/GQGqNBEyttRbzLxD3HB3RmM+/xRtwaTubxnwIzeHYtyJWiaybWumBF
         1KKKQkgS85CEmLN7HPD842SE4heEVZLnIJaV8JuZe+NyRRQnzVnaKoymAnwe1qv1Igxp
         IxOwce0btbn8c47qrOWLDYOuxF9C/j842BjVUeSZoXNFmVZbZ8/uqsJc98PP0Hg4uYkC
         7k1dJWGQJEk2r1pVXCqVxzkf9zqCZ8ckSi9ERTXcObb+FVF3tAKNxyeXAIVl518SF2K6
         Wugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ox9Bz2xdM78/A54yVEQPmgTLh+mw8KCKhj+k0uaJ98Y=;
        b=oQizxLPNtEF0c3HLFnl3ZLEOGEJ/glUtsnswG/sxo5kky5We2YzSs76fvqaXEmBQAD
         bRqYCUxV/T5mB95Xlo3tcEd7uIKh8FtRJ16Nw6BuSbST8jm3mBdNY3HOotUXVtubjpKK
         MLNGVCGCzGaPsKCC4DOic9BtWovoqMojgEpMkx2WY6J/40xoiR05EtnXWJbDPPEQ3kQM
         d2ZRw5BAUIhinMIc8ZlB+Zx5FfwWbeYNvE7VuWdy58yuBB4xxJWXK1kCizNY6smkWkeA
         wkPTfiWlrR8+b71tqWA5Q+ntx3Jj7p1uYPrkJSIRXz9FLNS+XAp3lkxC5GvfMNGTwdng
         EqtA==
X-Gm-Message-State: AOAM5337DcpGAoIkeHQBP05bASHF/MzlSPt6wRsaUa1TqXooRuMudUdk
        nGB1+E6+tk850z2+llh6eMc=
X-Google-Smtp-Source: ABdhPJzoYRx8w5WsmnM3otdMRNwH0rtH9e3xeCdVwfdvZROR/FVhlpn7OxwJ88jZ4USjQVOFEDQs1Q==
X-Received: by 2002:a5d:6186:: with SMTP id j6mr1107559wru.115.1627503633674;
        Wed, 28 Jul 2021 13:20:33 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:33 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 21/32] seccomp_unotify.2: tfix
Date:   Wed, 28 Jul 2021 22:19:57 +0200
Message-Id: <20210728202008.3158-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Remove duplicated word.

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/seccomp_unotify.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index ae449ae36..2605be9fb 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -1105,7 +1105,7 @@ Alternatively, in the
 example, the supervisor might use
 .BR poll (2)
 to monitor both the notification file descriptor
-(so as as to discover when the target's
+(so as to discover when the target's
 .BR accept (2)
 call has been interrupted) and the listening file descriptor
 (so as to know when a connection is available).
-- 
2.32.0

