Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65241297F64
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762422AbgJXWVf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762385AbgJXWVf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:35 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27891C0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:35 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id h5so7353099wrv.7
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mUUW+wYa46qzg0CoY4rCJLFtnsUso5kT4Jk5PKnKaco=;
        b=dIIpe95aUJn/s5qFhXLg7cAob0P9SPuKPKrAx9jFvKDtEcWVHU3nyKAntrUgxLUazS
         xRDcHww+VNKN5WUoOpJKip94r6bo6jX+xE/dre0b6SeclqFTojr0ted4pB7oGPZhnsh7
         GipTdbTvsjjAR5ClsCxWU6OshsW0TbLoBcP6gIq+/Vu+H/EaYMDUfm65UOS5iZ7SQUHg
         6qjjuxFzuFyD5GD5f8CcyzuIVivYdxfs3sIB8KXEm+l4Yp0LjRcK5O3H1E/MAhkQs9dK
         8JIG+GDhgCVro/ZmRihxRznMpoZVPzGoosMbBz/laWPHSKMKedc/E+nZhEVpJdXC9MeB
         6bGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mUUW+wYa46qzg0CoY4rCJLFtnsUso5kT4Jk5PKnKaco=;
        b=b11gmwyRIYFzJR+0chAZffR2M91/1cDOHaDZAD2Vv5KFexXJ5vBXxqfxfzzreju2kk
         I019qO9fYYEdvH636aEM3/TmYST3xVIv0ugLvwmk3DS6ZVKXgPM94vXQX5pcc1bcfe30
         dbtdhq9V2lNjiLneEnynaCPOOHBcLMZwpVcSK+BQSHArp5QMN9iwARf6ht+CWAu2f9KA
         N1ZC0mTwp8ayBII80AT/cUOPFbhf31NOrbrguMo2l4sgornXYA6m5LU3ZA7jH7XhK3fh
         2NMpssJzKFBwm+KHAGVy8Ogv6coEilw9Pue+IvcRt+3XIB1VTPcHoK5T3McMcWbHttP+
         uiLg==
X-Gm-Message-State: AOAM5315BNIEFhepesoApMfHAFvo1n3EUTlvMuRhjVmaWA9asDo8vlUc
        jeK17UlxEw4sddjJxpdtCyY=
X-Google-Smtp-Source: ABdhPJxH5661EmWoXKqLH7wLfZgyZ7yzLm5Lx07hD3w/oyKd8gNGxgQOnvyD9/gvRDK3DgUtPS/NXA==
X-Received: by 2002:adf:e88a:: with SMTP id d10mr10254223wrm.247.1603578093838;
        Sat, 24 Oct 2020 15:21:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/8] queue.3, stailq.3: NAME: Move code from queue.3 to stailq.3
Date:   Sun, 25 Oct 2020 00:21:10 +0200
Message-Id: <20201024222115.6362-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
References: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3  | 20 --------------------
 man3/stailq.3 | 20 ++++++++++++++++++++
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 0c57f8ef6..5b05c0d6e 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -34,26 +34,6 @@
 .Dt QUEUE 3
 .Os
 .Sh NAME
-.Nm STAILQ_CONCAT ,
-.Nm STAILQ_EMPTY ,
-.Nm STAILQ_ENTRY ,
-.Nm STAILQ_FIRST ,
-.Nm STAILQ_FOREACH ,
-.\" .Nm STAILQ_FOREACH_FROM ,
-.\" .Nm STAILQ_FOREACH_FROM_SAFE ,
-.\" .Nm STAILQ_FOREACH_SAFE ,
-.Nm STAILQ_HEAD ,
-.Nm STAILQ_HEAD_INITIALIZER ,
-.Nm STAILQ_INIT ,
-.Nm STAILQ_INSERT_AFTER ,
-.Nm STAILQ_INSERT_HEAD ,
-.Nm STAILQ_INSERT_TAIL ,
-.\" .Nm STAILQ_LAST ,
-.Nm STAILQ_NEXT ,
-.Nm STAILQ_REMOVE ,
-.\" .Nm STAILQ_REMOVE_AFTER ,
-.Nm STAILQ_REMOVE_HEAD ,
-.\" .Nm STAILQ_SWAP ,
 .Nm TAILQ_CONCAT ,
 .Nm TAILQ_EMPTY ,
 .Nm TAILQ_ENTRY ,
diff --git a/man3/stailq.3 b/man3/stailq.3
index 39b693c01..156f607cb 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -31,6 +31,26 @@
 .\"
 .TH STAILQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
+.Nm STAILQ_CONCAT ,
+.Nm STAILQ_EMPTY ,
+.Nm STAILQ_ENTRY ,
+.Nm STAILQ_FIRST ,
+.Nm STAILQ_FOREACH ,
+.\" .Nm STAILQ_FOREACH_FROM ,
+.\" .Nm STAILQ_FOREACH_FROM_SAFE ,
+.\" .Nm STAILQ_FOREACH_SAFE ,
+.Nm STAILQ_HEAD ,
+.Nm STAILQ_HEAD_INITIALIZER ,
+.Nm STAILQ_INIT ,
+.Nm STAILQ_INSERT_AFTER ,
+.Nm STAILQ_INSERT_HEAD ,
+.Nm STAILQ_INSERT_TAIL ,
+.\" .Nm STAILQ_LAST ,
+.Nm STAILQ_NEXT ,
+.Nm STAILQ_REMOVE ,
+.\" .Nm STAILQ_REMOVE_AFTER ,
+.Nm STAILQ_REMOVE_HEAD ,
+.\" .Nm STAILQ_SWAP ,
 .SH SYNOPSIS
 .SH DESCRIPTION
 .SH RETURN VALUE
-- 
2.28.0

