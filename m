Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5010330931
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 09:14:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbhCHINb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 03:13:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230432AbhCHINH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 03:13:07 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1105BC06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 00:13:07 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id o38so5926487pgm.9
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 00:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version;
        bh=D0+vHgIaQPuTeJcujt5tbtTWfRCONE1ZEanQevcfT5I=;
        b=WoYU4AJmg790LnGi2QulfWjLgyNt8F2GRytb1e6g6El6KqT1P+rXLZNCmDuw9FO1Bf
         E5Qua/8jmaXEoghLdj8ASONZR5578kTVbyaGZefm+I8KCikUCTzIdWP6gSSPBQz/Wpgz
         XqK1qz1j7h1BwBJuJDzFDroGPw2BXT46d+JHdCOWIKfJgbjWVx1SQ1q/3geIRKcQrRLq
         F8tbg4wM+gNoGMkDfvFTS1Hfx7uiwK3x0X2AkwhRg4s0pJyiPnjpiR2RwSwgta4AZRGX
         ociOSljLYLNaS10/Z3JLZE+GqHfPKayKllJqKJpeQB5hoGZFraS0RUT1xnN1r7xPR9nb
         OnFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version;
        bh=D0+vHgIaQPuTeJcujt5tbtTWfRCONE1ZEanQevcfT5I=;
        b=PCzUb2OHIa5zpRpDZb2YvlLq00gg/BW4JVo2IqhpQEhun/6gNiyJbiKZI3D5TK/Xim
         E/e4UJP9Vd2J3y9MPPr5/CrIGQ14jrKkCxX/oqbNQzMY6ujNPdSURW342E/Psm7bbV5m
         hmmXnval+7+BYeh/asc4uXDdJpKZMSdwgC5AtaVXBWm/eDRCkFsv31Hxe01atSYIaXST
         AhISMUwU6QP2qAlSJcBLA0SHuMKJyXSR8auMAKInfjXvzSCwNjUIzzNXAIbUbEgfZ9uw
         Q0wRRXheHHy/G9ziG6htMpOerUQ0s7myaR06ApBwoLdF5WQtQVpoYU7n6cbqhnz/TsTo
         x2lg==
X-Gm-Message-State: AOAM532rbjRl/zf187ld/ygL9E0L77GgGU5sKVZ4snOf7H5oGd95n2Ah
        82J9bh/oKRkB2M7ENrMw9sAZ1xvyWAE=
X-Google-Smtp-Source: ABdhPJzhS1H6PBuIweUkaT5AOdV6bEhMEVuIce5PU440CrdxufSZdaFY0hLH6YXGQKHxCiY1gzZ1tw==
X-Received: by 2002:a63:db57:: with SMTP id x23mr3465111pgi.432.1615191186485;
        Mon, 08 Mar 2021 00:13:06 -0800 (PST)
Received: from localhost ([43.230.64.83])
        by smtp.gmail.com with ESMTPSA id 68sm9467388pfd.75.2021.03.08.00.13.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 00:13:06 -0800 (PST)
From:   Utkarsh Singh <utkarsh190601@gmail.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: [patch] printf.3: Add overall structure of format string
Date:   Mon, 08 Mar 2021 13:45:10 +0530
Message-ID: <8735x66oz5.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Thanks for creating and maintaining Linux man-pages project.

Can we add a small syntax structure for format string in printf(3)
manual.  I personally find if easier to remember and scan.  This has
been taken from OpenBSD printf(3) manual.

diff --git a/man3/printf.3 b/man3/printf.3
index fa6564426..69ff29316 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -193,6 +193,13 @@ an optional
 and an optional
 .IR "length modifier" .
 .PP
+Overall syntax of format string is:
+.PP
+.in +4n
+.EX
+%[$][flags][width][.precision][length modifier]conversion
+.EE
+.PP
 The arguments must correspond properly (after type promotion) with the
 conversion specifier.
 By default, the arguments are used in the order
-- 
Utkarsh Singh
