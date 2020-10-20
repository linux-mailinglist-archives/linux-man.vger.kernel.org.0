Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35DAB293E88
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408024AbgJTOXa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOX3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:29 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DFE1C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:29 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b127so2122095wmb.3
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7MaAczWTr2iQizpJfhE0y5gjIiNjIx/hVgPET9/9ego=;
        b=Jl01OJnCcOHzrz+Oidwd8Xd7qliM6hT7pI4vKGZayAa4D88WZwUq+Tj+Yk9d4ZXUqC
         ta4MccKtCN7np1T5Vt06jWXeuxSlKyzEDy2IK74AG49JhwwaEVmIx2QntB92hwNcH9sm
         NTaC3Dph7mzly3iiCAeWezVcl1C+CO1sow6TJjtpnz1gDQbDZ71YGeeAIWaQHVdp5VVi
         Ku8/Y9sd1djnGeZ6u+MVM1Lj8UCK5Vxw3k1KrSVlzYHj/wVBAXgFV1hfiD25U803s7sW
         M1rhRzEHzZKWi04fsd0n377jyqMYfkD0gHrA+sYXvUh77jeskH3s8pa2HWF7rvw4b2SZ
         0ItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7MaAczWTr2iQizpJfhE0y5gjIiNjIx/hVgPET9/9ego=;
        b=ImrHLUHd+8hQWofWaTimRl5dGRuB/+5gs5I8/niZaldfr0pEfODgUHg7wrxNZIxFpd
         N6Vi8Tf9zgO7WLqoLCi5DsgSKd/6dnIaqhCC4DNtanOw9Ut6yTUbtN/lhjS0irTfxh3K
         6eOIoR15vqBnwZOARWkWPPKqVoNSkg8y5QVahDT1cLXUi+O39zhIeAHNslF4zFXsP0WB
         GOQJVCsSgjN8IYB4x5yGMutltMVTa6yXaBjC9/fMvNNKcQPvkf13z2Lj9r7Il26KQDCs
         QFl5cZwKZF5yqf8V9/DWxK1Qyqc6bmpAVSQ85FkH5wp1AV9vs+UnqDHA28L09AyYLMAH
         B7cg==
X-Gm-Message-State: AOAM530U+7CTOT92N84sHf7HIeLqnl8jT80urxvRd6lxhlBMuXZ+mFG3
        rXn3V+vG3ha6V4lBobcU1uk=
X-Google-Smtp-Source: ABdhPJwsjpGB6iowgIFrUcKkyN3EMiaQxC7FCOuaFUgCof9G0ab86r1aseIWr5LzD/RS154Mt7LWHA==
X-Received: by 2002:a1c:9641:: with SMTP id y62mr3316642wmd.145.1603203808191;
        Tue, 20 Oct 2020 07:23:28 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:27 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/22] list.3: SYNOPSIS: ffix: Use man markup
Date:   Tue, 20 Oct 2020 16:21:32 +0200
Message-Id: <20201020142146.61837-8-colomar.6.4.3@gmail.com>
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
 man3/list.3 | 57 ++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 37 insertions(+), 20 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 0ea135900..8af4ccfd6 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -50,26 +50,43 @@ LIST_REMOVE
 .\"LIST_SWAP
 \- implementation of a doubly-linked list
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
 .SH RETURN VALUE
 .SH CONFORMING TO
-- 
2.28.0

