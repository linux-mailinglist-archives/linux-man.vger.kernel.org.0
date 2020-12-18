Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6CE2DE69B
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 16:32:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727090AbgLRPbo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 10:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726299AbgLRPbo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 10:31:44 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2409BC06138C
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:04 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d13so2566601wrc.13
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HghF5Shos5dlQB8R61iCWNjD/NblQZePZ+m5Set1z1g=;
        b=qUowklfaMBBFREH7ayut8dE3mmXfT2yW70q6pex0FepH/reVGzzSAcYyBgK71LxK9E
         5fOawzeQNqGVOC98pI1XY6eu8q92tHgMag8nWjkUR2hDsPnvQM2PX1OJdIlmBF6by3YJ
         Rk68IP1jVQofZVyLu3WnYxKnMXSDp5e2ilTaMd6bC2QRvr23lgXnoM5R71OFC3BtcCmV
         clD4DuAiiOVuxahAwodS/IIEvSOC/r/KkIR3EATRFnwlDwSlulplaXpDXQ5IDSv17yMY
         EmVTqNldjxclnzA1NwCUqlzKrirtSDC8MqrOAUa0ozpVa/HO0wjnI/crokGLcpR/5TaD
         6BOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HghF5Shos5dlQB8R61iCWNjD/NblQZePZ+m5Set1z1g=;
        b=QV8hpT8h+NxjtU1CRtIA1MtHE+QxGCcUoXCXoJnpM9W4ZHrrstcUcQchtLCBJFCInk
         8RUBrv8SWR/av20qpVKHXUIHLIkKSxYU3QM476cvGAs55zmG0/n3yYiS2ebND8EmsG1Q
         afF/AAyb0wLYknvjVtflcEEZfopdgL5DwEGqYFIz1QTpNFuayTsxj167D/6RWbiyExMz
         wRr1TvC6D8yrnc8dr04MUG545u+7AUKjck3YxfFWUCvz3QLVrcdwhTCRAEkpfz2EUEnU
         2svdZgNalXZD4+gFJzVII+RehesIQ3o8hXNfdhmftrAbP5R65+v0FHnBVvHekuIP/hNl
         3XZg==
X-Gm-Message-State: AOAM53028GTF3WTvUOCpouO5Dw03OB97YnJ034hQK0CKhi2/kW2xO2V8
        zqkrFFR4qgjSHSjx639L6crJ8T9ZQvM=
X-Google-Smtp-Source: ABdhPJzPHnScZvbL8nrstkPR+Lq6B0m1zEKo8qva87qzzBpBRLiHngyG+7eZyfxK8PTKNTOhVBekNg==
X-Received: by 2002:adf:e512:: with SMTP id j18mr5161590wrm.52.1608305462954;
        Fri, 18 Dec 2020 07:31:02 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j10sm13730492wmj.7.2020.12.18.07.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 07:31:02 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Ahelenia=20Ziemia=C5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Hemminger <stephen@networkplumber.org>,
        "David S . Miller" <davem@davemloft.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 1/3] filesystems.5: fix link to user space tooling for ncpfs
Date:   Fri, 18 Dec 2020 16:30:35 +0100
Message-Id: <20201218153036.25244-2-alx.manpages@gmail.com>
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

Corresponds to Linux commit 1b83df308f69a5a3cc59be03bd7fb23e4bcebd8e

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man5/filesystems.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index b44dba184..6ec2de9f0 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -158,7 +158,7 @@ Novell NetWare.
 To use
 .BR ncpfs ,
 you need special programs, which can be found at
-.UR ftp://linux01.gwdg.de\:/pub\:/ncpfs
+.UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
 .UE .
 .TP
 .B nfs
-- 
2.29.2

