Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FE7D377873
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbhEIUVU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230059AbhEIUVS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:18 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CAFC0613ED
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:14 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t18so14447859wry.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TO/EfIM5PkaoWGpfw+Ew+u8iNNesx8ZwFssZMR/Ffrc=;
        b=hLw8xF5g8JJsH2onVp6P34RhRweRWWUgCZ9YjpjcD5KiGs8cjjcv6iH/Fyro1eSXaQ
         tM3Pgime+O1GOOwIpD0dQxVVa1TGSDFQ+34iyinjPmXOcMKEz02Fxu+t7cZHmK7lq5zU
         P6jt1ehLsvf5Bbyj5jHY+x+sLJxsFriIUXklxUajB/QghGTvEgVLcpJ+uabxwQ3kodm2
         ysrrl3rXpg0Unrlr9jS3J+W9FLFvOK4ds3MWgy8bpgz3UQbPA9NP9j2tlRw6JzxbNYOD
         PuRjb9qZ8xGCVpS5HTjJIqBSaS40Ejlqn+Bby/zws8hcd4H2ktIgFTjKrzkqdSjLfzD9
         qiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TO/EfIM5PkaoWGpfw+Ew+u8iNNesx8ZwFssZMR/Ffrc=;
        b=B/cSjFkY6ldU82oKz+CYfsb5/VNVJG4VKJP8DyAGPB7KtCt8Zs+mcE3+DCVOK/2ScU
         v9lw8QtxxgvaIxB6B4CTsZ25lrKXmUb8dhF6dLoBZcGpHPDLB/gbqxZkrOpf8XS8BIv9
         nH6LqwrLC2ikOKT98zyZKUNBcR2stwXfUsUMOpfhyF3m9QTPeUBo4kuMVvvH/iO/TfRQ
         nvU8NvV/SB2nhbG6QMMU+r57wiI4AHBS33jsKuSO0j/hDUUY+754CyL/O7fyThQQu0uu
         kuyrb2WEzhqTuWCHh4LmbRdsc8ba4rz6xI5HBctkKkTETvujWd9eELFRF1cw7E6p1j7r
         /jUQ==
X-Gm-Message-State: AOAM530h0SCn45jvrfvxM0TMqYhAEDrmf7MPYt5c6JnjZSpwUUko7cZN
        j0s2C9MU2cDfrX1w8t5849tXXbkPYejjqQ==
X-Google-Smtp-Source: ABdhPJyBHCDfXdqLP4u1HJlsGylsTO5VUAyG8yoD5FceTVByhM8J4lDwIhxwdEJYRAZOcU4giZUKtg==
X-Received: by 2002:adf:e40c:: with SMTP id g12mr26025101wrm.11.1620591612920;
        Sun, 09 May 2021 13:20:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 13/17] execve.2: tfix
Date:   Sun,  9 May 2021 22:19:46 +0200
Message-Id: <20210509201949.90495-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Štěpán Němec <stepnem@gmail.com>

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/execve.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/execve.2 b/man2/execve.2
index 1609bce04..c18ca5412 100644
--- a/man2/execve.2
+++ b/man2/execve.2
@@ -141,7 +141,7 @@ similarly, the effective group ID is copied to the saved set-group-ID.
 This copying takes place after any effective ID changes that occur
 because of the set-user-ID and set-group-ID mode bits.
 .PP
-The process's real UID and real GID, as well its supplementary group IDs,
+The process's real UID and real GID, as well as its supplementary group IDs,
 are unchanged by a call to
 .BR execve ().
 .PP
-- 
2.31.1

