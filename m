Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 194E932412C
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235781AbhBXPnf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237413AbhBXOtW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:49:22 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD3E8C0611C1
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:02 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id c7so2130850wru.8
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nxcmPcwQNRFgJWnS6gdvMXWN/PssKBRPaTxnX9sSgec=;
        b=BULOXpke7fUMOM1fIjnPjvqDhZ6XDfVQVX0/qNRauoxycoNXfDpLp89Kt5nsvDaksc
         4qAMDQCyC2TPipv4NX/xsATAaYx6ULivgYIFTgt3GwwIPsdNxQSQMcdUrG2VJKqUN6Ku
         0LwsOslhk6g12lchFIgeC7Gpxg/Pk7oHeT3NscyfYxY5Lr2eKfdOnPIXyH7tGKvFHYSm
         /sXYxXmuAd3/2jH10jaNg/gBTX3Jx81BtFTDyPQgmd3y+wTvrdRXB5P0FYntEPovvq7i
         TguQ5ah9csBbIie2NYsHXEIEC8Ot8ABhVCbmFkPkls1fSASm7JSEfiF3Rhm0WN2GlgSx
         qs4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nxcmPcwQNRFgJWnS6gdvMXWN/PssKBRPaTxnX9sSgec=;
        b=oocIZXe64y5BAwvW/j5biviDqAchUtH/C1FZ7D2rwGMy6fsM11r1cTOoOpUBruvjIz
         3op9BKTl0fzMDYBJak0GcyRXe6eha+J41ILYU/ibhQxMkwrtr4upoaQSp0wo1QI315+x
         h/mv/u6wwJ7Y4do0lbTg+JSNrNYTef+31E+WM2ZqV2FHR/EZLDrD1LWTSBJqMSm+2epq
         SxqBL+E0xHyk9gDgHHKGm+8h34LIb/1l6XHsu6F25tYpSD4iW6vgZzbl16FrogmMZP2q
         BZ5aAxkyXK0L539CTkSUzKGXfxQGK6VTSTTiwybY/QppkPdCQme3sWSR6qqd3l/bq0Gg
         L58A==
X-Gm-Message-State: AOAM531/z9M1z06DtrhROYjmuAK5T9MtE9muaBYRoozAKCX2CSxL4MtM
        peWhZiReaj1WIfbwP/8iIAuP3TdQsIbwBA==
X-Google-Smtp-Source: ABdhPJzLA+XSTEmwx3q0ANjzxkeYz6UczqjMtb6ouWCmWK040fqysBuAxO9bbjZur73SmAay4tz0OQ==
X-Received: by 2002:a5d:6b89:: with SMTP id n9mr31907553wrx.74.1614177841626;
        Wed, 24 Feb 2021 06:44:01 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:01 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 08/20] dlinfo.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:59 +0100
Message-Id: <20210224144310.140649-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for dlinfo().
Let's use it here too.

......

.../glibc$ grep_glibc_prototype dlinfo
dlfcn/dlfcn.h:123:
extern int dlinfo (void *__restrict __handle,
		   int __request, void *__restrict __arg)
     __THROW __nonnull ((1, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/dlinfo.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/dlinfo.3 b/man3/dlinfo.3
index 194f106ad..b75242f13 100644
--- a/man3/dlinfo.3
+++ b/man3/dlinfo.3
@@ -31,7 +31,8 @@ dlinfo \- obtain information about a dynamically loaded object
 .B #include <link.h>
 .B #include <dlfcn.h>
 .PP
-.BR "int dlinfo(void *" handle ", int " request ", void *" info );
+.BR "int dlinfo(void *restrict " handle ", int " request \
+", void *restrict " info );
 .PP
 Link with \fI\-ldl\fP.
 .fi
-- 
2.30.1.721.g45526154a5

