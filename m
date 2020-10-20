Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9408294493
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409942AbgJTVb6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVb5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:57 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A320C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:57 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t9so4457707wrq.11
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ku781uqUtjCpRHjD5gWfId78Gr8KlUZxznoUiGGC1gI=;
        b=TGcXzXD5BMJ9yKUoNuWelskAL9XwVIKpZtd9SLu4+SbNq/GEP8jrz1jt6h4HJ8G4Tf
         82CPgvumi3BgLF/zXAwnyj3VHJ+8P5EJidmURyM7q44hEBoYDxO1sTCiUdBc0Uqwl2el
         U0KhGHGir9a/l13PoX3OBAhOi/Pm4ddb/WftVpXWFTRdNhiNPwPeCSo008s2wjGodmmL
         Ss+a1B72DXWz8GT6347R9wmbFoQFFy0314sK/MfNR1ry1nJbFGqb7l7d4x2+vbuPFgpY
         8/DxuYEECeqZ2Wdui8cMKlDn73LIwZV3OurLMXI8uQ+ADY8PWTp/T9CYn9qTUr0gRPRP
         TUjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ku781uqUtjCpRHjD5gWfId78Gr8KlUZxznoUiGGC1gI=;
        b=me3Ze2joVingmZ+6iP3xH6rESYtzw8pr5cl+b7DM+7gW73nN4m8JEQmEXXINF+zp3q
         NM1wvULxZ3dH4e1YLxVITzaj6Lng6DoQt21t/LzjMrmrgM7GH5YjUXlPnt4y7kta7kax
         rh0DTVzeKYcVXSRbQfOmlhxCqtZPNyKbwPDvfljIC6i+ZDwXK1SrdLggBoo2bSoB3FUv
         RZOvqchRNYS4KcCPZwYYLKqz825/dk8W/HooxA+VMwmwpz5+dJAGe7a+myV6K5UlzOLT
         fN0lB42wmIdvmODTj0lpo+jEk7NL8U7Exwv7SCcjwyrHfsmX7/IeG7jfllAc4b/Bea5O
         1MoQ==
X-Gm-Message-State: AOAM530jnCl0GwQ5edTz0eDlNom9UjINMSzAmPRoytwlD8zOaYWkRC8g
        s6sHd6M3X+hGmA+5eBZCBMs=
X-Google-Smtp-Source: ABdhPJyibwaE1PkU2T2vJGQ29UGetS8LQmHZnDRCkdd2Nqm/++aZQ3ce3yv87JZchGvz8UxjL4hGeA==
X-Received: by 2002:a1c:9e0e:: with SMTP id h14mr10621wme.18.1603229516199;
        Tue, 20 Oct 2020 14:31:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:55 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 07/10] list.3: ffix: Use man markup
Date:   Tue, 20 Oct 2020 23:31:05 +0200
Message-Id: <20201020213107.83837-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

list.3: NAME: ffix: Use man markup
list.3: SYNOPSIS: ffix: Use man markup
list.3: DESCRIPTION: ffix: Use man markup
list.3: DESCRIPTION: ffix: Use man markup
list.3: CONFORMING TO: ffix: Use man markup
list.3: EXAMPLES: ffix: Use man markup

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 261 ++++++++++++++++++++++++++++------------------------
 1 file changed, 141 insertions(+), 120 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 4c36b0846..0f9b20d26 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -31,60 +31,77 @@
 .\"
 .TH LIST 3 2020-10-19 "GNU" "Linux Programmer's Manual"
 .SH NAME
-.Nm LIST_EMPTY ,
-.Nm LIST_ENTRY ,
-.Nm LIST_FIRST ,
-.Nm LIST_FOREACH ,
-.\" .Nm LIST_FOREACH_FROM ,
-.\" .Nm LIST_FOREACH_SAFE ,
-.\" .Nm LIST_FOREACH_FROM_SAFE ,
-.Nm LIST_HEAD ,
-.Nm LIST_HEAD_INITIALIZER ,
-.Nm LIST_INIT ,
-.Nm LIST_INSERT_AFTER ,
-.Nm LIST_INSERT_BEFORE ,
-.Nm LIST_INSERT_HEAD ,
-.Nm LIST_NEXT ,
-.\" .Nm LIST_PREV ,
-.Nm LIST_REMOVE ,
-.\" .Nm LIST_SWAP ,
+LIST_EMPTY,
+LIST_ENTRY,
+LIST_FIRST,
+LIST_FOREACH,
+.\"LIST_FOREACH_FROM,
+.\"LIST_FOREACH_SAFE,
+.\"LIST_FOREACH_FROM_SAFE,
+LIST_HEAD,
+LIST_HEAD_INITIALIZER,
+LIST_INIT,
+LIST_INSERT_AFTER,
+LIST_INSERT_BEFORE,
+LIST_INSERT_HEAD,
+LIST_NEXT,
+LIST_PREV,
+LIST_REMOVE
+.\"LIST_SWAP
 .SH SYNOPSIS
