Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C8C0407389
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233025AbhIJWsj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231742AbhIJWsi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:38 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71C35C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:26 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id y132so2214284wmc.1
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3BuIlDzYapSpaniEWTcLZ2GG9O2M1aEsDs4XkpTrw5c=;
        b=nvxxJ0z290H+rnewT6JYoGP/oZMjiA4ZoKS7pZw+PUNMzcnaavjn1A2mnxCJE//6xZ
         WWVoJjz9YRlRFP1tCuUyxipUmmPNHI4RouDQTvU9LP6YuDHRzjzJE0aPvaJ5lb5rDiqB
         ig5xQ6NrKOS18W7qcGnSktrGyHqf020HHn0Il4hINMY4KW8aAMgYX2BwqO3BCTFHIuPa
         Ki9+varPTwOt5hkYzlxMMJ5w+Do2Wq2nxQ2lyZX1PMNeBaN2Xj5svqsbyoCEX4mRKmVd
         D6I4XtK+f2roo0EOlzeCxlKXj8S7U418cLO/rqAH2VPT1AWllsOZ7wtKeB4u7L+teQ4o
         g/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3BuIlDzYapSpaniEWTcLZ2GG9O2M1aEsDs4XkpTrw5c=;
        b=cijVQtF9L8y3CrxtMh+jDIYeUF1jN4a4KS7CQBdi60XDEO+ExjEKlHugYxXPsfobOr
         3fb5bPk5l7QrGWUvsIACVG9Cm+jj8jtTYVXKZTeZQN3NMXiSVu4Xb7p/LIvgWxNS930y
         UQuKaqiVPcu7lGv91W/0eCJhHF/P8jCpYZhSTY9GZz0vlc2AkPwx3emsww8gUdPf8D3g
         ACa6bthMXer6dLSWXwEDuDYjk6zoFekEBAB5vgC0SFBiSdI+vvFavXGTbywa5QbqWGMH
         e9cQxgOQR36Q2ayrj3G4/JrzvQmkxGHDL22YEkPqwvhNuw2ypqdGpJUVYcpiOnANoswo
         ATBQ==
X-Gm-Message-State: AOAM533PVGurMsA7g6nUBxluzYzj5+3t6RGppNbLlC/LVU5M92S9W1x3
        efA6P5VQVepagQeOfZAV5ro=
X-Google-Smtp-Source: ABdhPJy1kak+DqtyIKnH4FmzALev+TxTw1mQJgQ1KuRhgyVdO8h3QiwpOcxRDZCK1B8W7ijKZ2dTtA==
X-Received: by 2002:a1c:114:: with SMTP id 20mr4794wmb.179.1631314045115;
        Fri, 10 Sep 2021 15:47:25 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:24 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     zhangkui <zhangkui@oppo.com>, linux-man@vger.kernel.org,
        Suren Baghdasaryan <surenb@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 06/15] process_madvise.2: Add MADV_WILLNEED to process_madvise()
Date:   Sat, 11 Sep 2021 00:47:07 +0200
Message-Id: <20210910224717.499502-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: zhangkui <zhangkui@oppo.com>

Add MADV_WILLNEED to process_madvise() for read-ahead swapped
out memory immediately when the app switches to forground.

https://lore.kernel.org/patchwork/patch/1472006/

Signed-off-by: zhangkui <zhangkui@oppo.com>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/process_madvise.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index a6c8724d4..caa8bc0b3 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -112,6 +112,10 @@ See
 .BR MADV_PAGEOUT
 See
 .BR madvise (2).
+.TP
+.BR MADV_WILLNEED
+See
+.BR madvise (2).
 .PP
 The
 .I flags
-- 
2.33.0

