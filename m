Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B06A295E96
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898442AbgJVMjH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898467AbgJVMjF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:39:05 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64DB6C0613D9
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:59 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id d78so1898946wmd.3
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z7DcKQj8jwUawLT2cwqp0IYBY0Cpolmw6d7FFGtyY0w=;
        b=AeV9KJa4a0tXmTnYXbsWMOB507dzFpuaw9v8W2glWkW6T188w3en1SvlapHqk/PWmm
         RyTjvXFzwGdiMVuLUYf4q+GfZRvmKYkl455vLURLBUv94NQ/7HNQBwGlNqTyeetSDDeN
         qxd+GTGqBz+4idqF6MejUH9voCcQ5/RFEj+e6Z5r5BZa9SNmueft1JyT/LSx+E7VNvUt
         5o9m7AHF8NLf4jAU8aK6NKbVQAoFrenex6aTWGHm1i856qnrmqu3mcUZkUiXnEOec654
         mDmWtrXK8CZxWduJzmZL+mezwwt/m7Z4IP97wP40y0WgCZ9kkdoHp0WFG/M0AwkKp5tD
         ZDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z7DcKQj8jwUawLT2cwqp0IYBY0Cpolmw6d7FFGtyY0w=;
        b=PKDZ231VdDT0irw4L+4MLh9rZ6u9A2WWOvyHdWPl73hZ6GNMjXdXhPn6aSa+P8OyNB
         f5ywHIYEZ2F+YIFWOp6tu/zYo8huwhwu70IEgoqwUITdAitU/bT/hyv9q19iz40EmvRS
         hkhUGqaKkUx5waGlujVLrMaPJm41U4UgwgvxEP9Tb+gXFxzLGhnEHMonN1QZOlvbQbsx
         eLL3bdsmGDhvdgFq7gADhJe59InO0PCL98a+fhSv+KfkSMpBLzdbNMG9Me/0JBjGzkXz
         LSxYNSbuYF/6TcsgvOL8Chuppl2D42GPRDklqOvW5Cdg3CkF8cB1vzLdmr67+XNgu9tx
         dxrA==
X-Gm-Message-State: AOAM531gE1iVSxFGa2ZF/zd9ouAg8+bx76TM3By6IOfO8hgrHaIcO2SL
        RZggZTGuk7M5GpVTc9NmpWI=
X-Google-Smtp-Source: ABdhPJwpE0QG3nrjxNpmVitDR3L+xv/qRg1li7y8yoWFoiCxHRBi4KvlFaTCppkkdRiknnzU+TdjFg==
X-Received: by 2002:a1c:59c3:: with SMTP id n186mr2370558wmb.32.1603370338089;
        Thu, 22 Oct 2020 05:38:58 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:57 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/10] slist.3: ffix: Use man markup
Date:   Thu, 22 Oct 2020 14:38:19 +0200
Message-Id: <20201022123821.22602-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/slist.3 | 260 +++++++++++++++++++++++++++------------------------
 1 file changed, 140 insertions(+), 120 deletions(-)

diff --git a/man3/slist.3 b/man3/slist.3
index 0dab80cee..d97b745a0 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -31,60 +31,77 @@
 .\"
 .TH SLIST 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
-.Nm SLIST_EMPTY ,
-.Nm SLIST_ENTRY ,
-.Nm SLIST_FIRST ,
-.Nm SLIST_FOREACH ,
-.\" .Nm SLIST_FOREACH_FROM ,
-.\" .Nm SLIST_FOREACH_FROM_SAFE ,
-.\" .Nm SLIST_FOREACH_SAFE ,
-.Nm SLIST_HEAD ,
-.Nm SLIST_HEAD_INITIALIZER ,
-.Nm SLIST_INIT ,
-.Nm SLIST_INSERT_AFTER ,
-.Nm SLIST_INSERT_HEAD ,
-.Nm SLIST_NEXT ,
-.Nm SLIST_REMOVE ,
-.\" .Nm SLIST_REMOVE_AFTER ,
-.Nm SLIST_REMOVE_HEAD ,
-.\" .Nm SLIST_SWAP ,
+SLIST_EMPTY,
+SLIST_ENTRY,
+SLIST_FIRST,
+SLIST_FOREACH,
+.\"SLIST_FOREACH_FROM,
+.\"SLIST_FOREACH_FROM_SAFE,
+.\"SLIST_FOREACH_SAFE,
+SLIST_HEAD,
+SLIST_HEAD_INITIALIZER,
+SLIST_INIT,
+SLIST_INSERT_AFTER,
+SLIST_INSERT_HEAD,
+SLIST_NEXT,
+SLIST_REMOVE,
+.\"SLIST_REMOVE_AFTER,
+SLIST_REMOVE_HEAD
+.\"SLIST_SWAP
 .SH SYNOPSIS
