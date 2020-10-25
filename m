Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D773298107
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414874AbgJYJhW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414867AbgJYJhV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:21 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29BEBC0613D0
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:21 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id c194so8245935wme.2
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2gh7dE25r2SaTrnfXH6WRA5QunHoMXliWIwCg2GppbE=;
        b=vZ2fwokzPg0UMudO2T5ikZjRgVRMdn11Ot88usiG2x9MdpIcMCy68sd5UgSaUyrGov
         93+Edfw1u2f0EEEt0A5JQvIpTcLHqw4ePUfbAV6/UG6xbsUjEyHOhsYGPOtSgm3DHysY
         sfNBhG4QH4psikjJ/Y2PndzY9O5Wo5/VQ4Xb8Z06Yfc5I0TfLzBOTAE35J6zLHAybkcu
         AzWGVNQcC5+tVndEPWbrQmSi910dvEbt1cWcDX0uuz4O4mJ+LdO2lfAkv1XJzxLdQboh
         6CRN5LUzX4Uqo3vI1JuKBTsdQ4LW2PuCx25gmjM3Wm5DDQvIcOwdLEmJycE+V8M0UTxM
         6S8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2gh7dE25r2SaTrnfXH6WRA5QunHoMXliWIwCg2GppbE=;
        b=FxoCWAJnlwoho5uFdHGQQK7nNIh1Ff1WXgYy1WTIyQ0PGqYU4RP1/1/SDt7zYIn9pa
         sWCulDBEoiTnbjmah/NBJlGCjuKoyLT7sxAfsv/ySoIh0FZ1DTc+71gv5AFClhhd97UT
         SdgjE07XeoDhW9os1AEzaIPn3hBdXK9wNI+JnltXCMU5HEA1LtU/DTcLMTaSVkbXm22S
         8iWhLeFkZJaNp3XJaWfMcfI3pu72H5y9cNCIjgUs7z3cLRKCfBnJAE6ZFJm0FckGLFL7
         HRE2E9WE6a2SQTd7d/4v30gOL9jZjXX4DYKQWfLXpWDFGBf58tX6rKImbIEjecAciob5
         tBjw==
X-Gm-Message-State: AOAM5303QrqiUJC1iH5fuCXRh7GbUyZSGpDKwtD7M5KpgSM3Xs9XhyDQ
        XlHQCo2yW5Jc0DB3MrqdqTA=
X-Google-Smtp-Source: ABdhPJxNnh4BxlANXc4RQcnWvcnj9CNrJEJ8MJAjlKQgK//gMjAAf7BzFJ62vITcRnV3obEyfelhAg==
X-Received: by 2002:a7b:c305:: with SMTP id k5mr11126321wmj.102.1603618639871;
        Sun, 25 Oct 2020 02:37:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/10] tailq.3: ffix: Use man markup
Date:   Sun, 25 Oct 2020 10:36:49 +0100
Message-Id: <20201025093651.4616-8-colomar.6.4.3@gmail.com>
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
 man3/tailq.3 | 362 +++++++++++++++++++++++++++------------------------
 1 file changed, 195 insertions(+), 167 deletions(-)

diff --git a/man3/tailq.3 b/man3/tailq.3
index 6f2466cbf..e38cc7e86 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -31,75 +31,101 @@
 .\"
 .TH TAILQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
