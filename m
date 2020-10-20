Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60ACE294494
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409945AbgJTVb6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409944AbgJTVb6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:58 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69887C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:58 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id n6so4454532wrm.13
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zeE3eUJsgtOl8itXfGQx1CTaT1qQcCvBm/X582QC+1c=;
        b=ewJOkq25eRQmascMmHjfHCTiqZKb5Fkp04HtjLCF2avpKatoJ7JrGHv30IRUpVz/wX
         Fti4/1g8xLgb6fY8uC74iyC14YnmR1Hie8IXYmrxLQI4kB/Mi2pn02NpMbmw7Bon65jz
         8aFhcTPUOX+h3cxe8RlXGpWa7tqHntU5Pb68ZhxicWK815UOxYL0Wj4qilCl334dWqb6
         xoT03tuRQGVkB6j1BBpTRVjrgXE4ZTgLnzdZtdvwlaJNaqQh+WwNYquBn9DJrpxxDRfW
         xXPF4HjL3ne/I5RrHKIdAbyJwEe4j74SOeHlosFXpGQyqhr2FCblh39prk234G9/zmI1
         b7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zeE3eUJsgtOl8itXfGQx1CTaT1qQcCvBm/X582QC+1c=;
        b=jfNP4Tmn2/oM1nR3YD6Z7Jd87TERMrlHIo9oYQFNljYRkd0wpEJhMvFByRkij5YBfD
         RTgdhKg95oBG/TtADc6C32+XkrWWCLlWghvPR7e5W1zAxGNl9CLYeLaq3dtdpKgEC8Xz
         mfRNFyNO1SDhdI/qJQV1W1FMVz95qZTe/4qF+CWOaP5SuLMEXSCSEKTOkv/VMzyQeJba
         IufDUK6dbZgn88UwDfdo29dx2RU0YNTGccKW7pAmI/ltjr+H0xmlmM23o96cpXrjq399
         8/MyFvYiOgm9nM0sUlB6McfUK0F7JnwQqTgeinGCiimwnJlhaICavHyTvCwYoLK39k8z
         kNDA==
X-Gm-Message-State: AOAM530V+7ISYGM7onIQZPUqyDu6YJjH9q3jLXUuQB2dy9SiXmw2zaFz
        T4A2mQSN6MD9T0kSnW2B23E=
X-Google-Smtp-Source: ABdhPJyGefQGBkB5O+dJQkZJ1JFnfJkZ5fmgQFECYzaPUpgS2WbR4SfwoFhtpXErFBacUC0fzt56MA==
X-Received: by 2002:adf:f643:: with SMTP id x3mr408224wrp.180.1603229517198;
        Tue, 20 Oct 2020 14:31:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:56 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 08/10] list.3: Add details
Date:   Tue, 20 Oct 2020 23:31:06 +0200
Message-Id: <20201020213107.83837-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

list.3: NAME: Add description
list.3: DESCRIPTION: Add short description
list.3: SEE ALSO: Add insque(3) and queue(3)
list.3: BUGS: Note LIST_FOREACH() limitations
list.3: RETURN VALUE: Add details about the return value of those macros that "return" a value

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/man3/list.3 b/man3/list.3
index 0f9b20d26..8233c3b3e 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -48,6 +48,7 @@ LIST_NEXT,
 LIST_PREV,
 LIST_REMOVE
 .\"LIST_SWAP
+\- implementation of a doubly-linked list
 .SH SYNOPSIS
 .nf
 .B #include <sys/queue.h>
@@ -87,6 +88,8 @@ LIST_REMOVE
 .\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", TYPE, LIST_ENTRY " NAME ");"
 .fi
 .SH DESCRIPTION
+These macros define and operate on doubly-linked lists.
+.PP
 In the macro definitions,
 .I TYPE
 is the name of a user defined structure,
@@ -253,11 +256,39 @@ from the list.
 .\" and
 .\" .IR head2 .
 .SH RETURN VALUE
+.BR LIST_EMPTY ()
+returns non-zero if the list is empty,
+and zero if the list contains at least one entry.
+.PP
+.BR LIST_FIRST (),
+and
+.BR LIST_NEXT ()
+return a pointer to the first or next
+.I LIST_ENTRY
+structre, respectively.
+.PP
+.BR LIST_HEAD_INITIALIZER ()
+returns an initializer that can be assigned to the list
+.IR head .
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (LIST macros first appeared in 4.4BSD).
 .SH BUGS
+The macro
+.BR LIST_FOREACH ()
+doesn't allow
+.I var
+to be removed or freed within the loop,
+as it would interfere with the traversal.
+The macro
+.BR LIST_FOREACH_SAFE (),
+which is not present in glibc,
+solves this bug by
+allowing to both remove
+.I var
+as well as free it from within the loop safely
+without interfering with the traversal.
 .SH EXAMPLES
 .EX
 #include <stddef.h>
@@ -312,3 +343,5 @@ main(void)
 }
 .EE
 .SH SEE ALSO
+.BR insque (3),
+.BR queue (3)
-- 
2.28.0

