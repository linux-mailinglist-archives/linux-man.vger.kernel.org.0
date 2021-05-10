Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBA0F379698
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233121AbhEJR5m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233216AbhEJR5l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:41 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A282C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:35 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id l13so17507720wru.11
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qq0irmEffB4vawp0JmzGgnk2EAG3ohMDRLVj/nDI+wA=;
        b=WL33kfbusb7qVBceJkKFN3T1OoCPAHUMjDn0Umx/eX7Y4O1PLauuky8zUfsFGV0XWA
         P1uwuoWlqdfamDak+/Lt+eAvZF79yGGPTwXPcrivw3Zt+eLXMudbZGVo6GgEAF74Se/p
         JwVDUC+K12+4gaHU9Y0bEsINRnRfh+mnLAnnt17e7hn70yKu7ji5DrudofYkCQDdEgTN
         ke74ijdoW4mvYYm+hq3jx94Lr4ou9B9bnjihh8OdXZwCZswR8wBpUGUQx4vq/hrWu2FH
         gotw4Z6MKqjhUyPqjzxIp55uUXMv/L4n+dYwE9c7DR8+H/snvIr3D2k4M6jbKxoA/l6g
         9s9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qq0irmEffB4vawp0JmzGgnk2EAG3ohMDRLVj/nDI+wA=;
        b=lJaKK2PvYozuiNWWRqOUpdgS+BWelE0Ia+XBNXjG7kXhuVcy8Y2Kt9k8dqRYsDeshb
         zc/WdJE1FBFP3ADPQHj/75bHNzp/agqLetWHRfWosQSHvbo+Wdt6Tn0yfxjGFrK9UbEJ
         fBRI5u+JoJ7NJjdoeMCYWHDX0JbL4Gf5+gZS+1lUR1P0Si21B6liH6zsO4FwdRgRiZDR
         gmOWstIDiwdlAjjhimoTyqT4i5T852l3t3Xnd+d/SiCIsj5NLJvenrvXsv7xTcrtJdff
         x6OXERqagtI8SYOgkCR1GfRzFU3gDC6V+y5dKBUVHEXS20T00zLZgSJBACvkKwOcGGb7
         JgTw==
X-Gm-Message-State: AOAM532yuzgopx7f7UpVRoKws/T9JIJS0rUinOVi6r9XKuwY0dRCQB6X
        RSWDvmokXOS8qAk2Oj7MZ1o=
X-Google-Smtp-Source: ABdhPJyNI3GpnrF2mEISajXK3nDmZng1kmLRR4wNfvO24fA3S136e7KOMLQK5gHLNTJrxQAHwHFQ2g==
X-Received: by 2002:adf:d091:: with SMTP id y17mr31490242wrh.107.1620669394138;
        Mon, 10 May 2021 10:56:34 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:33 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 12/39] kcmp.2: tfix
Date:   Mon, 10 May 2021 19:55:21 +0200
Message-Id: <20210510175546.28445-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/kcmp.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/kcmp.2 b/man2/kcmp.2
index b0994758a..7acfa8ef8 100644
--- a/man2/kcmp.2
+++ b/man2/kcmp.2
@@ -311,7 +311,7 @@ is Linux-specific and should not be used in programs intended to be portable.
 Before Linux 5.12,
 this system call is available only if the kernel is configured with
 .BR CONFIG_CHECKPOINT_RESTORE ,
-since the original pupose the system call was for the
+since the original purpose of the system call was for the
 checkpoint/restore in user space (CRIU) feature.
 (The alternative to this system call would have been to expose suitable
 process information via the
-- 
2.31.1

