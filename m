Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C59E2293E82
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407984AbgJTOXX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407945AbgJTOXX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:23 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 075C1C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:23 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x7so2406094wrl.3
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KBmDSg7Kmagr47rya0Pnkx9S4aBnm/Fm6xh1MWNJ6UE=;
        b=Uzd8lqjsQKncCfU5jIOLzcahpPksn+x5PCmtrDcWAwPBA4jio4Mjel+ztCLx/QTMs8
         u0RTVlySmeEalXtmiU29UrvJa9CEsmhC3CzKR6iNlQF+aNMLROCj6HIqKNfQuPvE9gUr
         YPzUEtGUdY3WVSNmaQkSn6aSfx4P0kCqya01bGrayay9/tAPw8iEWDbgagHoL562jTzE
         NyKPUpsJmz0yCjvLOGZXi9QEf4tBn39P2sFT2f5eNthMgemf7Jl9KN2ZuHzOk0yNSVAy
         QtgvWOkzIv2mFDqPEXeylFx9L0IGL9saFTBKwax8P5kp/CSHVBkO/DmWjALybui7a++X
         ndUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KBmDSg7Kmagr47rya0Pnkx9S4aBnm/Fm6xh1MWNJ6UE=;
        b=SHHBtkzx4xxVSh+d9P6QV0bT+cUXiQkxJAs16yO6WHy9E2R4yYwuResiFjx/JsHxzM
         kL8b2EBhO8ybGh3lbApMb9mHsv8s9htwXN99MX0CuPwcA7BJ37IIzRK40toEXRYuisRv
         L6/+ETGl4HGqdjofNjuhM5EKo3XVqpCB+JjJLsciiNLDYNRelSXOTx/HDnTgD44tXTys
         GpNq1o+oBDoX+ctSxB0eJ1tZvtQH060lp4R+piTbiDuoEFnxrtPAVra4MFP0rJuLpvw0
         CQae6VgOICnnkDeurDOq/nkerdcZuUV+lkpcfvc2s93KmQ7gqfUWUhRT6sqgZZ9C5H0a
         ydQQ==
X-Gm-Message-State: AOAM532MN9BPHMEUOdpI++H6mVBQv3j59aOyWHCY27vexRbQNFChMfnx
        /AJJ+2UrwWy3fKeqVNCXRRo=
X-Google-Smtp-Source: ABdhPJx8tO8bgaIIyb5YlCu7ADXZcsqf1Jge2lMDiTD3euZCLXiXGYmae7+rAiXy/G/RAcZI5huROA==
X-Received: by 2002:adf:8405:: with SMTP id 5mr3994317wrf.143.1603203801680;
        Tue, 20 Oct 2020 07:23:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:21 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/22] list.3: New page that will hold the (list) contents of queue.3
Date:   Tue, 20 Oct 2020 16:21:26 +0200
Message-Id: <20201020142146.61837-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
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

