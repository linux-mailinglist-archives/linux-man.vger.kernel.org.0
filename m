Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 148056F5C6C
	for <lists+linux-man@lfdr.de>; Wed,  3 May 2023 19:04:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbjECREW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 May 2023 13:04:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229673AbjECREU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 May 2023 13:04:20 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 349507D86
        for <linux-man@vger.kernel.org>; Wed,  3 May 2023 10:03:59 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f4000ec6ecso7470925e9.0
        for <linux-man@vger.kernel.org>; Wed, 03 May 2023 10:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683133437; x=1685725437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ECoV9P+4bIyog+Pt+n+aXpwYShXRr/95Ur8fH6Em1dg=;
        b=Zr9Ym5iq7po8HpI0atqvgvHB6T4a9cwWpvE8AGZtrVgSvA2ZapgHC4N2EtzfgFtQyl
         RYiDY7Zkl8OU4od9hkBv5JQMRcP1FPtOBJigTpd3qU4fSCK7KWbsozWHn54TgmY8p5Vm
         dPSQGB7mHABX8czcUvrFpgyIt6Q8YhYIVxkIQy1BmJ0YyzAKXlURc0zjCYidyKrQOiSQ
         uyxEk32YDmx3o4dp8FzjAPgj/pkfrmcgjTb54kqihllr9cIkm5AzzL5tIjZEHeRkBiXx
         +4U4QxaCdTOqhtbOMYUp3vylDTZ5lZ2JtXG2DVcm6GRxstAjSAUpVcu1XxN4MQ1EnDel
         03uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683133437; x=1685725437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ECoV9P+4bIyog+Pt+n+aXpwYShXRr/95Ur8fH6Em1dg=;
        b=bhADhDGSL+iK60KmM7B5QskBAL0ycBrAtu3I7UPAtlZOT35rSVeIzbtg66Jf/Tmcks
         stqHvj5JL9SNwG64/87fF6fEVOrb483xbBXLLIr23Ez9K+lBbQg0waL/mlcKAHSNp7Dp
         x0LjglQzZPI84Nvdn+2sQeFmRoC4jK3mFwLqtuhLNu6JGsr8lKy8fQxN8Zy11ytpNICx
         DFh9UVwqF5xI2pUWcE0WmGKCYzd7C1GKSL6fEY3iggyDreIhag0bL4eyc3rY4L5FMAma
         dVJGaW1TYyTZ90rO98hH1ENYi5yF3NDl96pAjKAMfvwpRZ49gao2udMHDC1mq5Jl5yNI
         UOLg==
X-Gm-Message-State: AC+VfDzEV+9MGoG+7PQJDJW1utqZsktE7FrXaLO0rB5nosVkG5VsATI3
        F4F9c64KjCNUGh7W6FpFcm5sG+grRaY=
X-Google-Smtp-Source: ACHHUZ7XbamiN5t9hkNM9wHi0lUw3xjmbJkpr3iK3DDyetjTuQLI+xH6SZ4lOBe0QRXsxB17BKZsIA==
X-Received: by 2002:a7b:c8cb:0:b0:3f1:6ec5:bc6e with SMTP id f11-20020a7bc8cb000000b003f16ec5bc6emr16762382wml.3.1683133437417;
        Wed, 03 May 2023 10:03:57 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1c7909000000b003f193d7c6b7sm2376091wme.41.2023.05.03.10.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 10:03:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, a.clayton@nginx.com
Cc:     Alejandro Colomar <alx@kernel.org>, andrew@digital-domain.net
Subject: [PATCH 1/3] sched_yield.2: HISTORY: POSIX.1-2008 makes this non-optional
Date:   Wed,  3 May 2023 19:03:51 +0200
Message-Id: <20230503170353.25998-2-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230503170353.25998-1-alx@kernel.org>
References: <20230503170353.25998-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/sched_yield.2 | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/man2/sched_yield.2 b/man2/sched_yield.2
index f1024762a..bab0f9569 100644
--- a/man2/sched_yield.2
+++ b/man2/sched_yield.2
@@ -38,20 +38,22 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-2001 (but optional).
+POSIX.1-2008.
+.PP
+Before POSIX.1-2008,
+systems on which
+.BR sched_yield ()
+is available defined
+.B _POSIX_PRIORITY_SCHEDULING
+in
+.IR <unistd.h> .
 .SH NOTES
 If the calling thread is the only thread in the highest
 priority list at that time,
 it will continue to run after a call to
 .BR sched_yield ().
 .PP
-POSIX systems on which
-.BR sched_yield ()
-is available define
-.B _POSIX_PRIORITY_SCHEDULING
-in
-.IR <unistd.h> .
-.PP
 Strategic calls to
 .BR sched_yield ()
 can improve performance by giving other threads or processes
-- 
2.40.1

