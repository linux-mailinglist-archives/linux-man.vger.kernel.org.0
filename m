Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 296893316C0
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231418AbhCHSyq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231263AbhCHSyW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:22 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3E25C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:21 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id u14so12610584wri.3
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aXj66QydK9PB052W5oOABywajg3+p7kxv2g7HNu+5yI=;
        b=jNAZwhi+7t1IKMWm+zhVcSBeMrGxPdZy40NsQBBcpkwMOc4OG5dN85j8E7nERAfvFT
         DxEkE6kZxvATV7Y9jY9iwvzP4ft3wbCs6PTEA8/HZ4JdjJ5hqv58MnhGeZICQsX5r+ig
         gIlQCU6EghKrPWeu4LASQnp8LoJ4MVAfv2/Ok5Lh0etraL6Gnyi6AssNlQr+e9+Mq3hv
         J2QYiIHB8pRRcSCgpDWx+Q7TOgkVQLmvnIRl2YzF187QpH+qMzD2WYTf97EWABQuEmQJ
         /oVALwjgnz1GdLKQh0aoS1BhLYSFruarnKNRcix6/YR0QxZ/zmubVP7ixBoQc+76KdY5
         Hs7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aXj66QydK9PB052W5oOABywajg3+p7kxv2g7HNu+5yI=;
        b=pBBQw2/7ghwVfGri//Ex3VOvrj/B9eZ1GwCgSkonuf0bdQymfD62lm1myF8jAH43BI
         N7q7zHC/y3YCCsjM4q6bl+fuhHywyjE3BkcTkpmmwxK7fOYsMTw4kSoJWbr7zIZg9ggK
         sLBNmt+hDol6MkNUXxRQSZpsYmNgi4R6tudCM2e90BPNt8R8iCn/Wb/JYzQSKFMcDS2X
         blfutgFSfKGgdQg1/ek1FQ1dCKpIn4Wciau1Z7KF9KpvcEq+tOgKItsXh+n4AViA0wAK
         ff4JLzpsi1t5iraF7nhehYIzep4aQXqGzbJO+W0yVusu+VuJV39Jq5CHaPvabZjBv4aG
         rDHg==
X-Gm-Message-State: AOAM533R3h3T0mqyQXvrMxi7wM2/e+amFGHAzVwraJF/G1DB3Yc5MITS
        ikEVRJsPWAINL5NN1yb7xGo=
X-Google-Smtp-Source: ABdhPJxOfbIlQjaAFue52j4+kFu95bTVQBmwb7jRrBJzBqOmRfRAShRYkF1T/xICkYaCyRjgJiM9fA==
X-Received: by 2002:a5d:4c43:: with SMTP id n3mr4219080wrt.259.1615229660516;
        Mon, 08 Mar 2021 10:54:20 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 13/23] putpwent.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:22 +0100
Message-Id: <20210308185331.242176-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in putpwent().
Let's use it here too.

.../glibc$ grep_glibc_prototype putpwent
pwd/pwd.h:102:
extern int putpwent (const struct passwd *__restrict __p,
		     FILE *__restrict __f);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/putpwent.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/putpwent.3 b/man3/putpwent.3
index 4db31a78d..85caca9c7 100644
--- a/man3/putpwent.3
+++ b/man3/putpwent.3
@@ -36,7 +36,8 @@ putpwent \- write a password file entry
 .B #include <sys/types.h>
 .B #include <pwd.h>
 .PP
-.BI "int putpwent(const struct passwd *" p ", FILE *" stream );
+.BI "int putpwent(const struct passwd *restrict " p \
+", FILE *restrict " stream );
 .fi
 .PP
 .RS -4
-- 
2.30.1

