Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7431E297F62
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762415AbgJXWVe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733077AbgJXWVe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:34 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C971C0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:34 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e2so7540806wme.1
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HjvCx2e/7A28z0uiBEe7XWSO5YXKC+43pQS6Qk0ebH8=;
        b=oi761MiidoSsuB8jWef2MyeUcHFywhrqeaO1q4nIDqQuYt3qrHPHlEUy+B3QXlB+0a
         Gzkgp01PUFkj30oDEJYFxpujff0AIPS7rkmzCKXZCd4Y8f4BrdYykbpRtKm4c3HglWJS
         6429qjEcB7K2sQC60ZNiB1eD/Twpn5XAWfO9JifUgjjkpo9ErtV6KL9SS0AI4ZZHGbQ1
         CJHnqWa8E15Wo/1dgV/wZ5di1/djGc0o1bosts+DykgOPCfzMovZzPT0jgohxuzCgJmL
         cyQ9wIES/Y0k4+i7Siv2h1Nz31/5cdR1A1iw/KmIU9DnYlnhtjysPkoahO2VM1cb2pkf
         9Qmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HjvCx2e/7A28z0uiBEe7XWSO5YXKC+43pQS6Qk0ebH8=;
        b=d+8bK8uqFEVb1c5nU3yrPAb2hbP095/aDOloi4M/fVz2PfbiVC0Q5G/0ZKvtwlZ3wP
         f6y8muCODst8l4GvmEBbUSjJHoSes6cmOfqcOlBi7H/mb2RL93a4LtS9ozQKJW0mR3n3
         hVeI1oHEo8IwMjIaNFjVlDGzDsamUJ9w0KYmbM7AywYBXCpuLp4/G3NmWtFSNOrxy5bG
         l0K+ku6KOrndLY9jOlnSh0ML6u5Ahf/y2pfwR93LfxuJxb7XrCc365P9zXUynXcT4jSk
         cBHQck58ELAKpzT5MwJuuZlV08eYS+7RjsBVWOa4tqZwiDuy7oV0cr5ruzWTSvBIBKA8
         Q1Bw==
X-Gm-Message-State: AOAM533u4jgxXKNhQf8fSHygudDdK21Yj3MCcgq1CJIhTjy00utGS/gb
        /kazsg/2Nosg2lCEWj3oBzaYWvpi/r0=
X-Google-Smtp-Source: ABdhPJywxySOXT7fG+989j/yHF197iEq9BJmVFKgOmc1JI6WjlJyKEvpwhQGHXeL9EKRC4koipA8cA==
X-Received: by 2002:a1c:7c12:: with SMTP id x18mr8942402wmc.107.1603578092796;
        Sat, 24 Oct 2020 15:21:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/8] stailq.3: New page that will hold the (stailq) contents of queue.3
Date:   Sun, 25 Oct 2020 00:21:09 +0200
Message-Id: <20201024222115.6362-2-colomar.6.4.3@gmail.com>
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
 man3/stailq.3 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 man3/stailq.3

diff --git a/man3/stailq.3 b/man3/stailq.3
new file mode 100644
index 000000000..39b693c01
--- /dev/null
+++ b/man3/stailq.3
@@ -0,0 +1,40 @@
+.\" Copyright (c) 1993
+.\"    The Regents of the University of California.  All rights reserved.
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
+.TH STAILQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
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