-.Nm TAILQ_CONCAT ,
-.Nm TAILQ_EMPTY ,
-.Nm TAILQ_ENTRY ,
-.Nm TAILQ_FIRST ,
-.Nm TAILQ_FOREACH ,
-.\" .Nm TAILQ_FOREACH_FROM ,
-.\" .Nm TAILQ_FOREACH_FROM_SAFE ,
-.Nm TAILQ_FOREACH_REVERSE ,
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM ,
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE ,
-.\" .Nm TAILQ_FOREACH_REVERSE_SAFE ,
-.\" .Nm TAILQ_FOREACH_SAFE ,
-.Nm TAILQ_HEAD ,
-.Nm TAILQ_HEAD_INITIALIZER ,
-.Nm TAILQ_INIT ,
-.Nm TAILQ_INSERT_AFTER ,
-.Nm TAILQ_INSERT_BEFORE ,
-.Nm TAILQ_INSERT_HEAD ,
-.Nm TAILQ_INSERT_TAIL ,
-.Nm TAILQ_LAST ,
-.Nm TAILQ_NEXT ,
-.Nm TAILQ_PREV ,
-.Nm TAILQ_REMOVE
-.\" .Nm TAILQ_SWAP
+TAILQ_CONCAT,
+TAILQ_EMPTY,
+TAILQ_ENTRY,
+TAILQ_FIRST,
+TAILQ_FOREACH,
+.\"TAILQ_FOREACH_FROM,
+.\"TAILQ_FOREACH_FROM_SAFE,
+TAILQ_FOREACH_REVERSE,
+.\"TAILQ_FOREACH_REVERSE_FROM,
+.\"TAILQ_FOREACH_REVERSE_FROM_SAFE,
+.\"TAILQ_FOREACH_REVERSE_SAFE,
+.\"TAILQ_FOREACH_SAFE,
+TAILQ_HEAD,
+TAILQ_HEAD_INITIALIZER,
+TAILQ_INIT,
+TAILQ_INSERT_AFTER,
+TAILQ_INSERT_BEFORE,
+TAILQ_INSERT_HEAD,
+TAILQ_INSERT_TAIL,
+TAILQ_LAST,
+TAILQ_NEXT,
+TAILQ_PREV,
+TAILQ_REMOVE
+.\"TAILQ_SWAP
 .SH SYNOPSIS
