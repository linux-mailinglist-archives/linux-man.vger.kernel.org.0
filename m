Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C01FD2971CB
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465406AbgJWO6a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S461220AbgJWO63 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:29 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8334BC0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:29 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id n6so2199154wrm.13
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I4GBOQjaVhD75Exb6QmsiQBW4MgIv6qoblY2y+r03Go=;
        b=FTSpJjxyPlqxDeVmrx4IGBE6AvW2yLGln5JG8RzdpGIvsdBAHY6kKGiPrkkZeKYrNq
         QoNqvjZjAiSnBf281e4DpmgMXfSVOOVCglmjpm7HS1XyWdiZ/IvHRhiZQ7R2+Fpfg2mC
         UuGFIWFVbXe/CO/ou3B6Ir+PLfG/gdAYyQUGY67oXjVsk0VoeO1NroZvWjqRJaXQPHf7
         fj312w0RtrnNdAZVclcS4cbtTbLNFtBcz55lMnoNMP5ifHe35PO1v4EnqwUdP/XPfaj+
         Yoybg19LauW6tB4H7Qe181zWORTFvZgRmguA3mzE2jg1RiCiT4Wy4/txfzbrsI+U1dL6
         Ynnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I4GBOQjaVhD75Exb6QmsiQBW4MgIv6qoblY2y+r03Go=;
        b=kly6OOMODtR20x8oaCa+wy3hlSofeOkBIF9chzeaXq5anDhnTJHq7L8ZODLdCctxkn
         anRJ3Kbg3XCbmOR8I00iJAP9S1Hz2EGtFWk3qXqBxyQI+F4bF70Xh+9FOHAqWTXjsNEL
         s1M8wuxheXo9X5F7lT/TQT9KLrPmqdQT8XFWfdzwpMeC5SGC5hfQfjenyW9a/++w7/pv
         Ibna1oEVWPUfjNe/wreG0+wtTjf0uFBi/sP/vXPDNJL5fboYTBSWpQ7Z8NmwB8be2dyx
         qzLf3M4cJ3iB/fb/onH7snCrhhjHbc5dIe9yxZp2A8if0el4q2IWF9wZ26X77gLbloh9
         w8Tw==
X-Gm-Message-State: AOAM5319+XSIlu8iw3gGqmVsoNuT85FPAF4lXq5S050jTnBJc09R62p6
        toQFe+v0vsKSD2Nmbc627O4=
X-Google-Smtp-Source: ABdhPJyO6rKlDqKgaRkrowAAAhqas27jcfjB5lgYFagJ7TuJJTRLbbjEku79UfWY99Ui0FivWSPDRA==
X-Received: by 2002:adf:a557:: with SMTP id j23mr3195102wrb.95.1603465108205;
        Fri, 23 Oct 2020 07:58:28 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:27 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/11] circleq.3: New page that will hold the (circleq) content of queue.3
Date:   Fri, 23 Oct 2020 16:57:27 +0200
Message-Id: <20201023145736.102750-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
References: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/circleq.3 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 man3/circleq.3

diff --git a/man3/circleq.3 b/man3/circleq.3
new file mode 100644
index 000000000..39920948a
--- /dev/null
+++ b/man3/circleq.3
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
+.TH CIRCLEQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
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

