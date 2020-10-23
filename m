Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A3242971D2
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465413AbgJWO6l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465408AbgJWO6l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:41 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93B80C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:40 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id y12so2221194wrp.6
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5VzGfuCRBYUPOGammsGiC1iF//89ugYSH/Et8T9RNHg=;
        b=abEzzxNb5nMdON6YnbnwSSXdlQdSjt7NtXFRG96lUWOooyKZ0sFg7M0aL0NZZN6GK9
         bb6OJD+To5M+tAY9MVPLDiPGpGGjOKTUXuWYum/XG7TfqlFkQteDip9hVr4ZYl+IwuN8
         T7aXh3BAawhjJi4OY5uZKGfIC4dtCoTHVUvYDYmXHc/BHZEsmcrpVTPnO8y+wppilzXk
         eoyWHDY20QN8wBgLDIhyaRnE9ZmxAkhbZHbFECfQ0u2i5+V1HdlGSm8kn9gkU0BN6HDd
         1DWD2V4ahJSdpChEKIF3aBqvLiUveVPIdzhttgDc7Bc57Cz5Kvlurc45C75sQ6mInTMU
         k9yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5VzGfuCRBYUPOGammsGiC1iF//89ugYSH/Et8T9RNHg=;
        b=TokeCSgGUZx7voF6KDD0NSER7D11SW5m9tqZ1L2B3fJb/MLbmFL8qLV4Xdm3AH4xiT
         JUYMrqq4Tm2xuXZdChHR3fDq9gnbXUq1BFdv1kn5KyvY5SkXHLHlhwv0chwaqhwUkO+Q
         AkRI5pjE5icj7c0F7qgSNFtbZLTpXccpG3bx3ienAssX9CLN9ESl+5rf6mcn0IpAEJtt
         Cutmb13sYxk0y4qH9kmMUzzCpBZ4Wagg9Uk0ACNz6C7pFevEfuhwS2lqWQ3005uItaGy
         hnN/bLcU8buJHhcuwlUi8dz6MVxPUmDVZVI1ohJeXJ1l3noRUXptGXtvfOhJook+FUFT
         DZ2A==
X-Gm-Message-State: AOAM533LvNiiYHT8CqXvbg04dP6dujiyoHqL5ySAriyGdDU8u22LkxlI
        3J8t79nB2orpxuKMLlmzBypj2WtlecA=
X-Google-Smtp-Source: ABdhPJzV9nwRrkHha8OjG1tcYRzsaO4g+lv8ucucgLMttOk9vmui+qGiFxzDX9+cOkF/3R30UAmTJw==
X-Received: by 2002:adf:c3c6:: with SMTP id d6mr3108171wrg.206.1603465119281;
        Fri, 23 Oct 2020 07:58:39 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:38 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/11] circleq.3: ffix: Use man markup
Date:   Fri, 23 Oct 2020 16:57:34 +0200
Message-Id: <20201023145736.102750-9-colomar.6.4.3@gmail.com>
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
 man3/circleq.3 | 257 +++++++++++++++++++++++++++----------------------
 1 file changed, 143 insertions(+), 114 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index 491e1ec91..f24df2e15 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -31,61 +31,86 @@
 .\"
 .TH CIRCLEQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
-.Nm CIRCLEQ_EMPTY ,
-.Nm CIRCLEQ_ENTRY ,
-.Nm CIRCLEQ_FIRST ,
-.Nm CIRCLEQ_FOREACH ,
-.Nm CIRCLEQ_FOREACH_REVERSE ,
-.Nm CIRCLEQ_HEAD ,
-.Nm CIRCLEQ_HEAD_INITIALIZER ,
-.Nm CIRCLEQ_INIT ,
-.Nm CIRCLEQ_INSERT_AFTER ,
-.Nm CIRCLEQ_INSERT_BEFORE ,
-.Nm CIRCLEQ_INSERT_HEAD ,
-.Nm CIRCLEQ_INSERT_TAIL ,
-.Nm CIRCLEQ_LAST ,
-.Nm CIRCLEQ_LOOP_NEXT ,
-.Nm CIRCLEQ_LOOP_PREV ,
-.Nm CIRCLEQ_NEXT ,
-.Nm CIRCLEQ_PREV ,
-.Nm CIRCLEQ_REMOVE
+CIRCLEQ_EMPTY,
+CIRCLEQ_ENTRY,
+CIRCLEQ_FIRST,
+CIRCLEQ_FOREACH,
+CIRCLEQ_FOREACH_REVERSE,
+CIRCLEQ_HEAD,
+CIRCLEQ_HEAD_INITIALIZER,
+CIRCLEQ_INIT,
+CIRCLEQ_INSERT_AFTER,
+CIRCLEQ_INSERT_BEFORE,
+CIRCLEQ_INSERT_HEAD,
+CIRCLEQ_INSERT_TAIL,
+CIRCLEQ_LAST,
+CIRCLEQ_LOOP_NEXT,
+CIRCLEQ_LOOP_PREV,
+CIRCLEQ_NEXT,
+CIRCLEQ_PREV,
+CIRCLEQ_REMOVE
 .SH SYNOPSIS
