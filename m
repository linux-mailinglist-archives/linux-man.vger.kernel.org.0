Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A8E529448D
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409936AbgJTVbv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVbv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:51 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A38DEC0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:50 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s9so4468117wro.8
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KBmDSg7Kmagr47rya0Pnkx9S4aBnm/Fm6xh1MWNJ6UE=;
        b=UiiAnFjtZi11MPBaGUxapQFVjymE8KDzWb7CWIYIwj9nLX276oYdXPQAwrLZRVYeM6
         koSjSpAQh1ikMU6oYHd/B1ZQFqX0HdhjpNTLI7BTL948pCctuQQMb9nfZ4WcmTzQ7Y/J
         /fQ5/rJDCxawqHr8weQMyflUFUJGkMCVgp39B7Ui4ho76eseEj0lRcKfhfFff4sCSwUb
         r8ZHQpxIFONR2qytn2mNtmk4bGK3T0W3mHWexLk+UtwMSmBOagvQjF3Bt1p01Z1eT4K5
         eVNMwrA0xBG6ly4DUBf6MNnrEyWr+JXC1EnOX7uh7YG5aw/GP59DmLAInBghyV1S6hIn
         caaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KBmDSg7Kmagr47rya0Pnkx9S4aBnm/Fm6xh1MWNJ6UE=;
        b=PfU9AL2ubbVJQFcEeDBycXFCyrR9QMQ7+Yz7gJHTHCGRXmH7StsUXfAsal70fgkGW6
         +rNgS18TWZFapEecl/OOJUG2ZoSlrh3qrkFouA0Xb4Xn8nTSjgsOOmVuvoxFS/c59iIR
         AN8yd2DzgkCShWjjk9D0uufZf4V3TB3Jg3fp6KjP/lBU6wF/FZcCNfcr8qwbTO6Pm2+M
         m9UgtjTfl/0OvtkQ9ugmzHAgEheGGtXu7NcKHdA55j5WcJXisriwNoKNT6Iu0dW/ocoU
         4hq0OuDj1Rx1hmLrit81cFtWQuvpEPUk8OLlzM22TMKnSa5q9yGsOKN9TLDYUxwrjWa9
         /TZg==
X-Gm-Message-State: AOAM532tPcd0HKNAL9nJ8aOYqUxoTKBTEDcs6SJ9u8J95qgIukQBdhPm
        s4bVXeWy2i+RWMSws1wi4/8RT2ue/ag=
X-Google-Smtp-Source: ABdhPJyO7rvliCAnjEdV815+21dv6uwuIVHR9Igmng9ApoVUtK1S4bjv+Q/uwd58+mbEd6Acl0ejeQ==
X-Received: by 2002:a5d:6551:: with SMTP id z17mr392623wrv.266.1603229509428;
        Tue, 20 Oct 2020 14:31:49 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:48 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 01/10] list.3: New page that will hold the (list) contents of queue.3
Date:   Tue, 20 Oct 2020 23:30:59 +0200
Message-Id: <20201020213107.83837-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 man3/list.3

diff --git a/man3/list.3 b/man3/list.3
new file mode 100644
index 000000000..127c391f1
--- /dev/null
+++ b/man3/list.3
@@ -0,0 +1,40 @@
+.\" Copyright (c) 1993
+.\"	The Regents of the University of California.  All rights reserved.
+.\" and Copyright (c) 2020 by Alejandro Colomar <colomar.6.4.3@gmail.com>
+.\"
+.\" %%%LICENSE_START(BSD_3_CLAUSE_UCB)
+.\" Redistribution and use in source and binary forms, with or without
+.\" modification, are permitted provided that the following conditions
+.\" are met:
+.\" 1. Redistributions of source code must retain the above copyright
+.\"    notice, this list of conditions and the following disclaimer.
+.\" 2. Redistributions in binary form must reproduce the above copyright
+.\"    notice, this list of conditions and the following disclaimer in the
+.\"    documentation and/or other materials provided with the distribution.
+.\" 3. Neither the name of the University nor the names of its contributors
+.\"    may be used to endorse or promote products derived from this software
+.\"    without specific prior written permission.
+.\"
+.\" THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
+.\" ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+.\" IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+.\" ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
+.\" FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+.\" DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+.\" OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+.\" HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+.\" LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+.\" OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+.\" SUCH DAMAGE.
+.\" %%%LICENSE_END
+.\"
+.\"
+.TH LIST 3 2020-10-19 "GNU" "Linux Programmer's Manual"
+.SH NAME
+.SH SYNOPSIS
+.SH DESCRIPTION
+.SH RETURN VALUE
+.SH CONFORMING TO
+.SH BUGS
+.SH EXAMPLES
+.SH SEE ALSO
-- 
2.28.0

