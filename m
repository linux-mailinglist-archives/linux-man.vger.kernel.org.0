Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF5B42914D3
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 23:39:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439810AbgJQViV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 17:38:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439530AbgJQViU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 17:38:20 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12CF4C0613CE
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 14:38:20 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id t9so7234255wrq.11
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 14:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kKAUeoB+cdfp4+NQD8qQL9T1YCqT3DEF4Z3WHUFmPmA=;
        b=i7t7kGamgjZJIDyIk0z12bIcj4o5is5y6gwVFosniLVOF3HQAKsY5MDhjx+HclUkGT
         O4yfao4Td7P0gNM9zoKzHS7vrhvknAiLsDkvBr93wueybEBJa8gpiFFUGWlqF9dfRN8r
         3LuzbldNC/1qWxcxKWkbKq10YYLj8VzHgNmQvRaw44gaCnBwyDiu+4rVUafI5J6ba/YK
         rWLSFq9qEBOi9PzEUbYzasMJNIEzeisUtzxjmCMIWMZH3C7qrcC08GvBqLHxviEgsxWZ
         yOYPPxO/KErORDdv/Z7FpakEK6qf2BklLoy94Fv/uvsfiZNgLlBqc0xCNKMpsBGlAhRf
         /uPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kKAUeoB+cdfp4+NQD8qQL9T1YCqT3DEF4Z3WHUFmPmA=;
        b=QSo/kJi2FWrfZcQ/Y/6klZmmHGp4F1hfg43wjn06slhWMMl5Q4yOj7iA7FldrhQSDC
         nHkka+PzkJsArdfn9xUpfJcAA/kC847ByoHhSH9mE1zgrF9RhyTHsOLZrZqXbFdpNy8v
         yUu4IuOhMV1eJHTNjFQf7eNz6u+dGxuoE5WRaePQ4WffRmmaKbjxiX3U8T906q66xH+E
         qf925uvqfVP23Ww9uoC6yaR0L3cIT7tGchhk7rMjy7I8WwPAI+x8v26Hb7uRfg1AYcP4
         tItTN3ChQ5irpDYPpffAtl2NSaY9J3WJ6F7q6NgJ4Ru+K4Wr72DTvVWB7dXqy3gqvhkz
         TQDA==
X-Gm-Message-State: AOAM531FlfUoG42gwKLpNgNDtcL6Ig+yF/nLNNsKFFO+cyiThRuvl5i1
        ZpqV3KDgdD2ECWRszNCsODA=
X-Google-Smtp-Source: ABdhPJwDau49bzP0gsQ81loNUbobJq4hNHw2SgyejQod5dGWwB9e+fvWC1popr/F27PcGbQRJQWMrg==
X-Received: by 2002:adf:ba85:: with SMTP id p5mr12174203wrg.64.1602970698826;
        Sat, 17 Oct 2020 14:38:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p21sm8975324wmc.28.2020.10.17.14.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 14:38:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/3] system_data_types.7: Add 'clock_t'
Date:   Sat, 17 Oct 2020 23:37:58 +0200
Message-Id: <20201017213758.9270-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

Does that dash (in "real-floating") need to be escaped?

In my terminal I see it correctly,
but I've seen you escaping some of them and don't know the reason why.

Should they be escaped always, or is it only sometimes, and when?

Thanks,

Alex


 man7/system_data_types.7 | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index dc5f65c0d..6a1442ccd 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -85,6 +85,28 @@ See also:
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
+Used for system time in clock ticks.
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

