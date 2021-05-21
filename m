Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D91338CFB5
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 23:17:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbhEUVSf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 17:18:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbhEUVSf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 17:18:35 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6238C0613CE
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:10 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id i17so22279701wrq.11
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EZdSMgwMplJ7HT3Qz0jbXMYjNtG0inE1M4UvREXJEII=;
        b=i/7JTZ7sSIBI4fuWjCGh0PrlLg4MGJFIs+SP35eRMt5c/PK4EY4kajQWBMl5Im6HYw
         9p1fy8xhCjzuPJ4YkATwbjeszmn3yYFNDoGdTsoUKSGK2gGgcBj76mTtvCC++WsQWbcS
         bFCLXArpPwcti2kxwM/DgzHrxJuXS5xFo/LzPtzESHBQa3bopUausWZjLYKfga8WLhtQ
         4yUxjo48oZablzYdP4O43GMbbGQNIn0OiWD6rYK0ZDkNMWylZpNUI1m0KBRVPKyO/LVx
         gDFMAe84LcMRJG8bW7HBiygGOHg2NKNXSZ7578aPkcQXmm5xgDPBMpnI3L4Fwk9EWX4J
         RfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EZdSMgwMplJ7HT3Qz0jbXMYjNtG0inE1M4UvREXJEII=;
        b=o6x37ZjYOG9xaYl1xmY2Ij4WK40CgF+ia22kFOQQ2iGZ/Ktq0PpqkEFDPd0FmV1QhO
         4b0iK49KRRvj0SzY/VBA59nl/fT0gdCItqG0Lt+TeuFnXLTB5FsaB8bLt8N9PMTa3zyc
         CvqXOGAfIMTyXKEvbtw/LioWMGFOHatiWSihqU81V9ZLlTnELHhG7qZq3QmkdyZ4qzDX
         rjsBXuTvsuiRPYpcSz6affiTeaAKviAkUmaDSEAeSqUY7l6DBaK+/hR15lJ/2quKNSCb
         xaVdP0KDLZXXP7Thpze/fx32w0GbdQSJQ6chEX/pZmNHgWcamAEnvQGLWgdZLanIpPJ7
         0/5g==
X-Gm-Message-State: AOAM533URf8pXIBb8g7OiwCKnPcLGBTsua0gcISu9uqKHmm0n3D5W6R7
        yXuQ0LayD1+0pf4KIlLjnOo=
X-Google-Smtp-Source: ABdhPJzmZiV1rIPrlUSjzUo85c7pbFY8ZWyKugRSLS4z3pwPOv2YbVuqUSi7JNAX29g+Er2d6uXDSg==
X-Received: by 2002:a5d:50c7:: with SMTP id f7mr11743292wrt.189.1621631829296;
        Fri, 21 May 2021 14:17:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm3944489wrq.0.2021.05.21.14.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 14:17:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/4] gamma.3: Add LIBRARY section
Date:   Fri, 21 May 2021 23:16:53 +0200
Message-Id: <20210521211652.49949-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521211652.49949-1-alx.manpages@gmail.com>
References: <20210521211652.49949-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/gamma.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/gamma.3 b/man3/gamma.3
index 003964158..49f66427b 100644
--- a/man3/gamma.3
+++ b/man3/gamma.3
@@ -9,6 +9,9 @@
 .TH GAMMA 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
 gamma, gammaf, gammal \- (logarithm of the) gamma function
+.SH LIBRARY
+glibc - math library
+.RI ( libm ", " -lm )
 .SH SYNOPSIS
 .nf
 .B #include <math.h>
@@ -18,8 +21,6 @@ gamma, gammaf, gammal \- (logarithm of the) gamma function
 .BI "long double gammal(long double " x ");"
 .fi
 .PP
-Link with \fI\-lm\fP.
-.PP
 .RS -4
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
-- 
2.31.1

