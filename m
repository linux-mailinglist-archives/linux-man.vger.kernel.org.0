Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 291DF31AE6D
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:11:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbhBMXLW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:11:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbhBMXLV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:11:21 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FFF2C061756
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:41 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id n10so3734729wmq.0
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=acX3I9x9vk9bKfkBluDPTDxOuOlGVPsONjgPBz/6bzM=;
        b=NdHwZ7vQPLkM2wK2CDhtcW1EMboSX84IXh8TfQFqvKkZeNPXW5/kOQ/WreaDmzSgO7
         Pgm9cLlm1jEnMFdSPNseK2hhBTS99ck0mIqGIxqhjAMjpiDo4lAWq5Y+XrBoh0A2mvy/
         4WQgHv96RAWbUA1rYjy2T+TEDGLApf7xD6k06xHCOIbPv+KI9r56TVuuzsuOE2YjeZaG
         E9BmMn642702TY5Nzu6CJOfzIlLlcGkT1ddB6aeKxqZFEwdJ5D5W0kkPgqBZQxXcNYOQ
         q/qNRLse1rWN7z6cyfdcEbfnPweLcNKBbtBETgjc7F59h8LJpKNeVujLd4FLs12uxJ9F
         +bUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=acX3I9x9vk9bKfkBluDPTDxOuOlGVPsONjgPBz/6bzM=;
        b=Rg5PdGQFccYZnMpuDQIFCLh5X9Fbdstq/qL8g+PTuOz769I1LSn0/IHYYeOzfEpyA6
         5aRwXepYapZ1a0KyTjxaG7NOTHqUOhqEmw5M4uZT2vpfps6Rk3qh7/uPx82F8WUYlEEC
         t/oyw0ugJocj7Vy27CmGgw3nH/yt2TUfPEGpSyUtTrYdGsG3rhEAsZo/jApSCZsYfr4L
         enLAduA/YuPg/DqVlaeBq0rwz98QxZM4goczAO6nm/GWSupIU69UDpPIc57qlOPBFyaw
         Fb0Sv3aGULCyPea4U5G98zEMgrI9GCRFuJfc34k1+cmfOMDmJCjoQ5SZyQFpkjfoWuvU
         g2JA==
X-Gm-Message-State: AOAM530keIw32Ttg2rO97rASZ+JBugE+hxArirgspjdG/ls1+eQbc69/
        6zy9kmIgmIGExH6wqxHfM6NDVJDAmNQ=
X-Google-Smtp-Source: ABdhPJz53FF07/DriourRtSCcjd8LHQvRCZIicPUUHyWR6unpsJQwxBc+rBpcX5zsaPqgBvqBARzTQ==
X-Received: by 2002:a1c:7217:: with SMTP id n23mr7901146wmc.183.1613257840000;
        Sat, 13 Feb 2021 15:10:40 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:39 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 02/14] getpeername.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:12 +0100
Message-Id: <20210213231024.440020-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of getpeername()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype getpeername
socket/sys/socket.h:130:
extern int getpeername (int __fd, __SOCKADDR_ARG __addr,
			socklen_t *__restrict __len) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getpeername.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/getpeername.2 b/man2/getpeername.2
index ef84b9ef1..71f818f4b 100644
--- a/man2/getpeername.2
+++ b/man2/getpeername.2
@@ -46,8 +46,8 @@ getpeername \- get name of connected peer socket
 .nf
 .B #include <sys/socket.h>
 .PP
-.BI "int getpeername(int " sockfd ", struct sockaddr *" addr \
-", socklen_t *" addrlen );
+.BI "int getpeername(int " sockfd ", struct sockaddr *restrict " addr ,
+.BI "                socklen_t *restrict " addrlen );
 .fi
 .SH DESCRIPTION
 .BR getpeername ()
-- 
2.30.0

