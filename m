Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C6A62971D3
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465414AbgJWO6m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465408AbgJWO6m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:42 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAB36C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:41 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id y12so2221294wrp.6
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RA2cgou76aLG1+Nr31OGCvvzP33YbHf4EzF7HYRVS1M=;
        b=vRybeXgILuAzwv9tyJ++htEl2q0yCBpcos8/kjb7qHz0Xp58zTmlzlSJIM8C6gjGd8
         +8393AqprAjhUI4q4PH7u/+VvhgVHi45RjE4p9xNBb34agwTrd6NzS8x/hf91+NkYZdr
         QM3JMyWuI1Wkhr3JRmpql+K3IpXUp2MzCS7zQ4QBxaHcjqa+acPNxyN25ncCx5K5Lvgz
         QMLacyVymXUSQckuM3K+7/QBoOeoK7QHSeoG+o4tn/VslS1C077LyR48EMdTELFGNats
         px+GexOZ0x0L7JohSVIz3FKUXRKR4kLbiWDzLOuWLgdje/npDMZy9iW3ORwHq0aS5Mcp
         bwJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RA2cgou76aLG1+Nr31OGCvvzP33YbHf4EzF7HYRVS1M=;
        b=O9WpFRGpQHJpB9URXVL1TN/2qTGjYug4O+fTjBjyeicay+UwnKOQyYS8v3xqodI1T2
         qzwAhCM3B9J50HUK1mc/D/s4RNOTfyZy2cfPa+98+2RUXPrRWq4ayoAeqw1qePUtxbeK
         aO9mwJfEm/k9dPkwSeZZ9xS0EL1ZWFL3MkAonjrLhDYVG7ZieqWMhIsU2ZahE3gQpiD6
         cPThmzb3Davo4L/1PT7bhzvIJtrH8n+sx1bIbq15em/vzZxkkiKzVzWuiALb6O+gg/QL
         +aAVotk/JWB/7V4aGosrtRUiy5bG47i0tVBbcQnUK/tDb+S0lLF8+wnIlf1jmVZPEAuN
         IAaA==
X-Gm-Message-State: AOAM532jrQB3lnlamzSNbUYIisW9OSkwqlkmFH1pUWyTUclQ0H2QNFXR
        BJih8icfmG6RsYw6n4If/7s=
X-Google-Smtp-Source: ABdhPJyN1N9xM0+WfNRkVLWKc8UepcDi7fBRVomcJFwu+aXwKxOKOVCtlP3TuZdBS7MwA9Py3b5RUg==
X-Received: by 2002:adf:a557:: with SMTP id j23mr3195960wrb.95.1603465120592;
        Fri, 23 Oct 2020 07:58:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:39 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/11] circleq.3: Add remaining details to complete the page
Date:   Fri, 23 Oct 2020 16:57:35 +0200
Message-Id: <20201023145736.102750-10-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
References: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/circleq.3 | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/man3/circleq.3 b/man3/circleq.3
index f24df2e15..33215be77 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -49,6 +49,7 @@ CIRCLEQ_LOOP_PREV,
 CIRCLEQ_NEXT,
 CIRCLEQ_PREV,
 CIRCLEQ_REMOVE
+\- implementation of a double-linked circular queue
 .SH SYNOPSIS
 .nf
 .B #include <sys/queue.h>
@@ -96,6 +97,8 @@ CIRCLEQ_REMOVE
 .PP
 .BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .SH DESCRIPTION
+These macros define and operate on doubly-linked circular queues.
+.PP
 In the macro definitions,
 .I TYPE
 is the name of a user-defined structure,
@@ -252,11 +255,44 @@ removes the element
 .I elm
 from the circular queue.
 .SH RETURN VALUE
+.BR CIRCLEQ_EMPTY ()
+returns nonzero if the queue is empty,
+and zero if the queue contains at least one entry.
+.PP
+.BR CIRCLEQ_FIRST (),
+.BR CIRCLEQ_LAST (),
+.BR CIRCLEQ_NEXT (),
+and
+.BR CIRCLEQ_PREV ()
+return a pointer to the first, last, next or previous
+.I CIRCLEQ_ENTRY
+structure, respectively.
+.PP
+.BR CIRCLEQ_HEAD_INITIALIZER ()
+returns an initializer that can be assigned to the queue
+.IR head .
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (CIRCLEQ macros first appeared in 4.4BSD).
 .SH BUGS
+The macros
+.BR CIRCLEQ_FOREACH ()
+and
+.BR CIRCLEQ_FOREACH_REVERSE ()
+don't allow
+.I var
+to be removed or freed within the loop,
+as it would interfere with the traversal.
+The macros
+.BR CIRCLEQ_FOREACH_SAFE ()
+and
+.BR CIRCLEQ_FOREACH_REVERSE_SAFE (),
+which are present on the BSDs but are not present in glibc,
+fix this limitation by allowing
+.I var
+to safely be removed from the list and freed from within the loop
+without interfering with the traversal.
 .SH EXAMPLES
 .EX
 #include <stddef.h>
@@ -314,3 +350,5 @@ main(void)
 }
 .EE
 .SH SEE ALSO
+.BR insque (3),
+.BR queue (3)
-- 
2.28.0

