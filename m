Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D27452916CA
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 11:49:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726182AbgJRJt1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 05:49:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725320AbgJRJt1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 05:49:27 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E176C061755
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 02:49:26 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id p15so7448998wmi.4
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 02:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PwyMLdGFZV0DcbLRaA7ceJBfZZ39UAFEInfdbAgwh+k=;
        b=jCJMdw/FE6XoAcTtRjcc3u9RgK1vuJ8fptvEkiEdrddDpaqeke3rwOjikRs9ANvxXb
         ZuIsaBPbE9ceOy+tQ8xzDPFdgztJrBPy7vGjpyEIaReSHviAoGZpTf67Bse4ziyprk5c
         +ZcQR/J8Sqarc7oiIzMHjomZxXja+8RI7HVGUBjHLZxjz1cGFc8yMo6q/K6FD0VEZsVV
         C7yFygIbA+E06pzBhlVuILQ04V2dYU0NdXirjBbYFd6rNTCPdH4lY204H6PK2RwYGQ4u
         TPenOVir0QQNHt065cHJ9TEBenb2K8z/XNep/8QmSPvEsB6bTPCnnCoAr34S30xmGDWZ
         YShw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PwyMLdGFZV0DcbLRaA7ceJBfZZ39UAFEInfdbAgwh+k=;
        b=ckHUgqbg2GSIgEwsP7SIkye7Xed16xF4rBeTO3WwgvZJJckcSdro69lJJ40+99WLRk
         edOgVVSIfWdLRcLQz4vaBiWHYIXAS/7Tu3cdycoREgUqhhGezXEd91FwVfQcxoZidQCy
         9IBn3OoZmAXOX0VR5rKhhfD/Fc78kpdULn440jDZtVW8TF0ji6y3jEttTliAp4PWbvE3
         4t8lxAZnRR81CrS1XZ3qZckTsxJNK0Q9fZh7xj3ekGdl7IEHogQNOxXzGcZVJK30J8fy
         UuHIrbf6S0NdGuHdC6S5Hmw+t77ZfgEihJ2vNVymKN2Q7Grb6VxWGtcZ2aoO4dKpVWRL
         mpwQ==
X-Gm-Message-State: AOAM5310kgNny0Dmynb7WNcmiJydiT08M9Sek1YL47PtJKoDklZ/RRTC
        TqU2uQyqfYBwoH0GR6M2nY4=
X-Google-Smtp-Source: ABdhPJy9rwvV+sw6jRJpS8UM3hgvC3rETAvNvWs2Pb/U+hX8yjSeqhPTyLhppea6j9DLFP0SD12KzQ==
X-Received: by 2002:a1c:67c5:: with SMTP id b188mr11913250wmc.164.1603014565146;
        Sun, 18 Oct 2020 02:49:25 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id a127sm12075076wmh.13.2020.10.18.02.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 02:49:24 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v2 2/3] system_data_types.7: Add 'clock_t'
Date:   Sun, 18 Oct 2020 11:49:17 +0200
Message-Id: <20201018094917.9293-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 8a894b2e0..abc456f0b 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -85,6 +85,31 @@ See also:
 .BR aio_write (3),
 .BR lio_listio (3)
 .RE
+.\"------------------------------------- clock_t ----------------------/
+.TP
+.I clock_t
+.RS
+Include:
+.I <time.h>
+or
+.IR <sys/types.h> .
+Alternatively,
+.IR <sys/time.h> .
+.PP
+Used for system time in clock ticks or
+.B CLOCKS_PER_SEC
+(defined in
+.IR <time.h> ).
+According to POSIX,
+it shall be an integer type or a real-floating type.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+See also:
+.BR times (2),
+.BR clock (3)
+.RE
 .\"------------------------------------- div_t ------------------------/
 .TP
 .I div_t
-- 
2.28.0

