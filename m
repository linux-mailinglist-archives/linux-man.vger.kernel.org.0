Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF8003796A1
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233271AbhEJR5z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233277AbhEJR5y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:54 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97784C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:49 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id o26-20020a1c4d1a0000b0290146e1feccdaso10139749wmh.0
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ETJ77+bejoPwoD6lkNuNZqttLCRQjA5SfjWzUUz/9BM=;
        b=kFnD3OOGtRboa9TGU/sJTOjYfpEOFnqOpAiXHWc0P+cIgUDMb8I5bO2nvfLsPLyhGS
         7bDdgOcL/DdCDPw+WPGAbOjns7Fn0O871kIkPXCojKPVuaYrXcbm2b/48YkncVawZEUv
         Ei712r2JLq6+nifT4DdCJf104xiuoylgEM2Y9rYiWhscC/Rk3It4PCFbp1jO8eJAptTO
         d9H09Bn48WUwKHBfXeOKHwqCIMEnIVIEon5BdPv/F4B1FMeQI2eQX0Pu/Jwt12mWblOq
         dWYch1iAd6jffCOo8PXJiD9eR2vp9UC5LEUEvWHh+RiQV4E26bmh+lXsAQcZS3ShgciZ
         h4cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ETJ77+bejoPwoD6lkNuNZqttLCRQjA5SfjWzUUz/9BM=;
        b=OkgzsVHK0tQ3/idVCSYpdArRPPG/1NB0B1Xg82BxVMHPlNlZI5cJU6NSaSkHMenBvr
         J4EJBuOe21mfY3rX02VGJ2gxn13hfKNZfuN7onfa0wV2rmX3F3BHfaugjjy6D3oAg7N6
         N2Gh/lKqnJ5TH8FvOjGdTjpT97iPcwLPPB4iIV36L0CvGoNJUZbJhwaCe5ecVDu2jSk4
         M00+NcQFembWO2wSVkZdcSQoXsf0+jnwDo9rqvvR6A5TvDJwWi3skD0LFAdEiZio/+G8
         C1oZo17TlLWRJT9kKrAJQe+ct/Wts/OpEVsueqkuee/eF9YGktKbLhd8yDHE15uz65kH
         TVYg==
X-Gm-Message-State: AOAM531vdT5RkfpRSRzZyytjVi2FAM6aCsnCd3WUq7fO+0b1wjYoTVC8
        LTUKJnI4SkNCt7+oaWpxCPc=
X-Google-Smtp-Source: ABdhPJw4tNQtEQq7+2aenuyy0/svazMHioQjrbTfLcwLBhQZHTxS1HztYI94LrRFV/32c4bzgZGn9g==
X-Received: by 2002:a05:600c:3796:: with SMTP id o22mr351281wmr.139.1620669408114;
        Mon, 10 May 2021 10:56:48 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 21/39] mknod.2: Remove unused includes
Date:   Mon, 10 May 2021 19:55:30 +0200
Message-Id: <20210510175546.28445-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

All of the constants used by mknod() are dfined in <sys/stat.h>.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/mknod.2 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man2/mknod.2 b/man2/mknod.2
index f20d4aa66..1de3cd027 100644
--- a/man2/mknod.2
+++ b/man2/mknod.2
@@ -18,8 +18,6 @@ mknod, mknodat \- create a special or ordinary file
 .SH SYNOPSIS
 .nf
 .B #include <sys/stat.h>
-.B #include <fcntl.h>
-.B #include <unistd.h>
 .PP
 .BI "int mknod(const char *" pathname ", mode_t " mode ", dev_t " dev );
 .PP
-- 
2.31.1

