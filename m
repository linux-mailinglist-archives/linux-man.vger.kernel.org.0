Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C05028857A
	for <lists+linux-man@lfdr.de>; Fri,  9 Oct 2020 10:44:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732555AbgJIIoe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Oct 2020 04:44:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730726AbgJIIoe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Oct 2020 04:44:34 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B16BC0613D2
        for <linux-man@vger.kernel.org>; Fri,  9 Oct 2020 01:44:32 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so9396972wrn.0
        for <linux-man@vger.kernel.org>; Fri, 09 Oct 2020 01:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a4EeSiIG/nTC5tKC6l0WmsgkJkOpvB1OkxE9bupstCU=;
        b=sBvH6q5k9jZ9SeS4FujI0Yplu7dEEhYrOc352bACkfcLqZvEA0lm8yvatFG1Qgipc+
         lJE3edI7KpNUB2dDRSM6fPC7qId6bxVfFssO4JTeEd1aEJPspSyed4EW3qYcNr3G0AvI
         zRvytAGJdK2rHyYWzB4UOB7yzP33DAZCgf+IprE6HDE3T4MvuwLM8szNYnhh/mAuPsmU
         1FjmH5Il/m2HgOZOac+fI8gWEHqpFZWfd55sI+60xRze/OZZg2fGNeNgarUQOIa5RhQ8
         fSHucyAB0OqwMIFEmtKs5frzQCX19qRKftZXHqIr8EFwkhiw3bp4WG8GZIE8ZSQh4HG5
         MpqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a4EeSiIG/nTC5tKC6l0WmsgkJkOpvB1OkxE9bupstCU=;
        b=EVy/O1MUtvpxewu1guA0K7t/wxbcTJ4at2p5f6e9S/DJjKHpPC+dfnfMK2UotbtxSc
         cciRXnZSY2YXh5LgiuG7OhdCubCFa0qReS3aZggMX4R4PQHZAHWopN3X+k782HPsKp1w
         +pdaDuqm2kERx7sYUW8whU4R4LKqS4cnX8w2nCPstjyGccWkaJaSRj06I+1D6MDVSbiZ
         jSsVUwF4s6HxaHbqnAGpQduE3VyrbQC6XI2ekG64QATgGSFnNphqGtp1731UEWe6UZAo
         26X470W6hEjBlZXdi0NfaDcW6WSqnnN/FudDH4KWaUEN1Kp+cezUlXeEYzep04/N7L+A
         KzPg==
X-Gm-Message-State: AOAM531aL47D9f6KZs/x3LZvdATiPAENm5w0rxkWL93RWHARgsqbqqsg
        p3Z7d+7fdHqybKwwaeyiou++eRp0EJU=
X-Google-Smtp-Source: ABdhPJzJHNRK+EDhGnKq5kP60zui0Sxfyjbi1pDd2q7rvOuQDv1km5ukp46NDIT5+u+sCsQTmYw0kQ==
X-Received: by 2002:adf:de91:: with SMTP id w17mr13495970wrl.84.1602233071291;
        Fri, 09 Oct 2020 01:44:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 76sm11175594wma.42.2020.10.09.01.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 01:44:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] system_data_types.7: Add 'fd_set'
Date:   Fri,  9 Oct 2020 10:42:44 +0200
Message-Id: <20201009084243.8153-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <CAKgNAki7jWqR3tKUMKRdpK_5gvG+N1RC+sZ_GrK6QO0UvD8SGA@mail.gmail.com>
References: <CAKgNAki7jWqR3tKUMKRdpK_5gvG+N1RC+sZ_GrK6QO0UvD8SGA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I found that POSIX defines the limit in a macro, so I used that.

Thanks,

Alex

 man7/system_data_types.7 | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index b0e0d2b48..a4a2e0ab8 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -151,6 +151,28 @@ See also the
 .I float_t
 type in this page.
 .RE
+.\"------------------------------------- fd_set -----------------------/
+.TP
+.I fd_set
+.RS
+Include:
+.IR <sys/select.h> .
+Alternatively,
+.IR <sys/time.h> .
+.PP
+A structure type that can represent a set of file descriptors.
+According to POSIX,
+the maximum number of file descriptors in an
+.I fd_set
+structure is the value of the macro
+.BR FD_SETSIZE .
+.PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
+See also:
+.BR select (2)
+.RE
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-- 
2.28.0