-.In sys/queue.h
-.\"
-.Fn SLIST_EMPTY "SLIST_HEAD *head"
-.Fn SLIST_ENTRY "TYPE"
-.Fn SLIST_FIRST "SLIST_HEAD *head"
-.Fn SLIST_FOREACH "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_FOREACH_FROM "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_FOREACH_FROM_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn SLIST_FOREACH_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
-.Fn SLIST_HEAD "HEADNAME" "TYPE"
-.Fn SLIST_HEAD_INITIALIZER "SLIST_HEAD head"
-.Fn SLIST_INIT "SLIST_HEAD *head"
-.Fn SLIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "SLIST_ENTRY NAME"
-.Fn SLIST_INSERT_HEAD "SLIST_HEAD *head" "TYPE *elm" "SLIST_ENTRY NAME"
-.Fn SLIST_NEXT "TYPE *elm" "SLIST_ENTRY NAME"
-.Fn SLIST_REMOVE "SLIST_HEAD *head" "TYPE *elm" "TYPE" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_REMOVE_AFTER "TYPE *elm" "SLIST_ENTRY NAME"
-.Fn SLIST_REMOVE_HEAD "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_SWAP "SLIST_HEAD *head1" "SLIST_HEAD *head2" "SLIST_ENTRY NAME"
-.\"
+.nf
+.B #include <sys/queue.h>
+.PP
+.BI "int SLIST_EMPTY(SLIST_HEAD *" head ");"
+.PP
+.B SLIST_ENTRY(TYPE);
+.PP
+.BI "SLIST_ENTRY *SLIST_FIRST(SLIST_HEAD *" head ");"
+.PP
+.BI "SLIST_FOREACH(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "SLIST_FOREACH_FROM(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "SLIST_FOREACH_FROM_SAFE(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.\".PP
+.\".BI "SLIST_FOREACH_SAFE(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.PP
+.B SLIST_HEAD(HEADNAME, TYPE);
+.PP
+.BI "SLIST_HEAD SLIST_HEAD_INITIALIZER(SLIST_HEAD " head ");"
+.PP
+.BI "void SLIST_INIT(SLIST_HEAD *" head ");"
+.PP
+.BI "void SLIST_INSERT_AFTER(TYPE *" listelm ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.PP
+.BI "void SLIST_INSERT_HEAD(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.PP
+.BI "SLIST_ENTRY *SLIST_NEXT(TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.PP
+.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "void SLIST_REMOVE_AFTER(TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.PP
+.BI "void SLIST_REMOVE_HEAD(SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "void SLIST_SWAP(SLIST_HEAD *" head1 ", SLIST_HEAD *" head2 ", SLIST_ENTRY " NAME ");"
+.fi
 .SH DESCRIPTION
 In the macro definitions,
-.Fa TYPE
+.I TYPE
 is the name of a user-defined structure,
 that must contain a field of type
-.Li SLIST_ENTRY ,
+.IR SLIST_ENTRY ,
 named
-.Fa NAME .
+.IR NAME .
 The argument
-.Fa HEADNAME
+.IR HEADNAME
 is the name of a user defined structure that must be declared
 using the macro
-.Li SLIST_HEAD .
-.Ss Singly-linked lists
+.BR SLIST_HEAD ().
+.PP
 A singly-linked list is headed by a structure defined by the
-.Nm SLIST_HEAD
+.BR SLIST_HEAD ()
 macro.
 This structure contains a single pointer to the first element
 on the list.
@@ -93,159 +110,162 @@ overhead at the expense of O(n) removal for arbitrary elements.
 New elements can be added to the list after an existing element or
 at the head of the list.
 An
-.Fa SLIST_HEAD
+.I SLIST_HEAD
 structure is declared as follows:
-.Bd -literal -offset indent
+.PP
+.in +4
+.EX
 SLIST_HEAD(HEADNAME, TYPE) head;
-.Ed
-.Pp
+.EE
+.in
+.PP
 where
-.Fa HEADNAME
+.I HEADNAME
 is the name of the structure to be defined, and
-.Fa TYPE
+.I TYPE
 is the type of the elements to be linked into the list.
 A pointer to the head of the list can later be declared as:
-.Bd -literal -offset indent
+.PP
+.in +4
+.EX
 struct HEADNAME *headp;
-.Ed
-.Pp
+.EE
+.in
+.PP
 (The names
-.Li head
+.I head
 and
-.Li headp
+.I headp
 are user selectable.)
-.Pp
+.PP
 The macro
-.Nm SLIST_HEAD_INITIALIZER
+.BR SLIST_HEAD_INITIALIZER ()
 evaluates to an initializer for the list
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm SLIST_EMPTY
+.BR SLIST_EMPTY ()
 evaluates to true if there are no elements in the list.
-.Pp
+.PP
 The macro
-.Nm SLIST_ENTRY
+.BR SLIST_ENTRY ()
 declares a structure that connects the elements in
 the list.
-.Pp
+.PP
 The macro
-.Nm SLIST_FIRST
+.BR SLIST_FIRST ()
 returns the first element in the list or NULL if the list is empty.
-.Pp
+.PP
 The macro
-.Nm SLIST_FOREACH
+.BR SLIST_FOREACH ()
 traverses the list referenced by
-.Fa head
+.I head
 in the forward direction, assigning each element in
 turn to
-.Fa var .
-.\" .Pp
+.IR var .
+.\" .PP
 .\" The macro
-.\" .Nm SLIST_FOREACH_FROM
+.\" .BR SLIST_FOREACH_FROM ()
 .\" behaves identically to
-.\" .Nm SLIST_FOREACH
+.\" .BR SLIST_FOREACH ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found SLIST element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the SLIST referenced by
-.\" .Fa head .
+.\" .IR head .
 .\" .Pp
 .\" The macro
-.\" .Nm SLIST_FOREACH_SAFE
+.\" .BR SLIST_FOREACH_SAFE ()
 .\" traverses the list referenced by
-.\" .Fa head
+.\" .I head
 .\" in the forward direction, assigning each element in
 .\" turn to
-.\" .Fa var .
+.\" .IR var .
 .\" However, unlike
-.\" .Fn SLIST_FOREACH
+.\" .BR SLIST_FOREACH ()
 .\" here it is permitted to both remove
-.\" .Fa var
+.\" .I var
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm SLIST_FOREACH_FROM_SAFE
+.\" .BR SLIST_FOREACH_FROM_SAFE ()
 .\" behaves identically to
-.\" .Nm SLIST_FOREACH_SAFE
+.\" .BR SLIST_FOREACH_SAFE ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found SLIST element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the SLIST referenced by
-.\" .Fa head .
-.Pp
+.\" .IR head .
+.PP
 The macro
-.Nm SLIST_INIT
+.BR SLIST_INIT ()
 initializes the list referenced by
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm SLIST_INSERT_HEAD
+.BR SLIST_INSERT_HEAD ()
 inserts the new element
-.Fa elm
+.I elm
 at the head of the list.
-.Pp
+.PP
 The macro
-.Nm SLIST_INSERT_AFTER
+.BR SLIST_INSERT_AFTER ()
 inserts the new element
-.Fa elm
+.I elm
 after the element
-.Fa listelm .
-.Pp
+.IR listelm .
+.PP
 The macro
-.Nm SLIST_NEXT
+.BR SLIST_NEXT ()
 returns the next element in the list.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm SLIST_REMOVE_AFTER
+.\" .BR SLIST_REMOVE_AFTER ()
 .\" removes the element after
-.\" .Fa elm
+.\" .I elm
 .\" from the list.
 .\" Unlike
-.\" .Fa SLIST_REMOVE ,
+.\" .IR SLIST_REMOVE ,
 .\" this macro does not traverse the entire list.
-.Pp
+.PP
 The macro
-.Nm SLIST_REMOVE_HEAD
+.BR SLIST_REMOVE_HEAD ()
 removes the element
-.Fa elm
+.I elm
 from the head of the list.
 For optimum efficiency,
 elements being removed from the head of the list should explicitly use
 this macro instead of the generic
-.Fa SLIST_REMOVE
+.I SLIST_REMOVE
 macro.
-.Pp
+.PP
 The macro
-.Nm SLIST_REMOVE
+.BR SLIST_REMOVE ()
 removes the element
-.Fa elm
+.I elm
 from the list.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm SLIST_SWAP
+.\" .BR SLIST_SWAP ()
 .\" swaps the contents of
-.\" .Fa head1
+.\" .I head1
 .\" and
-.\" .Fa head2 .
+.\" .IR head2 .
 .SH RETURN VALUE
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
-(SLIST macros first appeared in
-.Bx 4.4 ).
+(SLIST macros first appeared in 4.4BSD).
 .SH BUGS
 .SH EXAMPLES
-.Ss Singly-linked list example
-.Bd -literal
-
+.EX
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -299,5 +319,5 @@ main(void)
 
     exit(EXIT_SUCCESS);
 }
-.Ed
+.EE
 .SH SEE ALSO
-- 
2.28.0

