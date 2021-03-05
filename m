Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC19D32F6E3
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbhCEXvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbhCEXvV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:21 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64F6C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:20 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id a25-20020a1cf0190000b029010b1cbe2dd0so242856wmb.2
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xUyRNl6Q2Rj6Vo2rrRfIywC7BhDfUeXrnktUg4SMgcY=;
        b=Y1gVEd1ho1D6uEJ+ENnl5ZhDo1GKbOnMIce4hvHDrhmn5PRlMhFYUQQ81EtknGqpIX
         6WGI282DGBHGXwRnG+95/PlUlkUv1psSJmdgVa2xmwkNG4dr5SQKBCjhBXbQ7mF8auWZ
         i0GbzJhdoPdz4mKuDguFENwPGJZvYleAZaHWjGbhg26RS5wdJT+pBcAA17doslegeTF8
         pbG0rExtCLZjApUdBGUkG/lFHxXRDU0EH5YlnQxS/zP66UCI1ao2CXJcbDsqrBFB/9dg
         yFHb55mChV0xoG7vhiInmnVyIlpNlQS6fg21eIOkz7s5jt8KkxPXYepygNQ5lfuhXkwj
         ellw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xUyRNl6Q2Rj6Vo2rrRfIywC7BhDfUeXrnktUg4SMgcY=;
        b=AP+5kf5IOx9UUE7ZCVrKFJEb/xoc5mqQXNx4VrC96Dt8XLZ5Cka8PW46WDnyJRrDl6
         f7AVqg0/wv6cmE5BcUZjc7ZKhbCgZ/R+CNq5t3MAtUq6Y0VW+W31t58KZazkncP2PUAR
         Z58KVALKkk0T3IFLdGdscsQsZcGTSGN66bDn3orJYVYXXDgluf7bjQa7DAVym51GvzOV
         2W6MY4WKO3JbAL74cmEp5S/AsGaNv+Ke7r1RoHX5gHfqYDJ2rZeuLKKNtx/RRyMjN9ct
         3qMgoQbYR8hJhU1TWlm5+Ukni4SC05G4pv6Tmt6RSRvoLsRJFOwaM+E1NTPp2D7GsZU/
         6bjw==
X-Gm-Message-State: AOAM5308oAvpEyFVpoTN1NS17usDDQ2DcsJtM1sRO1KunpFU+L32m8hq
        6y8Qw0CY6LF1glC/tgkaavQ=
X-Google-Smtp-Source: ABdhPJzrp0AY5rNtq0mQtC5ofLN7z8IJU5OldNn48jNefd4onRkUKXQWXtaNqkDV68ls2NF23WqdGw==
X-Received: by 2002:a05:600c:2cd8:: with SMTP id l24mr4920015wmc.88.1614988279590;
        Fri, 05 Mar 2021 15:51:19 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 06/22] inet_pton.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:50 +0100
Message-Id: <20210305235105.177359-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in inet_pton().
Let's use it here too.

.../glibc$ grep_glibc_prototype inet_pton
inet/arpa/inet.h:58:
extern int inet_pton (int __af, const char *__restrict __cp,
		      void *__restrict __buf) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/inet_pton.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/inet_pton.3 b/man3/inet_pton.3
index 304aafb1e..f367fc6d2 100644
--- a/man3/inet_pton.3
+++ b/man3/inet_pton.3
@@ -31,7 +31,8 @@ inet_pton \- convert IPv4 and IPv6 addresses from text to binary form
 .nf
 .B #include <arpa/inet.h>
 .PP
-.BI "int inet_pton(int " "af" ", const char *" "src" ", void *" "dst" );
+.BI "int inet_pton(int " af ", const char *restrict " src \
+", void *restrict " dst );
 .fi
 .SH DESCRIPTION
 This function converts the character string
-- 
2.30.1.721.g45526154a5

