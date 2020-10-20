Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1C8293E85
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408005AbgJTOX0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOX0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:26 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F3AC061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:26 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id h5so2385268wrv.7
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ViKeHZ1z6gOV2R4Akzx5TO0bFMhi5Kxw19p5nrVj70I=;
        b=fYi0llz7c8tXF3rG+0zCznRrs98Q7HUO1nF2FqbRONGqx6I4f4AFLjn8rCB10btINg
         rmwMV/3g2eII4n+NcuUWgnM/aoSMIgmmpGbY6U90dbFeJ3DUW3VCiwCwL6Jmn9hQbpUH
         XsHebpFW8roB9lKl07XqdqbQga9EcLvWECPG1SHONMAEGqG2/7LxOebwb0CAgpxiasfW
         iiYBlH6+CgnZ3VW6WBTG1xCKA4igYMCe1vxjrDOTFEEPuZwacQQ6y5UVNIVzWV2h9kRE
         FHya5hldNziPxYmTSfLVmCdoKBUMqF64CBgVvmuwY0OSCGtqj0FyMOTEprDPE+EO0uYG
         rK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ViKeHZ1z6gOV2R4Akzx5TO0bFMhi5Kxw19p5nrVj70I=;
        b=MEKoUyTzjXuwSqBtrTGkJKKIPmPWRA/9AIUWuigVjv+SsJKxSfhTuQV0FEw2/1NSDL
         8v8ygAWEqIhsLs+2WUpN7s4dqHV+Nhm9uKQeiqkoSeDwNoW/dqLmtOevwry7YdiGjQJt
         oIWb9DUsdSF1zDYb3gSx1iUA6BhxPObmtre+y4RfXR579EBrd9fgH14xjIyXxk5WzgRd
         pmvmUmKqe5iAWc+AXigZ7uFHKhz/+4Ugv59427VEbHDWwWLvoOkIGPWnzd5577GxGG0U
         wHU3SEkWkxbJPXH1ujg3c8FPK+dYJUQXYqiylLCtXZwwOVgd1qEwR2ZvdowRRV9ZDkeF
         ukWg==
X-Gm-Message-State: AOAM531Z5kuDx4DaKv2PbPNRaO6cXxeTHLJq9H8X4ujK3ODIuN5vfxCK
        ZO69x6tJOUP8gQd+ScaOtDAaEkW/HzE=
X-Google-Smtp-Source: ABdhPJzpdcocURExHnB/uWLNHrI7MfuyqtaZgtr+C96yUWscloYnY9d//LwnMCavkYh8Nh9nkVDQPQ==
X-Received: by 2002:adf:eccb:: with SMTP id s11mr3876622wro.135.1603203804929;
        Tue, 20 Oct 2020 07:23:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:24 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/22] list.3: NAME: Add description
Date:   Tue, 20 Oct 2020 16:21:29 +0200
Message-Id: <20201020142146.61837-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/list.3 b/man3/list.3
index d26ac8971..21ea42fa4 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -48,6 +48,7 @@ LIST_NEXT,
 LIST_PREV,
 LIST_REMOVE
 .\"LIST_SWAP
+\- implementation of a doubly-linked list
 .SH SYNOPSIS
 .SH DESCRIPTION
 .SH RETURN VALUE
-- 
2.28.0

