Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01A9955C9C6
	for <lists+linux-man@lfdr.de>; Tue, 28 Jun 2022 14:57:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242568AbiF1J6Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Jun 2022 05:58:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244326AbiF1J6X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Jun 2022 05:58:23 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 152201178
        for <linux-man@vger.kernel.org>; Tue, 28 Jun 2022 02:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1656410300;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=UIuxxqSaaKqvM4Y6rRMk120fyWmyyPsgazorgdkBL5A=;
        b=XQ2YR2vrFALgTSs6rUVOL2fTwfjrfeG7tkkGpNTFdxT7VtKa+xhwB5xjsBmBRvKiGxyk8g
        +dgrdbKtRcz1xg/OzXAfFFw1F51Lzky7HPVlhtV/+cJWz3G+PtOn7A12xIL2qZvYwDd+zx
        HLy/AYSodP4KDMjmcBCvKlzxBM7uDBk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-364-ZvfY_H4MMYi7uaUFy7-00A-1; Tue, 28 Jun 2022 05:58:19 -0400
X-MC-Unique: ZvfY_H4MMYi7uaUFy7-00A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EEF9780029D
        for <linux-man@vger.kernel.org>; Tue, 28 Jun 2022 09:58:18 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.193.0])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 557A51121314
        for <linux-man@vger.kernel.org>; Tue, 28 Jun 2022 09:58:18 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] resolv: Document RES_NOAAAA and no-aaaa stub resolver options
Date:   Tue, 28 Jun 2022 11:58:16 +0200
Message-ID: <87o7ydgldz.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man3/resolver.3    |  8 ++++++++
 man5/resolv.conf.5 | 15 +++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/man3/resolver.3 b/man3/resolver.3
index fa3e7971d..489b1e231 100644
--- a/man3/resolver.3
+++ b/man3/resolver.3
@@ -407,6 +407,14 @@ This option implies
 .B RES_NOTLDQUERY
 Do not look up unqualified name as a top-level domain (TLD).
 .TP
+.B RES_NOAAAA
+Suppress queries for AAAA (IPv6 address) records.  See the description
+of the
+.B no-aaaa
+option in
+.BR resolv.conf (5)
+for details.
+.TP
 .B RES_DEFAULT
 Default option which implies:
 .BR RES_RECURSE ,
diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index 81ed51b98..a0638bd85 100644
--- a/man5/resolv.conf.5
+++ b/man5/resolv.conf.5
@@ -349,6 +349,21 @@ option has been set correctly.
 In glibc version 2.30 and earlier,
 the AD is not set automatically in queries,
 and is passed through unchanged to applications in responses.
+.TP
+.BR no\-aaaa " (since glibc 2.35)"
+.\" glibc commit f282cdbe7f436c75864e5640a409a10485e9abb2
+Sets
+.B RES_NOAAAA
+in
+.IR _res.options .
+This option disables outgoing AAAA (IPv6 address) queries in the stub
+resolver.  If necessary, AAAA queries are translated into A queries,
+to probe for the existence of host names.  (This preserves different
+error results for missing address data and hosts that do not exist.)
+This option is intended for diagnosing name resolution problems and to
+verify that automatic AAAA queries do not contribute to any DNS
+issues.  If the system has configured any IPv6 name servers, they can
+still be used even if this option is active.
 .RE
 .PP
 The \fIsearch\fP keyword of a system's \fIresolv.conf\fP file can be

