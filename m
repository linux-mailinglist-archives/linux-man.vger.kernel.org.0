Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7D932F6EE
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229948AbhCEXvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229964AbhCEXvb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:31 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61501C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:31 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id b2-20020a7bc2420000b029010be1081172so241817wmj.1
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mIc6rGAqKPEz4YerYnPfyn1kpGW1lLvqw0RqeL5TtrE=;
        b=Uv6cY6gG/CqhQq6XNLOil+MFAiEKTkC1zEvB5nKPeMCKB+44pvtrDZl6T4ENJcrQGa
         X2Ocby0E/RLRkPFiJ+eSN1Yf7ZBcwhYGJx7PokKFSQW7zziibLY1HgvrRUx9/WXhIBeM
         OlBYtml/RpZm4CQw7TqY9tmoJBKE6/pXE2znW85XE//b2phGMgGrmOdN/4OcRf2ZjlFU
         GtxdA9IaV4EqH+5DPy5ZDrw9SNiETvQtwjxpUFLdGqwghTJfCJ1CioGqFFCrztn8bsmF
         5LNG6aO1YOu4PWUqg5O9NeFwva/Gs/qouclDfb8fO4dolnV5GTQ5+RYg2D947P7fHndO
         lUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mIc6rGAqKPEz4YerYnPfyn1kpGW1lLvqw0RqeL5TtrE=;
        b=eSKUcYYcIssnkD4KvHxmc0rUJGhqvZUBbvhzzsjeeK6DuOClPrcEe39AFV2D6jpWtw
         rCcUllyDkxSv8IJWWbmiRgwlziaReJfxWKMwptmuDrswUxYxv1aKGplgUD+SwGKY4YgI
         dzi6W/B0V4InKKhltQWTGqST3TVKC15vhYENQ4YTnKmYwAtYHQrNfC8+LW+bZfvCQo4p
         VyIXxUuQDhO6fW1GykNczJSG3lvVfgjTitoe4Df7UIyEHAKq8AqvMnDYOWgtTMsjXJQ3
         tAvBOSp4hbrZTov4Egz/kV4PJVOVla4/t9h0rxpvN3xuYW7hUGMJK/ZSnW2KFs7AReZ7
         FwkA==
X-Gm-Message-State: AOAM532qopt4gmtHG5KTdVX4phZ+vy6ncaojT8osLPF9NKfhcP3jptwN
        XMV6LxwclNLWsQ/p8zRchqU=
X-Google-Smtp-Source: ABdhPJzTcU8BnbhIOZJHPbgKafpgxWxUELWxuZlL162Q12qvhbG6X4stMU4hhCMrLIqEMkB76PX3dA==
X-Received: by 2002:a05:600c:4f44:: with SMTP id m4mr643348wmq.175.1614988290192;
        Fri, 05 Mar 2021 15:51:30 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:29 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 18/22] mq_receive.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:51:02 +0100
Message-Id: <20210305235105.177359-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mq_timedreceive().
Let's use it here too.

.../glibc$ grep_glibc_prototype mq_timedreceive
rt/mqueue.h:76:
extern ssize_t mq_timedreceive (mqd_t __mqdes, char *__restrict __msg_ptr,
				size_t __msg_len,
				unsigned int *__restrict __msg_prio,
				const struct timespec *__restrict __abs_timeout)
  __nonnull ((2, 5));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mq_receive.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
index 418330bac..4dc1c3342 100644
--- a/man3/mq_receive.3
+++ b/man3/mq_receive.3
@@ -35,9 +35,9 @@ mq_receive, mq_timedreceive \- receive a message from a message queue
 .B #include <time.h>
 .B #include <mqueue.h>
 .PP
-.BI "ssize_t mq_timedreceive(mqd_t " mqdes ", char *" msg_ptr ,
-.BI "                   size_t " msg_len ", unsigned int *" msg_prio ,
-.BI "                   const struct timespec *" abs_timeout );
+.BI "ssize_t mq_timedreceive(mqd_t " mqdes ", char *restrict " msg_ptr ,
+.BI "                   size_t " msg_len ", unsigned int *restrict " msg_prio ,
+.BI "                   const struct timespec *restrict " abs_timeout );
 .fi
 .PP
 Link with \fI\-lrt\fP.
-- 
2.30.1.721.g45526154a5