-.In sys/queue.h
-.\"
-.Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
-.Fn TAILQ_EMPTY "TAILQ_HEAD *head"
-.Fn TAILQ_ENTRY "TYPE"
-.Fn TAILQ_FIRST "TAILQ_HEAD *head"
-.Fn TAILQ_FOREACH "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_FROM "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.Fn TAILQ_FOREACH_REVERSE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_REVERSE_FROM "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_REVERSE_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn TAILQ_FOREACH_REVERSE_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn TAILQ_FOREACH_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.Fn TAILQ_HEAD "HEADNAME" "TYPE"
-.Fn TAILQ_HEAD_INITIALIZER "TAILQ_HEAD head"
-.Fn TAILQ_INIT "TAILQ_HEAD *head"
-.Fn TAILQ_INSERT_AFTER "TAILQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_INSERT_HEAD "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_INSERT_TAIL "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_LAST "TAILQ_HEAD *head" "HEADNAME"
-.Fn TAILQ_NEXT "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
-.Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" "TAILQ_ENTRY NAME"
-.\"
+.nf
+.B #include sys/queue.h
+.PP
+.BI "void TAILQ_CONCAT(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ","
+.BI "                TAILQ_ENTRY " NAME ");"
+.PP
+.BI "int TAILQ_EMPTY(TAILQ_HEAD *" head ");"
+.PP
+.B TAILQ_ENTRY(TYPE);
+.PP
+.BI "TYPE *TAILQ_FIRST(TAILQ_HEAD *" head ");"
+.PP
+.BI "TAILQ_FOREACH(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "TAILQ_FOREACH_FROM(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "TAILQ_FOREACH_FROM_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.PP
+.BI "TAILQ_FOREACH_REVERSE(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
+.BI "                TAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "TAILQ_FOREACH_REVERSE_FROM(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "TAILQ_FOREACH_REVERSE_FROM_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .PP
+.\" .BI "TAILQ_FOREACH_REVERSE_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .PP
+.\" .BI "TAILQ_FOREACH_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.PP
+.B TAILQ_HEAD(HEADNAME, TYPE);
+.PP
+.BI "TAILQ_HEAD TAILQ_HEAD_INITIALIZER(TAILQ_HEAD " head ");"
+.PP
+.BI "void TAILQ_INIT(TAILQ_HEAD *" head ");"
+.PP
+.BI "void TAILQ_INSERT_AFTER(TAILQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
+.BI "                TAILQ_ENTRY " NAME ");"
+.PP
+.BI "void TAILQ_INSERT_BEFORE(TYPE *" listelm ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.PP
+.BI "void TAILQ_INSERT_HEAD(TAILQ_HEAD *" head ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.PP
+.BI "void TAILQ_INSERT_TAIL(TAILQ_HEAD *" head ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.PP
+.BI "TYPE *TAILQ_LAST(TAILQ_HEAD *" head ", HEADNAME);"
+.PP
+.BI "TYPE *TAILQ_NEXT(TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.PP
+.BI "TYPE *TAILQ_PREV(TYPE *" elm ", HEADNAME, TAILQ_ENTRY " NAME ");"
+.PP
+.BI "void TAILQ_REMOVE(TAILQ_HEAD *" head ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "void TAILQ_SWAP(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ", TYPE, TAILQ_ENTRY " NAME ");"
 .SH DESCRIPTION
-.Pp
+.PP
 In the macro definitions,
-.Fa TYPE
+.I TYPE
 is the name of a user defined structure,
 that must contain a field of type
-.Li TAILQ_ENTRY ,
+.IR TAILQ_ENTRY ,
 named
-.Fa NAME .
+.IR NAME .
 The argument
-.Fa HEADNAME
+.I HEADNAME
 is the name of a user defined structure that must be declared
 using the macro
-.Li TAILQ_HEAD .
+.BR TAILQ_HEAD ().
 .Ss Tail queues
 A tail queue is headed by a structure defined by the
-.Nm TAILQ_HEAD
+.BR TAILQ_HEAD ()
 macro.
 This structure contains a pair of pointers,
 one to the first element in the tail queue and the other to
@@ -110,211 +136,213 @@ New elements can be added to the tail queue after an existing element,
 before an existing element, at the head of the tail queue,
 or at the end of the tail queue.
 A
-.Fa TAILQ_HEAD
+.I TAILQ_HEAD
 structure is declared as follows:
-.Bd -literal -offset indent
+.PP
+.in +4
+.EX
 TAILQ_HEAD(HEADNAME, TYPE) head;
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
 is the type of the elements to be linked into the tail queue.
 A pointer to the head of the tail queue can later be declared as:
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
-.Nm TAILQ_HEAD_INITIALIZER
+.BR TAILQ_HEAD_INITIALIZER ()
 evaluates to an initializer for the tail queue
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm TAILQ_CONCAT
+.BR TAILQ_CONCAT ()
 concatenates the tail queue headed by
-.Fa head2
+.I head2
 onto the end of the one headed by
-.Fa head1
+.I head1
 removing all entries from the former.
-.Pp
+.PP
 The macro
-.Nm TAILQ_EMPTY
+.BR TAILQ_EMPTY ()
 evaluates to true if there are no items on the tail queue.
-.Pp
+.PP
 The macro
-.Nm TAILQ_ENTRY
+.BR TAILQ_ENTRY ()
 declares a structure that connects the elements in
 the tail queue.
-.Pp
+.PP
 The macro
-.Nm TAILQ_FIRST
+.BR TAILQ_FIRST ()
 returns the first item on the tail queue or NULL if the tail queue
 is empty.
-.Pp
+.PP
 The macro
-.Nm TAILQ_FOREACH
+.BR TAILQ_FOREACH ()
 traverses the tail queue referenced by
-.Fa head
+.I head
 in the forward direction, assigning each element in turn to
-.Fa var .
-.Fa var
-is set to
-.Dv NULL
-if the loop completes normally, or if there were no elements.
-.\" .Pp
+.IR var .
+.I var
+is set to NULL if the loop completes normally,
+or if there were no elements.
+.\" .PP
 .\" The macro
-.\" .Nm TAILQ_FOREACH_FROM
+.\" .BR TAILQ_FOREACH_FROM ()
 .\" behaves identically to
-.\" .Nm TAILQ_FOREACH
+.\" .BR TAILQ_FOREACH ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found TAILQ element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the TAILQ referenced by
-.\" .Fa head .
-.Pp
+.\" .IR head .
+.PP
 The macro
-.Nm TAILQ_FOREACH_REVERSE
+.BR TAILQ_FOREACH_REVERSE ()
 traverses the tail queue referenced by
-.Fa head
+.I head
 in the reverse direction, assigning each element in turn to
-.Fa var .
-.\" .Pp
+.IR var .
+.\" .PP
 .\" The macro
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM
+.\" .BR TAILQ_FOREACH_REVERSE_FROM ()
 .\" behaves identically to
-.\" .Nm TAILQ_FOREACH_REVERSE
+.\" .BR TAILQ_FOREACH_REVERSE ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found TAILQ element and begins the reverse loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the last element in the TAILQ referenced by
-.\" .Fa head .
-.\" .Pp
+.\" .IR head .
+.\" .PP
 .\" The macros
-.\" .Nm TAILQ_FOREACH_SAFE
+.\" .BR TAILQ_FOREACH_SAFE ()
 .\" and
-.\" .Nm TAILQ_FOREACH_REVERSE_SAFE
+.\" .BR TAILQ_FOREACH_REVERSE_SAFE ()
 .\" traverse the list referenced by
-.\" .Fa head
+.\" .I head
 .\" in the forward or reverse direction respectively,
 .\" assigning each element in turn to
-.\" .Fa var .
+.\" .IR var .
 .\" However, unlike their unsafe counterparts,
-.\" .Nm TAILQ_FOREACH
+.\" .BR TAILQ_FOREACH ()
 .\" and
-.\" .Nm TAILQ_FOREACH_REVERSE
+.\" .BR TAILQ_FOREACH_REVERSE ()
 .\" permit to both remove
-.\" .Fa var
+.\" .I var
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm TAILQ_FOREACH_FROM_SAFE
+.\" .BR TAILQ_FOREACH_FROM_SAFE ()
 .\" behaves identically to
-.\" .Nm TAILQ_FOREACH_SAFE
+.\" .BR TAILQ_FOREACH_SAFE ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found TAILQ element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the TAILQ referenced by
-.\" .Fa head .
-.\" .Pp
+.\" .IR head .
+.\" .PP
 .\" The macro
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE
+.\" .BR TAILQ_FOREACH_REVERSE_FROM_SAFE ()
 .\" behaves identically to
-.\" .Nm TAILQ_FOREACH_REVERSE_SAFE
+.\" .BR TAILQ_FOREACH_REVERSE_SAFE ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found TAILQ element and begins the reverse loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the last element in the TAILQ referenced by
-.\" .Fa head .
-.Pp
+.\" .IR head .
+.PP
 The macro
-.Nm TAILQ_INIT
+.BR TAILQ_INIT ()
 initializes the tail queue referenced by
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm TAILQ_INSERT_HEAD
+.BR TAILQ_INSERT_HEAD ()
 inserts the new element
-.Fa elm
+.I elm
 at the head of the tail queue.
-.Pp
+.PP
 The macro
-.Nm TAILQ_INSERT_TAIL
+.BR TAILQ_INSERT_TAIL ()
 inserts the new element
-.Fa elm
+.I elm
 at the end of the tail queue.
-.Pp
+.PP
 The macro
-.Nm TAILQ_INSERT_AFTER
+.BR TAILQ_INSERT_AFTER ()
 inserts the new element
-.Fa elm
+.I elm
 after the element
-.Fa listelm .
-.Pp
+.IR listelm .
+.PP
 The macro
-.Nm TAILQ_INSERT_BEFORE
+.BR TAILQ_INSERT_BEFORE ()
 inserts the new element
-.Fa elm
+.I elm
 before the element
-.Fa listelm .
-.Pp
+.IR listelm .
+.PP
 The macro
-.Nm TAILQ_LAST
+.BR TAILQ_LAST ()
 returns the last item on the tail queue.
-If the tail queue is empty the return value is
-.Dv NULL .
-.Pp
+If the tail queue is empty the return value is NULL.
+.PP
 The macro
-.Nm TAILQ_NEXT
+.BR TAILQ_NEXT ()
 returns the next item on the tail queue, or NULL if this item is the last.
-.Pp
+.PP
 The macro
-.Nm TAILQ_PREV
+.BR TAILQ_PREV ()
 returns the previous item on the tail queue, or NULL if this item
 is the first.
-.Pp
+.PP
 The macro
-.Nm TAILQ_REMOVE
+.BR TAILQ_REMOVE ()
 removes the element
-.Fa elm
+.I elm
 from the tail queue.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm TAILQ_SWAP
+.\" .BR TAILQ_SWAP ()
 .\" swaps the contents of
-.\" .Fa head1
+.\" .I head1
 .\" and
-.\" .Fa head2 .
+.\" .IR head2 .
 .SH RETURN VALUE
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
-(TAILQ functions first appeared in
-.Bx 4.4 ).
+(TAILQ functions first appeared in 4.4BSD).
 .SH BUGS
 .SH EXAMPLES
-.Ss Tail queue example
-.Bd -literal
+.EX
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -368,5 +396,5 @@ main(void)
 
     exit(EXIT_SUCCESS);
 }
-.Ed
+.EE
 .SH SEE ALSO
-- 
2.28.0

