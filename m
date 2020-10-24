Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E82A297F6B
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762457AbgJXWVm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762448AbgJXWVm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:42 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9B81C0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:41 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j7so7340675wrt.9
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Wcjn5hGssAg6DYFxDeld1Mg5MxdNblHTxG5sds4ramY=;
        b=Ta5dzIu7dGz9xORjEX24KocO26c82Ppt9IGCYwWJRXpjs5tQYT5Ob15nVlwfxrmti5
         lNc0DgoYVidih5z8vD9BbAsPt7aG9i3h4NNfXBSNL+cs/6cb2O8kfrOGYYdUuFThUYNs
         AL50Y1yrtbnLvAE3iNwACK3Zmc8dvtV2EoIsC+hd122iY2do6M5e4LSuAw6/BhL9W0Hv
         jkN7HEaXTM8Ux/AeYb39PrWBBA2lgZXAWOI7CSMWmiLAnjxKGwTg0RxV7PlscWxvgiMb
         2H60mfAWLFnAHCvjTYdu9Ir0auuALvdmgPVHCd/2Y3xbKXfnZgMIvrOzLwpgLzGciTlv
         5+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Wcjn5hGssAg6DYFxDeld1Mg5MxdNblHTxG5sds4ramY=;
        b=uh+6PdV7ozulWO9/6bHgk/1GXoIKi7EDxJP2hlvn3H7A1gLdahqDx18KPmPsAFyLgH
         ygFTukBikCi0Ng5gu3svTX8SFSdz/9skCoq2+ymdzdju2GpTHJvc3d1DpM8U5bxDjqxS
         RNcKS8uOc2bZ6o9qVjHBrY4au1uxskCuBPr3Z9vo1UmYsrMrx2P/jXmFZbawRitjF8Fc
         D8MF7CdFsSCl+XyELR7u0scWzi+JvWUFcd9yhS7VJhmAPLDWaU9uDkdKVgD8/RzjXzYM
         C0HPpkN8wv+HIsRMHhSAVhfOe913/QGLjHu1RJqxWMWKyx6NWFyVEuRRkHql/Kuj01YR
         i5sQ==
X-Gm-Message-State: AOAM532Z6NldyZuYA86wPB9A9SojkxzHJ6OQxgqhH7J2RpHT0Iu5oT7W
        6iiOWK2fYSevXBGGzQ/oavI=
X-Google-Smtp-Source: ABdhPJzJ2B6rGbJsocbLoiTmBNF7VakHUxrnQfgIJOTzmcTgZvhzUsqmoEKCHLCPD0jlkF8a/RFSQw==
X-Received: by 2002:adf:d84e:: with SMTP id k14mr10347828wrl.251.1603578100652;
        Sat, 24 Oct 2020 15:21:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 8/8] stailq.3: Add remaining details to complete the page
Date:   Sun, 25 Oct 2020 00:21:16 +0200
Message-Id: <20201024222115.6362-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
References: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/stailq.3 | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/man3/stailq.3 b/man3/stailq.3
index 0abacd824..2896d27c9 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -51,6 +51,7 @@ STAILQ_REMOVE,
 .\"STAILQ_REMOVE_AFTER,
 STAILQ_REMOVE_HEAD,
 .\"STAILQ_SWAP
+\- implementation of a singly-linked tail queue
 .SH SYNOPSIS
 .nf
 .B #include <sys/queue.h>
@@ -100,6 +101,8 @@ STAILQ_REMOVE_HEAD,
 .\" .BI "                STAILQ_ENTRY " NAME ");"
 .fi
 .SH DESCRIPTION
+These macros define and operate on singly-linked tail queues.
+.PP
 In the macro definitions,
 .I TYPE
 is the name of a user-defined structure,
@@ -292,11 +295,38 @@ from the tail queue.
 .\" and
 .\" .IR head2 .
 .SH RETURN VALUE
+.BR STAILQ_EMPTY ()
+returns nonzero if the queue is empty,
+and zero if the queue contains at least one entry.
+.PP
+.BR STAILQ_FIRST (),
+and
+.BR STAILQ_NEXT ()
+return a pointer to the first or next
+.I STAILQ_ENTRY
+structure, respectively.
+.PP
+.BR STAILQ_HEAD_INITIALIZER ()
+returns an initializer that can be assigned to the queue
+.IR head .
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (STAILQ macros first appeared in 4.4BSD).
 .SH BUGS
+The macro
+.BR STAILQ_FOREACH ()
+doesn't allow
+.I var
+to be removed or freed within the loop,
+as it would interfere with the traversal.
+The macro
+.BR STAILQ_FOREACH_SAFE (),
+which is present on the BSDs but is not present in glibc,
+fixes this limitation by allowing
+.I var
+to safely be removed from the list and freed from within the loop
+without interfering with the traversal.
 .SH EXAMPLES
 .EX
 #include <stddef.h>
-- 
2.28.0

