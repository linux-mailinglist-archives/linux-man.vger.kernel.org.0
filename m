Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45693311CF0
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 12:46:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbhBFLqK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 06:46:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbhBFLqB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 06:46:01 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0F2FC06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 03:45:20 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id b3so10787280wrj.5
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 03:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v3V6LcDocs+tPI1oEhjj3r0WfxSdtJUs2m3MFM/ixhU=;
        b=tKALK37otUDJMkwfoM5Urre4o/s+mhLMpPYPujMGIOgx0kQMTUWJhJMFmeXs3Oes3F
         hlZgn5JekQ3yaKgMHdfugen1xyDctKP7Vj1/YYsdue21kogeod0rgTGPQELq7H+DYzLC
         6XormpOMdYW95dWZEgpi1mmUucfQXWdmE0LdyoIUVF/MVlTSTkMe8xurgKW/OoQtnKfJ
         Kv3v/aoQ02jv8MP04SBjUxROvVpKB+xC27EuMW/9JyBFwckXC5j4FVBXaeJfx+oDZJJO
         KdOaDXNwlvZVsxynr2m50vpmojC1gIV6yGQsH6ERYojBk0kCvuBfXRoRGC7k4jCKKyff
         yp7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v3V6LcDocs+tPI1oEhjj3r0WfxSdtJUs2m3MFM/ixhU=;
        b=uGu3L3HoyddODWBk2g72RrmOISeT+M6XvsKlbOE2BH2bXSxjB0m9Zpc5X2/mEuSlt/
         O8Zp2ySNE7R9+Dh/kfqwmoP8C74bl9dNfcouGYXqzd76LrGq9MUDoHkmaGmppIg1xP/3
         55QJ05JRZbCdQ7IpmWzzRoUyDbiwxn+KdloAPeGYJTCwMftQ9ijQfIdw7ltIDxpG1T4t
         pMZAG3inTvgEFxASw9OlpMQNWTjejuVSQrqVnGr84FpmK0Jfv+m1Adzn2/AxqgOXwPr9
         I+OH3J2LzqEupmeNX018FAowPDJMW6B9juJr4gX/7m/wUu/3xXHYfqvKJ/JXQNlBKW6I
         Hb/A==
X-Gm-Message-State: AOAM530s5v5ybQ+CqfyRN9eejwICib391Jo4GG6ptQSYf3gmq082BxmE
        k44po0+Lu8fhN25mFuvw9bg=
X-Google-Smtp-Source: ABdhPJwWcwDzlEuVdwCH6WiG7IRdOKkrEJpjxobBHD0lALZOuKmAOuhUKKEmBjW8M62WBmIbxRZLvA==
X-Received: by 2002:adf:e68e:: with SMTP id r14mr10298458wrm.242.1612611918117;
        Sat, 06 Feb 2021 03:45:18 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n15sm15556100wrx.2.2021.02.06.03.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Feb 2021 03:45:17 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>, libc-alpha@sourceware.org,
        linux-man <linux-man@vger.kernel.org>,
        Willem de Bruijn <willemb@google.com>
Subject: [PATCH v2] epoll_wait.2: Glibc doesn't provide epoll_pwait2() yet
Date:   Sat,  6 Feb 2021 12:43:04 +0100
Message-Id: <20210206114303.4657-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <CAKgNAkj6Kz=DGjrrX-NHKWRYjLZXED7TZyHFtTYpf0gAPmHSeg@mail.gmail.com>
References: <CAKgNAkj6Kz=DGjrrX-NHKWRYjLZXED7TZyHFtTYpf0gAPmHSeg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I filed a bug against glibc
requesting the wrapper for the new syscall.

Glibc bug: <https://sourceware.org/bugzilla/show_bug.cgi?id=27359>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

Yes, filing a bug is one better :-).

Cheers,

Alex

 man2/epoll_wait.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index f0e432478..f941023c2 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -35,6 +35,9 @@ epoll_wait, epoll_pwait, epoll_pwait2 \- wait for an I/O event on an epoll file
 .BI "int epoll_pwait2(int " epfd ", struct epoll_event *" events ,
 .BI "               int " maxevents ", const struct timespec *" timeout ,
 .BI "               const sigset_t *" sigmask );
+.\" FIXME: Check if glibc has added a wrapper for epoll_pwait2(),
+.\"        and if so, check the prototype.
+.\"        https://sourceware.org/bugzilla/show_bug.cgi?id=27359
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.0