-.In sys/queue.h
-.\"
-.Fn LIST_EMPTY "LIST_HEAD *head"
-.Fn LIST_ENTRY "TYPE"
-.Fn LIST_FIRST "LIST_HEAD *head"
-.Fn LIST_FOREACH "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
-.\" .Fn LIST_FOREACH_FROM "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
-.\" .Fn LIST_FOREACH_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn LIST_FOREACH_FROM_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
-.Fn LIST_HEAD "HEADNAME" "TYPE"
-.Fn LIST_HEAD_INITIALIZER "LIST_HEAD head"
-.Fn LIST_INIT "LIST_HEAD *head"
-.Fn LIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_INSERT_HEAD "LIST_HEAD *head" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_NEXT "TYPE *elm" "LIST_ENTRY NAME"
-.\" .Fn LIST_PREV "TYPE *elm" "LIST_HEAD *head" "TYPE" "LIST_ENTRY NAME"
-.Fn LIST_REMOVE "TYPE *elm" "LIST_ENTRY NAME"
-.\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY NAME"
-.\"
+.nf
+.B #include <sys/queue.h>
+.PP
+.BI "int LIST_EMPTY(LIST_HEAD *" head ");"
+.PP
+.B LIST_ENTRY(TYPE);
+.PP
+.BI "LIST_ENTRY *LIST_FIRST(LIST_HEAD *" head ");"
+.PP
+.BI "LIST_FOREACH(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "LIST_FOREACH_FROM(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "LIST_FOREACH_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.\".PP
+.\".BI "LIST_FOREACH_FROM_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.PP
+.B LIST_HEAD(HEADNAME, TYPE);
+.PP
+.BI "LIST_HEAD LIST_HEAD_INITIALIZER(LIST_HEAD " head ");"
+.PP
+.BI "void LIST_INIT(LIST_HEAD *" head ");"
+.PP
+.BI "void LIST_INSERT_AFTER(TYPE *" listelm ", TYPE *" elm ", LIST_ENTRY " NAME ");"
+.PP
+.BI "void LIST_INSERT_BEFORE(TYPE *" listelm ", TYPE *" elm ", LIST_ENTRY " NAME ");"
+.PP
+.BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ", TYPE *" elm ", LIST_ENTRY " NAME ");"
+.PP
+.BI "LIST_ENTRY *LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "LIST_ENTRY LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, LIST_ENTRY " NAME ");"
+.PP
+.BI "void LIST_REMOVE(TYPE *" elm ", LIST_ENTRY " NAME ");"
+.\".PP
+.\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", TYPE, LIST_ENTRY " NAME ");"
+.fi
 .SH DESCRIPTION
 In the macro definitions,
-.Fa TYPE
+.I TYPE
 is the name of a user defined structure,
 that must contain a field of type
-.Li LIST_ENTRY ,
+.IR LIST_ENTRY ,
 named
-.Fa NAME .
+.IR NAME .
 The argument
-.Fa HEADNAME
+.IR HEADNAME
 is the name of a user defined structure that must be declared
 using the macro
-.Li LIST_HEAD .
-.Ss Lists
+.BR LIST_HEAD ().
+.PP
 A list is headed by a structure defined by the
-.Nm LIST_HEAD
+.BR LIST_HEAD ()
 macro.
 This structure contains a single pointer to the first element
 on the list.
@@ -93,152 +110,156 @@ removed without traversing the list.
 New elements can be added to the list after an existing element,
 before an existing element, or at the head of the list.
 A
-.Fa LIST_HEAD
+.I LIST_HEAD
 structure is declared as follows:
