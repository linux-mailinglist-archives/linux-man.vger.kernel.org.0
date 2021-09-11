Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CBCC40795E
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230489AbhIKQDJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:09 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FD9BC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:56 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id q11so7343062wrr.9
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wC1oVvwTOEwQ+H3ALKxk2LLsVGFG+jk07/5/0+aaAIU=;
        b=TXv4KipgTiJgGD1E7N+n1GDIkBTFlIDoRWCklXR/y/1QxzM9xc2Q/9a5cLQGQokdma
         B73TqRRKcCGIHRlSXsv4rXdmlwLVMrda100MvgPaM9FafmFlPXwcAr6EkRZDXUaU9BwR
         qkl2o4/ZtN+64uxh9Z43HlYZGpWsRKHc1FO9PtCeviEnEhKiuh+SKEGGCwHhcFUpW0qa
         InGWqc9FUbzyYgrDo/ppoSf/+uixgnOKzccE7kzDf4ALgKcuBYH3PbTRCXCoUY/teGBe
         sXEq+wWZyQyA2hgu4FS2HrVxUZ5lRemQoD7IThxB9mKYsr7qa+CVYZnk30zULWA5lDDM
         Ocsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wC1oVvwTOEwQ+H3ALKxk2LLsVGFG+jk07/5/0+aaAIU=;
        b=fiQe9XDJDTodzW8NvhpmZvkcWROOc8J3wowuF27rzNFrwKSa/yIQIlCfy4g8FzRrFb
         SAmvWgegADmg6GOf8OkxhwFECM0yu0Rqk5j442ToC8F0Ph6MHX7VrXhgtYH6m8Yc+tCP
         sKagCLWNZr1QNLoPNUOw3F5wlPv9wL5UcFi/cdV24bThJl12uDvesbFbY6WUXRLEVB46
         cRpKXOOuA6EamTq+USb5zHyzzFbicKu0EKgwcLTkOTPE1td+cVffZSZ+xQSNXX0N8UsT
         ajEOBgI3llgDdD1NnAZD2hgKh1QxilPHGh8RCq7SvT3MsNAAuHqo64mfIPu8B9qlrgKy
         0vXA==
X-Gm-Message-State: AOAM530bbJIWHLuEuZBikMfmQ7T1S9CxvfjEA0YHfK3cQ+4W5lL90+90
        yEpeGKOpiFSCgDvEgEkIjvI=
X-Google-Smtp-Source: ABdhPJyKBalqQQ33iVU68m228NDLcwafWoII0ipnDnnQ7N2bsqx3M+GwkId8FUqduGtwiUlED15Zrw==
X-Received: by 2002:a05:6000:1627:: with SMTP id v7mr3727887wrb.347.1631376114976;
        Sat, 11 Sep 2021 09:01:54 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 31/45] sysinfo.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:03 +0200
Message-Id: <20210911160117.552617-31-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sysinfo.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/sysinfo.2 b/man2/sysinfo.2
index a45211cd3..09e02bec2 100644
--- a/man2/sysinfo.2
+++ b/man2/sysinfo.2
@@ -35,6 +35,9 @@
 .TH SYSINFO 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 sysinfo \- return system information
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/sysinfo.h>
-- 
2.33.0

