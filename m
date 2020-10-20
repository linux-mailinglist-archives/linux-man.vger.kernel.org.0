Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9548293E8E
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408031AbgJTOXg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:36 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07660C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:36 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id g12so2384736wrp.10
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sYyqCojHCwoa05BbXg/wOATj1nIXJ99/p180jGPHtFE=;
        b=JRjMfu0TffwrRzyDAzMmomTz2U6/Aqf8P5BYkDiwvdsn0qW9El5P03qYB4L2rm8T85
         FHxcXuEvmFmYC1JsiqR4TaGMkmN8B/eLX6zKlKFLOjSc1GjnKQ13QpR4Zjd6PWPShyxF
         fjoerqzY6hg8KQsZOb08+PPh0Gfsfsu10D5ZXKUqxPAFP4INqZwYjd1L0QIY4sXbD7Cb
         JSRSkltHRU4h6CSK6Tzc9IsK8zARc/TqETOZ20YxiYzH7Tb1f/8jDK0wlBjHfLcB34bq
         SgyvYuiD9P7zRrbqp6OKxj4xEKP6/TCdPuEEWkHz4DWaFAzWXWwe701+jUpvUJwZ20s/
         IjMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sYyqCojHCwoa05BbXg/wOATj1nIXJ99/p180jGPHtFE=;
        b=aQao6/aYmcotZEulzBdfR0iYXtnKN90YmjtPBfAslAGtXifVNtj3z9yMJFn5AqSBrC
         /MVNWdAcONbzQ02iNf8Y5Y+Gl+8BLahwfCWkgpJWeOiU25SJgWUQCuSMORLDLXCvY5Zt
         kx6vh/8b7fhGaYUBXF1RNIHjcZBNEEonV1cSwowjbXt6Mtvz6NabaQlxZBQiBRhm2ZIN
         jApjFlJLwgosuDmxyodR+xSWmQkoxl+iApyHvVs48UCjfQI0Aln+XXMGfp01e0kK0RG7
         AbiVSTgDMtv3smGl3vZDwTTBMdN+R9nz+OxiWI3ywtXvjjH+Vjav56uQwhXljtmk7+lA
         TihQ==
X-Gm-Message-State: AOAM5309sT6faByGw7MUrBuOy22ZdrDjJpKYByFg96C/oDGGQqGXuWDI
        ThCESZeOXhDQxv8emGgNPQw=
X-Google-Smtp-Source: ABdhPJxUX69B8ryCORJLEiUHrZu8nL012bHbuwCMriZ4XIs2M7cm4fyeI6cnfNsJxneDM96VmYki7Q==
X-Received: by 2002:adf:fac4:: with SMTP id a4mr4120790wrs.172.1603203814701;
        Tue, 20 Oct 2020 07:23:34 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:34 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 13/22] list.3: DESCRIPTION: ffix: Use man markup
Date:   Tue, 20 Oct 2020 16:21:38 +0200
Message-Id: <20201020142146.61837-14-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 154 +++++++++++++++++++++++++++-------------------------
 1 file changed, 80 insertions(+), 74 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 3c25b3e55..5b2a72fdb 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -102,9 +102,9 @@ The argument
 is the name of a user defined structure that must be declared
 using the macro
 .BR LIST_HEAD ().
-.Ss Lists
+.PP
 A list is headed by a structure defined by the
-.Nm LIST_HEAD
+.BR LIST_HEAD ()
 macro.
 This structure contains a single pointer to the first element
 on the list.
@@ -113,143 +113,149 @@ removed without traversing the list.
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
-.Pp
+.\" .IR head2 .
+.PP
 See the EXAMPLES section below for an example program using a linked list.
 .SH RETURN VALUE
 .SH CONFORMING TO
-- 
2.28.0