-.Bd -literal -offset indent
+.PP
+.in +4
+.EX
 LIST_HEAD(HEADNAME, TYPE) head;
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
-.Nm LIST_HEAD_INITIALIZER
+.BR LIST_HEAD_INITIALIZER ()
 evaluates to an initializer for the list
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm LIST_EMPTY
+.BR LIST_EMPTY ()
 evaluates to true if there are no elements in the list.
-.Pp
+.PP
 The macro
-.Nm LIST_ENTRY
+.BR LIST_ENTRY ()
 declares a structure that connects the elements in
 the list.
-.Pp
+.PP
 The macro
-.Nm LIST_FIRST
+.BR LIST_FIRST ()
 returns the first element in the list or NULL if the list
 is empty.
-.Pp
+.PP
 The macro
-.Nm LIST_FOREACH
+.BR LIST_FOREACH ()
 traverses the list referenced by
-.Fa head
+.I head
 in the forward direction, assigning each element in turn to
-.Fa var .
-.\" .Pp
+.IR var .
+.\" .PP
 .\" The macro
-.\" .Nm LIST_FOREACH_FROM
+.\" .BR LIST_FOREACH_FROM ()
 .\" behaves identically to
-.\" .Nm LIST_FOREACH
+.\" .BR LIST_FOREACH ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found LIST element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the LIST referenced by
-.\" .Fa head .
-.\" .Pp
+.\" .IR head .
+.\" .PP
 .\" The macro
-.\" .Nm LIST_FOREACH_SAFE
+.\" .BR LIST_FOREACH_SAFE ()
 .\" traverses the list referenced by
-.\" .Fa head
+.\" .I head
 .\" in the forward direction, assigning each element in turn to
-.\" .Fa var .
+.\" .IR var .
 .\" However, unlike
-.\" .Fn LIST_FOREACH
+.\" .BR LIST_FOREACH ()
 .\" here it is permitted to both remove
-.\" .Fa var
+.\" .I var
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm LIST_FOREACH_FROM_SAFE
+.\" .BR LIST_FOREACH_FROM_SAFE ()
 .\" behaves identically to
-.\" .Nm LIST_FOREACH_SAFE
+.\" .BR LIST_FOREACH_SAFE ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found LIST element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the LIST referenced by
-.\" .Fa head .
-.Pp
+.\" .IR head .
+.PP
 The macro
-.Nm LIST_INIT
+.BR LIST_INIT ()
 initializes the list referenced by
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm LIST_INSERT_HEAD
+.BR LIST_INSERT_HEAD ()
 inserts the new element
-.Fa elm
+.I elm
 at the head of the list.
-.Pp
+.PP
 The macro
-.Nm LIST_INSERT_AFTER
+.BR LIST_INSERT_AFTER ()
 inserts the new element
-.Fa elm
+.I elm
 after the element
-.Fa listelm .
-.Pp
+.IR listelm .
+.PP
 The macro
-.Nm LIST_INSERT_BEFORE
+.BR LIST_INSERT_BEFORE ()
 inserts the new element
-.Fa elm
+.I elm
 before the element
-.Fa listelm .
-.Pp
+.IR listelm .
+.PP
 The macro
-.Nm LIST_NEXT
+.BR LIST_NEXT ()
 returns the next element in the list, or NULL if this is the last.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm LIST_PREV
+.\" .BR LIST_PREV ()
 .\" returns the previous element in the list, or NULL if this is the first.
 .\" List
-.\" .Fa head
+.\" .I head
 .\" must contain element
-.\" .Fa elm .
-.Pp
+.\" .IR elm .
+.PP
 The macro
-.Nm LIST_REMOVE
+.BR LIST_REMOVE ()
 removes the element
-.Fa elm
+.I elm
 from the list.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm LIST_SWAP
+.\" .BR LIST_SWAP ()
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
-(LIST macros first appeared in
-.Bx 4.4 ).
+(LIST macros first appeared in 4.4BSD).
 .SH BUGS
 .SH EXAMPLES
-.Ss List example
-.Bd -literal
+.EX
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -289,5 +310,5 @@ main(void)
 
     exit(EXIT_SUCCESS);
 }
-.Ed
+.EE
 .SH SEE ALSO
-- 
2.28.0

