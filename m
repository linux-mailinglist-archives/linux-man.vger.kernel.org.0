Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9E5F3796AF
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233300AbhEJR6N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233267AbhEJR6M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:12 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FA99C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:07 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id a4so17544650wrr.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/UROc8n6DFYkbl6R3xqr4P0JOQRKno35aghTJ7OxkAQ=;
        b=d8fhePzlxH0w+3Pf5jAnAVUvV7nNUAyWgQygLRgr1Sthu/S4uL7oNq5Uk2ujTfC8vY
         FBtTwXf/WFVg0YRUpf/G8gtuJzVKAn0QA7hq1p4ZtBEJHY/I9tkcV5iw5NBLKEaQ4HMx
         QD8O48cpZe4ZXqLlAiqEEOCM+KPBY6N91UAng694QsEtdCRtH9cVyFGYbVzj8rL/vyZU
         +FI2YBXbMr4zzIjPerIUsY6nC8YWf5/c0G0qsUiVgiwoW7xbrj7RDmYbkJgQoUn34X4f
         iJtjqEwhsUfGjdaQJe8rt/lpWkEil923oNJhD6ClShuEJwh2n8Dg4ELJQ7IVsbMMZz7b
         tc/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/UROc8n6DFYkbl6R3xqr4P0JOQRKno35aghTJ7OxkAQ=;
        b=XrO1UM5hvXs3nDC16OrhfVaDxW3dwe+pp7zAF1ZcoJGJJQtx/mN4a6ZU89ZvnZ74Ul
         jEAWOCKPjIQP/hncGAiLtdNXD4DEymOzu0lgA608/JMMzYSoc4zfv2anGzc/0LWVeTLd
         VgrzVADOihnNsyu1Hk2HrYIHLY60H3dHsMeapB7aVEtR7e3KywJ2Hy2G0nFBAbKJF+MY
         eMNRv6ucLaWi8hMEjOeXRaxxYexrK4xK2eXwkRLomW7700G+f1Y7P7GvM4p6HGiVyEWY
         ajaT8iQ8BcAieG6uoKIdROAk6ubEErpEM8KhqNqtOjnIpHztb3KkERksXFomAiZeMMRX
         wG2g==
X-Gm-Message-State: AOAM531skAok0//yBQojpher3yfsFRAuIX/uwNwDJhorPgJNw8SoqVOe
        5LGWaNGOOh+QAviUZTllNv0=
X-Google-Smtp-Source: ABdhPJz7kdCDk8eQB2qTNg2/J+AyhjKFkAz+iph1RVN1mM1/Jy65B/V9de3/o9liW4DCDETG69c9qQ==
X-Received: by 2002:adf:dd4f:: with SMTP id u15mr33329025wrm.308.1620669426119;
        Mon, 10 May 2021 10:57:06 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 34/39] poll.2: Remove <signal.h>
Date:   Mon, 10 May 2021 19:55:43 +0200
Message-Id: <20210510175546.28445-35-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It is only used for providing 'sigset_t'.  We're only documenting
(with some exceptions) the includes needed for constants and the
prototype itself.  And 'sigset_t' is better documented in
system_data_types(7).  Remove that include.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/poll.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/poll.2 b/man2/poll.2
index 8622e7c7a..205468f3e 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -37,11 +37,10 @@ poll, ppoll \- wait for some event on a file descriptor
 .BI "int poll(struct pollfd *" fds ", nfds_t " nfds ", int " timeout );
 .PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
-.B #include <signal.h>
 .B #include <poll.h>
 .PP
 .BI "int ppoll(struct pollfd *" fds ", nfds_t " nfds ,
-.BI "         const struct timespec *" tmo_p ", const sigset_t *" sigmask );
+.BI "          const struct timespec *" tmo_p ", const sigset_t *" sigmask );
 .fi
 .SH DESCRIPTION
 .BR poll ()
-- 
2.31.1