-.In sys/queue.h
-.\"
-.Fn CIRCLEQ_EMPTY "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_ENTRY "TYPE"
-.Fn CIRCLEQ_FIRST "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_FOREACH "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_FOREACH_REVERSE "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_HEAD "HEADNAME" "TYPE"
-.Fn CIRCLEQ_HEAD_INITIALIZER "CIRCLEQ_HEAD head"
-.Fn CIRCLEQ_INIT "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_INSERT_AFTER "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_INSERT_BEFORE "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_INSERT_HEAD "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_INSERT_TAIL "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_LAST "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_LOOP_NEXT "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_LOOP_PREV "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_NEXT "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.nf
+.B #include <sys/queue.h>
+.PP
+.BI "int CIRCLEQ_EMPTY(CIRCLEQ_HEAD *" head ");"
+.PP
+.B CIRCLEQ_ENTRY(TYPE);
+.PP
+.BI "CIRCLEQ_ENTRY *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
+.PP
+.BI "CIRCLEQ_FOREACH(TYPE *" var ", CIRCLEQ_HEAD *" head ", CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "CIRCLEQ_FOREACH_REVERSE(TYPE *" var ", CIRCLEQ_HEAD *" head ","
+.BI "                CIRCLEQ_ENTRY " NAME ");"
+.PP
+.B CIRCLEQ_HEAD(HEADNAME, TYPE);
+.PP
+.BI "CIRCLEQ_HEAD CIRCLEQ_HEAD_INITIALIZER(CIRCLEQ_HEAD " head ");"
+.PP
+.BI "void CIRCLEQ_INIT(CIRCLEQ_HEAD *" head ");"
+.PP
+.BI "void CIRCLEQ_INSERT_AFTER(CIRCLEQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
+.BI "                CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "void CIRCLEQ_INSERT_BEFORE(CIRCLEQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
+.BI "                CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "void CIRCLEQ_INSERT_HEAD(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "                CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "void CIRCLEQ_INSERT_TAIL(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "                CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "CIRCLEQ_ENTRY *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
+.PP
+.BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "                CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "                CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "CIRCLEQ_ENTRY *CIRCLEQ_NEXT(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "CIRCLEQ_ENTRY *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.PP
+.BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .SH DESCRIPTION
 In the macro definitions,
-.Fa TYPE
+.I TYPE
 is the name of a user-defined structure,
 that must contain a field of type
-.Li CIRCLEQ_ENTRY ,
+.IR CIRCLEQ_ENTRY ,
 named
-.Fa NAME .
+.IR NAME .
 The argument
-.Fa HEADNAME
+.I HEADNAME
 is the name of a user-defined structure that must be declared
 using the macro
-.Li CIRCLEQ_HEAD .
-.Ss Circular queues
+.BR CIRCLEQ_HEAD ().
+.PP
 A circular queue is headed by a structure defined by the
-.Nm CIRCLEQ_HEAD
+.BR CIRCLEQ_HEAD ()
 macro.
 This structure contains a pair of pointers,
 one to the first element in the circular queue and the other to
@@ -96,140 +121,144 @@ New elements can be added to the circular queue after an existing element,
 before an existing element, at the head of the circular queue,
 or at the end of the circular queue.
 A
-.Fa CIRCLEQ_HEAD
+.I CIRCLEQ_HEAD
 structure is declared as follows:
-.Bd -literal -offset indent
+.PP
+.in +4
+.EX
 CIRCLEQ_HEAD(HEADNAME, TYPE) head;
-.Ed
-.Pp
+.EE
+.in
+.PP
 where
-.Li HEADNAME
+.I HEADNAME
 is the name of the structure to be defined, and
-.Li TYPE
+.I TYPE
 is the type of the elements to be linked into the circular queue.
 A pointer to the head of the circular queue can later be declared as:
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
-.Nm CIRCLEQ_HEAD_INITIALIZER
+.BR CIRCLEQ_HEAD_INITIALIZER ()
 evaluates to an initializer for the circular queue
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm CIRCLEQ_EMPTY
+.BR CIRCLEQ_EMPTY ()
 evaluates to true if there are no items on the circular queue.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_ENTRY
+.BR CIRCLEQ_ENTRY ()
 declares a structure that connects the elements in
 the circular queue.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_FIRST
+.BR CIRCLEQ_FIRST ()
 returns the first item on the circular queue.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_FOREACH
+.BR CIRCLEQ_FOREACH ()
 traverses the circular queue referenced by
-.Fa head
+.I head
 in the forward direction, assigning each element in turn to
-.Fa var .
-.Fa var
+.IR var .
+.I var
 is set to
-.Fa &head
+.I &head
 if the loop completes normally, or if there were no elements.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_FOREACH_REVERSE
+.BR CIRCLEQ_FOREACH_REVERSE ()
 traverses the circular queue referenced by
-.Fa head
+.I head
 in the reverse direction, assigning each element in turn to
-.Fa var .
-.Pp
+.IR var .
+.PP
 The macro
-.Nm CIRCLEQ_INIT
+.BR CIRCLEQ_INIT ()
 initializes the circular queue referenced by
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm CIRCLEQ_INSERT_HEAD
+.BR CIRCLEQ_INSERT_HEAD ()
 inserts the new element
-.Fa elm
+.I elm
 at the head of the circular queue.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_INSERT_TAIL
+.BR CIRCLEQ_INSERT_TAIL ()
 inserts the new element
-.Fa elm
+.I elm
 at the end of the circular queue.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_INSERT_AFTER
+.BR CIRCLEQ_INSERT_AFTER ()
 inserts the new element
-.Fa elm
+.I elm
 after the element
-.Fa listelm .
-.Pp
+.IR listelm .
+.PP
 The macro
-.Nm CIRCLEQ_INSERT_BEFORE
+.BR CIRCLEQ_INSERT_BEFORE ()
 inserts the new element
-.Fa elm
+.I elm
 before the element
-.Fa listelm .
-.Pp
+.IR listelm .
+.PP
 The macro
-.Nm CIRCLEQ_LAST
+.BR CIRCLEQ_LAST ()
 returns the last item on the circular queue.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_NEXT
+.BR CIRCLEQ_NEXT ()
 returns the next item on the circular queue, or
-.Fa &head
+.I &head
 if this item is the last one.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_PREV
+.BR CIRCLEQ_PREV ()
 returns the previous item on the circular queue, or
-.Fa &head
+.I &head
 if this item is the first one.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_LOOP_NEXT
+.BR CIRCLEQ_LOOP_NEXT ()
 returns the next item on the circular queue.
 If
-.Fa elm
+.I elm
 is the last element on the circular queue, the first element is returned.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_LOOP_PREV
+.BR CIRCLEQ_LOOP_PREV ()
 returns the previous item on the circular queue.
 If
-.Fa elm
+.I elm
 is the first element on the circular queue, the last element is returned.
-.Pp
+.PP
 The macro
-.Nm CIRCLEQ_REMOVE
+.BR CIRCLEQ_REMOVE ()
 removes the element
-.Fa elm
+.I elm
 from the circular queue.
 .SH RETURN VALUE
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
-(CIRCLEQ macros first appeared in
-.Bx 4.4 ).
+(CIRCLEQ macros first appeared in 4.4BSD).
 .SH BUGS
 .SH EXAMPLES
-.Ss Circular queue example
-.Bd -literal
+.EX
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -283,5 +312,5 @@ main(void)
 
     exit(EXIT_SUCCESS);
 }
-.Ed
+.EE
 .SH SEE ALSO
-- 
2.28.0

