Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27C7D2E3593
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 10:46:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727017AbgL1Jpn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 04:45:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727013AbgL1Jpm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 04:45:42 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4121FC061795
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:02 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id n16so6702126wmc.0
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EVE02IXKpK76w3otWeVbNKE9gurBDo2/RBLoNAWgvfU=;
        b=OHmT3ua5CQUm3GHpTJzExmyDcTR7o1WGmgTgTz6tvFWe7MqheSuhJMbVhrI1Gf9inX
         /k0RFDDCEbBShilCI5Q4QCMdoz2CHgdxbFcMNQsIk7BKcONghV3vPgMvZEnOmSuy7Ji0
         FwT3OQQ31RcWtBwVAKUAp2KlYrAaC/q7P+JuVeDOLHvhZrXYrpwkCJSW/jw/lv38P6ED
         3LHJW2wEs8DfgfekICBI68w17EaBmW+jHkS7m0sIApgsc9JfgH6Orfl4L5dGiMl/W3Fg
         k6jewaetZSYr5/Cp34u+C6zcNDkK0yhu1QNagJFuu97E/t/L+lmRTp5WFkU/RnHFPAZ0
         E8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EVE02IXKpK76w3otWeVbNKE9gurBDo2/RBLoNAWgvfU=;
        b=Yzdx7D5mUR20cM0qkA800st8RXK+KB323XMWbqs5BRN8+wGgrq9d5fRD7DBKSb1/DH
         uLaxWdg573P/dF0yNWhGQkx5hNypbWhQQ7F8t+tMIUK6E5AmVxCEhkZLb3jBoLzKjfNd
         hgyZtKkj2JNPb029Uc8G9Yn0g67KBkC2hrFC9si3X9jOxeB4o2THzlaFGlQ8mlZ9uf4F
         ws2CpMyIySeJWidrcGPJGHff4dbE7OzK6sFBqGdqHv0xS6Dih1laOjslTBlMw0f0bIGP
         cCJdRe5wK+4ZTWA76om+ZbXMe+hT4WpB6zepjDUojBPy0ikcspft00DU5GlnKqclh1kO
         YHEA==
X-Gm-Message-State: AOAM5328PXINhqWCgCGU3ccSc4sgqlJCQkgcBOTUp+YHbO3TvlSXHKCS
        lKx8BZhqPGRzVz8H/QnNUg4=
X-Google-Smtp-Source: ABdhPJwJd6yBiMYxWTjP97zNXST9is4SQ+EINivrcyMelT6BV2sOPkfZJUWR90VZZcU7B9ZBbJ0+Hg==
X-Received: by 2002:a1c:1d08:: with SMTP id d8mr20144041wmd.159.1609148701106;
        Mon, 28 Dec 2020 01:45:01 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c6sm32119165wrh.7.2020.12.28.01.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Dec 2020 01:45:00 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: [PATCH 2/4] cgroups.7: tfix
Date:   Mon, 28 Dec 2020 10:42:11 +0100
Message-Id: <20201228094211.4917-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201228094211.4917-1-alx.manpages@gmail.com>
References: <20201228094211.4917-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/cgroups.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 0d525d91f..f6e7a8d8f 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1123,7 +1123,7 @@ mount \-t cgroup2 \-o remount,nsdelegate \e
 .EE
 .in
 .\"
-.\" ALternatively, we could boot the kernel with the options:
+.\" Alternatively, we could boot the kernel with the options:
 .\"
 .\"    cgroup_no_v1=all systemd.legacy_systemd_cgroup_controller
 .\"
-- 
2.29.2

