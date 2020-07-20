Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64E4F225C46
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 12:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728215AbgGTKAc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 06:00:32 -0400
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:53692 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727120AbgGTKAb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 06:00:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1595239230;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=xZjiLYrtwBhGDlkUS0DDBmXWexHYsZa7WnQ3c00we38=;
        b=CHgVSB0uKkDm70RbCxoKwwvDmFFlC5ynlP6GAjd3Vfx6V+Af4Hwep4nnsOdzq+FJI5uObV
        uhTWMnCrAj5ktM8x6OcwQez/hHgePyQpkrrJ8hr9VaoLFHtVqeQFPLNYQ+5Y/xNnFARAJ0
        OErjAygVqGO5jsLR2xwADrpnh2a4kuA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-138-qDBlZgwgNv-a9aQG9OKG9A-1; Mon, 20 Jul 2020 06:00:26 -0400
X-MC-Unique: qDBlZgwgNv-a9aQG9OKG9A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4BFF100CCC1
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 10:00:25 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-226.ams2.redhat.com [10.36.112.226])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F918619C4;
        Mon, 20 Jul 2020 10:00:24 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     sguelton@redhat.com
Subject: [PATCH] ld.so.8: List more places in which dynamic string tokens are expanded
Date:   Mon, 20 Jul 2020 12:00:23 +0200
Message-ID: <87zh7uy094.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This happens for more than just DT_RPATH/DT_RUNPATH.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man8/ld.so.8 | 42 +++++++++++++++++++++++++++++++++++++-----
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 2e98b7f5a..80f57a541 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -97,12 +97,41 @@ and then
 If the binary was linked with the
 .B \-z nodeflib
 linker option, this step is skipped.
-.SS Rpath token expansion
+.SS Dynamic string tokens
 .PP
-The dynamic linker
-understands certain token strings in an rpath specification
-(DT_RPATH or DT_RUNPATH).
-Those strings are substituted as follows:
+In several places, the dynamic linker expands dynamic string tokens:
+.IP o 3
+In the environment variables
+.BR LD_LIBRARY_PATH ,
+.BR LD_PRELOAD ,
+and
+.BR LD_AUDIT ,
+.IP o 3
+inside the values of the dynamic section tags
+.BR DT_NEEDED ,
+.BR DT_RPATH ,
+.BR DT_RUNPATH ,
+.BR DT_AUDIT ,
+and
+.BR DT_DEPAUDIT
+of ELF binaries,
+.IP o 3
+in the arguments to the
+.B ld.so
+command line options
+.BR \-\-audit ,
+.BR \-\-library-path ,
+and
+.B \-\-preload
+(see below), and
+.IP o 3
+in the file name arguments to the
+.BR dlopen (3)
+and
+.BR dlmopen (3)
+functions.
+.PP
+The substituted tokens are as follows.
 .TP
 .IR $ORIGIN " (or equivalently " ${ORIGIN} )
 This expands to
@@ -156,6 +185,9 @@ value in the auxiliary vector (see
 .\"
 .\" ld.so lets names be abbreviated, so $O will work for $ORIGIN;
 .\" Don't do this!!
+.PP
+Note that the dynamic string tokens have to be quoted properly when
+set from a shell, to prevent their expension as environment variables.
 .SH OPTIONS
 .TP
 .BI \-\-audit " list"

