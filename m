Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DDD42F8DDB
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 18:12:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728388AbhAPRLC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Jan 2021 12:11:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728520AbhAPRLA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Jan 2021 12:11:00 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08164C061387
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 07:03:05 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id q18so12184291wrn.1
        for <linux-man@vger.kernel.org>; Sat, 16 Jan 2021 07:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9pK1K0mTX/4PU4AmD7w1MBMfuHiYZkCm/C+TDnhN1M4=;
        b=hVpwNZnftJOYaN4DupOrA7UmWUgaah0cnRHCZkPH2lmijColcrW/GtPwFAEQagk3ej
         ltMPLZDU30CxwV2iPgajhmn8gwjbhqGH992208woKukR5q5YaaVW5J4ksO5q3kJn0Ona
         zy+UHqnyF5PajdnHHHrvAuTpZrYIzzzfQE1YoVQ60ovQbq+RUw7ku+VTiDtEMjgHYaWR
         lMfdmyVIo0cKD94SW5o8PjNgULHBw3gkOgbojnhPNEIEOLoQkejr0hJ94mFu2NbTLSwQ
         Sz/QdWiFTpHM0iYBgkb33ru0RdTkVniwfzQgwFmrBMxyne1++K5U2lkecgn0ckee4xzQ
         0bJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9pK1K0mTX/4PU4AmD7w1MBMfuHiYZkCm/C+TDnhN1M4=;
        b=LOHnSQfJATsC68ffVqWh/910U0VRIvfGm5hHPlJ8fc7hiGSVCVLtIRqxYaHTOUjSEX
         DxIz/7njgTCfWphOa7H3eQP6HCiHn2UojlYWhiJ0ioIEEabfcV6kpNqXICn1TKc9KHOj
         hiCAb8J8HKJYaF5f7YaAhat772GB36IlDhJ1cPIC8tHzFwDUDAFh3c3p5T4QXOWZzq3C
         atReABhzPhn8IvNQgUJlWMgtqp/S+0BX8nAQW41TfydZJrCD9UHI9HZ/38CfaTDCtL+Y
         2kg7sulLQHiZJrJ0H5b8hIS/maxgPYtdZMyv2Lf7h1I10O//rENvYPjb6imjgKpsfUST
         pBkA==
X-Gm-Message-State: AOAM5334NfOEk3pcKPBjrkaXkip8PkJ5+13LE+3FB0BZoy3BRjVHfAPL
        PRbkaUbuxyiRNxnjdX07e+T9ci1m9kI=
X-Google-Smtp-Source: ABdhPJzyPD8Z6/BqKZ12fVD2R5MdIXGoQPtKDm8CliyrAnRgzoREktLhVP737+FKPLufS0yKaQJrow==
X-Received: by 2002:adf:e452:: with SMTP id t18mr17562939wrm.177.1610809383833;
        Sat, 16 Jan 2021 07:03:03 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z184sm11393113wmg.7.2021.01.16.07.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jan 2021 07:03:03 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alyssa Ross <hi@alyssa.is>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] ulimit.3: tfix
Date:   Sat, 16 Jan 2021 16:01:04 +0100
Message-Id: <20210116150103.7846-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Alyssa Ross <hi@alyssa.is>

The parentheses here make it look like a function rather than a
command.

This was a typo introduced by a script-assisted global edit.

Signed-off-by: Alyssa Ross <hi@alyssa.is>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ulimit.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ulimit.3 b/man3/ulimit.3
index b6d0b3250..be70e4f8c 100644
--- a/man3/ulimit.3
+++ b/man3/ulimit.3
@@ -42,7 +42,7 @@ and
 .BR sysconf (3)
 instead.
 For the shell command
-.BR ulimit (),
+.BR ulimit ,
 see
 .BR bash (1).
 .PP
-- 
2.30.0

