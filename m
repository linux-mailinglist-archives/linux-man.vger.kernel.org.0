Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D38163A4DA1
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231133AbhFLIeR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231153AbhFLIeQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:16 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01535C0613A4
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:06 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id f16-20020a05600c1550b02901b00c1be4abso9938016wmg.2
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kkczIYnA90VryG3PyEAfN3jH2/oClph23cXO7JThEXE=;
        b=veSi5ar0XGnW44GaB18KHR7nPUTSIEzkevIfIxB8+t1eAKb9DN7sjG1zarC8tObvUt
         WdLRF6Pl1qMv1kQ6EHyQZ/uffAERWJAwx1q2u4HFhCiA0c3BgKM/4Rbt2IFVV99Ixpgl
         vEJ8tNo1qUEC0kLPhkoU9Je5etPaMDbD8bQpcuHNlVVlRx0uW7kF2zMCdazlDc0nKq1i
         6lfB/Gf2PR4G5+o/UlYhOtNNrAaeVHcqXeMM5I750FfMv7X/CQycCuTSmJNkwVwLFyY1
         6bO/gsJI7aEf10NGeJ1f5H9zayfTtIMA/p1ljFBprT1vIy5jAyOSdNeJuP4+4tHA4H+t
         XnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kkczIYnA90VryG3PyEAfN3jH2/oClph23cXO7JThEXE=;
        b=coW+7pB6jxqdeFSnvSYqeaHqTsvvMSISZMNqz/UFk88ApKzI2ujXs850IwgxnInbtM
         Wjc5e0OEGr+i7BmlzZzbuU9kNucmieEHaqCwq2Zof6AF9Kj98p+W4rmY8XcdfncIKodc
         cEXHhNVkygf3JxCVWfXIyY+uaIOJ+0OP/a/20cUbBmxxVRXY9iSoFc+nvrn0dt9z0Lxm
         KrpWHslnSF+t0IvezxpeV5WawmMMrGSPm1zuNjjguWca3mRmH0Pai/Y5lPcQBt1nRcVJ
         gPzcBDUmO1NFY2KEtDN9VM4xAqC+C2B9XDZwtHdKm6mTMj+blbXtLlxgWOcDW8nUu0em
         HPug==
X-Gm-Message-State: AOAM530+RKxf5WA2zg4TMJuyTb++HOrHlGJmGFwzfL62Cl+4qXqFGVsr
        Gs30ArzGLYRAdN1m87ABXak=
X-Google-Smtp-Source: ABdhPJzUm6LOvX6v1cVzW1fOFTDgnmbq+jpBYDkzRq80i7d/+3jLO96wDiEi2loCx8cCLjxYTlVUnA==
X-Received: by 2002:a05:600c:2298:: with SMTP id 24mr23206371wmf.173.1623486724575;
        Sat, 12 Jun 2021 01:32:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 24/28] utime.2: SYNOPSIS: Fix includes
Date:   Sat, 12 Jun 2021 10:31:41 +0200
Message-Id: <20210612083145.12485-25-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'struct utimbuf' is provided by <utime.h>.
There's no need for <sys/types.h>.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/utime.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/utime.2 b/man2/utime.2
index 4995cf3ce..55ea8fc27 100644
--- a/man2/utime.2
+++ b/man2/utime.2
@@ -33,7 +33,6 @@
 utime, utimes \- change file last access and modification times
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <utime.h>
 .PP
 .BI "int utime(const char *" filename ", const struct utimbuf *" times );
-- 
2.32.0

