Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CDC63D9699
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231549AbhG1UUn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbhG1UUm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:42 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E33C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:39 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n11so2229174wmd.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Oo7IwEWgLfsUi0ixl3R3pYsLfpIgmPTzHi0hfEC8Rv8=;
        b=ob00kcggKiAxrb4WX7qBnu3p8MlwOXcjXhGCZUqLw4UTmOCgmWA5KqTdWO3YOkdfl+
         FZ4pU6b7UxZzOPcIwGIu6nLDJhRll1PiwdeKiZZmzRuJftiWpQID1BOXu5bLGrs//l60
         0wlyndqH+9E12Ln5YHrQcuF6ddf8aCJomFyA5yTxTWpHwgoJdpPvDlA0/iP715PoBO6X
         iCzT/AGDI4MLdZhG6FIrJC/aWDnZo71DnMQMIM+3n1t7BSZeAQ/brA2BuAvvoCFxh08w
         Cj91bhNTh65flVp8MvhQVpOFQI1J6wAIq7R2eHsEec8UoC8VAp4gi0Bxhlv5JFHUdEhZ
         X7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Oo7IwEWgLfsUi0ixl3R3pYsLfpIgmPTzHi0hfEC8Rv8=;
        b=Eb+Bi3q06RjZdietaU+AP2tdcgn2xJ1h8WJkj4zt3WQOTjrJZ33QGfEiaC70d1sKFe
         AIQfh3W3/Fe2fhikkmL7CqjXTbxojRtgbTOAZ6V9B8CBExazuoQxBPhtNCiZH9WkSgjX
         ax8WJ3tji9vvkQyX5HwAHZmSnkE/EoOpyWKEIxVoiaA3yEe9vvmO0h1fh81M5r7yht40
         oi9ApNii++IBsPD+V3rXDqGbJvINDS+nVGnkqUvSuRJpMxPu9k3Ba/qokfuwos0bKOs3
         fPlBKgYcaI0bKSch1jp8SfBZo8/tUVYitpd+Oo3dGQ+TfcdsYnP3lPlJIPkk+dQt95i4
         s6BA==
X-Gm-Message-State: AOAM532jbaqQa8HiSGVjlteYZii1d8q6oumFBTy6O+pyXlDBB9VoFmYh
        We0+bLggHek0qn0EsNyXdR4=
X-Google-Smtp-Source: ABdhPJzn1xtgQWX5ChsKn7BfiFQGYni418Gs/4YUyI8rdljL6gfCOEXXNskuD/GNbMPTv6NojXSpkg==
X-Received: by 2002:a05:600c:350b:: with SMTP id h11mr10768842wmq.20.1627503638589;
        Wed, 28 Jul 2021 13:20:38 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Sagar Patel <sagarmp@cs.unc.edu>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 26/32] tkill.2: tfix
Date:   Wed, 28 Jul 2021 22:20:02 +0200
Message-Id: <20210728202008.3158-27-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Sagar Patel <sagarmp@cs.unc.edu>

Correct function signature by adding missing parenthesis.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/tkill.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/tkill.2 b/man2/tkill.2
index 6ff930e17..6e1afcd36 100644
--- a/man2/tkill.2
+++ b/man2/tkill.2
@@ -39,7 +39,7 @@ tkill, tgkill \- send a signal to a thread
 .PP
 .B #include <signal.h>
 .PP
-.BI "int tgkill, pid_t " tgid ", pid_t " tid ", int " sig );
+.BI "int tgkill(pid_t " tgid ", pid_t " tid ", int " sig );
 .fi
 .PP
 .IR Note :
-- 
2.32.0

