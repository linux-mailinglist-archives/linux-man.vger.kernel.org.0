Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27B37298148
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 11:24:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1415029AbgJYKYQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 06:24:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414941AbgJYKYP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 06:24:15 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F514C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 03:24:15 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id c16so9319109wmd.2
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 03:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jShZUdqUtwbgSjkrtX/OAFUVnLlIcbczdXR5KDufFy0=;
        b=YeCyENQADe90aSFwP7C9asLqnWhSd9qFwhlDmoyXUZEX3WvKNSqAQt/br5wF9twOFI
         UQZGBR80k1mToWbGtaCIfdbOCTTSCgoZ8lYsnbDSqNC6e51p+ruwFk2OFSc8P2Gle/f+
         9htE/18Ds/6ONIY/Vx73RLN7heAfmVICJeUmh4avXvuH5IjzaXFyZf3kTzm4ITEl13TY
         UKQ8Guw5D7/FnhLZZvNEocnx63YlgGML+LDaD0W8ainZZR7/uHGaqElKcPfCAEIQLLjD
         shfeovBNWJ/SiC+jmvajQHSteRHU+mZRa8E2pUut7kUPiJ7mWuaYeRA0vFpmF5sdmix8
         kUNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jShZUdqUtwbgSjkrtX/OAFUVnLlIcbczdXR5KDufFy0=;
        b=FW6G9gB5kh+T+wZqNFLxpV7TU5K9JOxCyNIDPtqF8Pgq88yJzzbefMAj+DTMbxjI/O
         9TiA+eaVqBbciTG+DkfJihNEDfmdAHemIBAv5ep4V8M8u5T4NSRJVBOlKlU0te51h5Er
         vCqHv6hLqoUv5sZ2t7K8WHdUG177JY+aENMJx6kIKtcvDNgRVEXJrwNAhPMhYE03MMmj
         KrBw9RUm7TkMlkRKPCVyjbNWTEjvytn70VLEfKcxE6woSjfiZSi86M0P+XaysQ6LBJgE
         gfdGnrxguznp1baxCeWoVdeez1dA/t2Vbscdf8A20WOn2QYHwRCkEluabObuBM+LsMuc
         OHEQ==
X-Gm-Message-State: AOAM532ZrpthSNFwg8FeiQ67fKaoyVxWQ249t59D/k4rp8+hhpnsVO0Z
        wzA/C8axn/O6DbRYEnPlaTc=
X-Google-Smtp-Source: ABdhPJy9prRXK7iNqGTm7p4ttJC1xY0tyrvcAoH7yVHH/8Q24XGF3B7UQg5+hrgccQLf/3bohV3ftQ==
X-Received: by 2002:a1c:4d01:: with SMTP id o1mr11423792wmh.39.1603621454062;
        Sun, 25 Oct 2020 03:24:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s185sm15724860wmf.3.2020.10.25.03.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 03:24:13 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/2] queue.3: Fix & update after forking circleq.3, list.3, slist.3, stailq.3 & tailq.3
Date:   Sun, 25 Oct 2020 11:21:33 +0100
Message-Id: <20201025102132.41223-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025102132.41223-1-colomar.6.4.3@gmail.com>
References: <20201025102132.41223-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- ffix: Use man markup
- Remove specific notes about code size increase
  and execution time increase,
  as they were (at least) inaccurate.
  Instead, a generic note has been added.
- Structure the text into subsections.
- Remove sections that were empty after the forks.
- Clearly relate macro names (SLIST, TAILQ, ...)
  to a human readable name of which data structure
  they implement.

Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 189 ++++++++++++++++++++-------------------------------
 1 file changed, 75 insertions(+), 114 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 3931f8c96..c1b8a72a8 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -28,160 +28,121 @@
 .\" SUCH DAMAGE.
 .\" %%%LICENSE_END
 .\"
-.\"	@(#)queue.3	8.2 (Berkeley) 1/24/94
-.\" $FreeBSD$
 .\"
-.Dd February 7, 2015
-.Dt QUEUE 3
-.Os
-.Sh NAME
-.Nd implementations of singly-linked lists, singly-linked tail queues,
-lists, tail queues, and circular queues
-.Sh SYNOPSIS
-.Sh DESCRIPTION
-These macros define and operate on five types of data structures:
-singly-linked lists, singly-linked tail queues, lists, tail queues, and
-circular queues.
-All five structures support the following functionality:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.TH QUEUE 3 2015-02-7 "GNU" "Linux Programmer's Manual"
+.SH NAME
+queue \- implementations of linked lists and queues
+.SH DESCRIPTION
+The
+.I <sys/queue.h>
+header file provides a set of macros that
+define and operate on the following data structures:
+.IP * 3
+singly-linked lists (SLIST)
+.IP *
+doubly-linked lists (LIST)
+.IP *
+singly-linked tail queues (STAILQ)
+.IP *
+doubly-linked tail queues (TAILQ)
+.IP *
+doubly-linked circular queues (CIRCLEQ)
+.PP
+All structures support the following functionality:
+.IP * 3
 Insertion of a new entry at the head of the list.
