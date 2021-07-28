Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 486B23D969F
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231599AbhG1UUs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231574AbhG1UUs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:48 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12A01C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:46 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id j2so3998374wrx.9
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=26khDb/z0eG4zTI4u9D1IYXQ/k8O6bFy1mA1ifglNqk=;
        b=F5ykLUFVGGrIViKe7W4BwI7otDVIDA2hVrywAfgxh3/3yBevHY1hDeht8DJWPnQ15z
         gL6i5+JZgt7tC3daxDJbn4+LnCgNrKb25C2CYkRxUHmCQuMFdu/JLU1+K+irehotSdoT
         2I2ySHt2+mSh2C13/qZEl5URml37jwt2YFHciSToWM4Vka/vC8v38SLstlYsBq4Xpv7p
         SvEEo6kTSIchZRi/u8N13lzMyP7fv4I9bBCutiwBPRHD0a6qyrwz182+jotB3Ug1uce1
         s15vgcJXCNny9s3IfcR+v29m5DwrMWmk7J6IrFpna6JU92FLXeMfsJlo5mvSl9WIf9mP
         HsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=26khDb/z0eG4zTI4u9D1IYXQ/k8O6bFy1mA1ifglNqk=;
        b=tdT1axvij/4Ofh19bwpXhQzWVBUDeatj4JIZ85aJRuuyc5mtcisRfuNok5TDaRfJOl
         j8WKLyZIMFu87LdOiWO7Q8jzIxDVqe7v4YGHHrsRjFRc5QNmH+eQeFRRPPiLXK1U0xf9
         +8cwckmqnaIQNOk04uiqog4qqm5hhIIxMc6Lhj9gQcJ4e6ppjS1rsnRmycKlDCpL+fQc
         rVmJmOfA3PQ1//UlAl0rn+3pt7tLGZx1pUYJoOUmFct3IyJZSO1mqDCk9fzJhLDof6TP
         BafiV9U5AM9JeRHeW7RgsRz0b8oJfTJT9wS3LCYsZbQAMdJ1eqcnPyM1k0Vk9CnGC1Tw
         KU0w==
X-Gm-Message-State: AOAM530XqnIi2/I4dx0sTKWcWLlapgFflra2CZtoTGZ84jbmxliuBAKr
        0FMdLektaLMAFyibV7OLIF0=
X-Google-Smtp-Source: ABdhPJxv0tcgtAYLNVYifsoWdKTcNQ4tqbnZAv6oxiDDFR94SuJh6zEBF/lUX5lRux5uCkJRhfDsTA==
X-Received: by 2002:a5d:6d86:: with SMTP id l6mr1119924wrs.260.1627503644696;
        Wed, 28 Jul 2021 13:20:44 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Shawn Landden <shawn@git.icu>, linux-man@vger.kernel.org,
        Nora Platiel <nplatiel@gmx.us>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 32/32] execve.2: Fix absolute/relative pathname
Date:   Wed, 28 Jul 2021 22:20:08 +0200
Message-Id: <20210728202008.3158-33-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Shawn Landden <shawn@git.icu>

The absolute pathname is available in the Linux-specific
auxiliary-vector feature.

Reported-by: Nora Platiel <nplatiel@gmx.us>
Signed-off-by: Shawn Landden <shawn@git.icu>
Reviewed-by: Nora Platiel <nplatiel@gmx.us>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/execve.2 | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man2/execve.2 b/man2/execve.2
index c18ca5412..7fe12ab42 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -346,7 +346,9 @@ will be invoked with the following arguments:
 .PP
 where
 .I pathname
-is the absolute pathname of the file specified as the first argument of
+is the absolute pathname of the file specified (may be relative to
+.BR getcwd (3)
+of the caller) as the first argument of
 .BR execve (),
 and
 .I arg...
@@ -356,6 +358,11 @@ argument of
 .BR execve (),
 starting at
 .IR argv[1] .
+The absolute pathname of the script is also available
+in the same auxiliary vector the environment and argument variables are in, as
+.BR AT_EXECFN .
+See
+.BR getauxval (3).
 Note that there is no way to get the
 .IR argv[0]
 that was passed to the
-- 
2.32.0

