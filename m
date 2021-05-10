Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 020D83796B1
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233310AbhEJR6R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233267AbhEJR6Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:16 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A66AC06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:10 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x5so17514688wrv.13
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I9/Zex4KFBxHU6v7JD9w1mddZfobMhd6SH7FU9B2OkM=;
        b=oE8NP2BBfxRDgnNFJblLv4OX1e+SOYgLqu/PPHiKGkdRkHfyTZtJataqQ5tcv8hB5Q
         +yOaSdEJIyDhmX+sMnJ3HSS/iSDKVPYTLJrwKVUoGCjv2ew6Vz+ik7sZZiMESZHPdb2Y
         LdOfWJ53shvtN8Np750xz+OMg0jSlMVp6PICnxHXLAxvw8MMXBPGQMbarss3BDqu5WL4
         WhSYWxq3r8a590vHaSI1c9LImbDt9Fzsnxkc3A3hqF+mJZp8507e9jkNAXj6+FmCdxKY
         zD7AFuuVrcp/jT4uKFTFRrjIyRJxbiSqG3Ika0/0SWifxRQ6CVqkFq82W4LENFG1H3sN
         sRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I9/Zex4KFBxHU6v7JD9w1mddZfobMhd6SH7FU9B2OkM=;
        b=XRfQxYh3lOpuJ1aHpfPv3ismulelPP006FAwupNvW8w2MKoZVjQcZ1xrFFFMqvSCWe
         sPime4u053RzYj+6ygOvwjwc5u7fdKpTxZBz/10HDEEEsM1UCzU941wUkV0temyVZV+5
         UtCF3QxXQfF3I7X26k1ZCSdb6JmQCDoiFYbWExXeoxK21fD7wl2EniUUku9HkS5GVr8q
         jj4OMSKCZaAlQ0Jsg/4p/Z2raSQFnXi2MXIxXuKB2AvHovbj22WRDYMysUNeWnV306Cr
         w9ymfjwqVwpi7DrMU93UP8u3yZyMneb9uWnNX5Yu3h0/2nzyA+3w2OM5A0RGbnWPmYrN
         1b6A==
X-Gm-Message-State: AOAM530QMAKUmawlpby40CguO6lPjo5fkEzqvIO47qzszh4Vpaq1lFao
        GkmcWDeWThFlHU061VfS6g8=
X-Google-Smtp-Source: ABdhPJxypu4eflsmd2m9gz19kerYYNCAYuGgBmfhcBXRTz/eUnt/pnxELEMIRmZCMPFLMKtpcfAPsQ==
X-Received: by 2002:a5d:5186:: with SMTP id k6mr32611661wrv.335.1620669429051;
        Mon, 10 May 2021 10:57:09 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 36/39] quotactl.2: Better detail why <xfs/xqm.h> is included
Date:   Mon, 10 May 2021 19:55:45 +0200
Message-Id: <20210510175546.28445-37-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/quotactl.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 63a493231..d22d8c584 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -30,7 +30,9 @@ quotactl \- manipulate disk quotas
 .SH SYNOPSIS
 .nf
 .B #include <sys/quota.h>
-.B #include <xfs/xqm.h> /* for XFS quotas */
+.BR "#include <xfs/xqm.h>" " /* Definition of " Q_X* " and " XFS_QUOTA_* \
+" constants"
+.RB    "                        (or " <linux/dqblk_xfs.h> "; see NOTES) */"
 .PP
 .BI "int quotactl(int " cmd ", const char *" special ", int " id \
 ", caddr_t " addr );
-- 
2.31.1

