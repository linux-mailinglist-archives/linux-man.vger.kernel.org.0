Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A596A375362
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:01:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232144AbhEFMCY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:02:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231791AbhEFMCX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:02:23 -0400
Received: from mail-vk1-xa2b.google.com (mail-vk1-xa2b.google.com [IPv6:2607:f8b0:4864:20::a2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEEC1C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:01:24 -0700 (PDT)
Received: by mail-vk1-xa2b.google.com with SMTP id o17so1153179vko.8
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ZTx5kHSJ2K7EAlp6Oz553haayx6oWcVEIR7WOWGsUvw=;
        b=l3XroECU1NJDnzhs5OBOYfsjXIttY/V5fLVGGC0Wi+Mka4jmLv7Gnc9ye0Afq/Ywq4
         50JVAf6gdb8RpuDsfHzZETDaQmSRtaGwSXSmfD01RqkdCxuIXMdX9DBfwcEzztPBOB5o
         rmE8KGW+Q4HlZODlePomJvLuG28fX8tIbB99IqskstTutIlnjrBl9qRvB1Bu0T/luV8K
         5XNW7n6aIRPSDOAvb9aTqjVD6UI8f5UGcfvpn7IGiK8EBpnVWAQQmFfgTLJmNSnN183m
         LO+NSGguKqsCxLKYFZwLlzqnrZJ8+YhOR2ab1JrkWx1nnNuCarJxr3/Vs/IJk8uCH4Kw
         OIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ZTx5kHSJ2K7EAlp6Oz553haayx6oWcVEIR7WOWGsUvw=;
        b=LnrZ/DPELNe9yCVHmRdspH+zWv54RpH37G6bNnVbhMggXKxjyzpUvfXI9RY7PPj7yL
         CEmE9NZ2A5meXHguiPEnT45A3oIOul/F7jF1n3c58TYdk2ON8mt4h9TlaPQAKG7nBgQy
         YN0z/WD2JunH0pLyJa//aa/cQCUimStOiQ3Rz7qtU1D//xyz71Fs1M5VAthZQtuiZ7l0
         84AB6SU9Tup0ctO3hBKxtYsvU3m+5TnzoEueAmATteTHEytFivc0vkxwbjIZEFQI03fL
         BzIgsUMXg6IvqwYcqBvIJSPh9A2lCNyyorgCl7gKm181rbbn6DP+MQlKqUN8iscCrPJI
         KlQg==
X-Gm-Message-State: AOAM531tGj4iTeJCYOBhBerw2/xl6YMQ6tDjnnoyvwPDJvmnKSMh/P+g
        XX7LgqlcrPc7D9lXk2hnGPYUmGDnGN04cVTvs+1p0zNAYgzLVQ==
X-Google-Smtp-Source: ABdhPJyAU6alQ+RYC5izHdVUuz9+50ZtDJbvQx77Xyhk+MigcRj8xr/XkpzoPMDHvOitV0Os0hqndUzSFvKFIrYfW+I=
X-Received: by 2002:a1f:5682:: with SMTP id k124mr2236013vkb.20.1620302483705;
 Thu, 06 May 2021 05:01:23 -0700 (PDT)
MIME-Version: 1.0
From:   Akihiro Motoki <amotoki@gmail.com>
Date:   Thu, 6 May 2021 21:02:42 +0900
Message-ID: <CALhU9tnz9ufWpCR7cdn51JeKUHraqHPMmqqBKp8pSyYfSyUBpQ@mail.gmail.com>
Subject: [patch] signalfd.2: ffix
To:     linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        alx.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

diff --git a/man2/signalfd.2 b/man2/signalfd.2
index e362d1f72..102679c0d 100644
--- a/man2/signalfd.2
+++ b/man2/signalfd.2
@@ -196,7 +196,7 @@ struct signalfd_siginfo {
     uint64_t ssi_addr;     /* Address that generated signal
                               (for hardware\-generated signals) */
     uint16_t ssi_addr_lsb; /* Least significant bit of address
-                              (SIGBUS; since Linux 2.6.37)
+                              (SIGBUS; since Linux 2.6.37) */
 .\" ssi_addr_lsb: commit b8aeec34175fc8fe8b0d40efea4846dfc1ba663e
     uint8_t  pad[\fIX\fP];       /* Pad size to 128 bytes (allow for
                               additional fields in the future) */
