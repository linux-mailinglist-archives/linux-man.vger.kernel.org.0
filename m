Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4795F2E3591
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 10:45:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726697AbgL1Jpp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 04:45:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727160AbgL1Jpo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 04:45:44 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C77C3C061798
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:03 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id c133so9912057wme.4
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/dSlTwCO6l6FngvzNZqI7nLu4rw+myGj1G5vXrzoxSM=;
        b=G+D/f+XpPelQkm+z2AeEaxe9ww8DMh2qJFvZkHBMgJZGWOjF72qYaAiN62bCnPwR5r
         AFKF7OIrDn7dunyxr5AUqDTYIgxR9Kba2oSeW9Fh+h1gtqH0nPYEoDufKw1xr7Xz1E/A
         tlByiiywGLEwU9zlSC5g0B1X//ToHL8uvOgluJBN2cIBTEthHS5F6dpRijmhHZ68SA5g
         TDlYSUOIAraWnqGK6wq0KGhjVs+Iwr3CQRsvs+pSiXsYcNsTU2hOtr584/0G4PDfJ3v6
         YtS/of1dEXLj6BadKDj2NwYmjs/m8Ibq8rbbQwqOHLzDswTFnAjNC9X7kOpQE78As460
         8ieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/dSlTwCO6l6FngvzNZqI7nLu4rw+myGj1G5vXrzoxSM=;
        b=cYevGipJPGuZ1L6HpD5ZmQ/MeCPFswpnydPTtylUzvF7O5Awkjtqyv5FB8jO6UEm+K
         XOow9vRF9sSH29Terc0yG8+9l9OROUqrI26ECc4WeaBXRBaRDBu8/0Ae74i+ZplYGaMm
         BNMQC2AaLYZYu4vU9+uwSWIPdQoK9tUf28uh2Ge7tWLoHCrK2OVqU+Fx1EQm6/47c9vJ
         WowG8/LIY8rh8KgW8IgAL1puPc7NmEkiKbPey1aBemOnnOoQugI8pr8ogPS61qrd82Zw
         LidISFpRSV2WrANTQiN7kEq1U/u4oEGEyc/D1NXHmETHs6Oa2Gds/0vUhJ2u4isSDZvV
         GJzg==
X-Gm-Message-State: AOAM531qBTa7HawfzhCL9JGPC6FitJ96bwZHJPs9jhjRF5wAasoheI6d
        6+tSx/Fo1H4naWOpiuvTLaQ=
X-Google-Smtp-Source: ABdhPJw+PC80pvZWVMXa0pswbaI3skelvbDn/36WoYRdERboxJkLtRr99JzYB2XkaRGSZbbmW/iQ2Q==
X-Received: by 2002:a1c:7d58:: with SMTP id y85mr19622195wmc.50.1609148702663;
        Mon, 28 Dec 2020 01:45:02 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c6sm32119165wrh.7.2020.12.28.01.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Dec 2020 01:45:02 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: [PATCH 4/4] filesystems.5: tfix
Date:   Mon, 28 Dec 2020 10:42:13 +0100
Message-Id: <20201228094211.4917-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201228094211.4917-1-alx.manpages@gmail.com>
References: <20201228094211.4917-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
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

