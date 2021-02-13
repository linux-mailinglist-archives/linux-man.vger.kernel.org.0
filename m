Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57C6F31AE6E
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:11:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbhBMXLY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:11:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbhBMXLX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:11:23 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FD5CC0613D6
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:42 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id x4so3718888wmi.3
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+mHjGxTMVKdme9/cda8AQpRdOgD8h/rJiK4VyVexMdY=;
        b=HPZBAxawYDrzVi+FQS/7dr4VpG5yP6uoBRnZHcpf2d0H/z4zTU4KE7qe6E7hk9yh1r
         W8R7v5XmTRLseL8tDiDE36IFDdATsCF+M1SEedE+Xw56PedJ48aQmyZEjHw/DMcpH116
         K94/zim+7voascoUqlWlbt4pgmOz1I7a/5hBpcruo5CmqLiKZu+ATI9kH6U945JCv0hm
         fZlH5x+Mf1ui+82NLK8574YzX+xri/m9KHgdiFi1qpuJiMu+IIrmaFvvvSVxEYmmOmvt
         elWvn02qrovYrkol+ZIVVG9cbW6El2knsKuD+NQSVyredAEZ7l6IvnxPMjqZ/hFVc0i9
         Rm2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+mHjGxTMVKdme9/cda8AQpRdOgD8h/rJiK4VyVexMdY=;
        b=qslRFVm1mhn5Eqa7JDy6GXpgoPoLHqmGwjc362Pa2HmD/EpN2aeJIPsTj1ifEQAS/6
         LK4lFKiifb0NwDPmUjBD/it6nY7D41jsEIYF8Hrd044C+WfZy0PsqLu3RNQ9HGGj78ir
         uDSbiMas3geiXbvEmkB8PYtZuoboaa1tttMtRY18p7jdJ3sYD7bBhlrmveZNFEi2SKYk
         QNbbFGFhbnZXJt/CgGVZ/PAYaNFaV6LiuT8H+4G7QDNmFO0JLedY0lX88XwWcgFdRXUQ
         Vagb6S8HYwyvcRfdkSRYbMDHGJzOZup/ctUfwA4yRi9VefsVbdfK6soULwMEs+MY4kNi
         HXDQ==
X-Gm-Message-State: AOAM533qV4Ef19pqnYMWA1xGoQZx1EKTdYk/ywR+5J61B2Gh6KbRM7sv
        +Zb+KDGHYJTfIBHigIyj5h8=
X-Google-Smtp-Source: ABdhPJywWcvnUj59suKzjSOsz2prxgYg7VALbS5FlMJidGXB9o4Rv4cf6Pki145kDmyyTedA8iS0lQ==
X-Received: by 2002:a1c:67c3:: with SMTP id b186mr8185401wmc.24.1613257839358;
        Sat, 13 Feb 2021 15:10:39 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:39 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 01/14] accept.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:11 +0100
Message-Id: <20210213231024.440020-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies the parameters of accept() shall be 'restrict'.
Glibc uses 'restrict' too (also for accept4()).
Let's use it here too.

......

.../glibc$ grep_glibc_prototype accept
socket/sys/socket.h:232:
extern int accept (int __fd, __SOCKADDR_ARG __addr,
		   socklen_t *__restrict __addr_len);
.../glibc$ grep_glibc_prototype accept4
socket/sys/socket.h:240:
extern int accept4 (int __fd, __SOCKADDR_ARG __addr,
		    socklen_t *__restrict __addr_len, int __flags);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/accept.2 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man2/accept.2 b/man2/accept.2
index 90551f8e5..0923ea97a 100644
--- a/man2/accept.2
+++ b/man2/accept.2
@@ -46,13 +46,14 @@ accept, accept4 \- accept a connection on a socket
 .BR "#include <sys/types.h>" "          /* See NOTES */"
 .B #include <sys/socket.h>
 .PP
-.BI "int accept(int " sockfd ", struct sockaddr *" addr ", socklen_t *" addrlen );
+.BI "int accept(int " sockfd ", struct sockaddr *restrict " addr ,
+.BI "           socklen_t *restrict " addrlen );
 .PP
 .BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
 .B #include <sys/socket.h>
 .PP
-.BI "int accept4(int " sockfd ", struct sockaddr *" addr ,
-.BI "            socklen_t *" addrlen ", int " flags );
+.BI "int accept4(int " sockfd ", struct sockaddr *restrict " addr ,
+.BI "           socklen_t *restrict " addrlen ", int " flags );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.0

