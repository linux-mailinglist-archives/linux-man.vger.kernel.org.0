Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C140431AE6F
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbhBMXLz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:11:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbhBMXLx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:11:53 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49C88C06178A
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:43 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id u14so3707929wmq.4
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B+qkl8f2WxFLBXcg4V78mBZgU41QYxe1gAeqCdRDsN0=;
        b=aTRdwPV7l+G+ZLWDJKhz7CQon8uz0lNm0GP046V3aZIaTGCsPITj6ALmTKtych9CT9
         2RBR1A0YTpn0xZ8TxITeOvMsnayRAj32jqbmPbLHM4peAYyHCmXkCCZ4mA4luVRvnX8o
         t+v2Wwzh54Wo/617Jskgp4PXUpwqt09K1cWwH039UhTepTGehhlRrAuvqnA35WIphRE4
         PnStC8mkwfYYmd5Fy60kURlaX9k91m08nyrT9Uc6iRFkJBay+np8aeDmtyqDDiUB8MKR
         /RD6ofuH30l41SqnXsCKsxKrfjDhpfdOhzwIv67jrNgv3iv1YP5KQG7Fz3ecA/f14Ikm
         btkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B+qkl8f2WxFLBXcg4V78mBZgU41QYxe1gAeqCdRDsN0=;
        b=Vh4lGpmL0TRBjzpFQmD0kP6oc+qUmGNe0ryde8iQdHJe/PN5liOIt7UmI8r69adcXB
         sBpOy4LphXnrb1IZJFanEHTuHMQrfNC2y7YoL+q+Q5WgToIklQWYY3jg7rrHkU6xdxcT
         LrStgGmYUcRjimOO+EkMru8wOtv6JyyU7BppKFolhYsBQg/OmPP/qeHDd4TwiRXYAtSG
         CL5RTWBHAPEXdlBDb6OI0vhNDZL1oNGaJlCezwylZ/jpVpILbRjeENZYx5w5orIqkb0I
         37ddbshiR9iGczJlaM6PM2fGjvgjV7dr2o7MXtlgHLeza2DW8fQgXdWj66NQvwauwGT/
         qxSw==
X-Gm-Message-State: AOAM5338xyjp7KA2hjPbg5DeW0P4YEtxnSZW7WK8+GDLU9I64+3jnXgx
        JmVdFZMNVwkvH+YlH26AXWexZJ01SXQ=
X-Google-Smtp-Source: ABdhPJx0zkzCnUtVwXOBvDNXsHqukseCZjxeaIdfnFdYGGQpvFnnodN7L1HGSc4OIFp4J0uqkVjzuw==
X-Received: by 2002:a1c:a187:: with SMTP id k129mr1841976wme.24.1613257842049;
        Sat, 13 Feb 2021 15:10:42 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 05/14] recv.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:15 +0100
Message-Id: <20210213231024.440020-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of recvfrom()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype recvfrom
socket/sys/socket.h:163:
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
			 int __flags, __SOCKADDR_ARG __addr,
			 socklen_t *__restrict __addr_len);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/recv.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 7c195728f..3a501f9ad 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -47,8 +47,10 @@ recv, recvfrom, recvmsg \- receive a message from a socket
 .B #include <sys/socket.h>
 .PP
 .BI "ssize_t recv(int " sockfd ", void *" buf ", size_t " len ", int " flags );
-.BI "ssize_t recvfrom(int " sockfd ", void *" buf ", size_t " len ", int " flags ,
-.BI "                 struct sockaddr *" src_addr ", socklen_t *" addrlen );
+.BI "ssize_t recvfrom(int " sockfd ", void *restrict " buf ", size_t " len \
+", int " flags ,
+.BI "                 struct sockaddr *restrict " src_addr ,
+.BI "                 socklen_t *restrict " addrlen );
 .BI "ssize_t recvmsg(int " sockfd ", struct msghdr *" msg ", int " flags );
 .fi
 .SH DESCRIPTION
-- 
2.30.0

