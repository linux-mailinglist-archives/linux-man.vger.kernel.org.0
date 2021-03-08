Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50C743316B5
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbhCHSym (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230512AbhCHSyL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:11 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48CDC06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:10 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id y124-20020a1c32820000b029010c93864955so4447719wmy.5
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YM7dtQrtq24gSjndZcmN6Vq3FIxEeztgQZpUiOPWTkc=;
        b=GkjqxqlhLMLHJr4SksjwEOf0pfUN1KWtcyesndgPNx1HuVx4QDDfvRl34la4fCyS4a
         pgvQPpg3LnrXoR24fkGRyeKhzH91L6Jk0jWLvqdcGQvBwfyWuh/bDB7yGG6htu0nYC11
         3MqHBuN/gaXe4HmggqI17MvZOFetB945TkkCQdGJWJFB7Nae1oSpxsOmULGBJzkzTPyM
         u4sa6eIXG7AVUSIBY3mN7xbusTUniw6jIeHlG4fodEC5LdA3osihTEnMrj/L0xHVO0zD
         Gzm38UjuJQhBVKpbrMPZTKyLOIr8XZOT7RgRnV4t9TPHWXrI1xsraRuXqStdnREFOJZt
         0haQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YM7dtQrtq24gSjndZcmN6Vq3FIxEeztgQZpUiOPWTkc=;
        b=TRf0yRSvBD7BOb3yyGjlCQoSnSJho5KrJBrKRLLbFtP5M57XxtpoZelKjUvQGkEE83
         zr/cHBkIWb86OhFz3gb+ZNKu0Qdx76hx7d8sqbsOwOfM+dEWqUsKOr4TvNMI2roj0Sf0
         9cxgBNiwMnSjH4gaiIONEJEwvEjSdT4JFq3DRaMvk24GzbZ27uX1nYKqE2rSa5xGdAds
         jda78J5UXU5GQdP5UM2Pyaq8rWGcwlwEHz8ufSuHD5ABTo4xr5odZDRuR5tlLLBIAWCk
         +/LQAYeB+2GH2AWL0733Y+XeTzxF0RCPwleNaYR1Iqgop2NF9yVaSZbaSHylHttToHiM
         160g==
X-Gm-Message-State: AOAM5302pFQ4Dw2IhwH08TiGsi3Mk204sIHLfWrcBnGV5pwoPcR1Yucz
        7cZ3HuBYs8KqNJmHr+pxFWtf6IZVWKQ=
X-Google-Smtp-Source: ABdhPJw53JryrrgfTCrAMu1W+Q+ZR9fOL6f1RQ1LQjM1WBI9RTvVZMw5+gbgpGVcGO21KfExEtR4lQ==
X-Received: by 2002:a05:600c:2cb9:: with SMTP id h25mr219355wmc.110.1615229649718;
        Mon, 08 Mar 2021 10:54:09 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/23] pthread_attr_setstacksize.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:13 +0100
Message-Id: <20210308185331.242176-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_attr_getstacksize().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_getstacksize
sysdeps/htl/pthread.h:192:
extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict __attr,
				      size_t *__restrict __stacksize)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:346:
extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
				      __attr, size_t *__restrict __stacksize)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setstacksize.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_attr_setstacksize.3 b/man3/pthread_attr_setstacksize.3
index 824dbc5f7..e1e56aeee 100644
--- a/man3/pthread_attr_setstacksize.3
+++ b/man3/pthread_attr_setstacksize.3
@@ -33,8 +33,8 @@ attribute in thread attributes object
 .PP
 .BI "int pthread_attr_setstacksize(pthread_attr_t *" attr \
 ", size_t " stacksize );
-.BI "int pthread_attr_getstacksize(const pthread_attr_t *" attr ,
-.BI "                              size_t *" stacksize );
+.BI "int pthread_attr_getstacksize(const pthread_attr_t *restrict " attr ,
+.BI "                              size_t *restrict " stacksize );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1

