Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB6C2E73F4
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:39:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726168AbgL2UjL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:39:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2UjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:39:11 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8431C061798
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:30 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id c5so15685492wrp.6
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0/iaKkQ38BocDR4QsL9cUtsaxqKmnk5NjTBJea9QLbA=;
        b=YvKPjjKCaIndhYCBCB008ggQpJVRcqUIhFQeb1Y4035h8WrIxjTO8ao27hTrQe2oXI
         G9ldTzkkTri6vqR35wlKnjzdLSFc4oWW4XkKOaJ1uhvxawwgvlbFolYsZlPRrRjUUMsA
         EKrP/DoJNRbl3cOL9TgMutq6m2y5/hWs4tn7kzKSXfbSF8hmmtuD6V/ixGsZvB2TktAh
         zl4zTGDalYkuMgjnXcMTb8WU/8Oa50MVpIHRa8RosnRETYiuC5SaWbW+90Hhec59EGHw
         EojPxfXj3L/s0UaX83xEQRKOA6WncUCOYcGtCRJg2BlIwycFFQuvRY3TgSLzXWmAKhlw
         jIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0/iaKkQ38BocDR4QsL9cUtsaxqKmnk5NjTBJea9QLbA=;
        b=Xp8zy173+kbjpLXbuEj9B/DTV5xXU6uC9ga90dtsRy0UZrW/Mf5XwN2E9B0TILJU9N
         4fC+iwzHj11+pfZp456rYnSn0DzTzGJcx0tzR6fGnE3haKz5Iury4PLcbFDIwoTSuWtj
         NhvNhp/yuIc6OlEzn8SI0pfDs1tbtOQE5H6wO5bxm2ze4VFOUdGkA06FY1yvjDLHayP+
         fT9NpDe4mnpzz5vzMy/gDeedoyjgqgjMATg6L6k2d195au8qra9q264YKY1ictj8uRpd
         K2EUCP9NmTkltA9A1i4poTpgHem7/Oh6jfFDXLZr8XujzRPlydG75Px0DPi8lwESMJJZ
         c/0A==
X-Gm-Message-State: AOAM532aFC9k/dw5KjphoE3FqYoZ2HALMNd2bLlOJX+WrIPmUbkY6HC6
        l2ER+Au0MqBcSNysDzuHqUI=
X-Google-Smtp-Source: ABdhPJzzcF0cVQdWxMdVX4Iy3a4eAeqrO/OFhnuWzJFCeCPa/iYVpu23kxoOIdV+1MRFAsHwWZN98Q==
X-Received: by 2002:adf:e84c:: with SMTP id d12mr59542788wrn.382.1609274309465;
        Tue, 29 Dec 2020 12:38:29 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l8sm4783226wmf.35.2020.12.29.12.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 12:38:29 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 4/4] filesystems.5: tfix
Date:   Tue, 29 Dec 2020 21:37:48 +0100
Message-Id: <20201229203747.3199-5-alx.manpages@gmail.com>
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
 man5/filesystems.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index f3d37d3c7..aa7d74740 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -154,7 +154,7 @@ optional period and 3 character extension.
 .B ncpfs
 is a network filesystem that supports the NCP protocol,
 used by Novell NetWare.
-It was was removed from the kernel in 4.17.
+It was removed from the kernel in 4.17.
 .IP
 To use
 .BR ncpfs ,
-- 
2.29.2

