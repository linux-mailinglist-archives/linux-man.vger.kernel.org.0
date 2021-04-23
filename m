Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CB3C368FE4
	for <lists+linux-man@lfdr.de>; Fri, 23 Apr 2021 11:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230374AbhDWJxz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Apr 2021 05:53:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234535AbhDWJxz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Apr 2021 05:53:55 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED6AC061574
        for <linux-man@vger.kernel.org>; Fri, 23 Apr 2021 02:53:18 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id y124-20020a1c32820000b029010c93864955so856347wmy.5
        for <linux-man@vger.kernel.org>; Fri, 23 Apr 2021 02:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EsHlQ1FfCRchJ/5sA+wgGbItVvxIi/TJ4dnJDFfS/UI=;
        b=eqWgOESytdlkKYw647oWi9dEI1KMHSSLV1Oq82Uw9Gts90jpZJKiiQM7Omre0zzCtN
         +gpfqTUX26dZTpmw/p1hI3tFgfsSr4c45nXE8BrU3O35G2y8I9iGWd8T7YYjtJys2W7V
         EilNUPdh4ZyvWtgRE1aYUdVW7nkKM/JegoO+knNh7khyb2OXyGdr8GOfRCJLqUCbsLmh
         uWMlUbzXBCmon3x3wj76ooBT6aB8AfO5iQlMVjqS/lUgcTFQh/zUQr0CVlKZdDXvxOSy
         d9AwQvis4X3GVBKXYlPTsKO+csPATErtGXThu5wyo0oEjVFmp6pOKxHUfhuou9BGjyqD
         4nYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EsHlQ1FfCRchJ/5sA+wgGbItVvxIi/TJ4dnJDFfS/UI=;
        b=NnvtnPV/gHWOjYBnfISjfVc+cyGp7rGBcE7X4JqgWrGqSMfLmCRiPPw4iZLSGPyKvH
         i4wetu/7QnxU0oA9Tm2OM0qq5RtEsGAxe9xZTgk31hwS0unzeUhJMOpAlHW9OosNv2zn
         gNQLFTCQCn4UhMPvPFdclTIhxnL/9fP23c9ItW6dWCYJopMvjDNn4PFMJLMt29rLPhSJ
         JN8sfSrDvrdl16YUZCKZcx0EuZHcEtjJCmb2QqsLDuZcUeT1vdmMcPAPusV7t0P2vCx7
         /1noativImlGhcq7pc5CJfwXe7YLSg1mLC+A3fjIWkInhyDdUkvzL32gwhKN/nDjiysY
         oJYw==
X-Gm-Message-State: AOAM531OM4Az+mVsQHWnIllU8VkL8DitcC/nSn/FFwJ3zaFuBzkuw2ta
        jU5gfPDkkV5iHzuM12USk+eoPjmMMFs=
X-Google-Smtp-Source: ABdhPJy9ejXL+ZSAxAeMADhZnUt7DNUGFahTEAMmpKeyT5yZVXG6HHdAu1nclWDV1eEUwodSqFVVYg==
X-Received: by 2002:a1c:c918:: with SMTP id f24mr3438509wmb.12.1619171597755;
        Fri, 23 Apr 2021 02:53:17 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id b14sm8629436wrf.75.2021.04.23.02.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 02:53:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] open_by_handle_at.2: Remove unused <sys/stat.h>
Date:   Fri, 23 Apr 2021 11:52:19 +0200
Message-Id: <20210423095218.18425-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

AFAICS, all types and constants used by these functions are
defined in <fcntl.h>.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/open_by_handle_at.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
index 4a4ddc34e..fa7add5cf 100644
--- a/man2/open_by_handle_at.2
+++ b/man2/open_by_handle_at.2
@@ -29,7 +29,6 @@ for a pathname and open file via a handle
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
-.B #include <sys/stat.h>
 .B #include <fcntl.h>
 .PP
 .BI "int name_to_handle_at(int " dirfd ", const char *" pathname ,
-- 
2.31.0

