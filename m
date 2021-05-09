Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED0963778E4
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbhEIVpc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230039AbhEIVp0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:26 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D7DC061345
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:22 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id s8so14567862wrw.10
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LlTRiiy/gHyfWOCf176M3kCTWPjH6F0HXt8jC2mqsO4=;
        b=QY0oX8NF/4zwG+9F23/WSausOsX98iIscgVrqU/CkYbHzuaM+IaPfqSFC/ULgU7E61
         sH66U6Ms7WmqyohlV3qk28dBE3OtS+Q+CtxdgWJgtQdb5cioUc7v/AxQVwOE5zMuS6sr
         /tG8ywI7iGWsEJzwZec0v10YYA+cy1KmA0L0ZY2prF6m0hVkBlzUvJcR0pOxs2fO++wD
         /w2orO7pWOgDLTBcwVI+mYIL6aqzfr+fzGrz9jBZZs4MQ/vCQBZz1tfFifrcXtreAYXF
         n5mekitNBLvGKiiLIY1NGqlsWqvQT1k1LwQ3LPy/PNX4uxfhFqC4HRD0BRYxzJggWAxJ
         0+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LlTRiiy/gHyfWOCf176M3kCTWPjH6F0HXt8jC2mqsO4=;
        b=n7t00Tgj9WV9fye148eFhdMEtXxDrrRZqMHG4zCPVq+XgPchf31akCa7ytHRgZD/HZ
         XuhvMhHAI4aXm3h7LTYsY+QmofJUNiPQZVSfgD2b3BBtKSR9SZQNTtNxAA+3NzwFBT5N
         qOIZ7umf7pBuDTZSkfj6LJptvJgHCKu3nmy69Rg5DpqcF1EI8UWq7qRvIp2P12CT7F+d
         2Vb3LhWgFp6hzZw+PI5mypqkow0E60RCCoA7JOyLyazADXERO8O6FVebuY73VYHSsH7e
         B4+/GATjpu6L339ONC/9V3Z7bCHxeqKK1iljnNi4czK60iodgSAmkW/yYwONAFG7FxIW
         jJqQ==
X-Gm-Message-State: AOAM530/iMKTcM6PYUR+W4SJEduNXTSiwInqGF+C9fzVMCyZEShvKZ8H
        t3L+6jTdGFiAoBDMN06FcFU=
X-Google-Smtp-Source: ABdhPJywg/nZ2imcKmNWUKE7PUNEDzWnYIvZceSN8N/Jr8jKfG4YV7Qhyci0apfH/9ZXVsCqAEQA7w==
X-Received: by 2002:a5d:6302:: with SMTP id i2mr26898794wru.237.1620596660847;
        Sun, 09 May 2021 14:44:20 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:20 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] system_data_types.7: tfix
Date:   Sun,  9 May 2021 23:39:30 +0200
Message-Id: <20210509213930.94120-36-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Those pages didn't exist.  Fix the section number.
I noticed the typo thanks to the HTML pages on man7.org.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e038aab1e..ddabefd16 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -374,7 +374,7 @@ POSIX.1-2001 and later.
 .BR getegid (2),
 .BR getgroups (2),
 .BR getresgid (2),
-.BR getgrnam (2),
+.BR getgrnam (3),
 .BR credentials (7)
 .RE
 .\"------------------------------------- id_t -------------------------/
@@ -675,7 +675,7 @@ C11 and later; POSIX.1-2001 and later.
 .IR "See also" :
 .BR setlocale (3),
 .BR localeconv (3),
-.BR charsets (5),
+.BR charsets (7),
 .BR locale (7)
 .RE
 .\"------------------------------------- ldiv_t -----------------------/
@@ -1534,7 +1534,7 @@ POSIX.1-2001 and later.
 .BR getuid (2),
 .BR geteuid (2),
 .BR getresuid (2),
-.BR getpwnam (2),
+.BR getpwnam (3),
 .BR credentials (7)
 .RE
 .\"------------------------------------- uintmax_t --------------------/
-- 
2.31.1

