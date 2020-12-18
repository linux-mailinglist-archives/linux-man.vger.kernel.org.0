Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BE022DE698
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 16:32:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727936AbgLRPbq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 10:31:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726299AbgLRPbp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 10:31:45 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EC9DC061282
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:05 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id q75so2980164wme.2
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KirJIPjmYErSnfERYNpWbiZeuBeU1247doayY/SZg0Q=;
        b=p15DtcJgGMWLm/W+FjzV0JN0BjMv6agRQKfIJRA+P8Ss5kePc67N6ljb75begsOzsn
         WwcS6tAp/ap3A5WUKkUNcNsjSXub8xvF6kB1g76m5tquikQ/YwIS/n1QCUs2bAKYwOHm
         IfpDFPrERznKF4NuyQcbSKxFD4+gXnpDgsyltypmGR1sI9O7niZbdD6ZESZoXl6GW5gI
         /y/ND7JfNKJeuvzXA+hTquQxszAssHKTD0NZUy+Az5HBsT5+UKw58PTyAcLAiVQWWM5Y
         I6jfSmClQGc1aRHAFdXfHyO7d0LFbWuCFD6S722CY67jmyUy5bG6I2bYw6q/smAXRQsX
         n+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KirJIPjmYErSnfERYNpWbiZeuBeU1247doayY/SZg0Q=;
        b=Rhf9sd4dGXkM9lbm/JU/DQwKZ9M0FGPVSk+SkDmqNADlarUolvDxwjCu1bKWKxBS5Z
         +QWHMEQ7QlikYvBrw7sHfyGpc7osxa9S3ryoaIPkA8HedC77RM4S4KlKMwyVH6gorwAQ
         MWQ1gaSLnbJ/S+3B2mr3t1wz5nDaSNPws/bZ9c2QoP1lLHj662WI2NEAjvK28aEj76u4
         VkgyUH0AmvEGCnLzNJtO/nkIsx20l1M82wwDZa/ODwif71o3zcsU99n5PRSpXzQc2wVS
         yo1f0lC8VYpG850tfXeHOP49i2dT8VB7JPA4+bQVjyG/AmtYdo2agGTAwFflWfvD+Cft
         URUQ==
X-Gm-Message-State: AOAM532bvV9KAHMRmidG7g+j2FdTJqLMe0QQvlT3GfkpL0slV4N6JiUS
        MMhfZ2gWbMR/f1sydnYbkbM=
X-Google-Smtp-Source: ABdhPJzdZi04AmMpUQf65I35oLlCvGDBOPnb9uycBRBFh3oXsPWUMtgSeXraVPNbCgyCTe7NnhplOw==
X-Received: by 2002:a1c:6056:: with SMTP id u83mr4709488wmb.90.1608305463900;
        Fri, 18 Dec 2020 07:31:03 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j10sm13730492wmj.7.2020.12.18.07.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 07:31:03 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Ahelenia=20Ziemia=C5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Hemminger <stephen@networkplumber.org>,
        "David S . Miller" <davem@davemloft.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 2/3] filesystems.5: note ncpfs removal from kernel
Date:   Fri, 18 Dec 2020 16:30:36 +0100
Message-Id: <20201218153036.25244-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201218153036.25244-1-alx.manpages@gmail.com>
References: <20201218153036.25244-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Relevant Linux commits:
 * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
   (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
   described as "broken" and "obsolete"
 * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
   (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
   "since no one has complained or even noticed it was gone"

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man5/filesystems.5 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 6ec2de9f0..71be05230 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -152,8 +152,9 @@ filenames can be no longer than 8 characters, followed by an
 optional period and 3 character extension.
 .TP
 .B ncpfs
-is a network filesystem that supports the NCP protocol, used by
-Novell NetWare.
+is a network filesystem that supports the NCP protocol,
+used by Novell NetWare.
+It was was removed from the kernel in 4.17.
 .IP
 To use
 .BR ncpfs ,
-- 
2.29.2

