Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B611E407951
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232960AbhIKQDA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233055AbhIKQC5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:57 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8B02C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:44 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n7-20020a05600c3b8700b002f8ca941d89so3462328wms.2
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZiN6IN0l5yFeOgTmGANeHDrYiIJrHUJjxHmB4/FD3yY=;
        b=V3krACOB1BD0DQGJEz4msoBcJZ7oZfYxEfVgV91p9L9fVNZh5DGqbSkaGEGL1RAmd9
         9MBn42Kkkk+eriuXGwwMpIdbokK3X0ECsFJYp2A5iFujhwSXI/3U6Uoyh57dKEO44mDZ
         1S28aKYVbwYzPv5XKx3PT56p2yGMpPKmbRRxE/jN5R8Zyec3XYIubde60HZf2zOpo9zQ
         QmFxd2eP7U8fEN0aMZ9+QFdjbtYgPAjq5ShtSXFTbJt3ZQ02dVg2Q4tDY0lqJoLPDqDr
         4Rn6gmAEfqNsPXP5U+ZgoNhWI6+P7B07G+TAludDddjNklmt7B1OJSkk51Ps7PeaOCUR
         7sUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZiN6IN0l5yFeOgTmGANeHDrYiIJrHUJjxHmB4/FD3yY=;
        b=l/cxMgMlOJBuWI3U7nG0TBbsSZfqdNyW537jadsT6bFtkN5H39C4nHc7PgUSW/pNik
         +jUmyJtPRPrJELsVs9ZNBR3BGhTozIkQCsl3d0iUGg2p4KFbDtoCK0DkXtkYW6VxeEin
         Uou4h4nI1LUIUnTMqE7+DCUuKz+i3yaD68ncZicUgQztKSgGwwOJthZxDRlH2EwQ72yx
         LZogQNilK6rVmJilkz1KCPYc6bid3EhztBvGJ+PWMV5TEIMeoi0zb4NXtQL0Ir3j0dLu
         TYT2E1Vj4+SaAi6A8xKs6rKKbQS56kVBnNR+uGAQKgQToWXgLjKz2qAcwiUc3HiB3yN9
         6gJw==
X-Gm-Message-State: AOAM530cw4hcdl7RD/GC8zzuh2zueWH6MogyUaBkop7/nML/2JsovEpy
        FiLGBF7zl3viMKJL08JoNho=
X-Google-Smtp-Source: ABdhPJyfvDndpqGJpFJIRImyNgbFoSsGvCtgctIUmNwaP+Pq5iU0DttUHUJPU0tSVccYp7tALKX5Zw==
X-Received: by 2002:a05:600c:19d1:: with SMTP id u17mr3239926wmq.21.1631376103331;
        Sat, 11 Sep 2021 09:01:43 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 17/45] uname.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:50 +0200
Message-Id: <20210911160117.552617-18-alx.manpages@gmail.com>
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
 man2/uname.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/uname.2 b/man2/uname.2
index 295eff294..2161354cb 100644
--- a/man2/uname.2
+++ b/man2/uname.2
@@ -27,6 +27,9 @@
 .TH UNAME 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 uname \- get name and information about current kernel
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/utsname.h>
-- 
2.33.0

