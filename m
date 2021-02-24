Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D91F2324138
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235936AbhBXPoU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238370AbhBXOvW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:51:22 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7FC4C061A2B
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:09 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id n4so616902wmq.3
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8PxpJ+rfBL53ldw8W8IoVuPmNXT4c3Iy5W4jPx8gQxU=;
        b=u5TiLIgcd+x2mQ9jmBvTkdw8q1R6YZLKZ2qZTTomn6TodPaiilQdSOGbVFD89vg9jw
         JqBGEiLkjrKWJEyVlh65wt8LXYSP6CmapWFCimWiVYGBTDWln7xiTKWZVtyCQPNCkuso
         /hDyLDhqtRTHgNwNAkJ230OGuF5FgLwwYlbT78qG14uKNJrPO4S4TMYRfNsjFuSweMou
         xhF6IDNytMqitLG96h2jGIH7w7rxfXJDyZZ4he7kSrLwGtB5Edadwpm9/t6jerWsn4pC
         myUvkSkTwB51iqWxc6UAo/g4uXRLrNB11wevK/DGRNsk4iJUa63hLajJBRni1ykNEhRX
         YNRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8PxpJ+rfBL53ldw8W8IoVuPmNXT4c3Iy5W4jPx8gQxU=;
        b=FaBBpe3tSZTqKY1Wrb2nJmdETrwrpEYIq3pvy1p1PHwUmmb7WOMRG8wYsYHg92VS5/
         jFzbuD8heL9TYGcRscFYZB7q1XPQFkYjq2PyikjeWIue4fhUcOt7eOEOoTKaMjzLnoT0
         ao7wGmtDeRIaldlgNHECUNfEWcezo+6xJD0z08jOhj4T8l2iMMyRxqov2tdHWEyRwdBZ
         KmhyUvYxudDu5Q/cLkJnnWfuqjZqJZ+rL2U3m8r5nhIQk2YBKXz7dMScArpn4g5wYSN3
         h5I3fwJjiX5Aongl5JVRYr3egyxnhNCdE/dFrH6+5qdHq/Ag1NBO34sxSnPJ1UvZRXFh
         DGhg==
X-Gm-Message-State: AOAM533Zqbw/mTWXQkMxlHWyNs+fmf14/dSA8tSIPA95CnaxGRrkspHr
        GvzPdb+M/vnLLznX8+quDxc=
X-Google-Smtp-Source: ABdhPJwEUMZRJcYlWzEmPH6nZjfmB6IJAASAbGuzxCIPT+xn7WlfT31+08IMC5quJqxV2ivGfUCpfg==
X-Received: by 2002:a05:600c:3588:: with SMTP id p8mr4014008wmq.71.1614177848807;
        Wed, 24 Feb 2021 06:44:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:08 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 18/20] fputws.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:09 +0100
Message-Id: <20210224144310.140649-19-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in fputws().
Let's use it here too.

glibc:
=============================  fputws
wcsmbs/wchar.h:765:
int fputws (const wchar_t *restrict ws,
                   FILE *restrict stream);

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fputws.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/fputws.3 b/man3/fputws.3
index 604c96038..7269353f7 100644
--- a/man3/fputws.3
+++ b/man3/fputws.3
@@ -20,7 +20,7 @@ fputws \- write a wide-character string to a FILE stream
 .nf
 .B #include <wchar.h>
 .PP
-.BI "int fputws(const wchar_t *" ws ", FILE *" stream );
+.BI "int fputws(const wchar_t *restrict " ws ", FILE *restrict " stream );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

