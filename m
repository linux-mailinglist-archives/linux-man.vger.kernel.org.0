Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F71B619F42
	for <lists+linux-man@lfdr.de>; Fri,  4 Nov 2022 18:52:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231824AbiKDRwo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Nov 2022 13:52:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231849AbiKDRwm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Nov 2022 13:52:42 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96B1432065
        for <linux-man@vger.kernel.org>; Fri,  4 Nov 2022 10:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1667584300;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=leoXDhqIhqH0KG4xZ8stqR6MRSgC8J0Ko3K6x1MMqu4=;
        b=X/viF+zeTVxIvU5ccSfATnAb0lW+0Z0kqUaymlnMksG2B7/9oU+rMo1srK/+/DAB9BGfea
        EZOr24Z5ASLjDGH14OkV7aIlRj3UudRgCMTBOGcknGCPuCe+rKt2YW42NXZzchYBadwNXQ
        s9AxMUX5lCGT7ViP7BFClaiYDt79MzU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-246-pFj14f1mNv2vdJ0yB13-Tw-1; Fri, 04 Nov 2022 13:51:39 -0400
X-MC-Unique: pFj14f1mNv2vdJ0yB13-Tw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 566641C05149;
        Fri,  4 Nov 2022 17:51:39 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.19])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C51AD40C83EC;
        Fri,  4 Nov 2022 17:51:38 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2] nsswitch.conf.5: Current glibc reloads this
 configuration file
Date:   Fri, 04 Nov 2022 18:51:36 +0100
Message-ID: <87sfiyy5ef.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The implementation happened across multiple glibc commits, but the work
was completed for glibc 2.33.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
v2: Semantic line breaks.
 man5/nsswitch.conf.5 | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/man5/nsswitch.conf.5 b/man5/nsswitch.conf.5
index 098585cf1..b4c5b865a 100644
--- a/man5/nsswitch.conf.5
+++ b/man5/nsswitch.conf.5
@@ -402,11 +402,13 @@ for respective databases:
 .PD
 .RE
 .SH NOTES
-Within each process that uses
-.BR nsswitch.conf ,
-the entire file is read only once.
-If the file is later changed, the
-process will continue using the old configuration.
+Starting with glibc 2.33,
+.\" https://sourceware.org/bugzilla/show_bug.cgi?id=12459
+.B nsswitch.conf
+is automatically reloaded if the file is changed.
+In earlier versions, the entire file was read only once within each process.
+If the file was later changed,
+the process would continue using the old configuration.
 .PP
 Traditionally, there was only a single source for service information,
 often in the form of a single configuration

base-commit: b106cd5bf43fe806100bb5266b78f92bac90b6e0

