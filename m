Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78624295E97
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898449AbgJVMjH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898441AbgJVMjF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:39:05 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43FA1C0613D8
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:58 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t9so2169489wrq.11
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nBy8ZMQa+Ck6w2dw7HG7HQ9BsYxuio913IYeaWV9YY4=;
        b=GY4I9H0eE88ZH4xdiR4bOVGeReUyRwMFg6FKZqxo1uwSMwzrpKupdeqd6vovtZ8owI
         eLl+T3SueEI/qaklPIOwoyGpukTqUxglvv2RuFPUxlbC/vrjaJ26J2Z4CLXPi5vMu6gY
         vReYxEmc5BcMHWF0/zlRIAL2r1aQjE4oMWu10/BITmf5Yr+0oDmHteBK0lTckEOl+WFR
         KxY+NVdCSpNfqGCgj7ITLEe0DKCzJUBaT/RXyQ4E/REFk/8trWYjcc0FZp5yr9m+BTPa
         OQzVBAAIOKAAQbxG6DIYdOuJKey2hMsKBdGa3dUJL/oKXs+dSqoZkBA7ubYijZoqBz9K
         sHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nBy8ZMQa+Ck6w2dw7HG7HQ9BsYxuio913IYeaWV9YY4=;
        b=T8gdqF+Lf5CFLHsGhe5Av92C2weGQYZZcgQJhd33O0GA2VDroZHwNmMcwG+2c05Aib
         ekF6W3lskFUjTfD8q+fQzSWJGHLuGi0yoLhQJjbwGnyHDoi37oMTz6gFv+cgX7VKQPjY
         57P+yj8AqwqFm1GS2X8ztiSs7Bhz53D6L8dWBMGRPytNgYN/vbrecEcktDmT7kTQi4G4
         8Q1/bt/ltGW8iLp0CO6Tbck6iwjsSKkpG8ft1n1qqMebEPP08sVI6PSA5n2rAT6kiqM8
         k3p83o4P4RYzNAAnETBDyjOyWfLW71IEteS3Q0TaW9UQ46GeBjsYoRW4ARAd3q2I3/Ze
         GEoA==
X-Gm-Message-State: AOAM530WVr31e0UmedkKjY4ItEtEofn/tpEizNl6teHR3UmGlMgjl2Ke
        BwiufDSEFoHIxKZOCj5MN0CADoYTLhg=
X-Google-Smtp-Source: ABdhPJyR10dj/cyF00122sILlkaSpa6ST4gBLyBEQZTcpwzFVqgW2cqqhIvyO8ItUy++sn7MJF/dZA==
X-Received: by 2002:a5d:480b:: with SMTP id l11mr2545460wrq.225.1603370337034;
        Thu, 22 Oct 2020 05:38:57 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:56 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 06/10] slist.3: Copy and adapt code from queue.3
Date:   Thu, 22 Oct 2020 14:38:18 +0200
Message-Id: <20201022123821.22602-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A few fixes to note:

- Sorted alphabetically some macros 
- ffix: remove alignment spaces in example (as in list.3)

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/slist.3 | 30 +++++++++++++++++++++++-------
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/man3/slist.3 b/man3/slist.3
index 291c8753b..0dab80cee 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -36,38 +36,52 @@
 .Nm SLIST_FIRST ,
 .Nm SLIST_FOREACH ,
 .\" .Nm SLIST_FOREACH_FROM ,
-.\" .Nm SLIST_FOREACH_SAFE ,
 .\" .Nm SLIST_FOREACH_FROM_SAFE ,
+.\" .Nm SLIST_FOREACH_SAFE ,
 .Nm SLIST_HEAD ,
 .Nm SLIST_HEAD_INITIALIZER ,
 .Nm SLIST_INIT ,
 .Nm SLIST_INSERT_AFTER ,
 .Nm SLIST_INSERT_HEAD ,
 .Nm SLIST_NEXT ,
+.Nm SLIST_REMOVE ,
 .\" .Nm SLIST_REMOVE_AFTER ,
 .Nm SLIST_REMOVE_HEAD ,
-.Nm SLIST_REMOVE ,
 .\" .Nm SLIST_SWAP ,
 .SH SYNOPSIS
+.In sys/queue.h
+.\"
 .Fn SLIST_EMPTY "SLIST_HEAD *head"
 .Fn SLIST_ENTRY "TYPE"
 .Fn SLIST_FIRST "SLIST_HEAD *head"
 .Fn SLIST_FOREACH "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
 .\" .Fn SLIST_FOREACH_FROM "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_FOREACH_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
 .\" .Fn SLIST_FOREACH_FROM_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn SLIST_FOREACH_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
 .Fn SLIST_HEAD "HEADNAME" "TYPE"
 .Fn SLIST_HEAD_INITIALIZER "SLIST_HEAD head"
 .Fn SLIST_INIT "SLIST_HEAD *head"
 .Fn SLIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "SLIST_ENTRY NAME"
 .Fn SLIST_INSERT_HEAD "SLIST_HEAD *head" "TYPE *elm" "SLIST_ENTRY NAME"
 .Fn SLIST_NEXT "TYPE *elm" "SLIST_ENTRY NAME"
+.Fn SLIST_REMOVE "SLIST_HEAD *head" "TYPE *elm" "TYPE" "SLIST_ENTRY NAME"
 .\" .Fn SLIST_REMOVE_AFTER "TYPE *elm" "SLIST_ENTRY NAME"
 .Fn SLIST_REMOVE_HEAD "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.Fn SLIST_REMOVE "SLIST_HEAD *head" "TYPE *elm" "TYPE" "SLIST_ENTRY NAME"
 .\" .Fn SLIST_SWAP "SLIST_HEAD *head1" "SLIST_HEAD *head2" "SLIST_ENTRY NAME"
 .\"
 .SH DESCRIPTION
+In the macro definitions,
+.Fa TYPE
+is the name of a user-defined structure,
+that must contain a field of type
+.Li SLIST_ENTRY ,
+named
+.Fa NAME .
+The argument
+.Fa HEADNAME
+is the name of a user defined structure that must be declared
+using the macro
+.Li SLIST_HEAD .
 .Ss Singly-linked lists
 A singly-linked list is headed by a structure defined by the
 .Nm SLIST_HEAD
@@ -221,10 +235,12 @@ from the list.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program using a singly-linked list.
 .SH RETURN VALUE
 .SH CONFORMING TO
+Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
+Present on the BSDs
+(SLIST macros first appeared in
+.Bx 4.4 ).
 .SH BUGS
 .SH EXAMPLES
 .Ss Singly-linked list example
@@ -245,7 +261,7 @@ SLIST_HEAD(slisthead, entry);
 int
 main(void)
 {
-    struct entry    *n1, *n2, *n3, *np;
+    struct entry *n1, *n2, *n3, *np;
     struct slisthead head;                  /* Singly-linked List
                                                head. */
 
-- 
2.28.0

