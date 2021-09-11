Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3348407964
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232926AbhIKQDP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbhIKQDO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:14 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF38AC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:01 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id q26so7349436wrc.7
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ncTCd4x7dgJnw+nKWH9NFxjuqq0HGxzv7WXoWf/jA7U=;
        b=NhCbKMjthi2e3ryFIoLtIqREGk79domjF2lxrp6JjWOgPf6ktC8fDZ/70ieh4o5FNU
         /lVuOVq8ImZEMTpce0F/R76T/SfoY6B7GVLNaxLGeEupVo7k3s7Fa8kp7bzwCmmnC6sc
         O8/YVpAlBsIse5ObxbjIBjmLAAYa31i/yt79YsARB3Nj986slajlMa9pOw6OdiSwWFLy
         ZxfA/rfI8PrYALvInnqpSyMVqwqq8/WIPdvZuDRIMoBpxIRQpJkBoNGk5+n0Zl2kEBae
         yhu/NPySgYAWAyPTemHpSqGBX9u1z4qA4XXHiZo6XypjOjKtBjhPui6XsMbB7NVW4hqt
         M+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ncTCd4x7dgJnw+nKWH9NFxjuqq0HGxzv7WXoWf/jA7U=;
        b=FuTGmYlhSnsokqmH17OL3ZAAw9yA2/T8LupU6czlzLqe6/vqgMTcHY2XU/g/rmzENh
         xVKRRXNWlfYJy9ulmvVW0DBuaueMaN26k3ugkIcgbCOf+az3cUijNgqtl4OCmd7cAzKd
         0pxE9FMv7g/L+Zu9cJu1JR28QqfBZk6abUlTP9raMXSvq/ppzK5s+egRoxnHOLpl3P4U
         YqbbbYaUBqarSAh6gPzKZ1sPglG/2g+xhwE/+/xVIKuJjm6up3wun1sJbEepwu43C+v9
         R55jnO4kF64KxIvzEXaraLLDx+eJEql7xvGVwDeGrUYkxecQ9jlUg1FlvrP3T4XdZ67i
         s/8Q==
X-Gm-Message-State: AOAM533h0Am4VCsSGXO0Tz0QiA+ROavcG3eMvrU7F73TqD1fH9siHtCs
        bGN5LrZ697ZtGuQ7YCBgYrS+kJwN+nI=
X-Google-Smtp-Source: ABdhPJweAO7m2KxWc7+ybCtkGuh8YAyyDp7r8pTL7fjrKqan8XwFcQ6Rku7afgQN69jyP0nQoflHyg==
X-Received: by 2002:adf:d1b2:: with SMTP id w18mr3831239wrc.6.1631376120375;
        Sat, 11 Sep 2021 09:02:00 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 37/45] subpage_prot.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:09 +0200
Message-Id: <20210911160117.552617-37-alx.manpages@gmail.com>
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
 man2/subpage_prot.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/subpage_prot.2 b/man2/subpage_prot.2
index 91bb789e1..f379a6297 100644
--- a/man2/subpage_prot.2
+++ b/man2/subpage_prot.2
@@ -30,6 +30,9 @@
 .TH SUBPAGE_PROT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 subpage_prot \- define a subpage protection for an address range
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
-- 
2.33.0

