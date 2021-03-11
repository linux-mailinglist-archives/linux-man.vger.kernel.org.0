Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1F02338054
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbhCKWeP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbhCKWdv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:51 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC33C061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:51 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id o16so681418wrn.0
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z6vwUMWeUYWla4vOWWGgeWQONBlQ4FsYHC/qTO0bfL4=;
        b=eIAvjcG1uAlMV4Rwpn2R5StLEuAJKx0bQ98ixbhNNXB5NyOya8fmfH0wZvzQgdkiA7
         XVaq++kR8eChKGEhOzoLMdNwtf3QhPRvqiuRvQoBzFkMY7D7DGqIVtM1tZy7XEeyK8Y+
         5br7/Bqw8ZNjpypXxddyAiSZ7EVTf/CpTV31oS7cFh8DaXxzhByFF71IAva9ODQyAwPj
         1mHjMaPjJLo9DANpR+fpqgXq4FZ8vtMeOprtc7ZQvBnqJomIJ0cvw8PLXWfsYsoH0luZ
         gcET62qaK5YLgcYQce48ZVPl9wADvAUYV72XFWiRuR0wixUvVyVYsU/ZJnIAbuFjYxTW
         c/Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z6vwUMWeUYWla4vOWWGgeWQONBlQ4FsYHC/qTO0bfL4=;
        b=C7wNnpiKOtD1it5qyWlWAhic3mPx4kFFAImrjLC74HXoM24aFj7cWT83FHPjGRNNQ4
         cXrwKZcxBGo/5tZOGwqcESUUwOYetMa5JuyEUnQicYjm26JKpo/UqY65fMCaG1SdSqaF
         0HOpEnVtS/S1n7ViDy7XeoSTlOTs5LjQs4oJx43MbLiq0bhbSQvFerMwmUr04cDw5llE
         D0oaMQ3EvM1ti0C55u1GaHyeju1Uc9uNpAw/Soe+wS5X/6PUMfDvTfUJ4pSK0uxSVAkd
         vcX0PVcd8GgHweSaEamFqn8cw/Q8v+5b1k+6qQW73jFSTzYOB0cXYdzU8cpc/PnwWUmB
         e8xg==
X-Gm-Message-State: AOAM531SUOq8cb4x4FsDibW2S5Qa+pzt24iw0SmE83QnmKjko9RyjdIo
        7yWLRFnLKXN57NXPsgXXuak=
X-Google-Smtp-Source: ABdhPJyvWxQlnWFIKAzjWOnVKxElsR9QaHMGUyjD/mXy0CspwC8Nssv8uiDTNis5Lrkt9Ih8O/HuWQ==
X-Received: by 2002:adf:f148:: with SMTP id y8mr10705852wro.107.1615502030103;
        Thu, 11 Mar 2021 14:33:50 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/17] wcsncpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:23 +0100
Message-Id: <20210311223330.722437-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcsncpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcsncpy
wcsmbs/wchar.h:92:
extern wchar_t *wcsncpy (wchar_t *__restrict __dest,
			 const wchar_t *__restrict __src, size_t __n)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcsncpy.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/wcsncpy.3 b/man3/wcsncpy.3
index d5a02b8a6..b90908fe7 100644
--- a/man3/wcsncpy.3
+++ b/man3/wcsncpy.3
@@ -20,7 +20,9 @@ wcsncpy \- copy a fixed-size string of wide characters
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wcsncpy(wchar_t *" dest ", const wchar_t *" src ", size_t " n );
+.BI "wchar_t *wcsncpy(wchar_t *restrict " dest \
+", const wchar_t *restrict " src ,
+.BI "                 size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1