-.It
+.IP *
 Insertion of a new entry after any element in the list.
-.It
+.IP *
 O(1) removal of an entry from the head of the list.
-.It
+.IP *
 Forward traversal through the list.
-.\" .It
+.\".IP *
 .\" Swapping the contents of two lists.
-.El
-.Pp
-Singly-linked lists are the simplest of the four data structures
+.PP
+Code size and execution time
+depend on the complexity of the data structure being used,
+so programmers should take care of choosing the appropriate one.
+.SS Singly-linked lists (SLIST)
+Singly-linked lists are the simplest
 and support only the above functionality.
-Singly-linked lists are ideal for applications with large datasets
-and few or no removals,
+Singly-linked lists are ideal for applications with
+large datasets and few or no removals,
 or for implementing a LIFO queue.
 Singly-linked lists add the following functionality:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 O(n) removal of any entry in the list.
-.El
-.Pp
+.SS Singly-linked tail queues (STAILQ)
 Singly-linked tail queues add the following functionality:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 Entries can be added at the end of a list.
-.It
+.IP *
 O(n) removal of any entry in the list.
-.It
+.IP *
 They may be concatenated.
-.El
-.Pp
+.PP
 However:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 All list insertions must specify the head of the list.
-.It
+.IP *
 Each head entry requires two pointers rather than one.
-.It
-Code size is about 15% greater and operations run about 20% slower
-than singly-linked lists.
-.El
-.Pp
-Singly-linked tail queues are ideal for applications with large datasets and
-few or no removals,
+.PP
+Singly-linked tail queues are ideal for applications with
+large datasets and few or no removals,
 or for implementing a FIFO queue.
-.Pp
+.SS Doubly-linked data structures
 All doubly linked types of data structures (lists and tail queues)
 additionally allow:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 Insertion of a new entry before any element in the list.
-.It
+.IP *
 O(1) removal of any entry in the list.
-.El
-.Pp
+.PP
 However:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 Each element requires two pointers rather than one.
-.It
-Code size and execution time of operations (except for removal) is about
-twice that of the singly-linked data-structures.
-.El
-.Pp
+.SS Doubly-linked lists (LIST)
 Linked lists are the simplest of the doubly linked data structures.
 They add the following functionality over the above:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 They may be traversed backwards.
-.El
-.Pp
+.PP
 However:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 To traverse backwards, an entry to begin the traversal and the list in
 which it is contained must be specified.
-.El
-.Pp
+.SS Doubly-linked tail queues (TAILQ)
 Tail queues add the following functionality:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 Entries can be added at the end of a list.
-.It
+.IP *
 They may be traversed backwards, from tail to head.
-.It
+.IP *
 They may be concatenated.
-.El
-.Pp
+.PP
 However:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 All list insertions and removals must specify the head of the list.
-.It
+.IP *
 Each head entry requires two pointers rather than one.
-.It
-Code size is about 15% greater and operations run about 20% slower
-than singly-linked lists.
-.El
-.Pp
+.SS Doubly-linked circular queues (CIRCLEQ)
 Circular queues add the following functionality over the above:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 The first and last entries are connected.
-.El
-.Pp
+.PP
 However:
-.Pp
-.Bl -enum -compact -offset indent
-.It
+.IP * 3
 The termination condition for traversal is more complex.
-.It
-Code size is about 40% greater and operations run about 45% slower than lists.
-.El
-.Sh EXAMPLES
-.Sh CONFORMING TO
+.SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
-.Nm queue
-functions first appeared in
-.Bx 4.4 .
-.Sh SEE ALSO
-.Xr circleq 3
-.Xr insque 3
-.Xr list 3
-.Xr slist 3
-.Xr stailq 3
-.Xr tailq 3
-.\" .Xr tree 3
+.I <sys/queue.h>
+macros first appeared in 4.4BSD.
+.SH SEE ALSO
+.BR circleq (3),
+.BR insque (3),
+.BR list (3),
+.BR slist (3),
+.BR stailq (3),
+.BR tailq (3)
+.\" .BR tree (3)
-- 
2.28.0

