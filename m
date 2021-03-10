Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7193F3346D7
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233475AbhCJScj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233495AbhCJScZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:25 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7C42C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:24 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id l12so24416042wry.2
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UbqNJxji0iog/ihZEREGvWtqIWGF3dWUVT8PqeBhNDY=;
        b=Swcw7DE8u91W8QqeerBcIOteoK3vktBVF8Zh4p9R+JLZv6UuGKC0HNug0/aiNClQ09
         vc3he05zqqZjeXkuWVNeK8zpsY+K2LF8Vru+ztXvEYgzg3dzQEhyJ4pWdGmJu1pyXXfj
         3zrGAIo8XbSdICWdSb9Di4Qu/xBjGPKEwB1NI4QWHG2YAKWzcBqZ7L5su3ru4OzZGw8D
         FqD7vVQV03Q5Zku1tlNK7s5naeNrfjhC1Jv9c3rTZUg0s7M2ypMEB+txEloA2GH+ZJXf
         CmmdtexDQ3cOgojTolVkQpcotAFhd6CiOElm9ZqefXFW7oOqfPt2u037QJV63xMQqEge
         Nr8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UbqNJxji0iog/ihZEREGvWtqIWGF3dWUVT8PqeBhNDY=;
        b=nBjQA/sQXaxEGItHShQCBfRSLQV13e5s189GsI2xh25cx8jIMpnyVVhGRYZmRJem9O
         ptTwPBvZjt6o6BOeCSapkgnZLX/BydhXuSJssvnFIrm9pI2XF/VNPp2VS/lCSmD3adxf
         NiOqEFrj7oQewER66aTx6/NPxOfJgai2hOkP9vW+DO8dHnkKIgHcDut5xIYILoo+vuki
         Nc6aqEKn+brDgthTqzFdxslPfSbdz8CfKccOWmMCIGz4kMLLTm7MtLX4K8UKrsQ6UKjx
         loMPc+r11o+4D86ASHROeSKor6l80ylIFQs7XjcZQfUwmqUlSE9DJpf1lLXi1Qt9Jzdt
         Wq7w==
X-Gm-Message-State: AOAM533WnP3NwVNqE33Sz4AvxKLlVzBf//E4lQ19YD8HD6CrGMkvsAde
        HT0SN6nui4bVJKlJWcJuerw=
X-Google-Smtp-Source: ABdhPJwITlZItXQJTT4ESeSmwDDKDuhYIZED+Lat/lWmxR77ZkMDemH2ojyZHTsTW7kiLYlETGGytg==
X-Received: by 2002:adf:b355:: with SMTP id k21mr4934952wrd.156.1615401143632;
        Wed, 10 Mar 2021 10:32:23 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 21/24] strtok.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:47 +0100
Message-Id: <20210310183149.194717-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strtok(), strtok_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype strtok
string/string.h:340:
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __THROW __nonnull ((2));
.../glibc$ grep_glibc_prototype strtok_r
string/string.h:350:
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
		       char **__restrict __save_ptr)
     __THROW __nonnull ((2, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strtok.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/strtok.3 b/man3/strtok.3
index 6db48b677..8058ff2fe 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -36,8 +36,9 @@ strtok, strtok_r \- extract tokens from strings
 .nf
 .B #include <string.h>
 .PP
-.BI "char *strtok(char *" str ", const char *" delim );
-.BI "char *strtok_r(char *" str ", const char *" delim ", char **" saveptr );
+.BI "char *strtok(char *restrict " str ", const char *restrict " delim );
+.BI "char *strtok_r(char *restrict " str ", const char *restrict " delim ,
+.BI "               char **restrict " saveptr );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

