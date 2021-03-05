Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2303F32F6E4
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbhCEXvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbhCEXvU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:20 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D0DC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:20 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id c76-20020a1c9a4f0000b029010c94499aedso256308wme.0
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Na9fqCLj6gqYVuSm/deOAFHJh297IfvHV4/YM4XoJ8w=;
        b=ni1rb+letQALHU0MN6/LOVkqoPIvGYduqvu6EP9L9fpePP33diBD5GxUhRiEo4RNA4
         QQLLIpl1LebqtpfuXr/zxzVrLYLm3MC8sPwt3xUQ8UY7OyYYVvJh7ITUbRcXooR7c+7s
         3viOCPyj+Hj9CSpHUiuoiJ6euqIWnEx6RLNdr/WHGOYs7L+dZsWPjgCFugCNkj145NLx
         E5vrthPsL/P2aETStgoAB4iixOi1XB33XDNJ0Gt0XzOJOUEXCL0QoxR8vZglYWaXmLX2
         gTz3G+jzWvsY+7SQm4oho4w7ckpIAIXjFR18ACK6+cF0pP8bn42PAdgO/WWWtsY+bsnK
         pVnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Na9fqCLj6gqYVuSm/deOAFHJh297IfvHV4/YM4XoJ8w=;
        b=A5+U0lQh6zJhw04Nenbn0yVGzBnAUzOz69+lMC/KAybFwsqN2rAG8S39JaTAJXK8P7
         OGPwg/ehmt3WD0L05caYlTnR7O4yCVMV48v7UK2RUcsPBEUKiFa6BtXfdJbt2iJdn4pN
         zVgFwi6N143dsJBGVjhvgLeJk01x+8TIEtlkWBZOdMIN3YNH3JokdLjzbHg/nxH8Zzsd
         HRcRpAIAmgQWhRNhYe7zT9FVnsvdYNCCfckG04BbSc5dG4FcVf/YMCGYTlQEtRxJrizp
         iA7orAh4sQ8WtNbQkb0FRgLtdl66OKUXgX3L8wlOlY2R5zn7VrDQKGgz1EKse9vp9zYK
         YYpA==
X-Gm-Message-State: AOAM532r36Lv7XjYuJVnF3lq7405UUuNctRjRjw0p2pBhU9M727uUnqt
        aQgbUb5n/q5uJqGPfWSgxwE=
X-Google-Smtp-Source: ABdhPJzn6YyGboP1afcDpBEPr6PKI7gqMaHyNj5whOWlYKabAUUurzthRN3grhp/QM1zNLbzmKHzAA==
X-Received: by 2002:a05:600c:2145:: with SMTP id v5mr11242616wml.65.1614988278792;
        Fri, 05 Mar 2021 15:51:18 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:18 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/22] inet_ntop.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:49 +0100
Message-Id: <20210305235105.177359-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in inet_ntop().
Let's use it here too.

.../glibc$ grep_glibc_prototype inet_ntop
inet/arpa/inet.h:64:
extern const char *inet_ntop (int __af, const void *__restrict __cp,
			      char *__restrict __buf, socklen_t __len)
     __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/inet_ntop.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/inet_ntop.3 b/man3/inet_ntop.3
index 9abb9556d..fc15ba859 100644
--- a/man3/inet_ntop.3
+++ b/man3/inet_ntop.3
@@ -30,8 +30,8 @@ inet_ntop \- convert IPv4 and IPv6 addresses from binary to text form
 .nf
 .B #include <arpa/inet.h>
 .PP
-.BI "const char *inet_ntop(int " "af" ", const void *" "src" ,
-.BI "                      char *" "dst" ", socklen_t " "size" );
+.BI "const char *inet_ntop(int " af ", const void *restrict " src ,
+.BI "                      char *restrict " dst ", socklen_t " size );
 .fi
 .SH DESCRIPTION
 This function converts the network address structure
-- 
2.30.1.721.g45526154a5

