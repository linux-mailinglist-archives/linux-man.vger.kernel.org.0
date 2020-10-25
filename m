Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F04E9298109
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414867AbgJYJhX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414875AbgJYJhW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:22 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88F8AC0613D0
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:22 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id v5so8239610wmh.1
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z/M70yZJhqYIUP8P4knVSoIbgEPd1mftgBf9Tc7ZVfE=;
        b=ry3udRX3s+WH6vyDANTSdLjyOL0wZwL+JC4jf0YbxrQAe0V4FVNyKjTSDw2H5HNBXt
         zInXMGao+1nGPtfPTIhpUDWsm9CDm5Ac1wbLzSQEpTqdrhQDMplX29yRUgRSRo4FUkft
         26gdGfUYaBwvYEw/x938BFqizh8kQNFTfpT8kcaHDDRuw8DLORgSphJ+zGPl9fFC5MCK
         R0SKN9ZTD5Lq9gpDsPsxOCo3dPZHH6OI3aANTLhtFquFP+XF5XoxfNRV93qrOXD5konI
         MhphKpXRe3uFsW/BzcfbZ1oxNVZ806GnDskGo8dtwkA514ZlJdUtmt4vQeczZzXLtlH6
         6Y1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z/M70yZJhqYIUP8P4knVSoIbgEPd1mftgBf9Tc7ZVfE=;
        b=grt0wfZML7BLcE9U0hzAwKxTn3Csp8+BqKZ4UYOiIC8Mzjybk3zSQPCm2+binC7dfn
         Aolv3oDfwx474ujxcC3rCbVS5KTtjAHjBFBGwf9vDoQjgyk45VqXUapdPvhXHy53W7qe
         WkmarcNzDqO99vuDNTxzpiUK4mDeVq0oG7fWWU+d/vH7umj2uNTPeR9Xy5ChPFD28er0
         LoQePtfACTbvk4UENdjbCllwudnsOnWFVsveQbNbSFXw+HdoHOrrLKlp5k87G+OUUdNN
         1MhKjRKu8lD2092IUKAyGU0dzRkBC3bxAjWnPLbTBL0ZJQDkHlP/BV2DFxSis8kkiC+0
         EqvA==
X-Gm-Message-State: AOAM532qvns8YUdEHLsAvmnr0y5Uu14IfK0CxIwkqbyV13LBykr6pxwc
        GW3QFcZ1ViiB9ySsSBvmnSpBQktK0Ks=
X-Google-Smtp-Source: ABdhPJydBeUheDg0iXm3iV2S3SdEBu6muTtnJu8sBWeoitm2VXAt61ZV7wwSUGZ3bL23ZFFyZxtcmQ==
X-Received: by 2002:a1c:2581:: with SMTP id l123mr10723213wml.169.1603618641356;
        Sun, 25 Oct 2020 02:37:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:20 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/10] tailq.3: Add remaining details to complete the page
Date:   Sun, 25 Oct 2020 10:36:50 +0100
Message-Id: <20201025093651.4616-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
References: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/tailq.3 | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/man3/tailq.3 b/man3/tailq.3
index e38cc7e86..cac4a9c3f 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -55,6 +55,7 @@ TAILQ_NEXT,
 TAILQ_PREV,
 TAILQ_REMOVE
 .\"TAILQ_SWAP
+\- implementation of a doubly-linked tail queue
 .SH SYNOPSIS
 .nf
 .B #include sys/queue.h
@@ -110,6 +111,7 @@ TAILQ_REMOVE
 .\" .PP
 .\" .BI "void TAILQ_SWAP(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ", TYPE, TAILQ_ENTRY " NAME ");"
 .SH DESCRIPTION
+These macros define and operate on doubly-linked tail queues.
 .PP
 In the macro definitions,
 .I TYPE
@@ -336,11 +338,44 @@ from the tail queue.
 .\" and
 .\" .IR head2 .
 .SH RETURN VALUE
+.BR TAILQ_EMPTY ()
+returns nonzero if the queue is empty,
+and zero if the queue contains at least one entry.
+.PP
+.BR TAILQ_FIRST (),
+.BR TAILQ_LAST (),
+.BR TAILQ_NEXT (),
+and
+.BR TAILQ_PREV ()
+return a pointer to the first, last, next or previous
+.I TYPE
+structure, respectively.
+.PP
+.BR TAILQ_HEAD_INITIALIZER ()
+returns an initializer that can be assigned to the queue
+.IR head .
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
 (TAILQ functions first appeared in 4.4BSD).
 .SH BUGS
+The macros
+.BR TAILQ_FOREACH ()
+and
+.BR TAILQ_FOREACH_REVERSE ()
+don't allow
+.I var
+to be removed or freed within the loop,
+as it would interfere with the traversal.
+The macros
+.BR TAILQ_FOREACH_SAFE ()
+and
+.BR TAILQ_FOREACH_REVERSE_SAFE (),
+which are present on the BSDs but are not present in glibc,
+fix this limitation by allowing
+.I var
+to safely be removed from the list and freed from within the loop
+without interfering with the traversal.
 .SH EXAMPLES
 .EX
 #include <stddef.h>
@@ -398,3 +433,5 @@ main(void)
 }
 .EE
 .SH SEE ALSO
+.BR insque (3),
+.BR queue (3)
-- 
2.28.0

