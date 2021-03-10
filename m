Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE64A3346D5
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233288AbhCJSch (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233410AbhCJScT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:19 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC57CC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:18 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id l12so24415739wry.2
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PXpkV+g7iYGeCC3Y9gXPCiNS2RX3vvaVvDMUhreMEns=;
        b=a2gebrbpWxwfNtlluI0/6bgrnIn01IE7qGbfOMfpYpZruPSE4iKorooGHo23eyPTpK
         TiwrdtB60ZhkMjNfEwxykQn6S2Ag/90iB7kP9kyy0njJkByoMIVQohwrCuVCd8hhsFkn
         2E0Oj9Ya2ai4nbJFJ5CHLjCSeXRp4R6uWFFZaidNfhH8Bcj66T0VxlDWFTmWCzx4y8TL
         414LHJTID0IHcBziT6+Oy2OOXznJr9DDm2Sh4k5pQ6brV2Ya+sBln5p5rP6GBmItBGEF
         Wmxe7173UwaeFi9RHT5ilOfxZ7FevMxcD4vaCCu2HcRRUOInFLD9pVf99bdsj+RISNS+
         mnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PXpkV+g7iYGeCC3Y9gXPCiNS2RX3vvaVvDMUhreMEns=;
        b=rN6B6RqTAi4pW0tZh4dz9vD8AoFON4cyimMQJh102GHV9XTSt/IIy7ORM6GX6KFUrd
         GNpt5IJdgGYrckFrhlUPWEaP7lvQwAQRGWcAFKyC7IwHndzytzKNkqbWquiiWogHnlEH
         I6D1jGLNWOVquz+kKbetUV6+TaScMtzNtYptB4Vj18EQ+tMPgpRBvYpEhVhn0KNXIkDH
         x1wkQz5qK6ORbx8mcRszQGYKZg8Ajp6bNMxNO2PW2KXv4JqUWksWmdbd76c6rRsc/a1g
         xv9SfAV6M316iePs6v0wKQBpe1fnLVMcFRN+JJjpKuZiVmN94iN0t3jTBEfrE8gZkH8I
         HcDA==
X-Gm-Message-State: AOAM530/GWrhZXnVAgLYvvtwxBCL79/d9yfN+nZc21e73twZ3kfJZQ6F
        vm1gHqyrGR7y28vy/bL9KqM=
X-Google-Smtp-Source: ABdhPJyU2mO3bp1TIPaNVwdo/e6f7sCw1ScejcDpIkct1yl+ose5Vs3ic+yoKhIisy0c5RuaBAv1ug==
X-Received: by 2002:a05:6000:1363:: with SMTP id q3mr4892827wrz.74.1615401137813;
        Wed, 10 Mar 2021 10:32:17 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:17 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 14/24] strftime.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:40 +0100
Message-Id: <20210310183149.194717-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strftime().
Let's use it here too.

.../glibc$ grep_glibc_prototype strftime
timezone/private.h:506:
size_t strftime(char *restrict, size_t, char const *restrict,
		struct tm const *restrict);
time/time.h:88:
extern size_t strftime (char *__restrict __s, size_t __maxsize,
			const char *__restrict __format,
			const struct tm *__restrict __tp) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strftime.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/strftime.3 b/man3/strftime.3
index e49465f29..6b14b7c5d 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -41,8 +41,9 @@ strftime \- format date and time
 .nf
 .B #include <time.h>
 .PP
-.BI "size_t strftime(char *" s ", size_t " max ", const char *" format ,
-.BI "                const struct tm *" tm );
+.BI "size_t strftime(char *restrict " s ", size_t " max ,
+.BI "                const char *restrict " format ,
+.BI "                const struct tm *restrict " tm );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

