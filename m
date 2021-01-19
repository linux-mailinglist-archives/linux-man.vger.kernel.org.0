Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDC462FC20F
	for <lists+linux-man@lfdr.de>; Tue, 19 Jan 2021 22:17:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726000AbhASVPC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jan 2021 16:15:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728645AbhASVOT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jan 2021 16:14:19 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FDE9C061573
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 13:13:39 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id d26so21097737wrb.12
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 13:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BY7xwSN4ssWgzzC6vjtSs+vZHHzAm1h9eoQpuOa40Ys=;
        b=STvk5yzwD6qqYCxQ5x0xYdha7Y5k7DZZscOzE1MdddtgPvL412xDgCGQAwIty9u8mX
         StrgIwUSZDJN2BQYv3BiiApX4UmLqZ+tNZoBy7YBcy6IBuzfz62Mc+phfVCvGMutk1hr
         HZ6j+VqAQn1CXJUJPS3dIeyndM89nmlCPgeBD3LHbouKJO3k8nPSitCunGWW1VaRViZ0
         7qKI4AIiJFpkXQb5IrqY3qBduyAdix1qGUJBcvxvIAiauMazIB199nz/H613VKNMh5Kd
         HtnSqbuSlYIF5j+FbSpFu1NyuXDpb2nCNj346LYvbRmRd3WO8YrsH0cYWBi14aFqHQNB
         F9Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BY7xwSN4ssWgzzC6vjtSs+vZHHzAm1h9eoQpuOa40Ys=;
        b=JjTQnsTqolyQTSGoADZ1h83+BXiOfFa6o19UM28uJOjHT2hRODk/+qq5MT+pTpDTqD
         JQ2aS0Aw2kBtvETvJfwVavGwAtShj+6ZpSvg4c4dYCo4JhTELYaQoNm0LE36S5+PiEfx
         HW2y99rXkU8JtyD3tQPojJxSKt6eBZbqsCTDVsLYLjlubap9yAHtPWvUCLEbH4pDoMrd
         ghPCkbWXotQPaKff4PH30WerMnphW+ZDpWg5Vqlq3q+mP3kKf6MGLsHFcLZj1LRzAyAx
         lWL6Hx0+zebGHlyIPNy25UgFKzEaA8AC36kZaH0XxLQEgyhqCFnUyO5tskaOfg4paGaJ
         FyCw==
X-Gm-Message-State: AOAM53170nYiAL01pNbqxnVwQkfFqMdh4gAUn0h5SD35rDdpOpJxDbyE
        jXWAHT5jrzPdy8AxAwPhZjs=
X-Google-Smtp-Source: ABdhPJxSXzFMl3q5Y8vijhS/NFFv5wGXn5vfGZbMmFSly/0H0S0EaWSGvkADQ1QvAUP/gRYtbRGUFA==
X-Received: by 2002:a5d:6282:: with SMTP id k2mr5413974wru.159.1611090818169;
        Tue, 19 Jan 2021 13:13:38 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id x11sm24160wmi.4.2021.01.19.13.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 13:13:37 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] circleq.3: Fix CIRCLEQ_LOOP_*() return type
Date:   Tue, 19 Jan 2021 22:12:27 +0100
Message-Id: <20210119211226.440430-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/circleq.3 | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index 6b6b9aa14..f21bbf903 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -75,9 +75,9 @@ CIRCLEQ_REMOVE
 .BI "struct TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head );
 .BI "struct TYPE *CIRCLEQ_PREV(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
 .BI "struct TYPE *CIRCLEQ_NEXT(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
-.BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ,
+.BI "struct TYPE *CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ,
 .BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
-.BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ,
+.BI "struct TYPE *CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ,
 .BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
 .PP
 .BI "CIRCLEQ_FOREACH(struct TYPE *" var ", CIRCLEQ_HEAD *" head ,
@@ -238,13 +238,23 @@ and zero if the queue contains at least one entry.
 .PP
 .BR CIRCLEQ_FIRST (),
 .BR CIRCLEQ_LAST (),
-.BR CIRCLEQ_PREV (),
+.BR CIRCLEQ_LOOP_PREV (),
 and
-.BR CIRCLEQ_NEXT ()
+.BR CIRCLEQ_LOOP_NEXT ()
 return a pointer to the first, last, previous, or next
 .I TYPE
 structure, respectively.
 .PP
+.BR CIRCLEQ_PREV (),
+and
+.BR CIRCLEQ_NEXT ()
+are similar to their
+.BR CIRCLEQ_LOOP_* ()
+counterparts,
+except that if the argument is the first or last element, respectively,
+they return
+.IR &head .
+.PP
 .BR CIRCLEQ_HEAD_INITIALIZER ()
 returns an initializer that can be assigned to the queue
 .IR head .
-- 
2.30.0

