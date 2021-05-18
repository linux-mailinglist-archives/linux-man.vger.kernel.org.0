Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF883388188
	for <lists+linux-man@lfdr.de>; Tue, 18 May 2021 22:40:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235718AbhERUmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 May 2021 16:42:04 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:37988 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234956AbhERUmE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 May 2021 16:42:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1621370445;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=w69KpmnHPYVDfRCSyWWa/+3eoFxNzS1wuEoBHG1tW9A=;
        b=ESjJqyUYCS53SyriQZjBUz8ZQ95SfBKDRmpdYlSJsxt1nohxohcKg5rYrPycWYf1ekmHB1
        is1PFRLPR0fb9xMk+X1cBWl3A9WDZ6is5ayWApOGDC5VVVee1I3e7S2fVw1mBOzZ2+nQ3Q
        vwlcJQGfM/b8CekO0xsEGPPvdgceHBQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-2cJUuQBfOz2tKyDeQ1lp1w-1; Tue, 18 May 2021 16:40:42 -0400
X-MC-Unique: 2cJUuQBfOz2tKyDeQ1lp1w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 987C91007476
        for <linux-man@vger.kernel.org>; Tue, 18 May 2021 20:40:41 +0000 (UTC)
Received: from oldenburg.str.redhat.com (ovpn-112-137.ams2.redhat.com [10.36.112.137])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id F1D38BA6D
        for <linux-man@vger.kernel.org>; Tue, 18 May 2021 20:40:40 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] sigalstack.2: Mention the need for separate signal stacks
 for threads
Date:   Tue, 18 May 2021 22:40:38 +0200
Message-ID: <87h7iz4vy1.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man2/sigaltstack.2 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
index 53268ccbe..1510a98ab 100644
--- a/man2/sigaltstack.2
+++ b/man2/sigaltstack.2
@@ -54,7 +54,10 @@ alternate signal stack.
 An alternate signal stack is used during the
 execution of a signal handler if the establishment of that handler (see
 .BR sigaction (2))
-requested it.
+requested it using the
+.B SA_ONSTACK
+flag.  Each thread that can execute such signal handlers needs its own
+separate alternate signal stack.
 .PP
 The normal sequence of events for using an alternate signal stack
 is the following:
@@ -67,7 +70,7 @@ signal stack.
 Use
 .BR sigaltstack ()
 to inform the system of the existence and
-location of the alternate signal stack.
+location of the alternate signal stack for the current thread.
 .TP
 3.
 When establishing a signal handler using

