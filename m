Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5BE28B3B6
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 13:23:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387894AbgJLLWf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 07:22:35 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:31841 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2387772AbgJLLWf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Oct 2020 07:22:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1602501754;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=Bj111R2b+hpU1gZV/Ca4ei5QtxV7CTpmZrfzqBf25eo=;
        b=ic9oK594dfXRdHAgb/ZpbpfJ8unpEDMaIzYqvxbhCaux0bpzGO5Z0fCDdmmUG+YGOucBqQ
        6g9wqvrkmdXq2d6cEWxQlW5sr9epvPrMpcKW5v5tzn7u2sXeyqPf/lwg5aLRizWn14Uag9
        reyCKJfEfBEhAGQdRRIgR7vcj1joIxI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-9YOZlF9BPwCfi0IQhlk38Q-1; Mon, 12 Oct 2020 07:22:32 -0400
X-MC-Unique: 9YOZlF9BPwCfi0IQhlk38Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 660751018F8B
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 11:22:31 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-137.ams2.redhat.com [10.36.112.137])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D6C266EF79
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 11:22:30 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] resolv.5: Document the trust-ad option
Date:   Mon, 12 Oct 2020 13:22:29 +0200
Message-ID: <87sgaj1yfe.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man5/resolv.conf.5 | 31 ++++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index 7013c8a28..6f3de7faf 100644
--- a/man5/resolv.conf.5
+++ b/man5/resolv.conf.5
@@ -35,9 +35,10 @@ The resolver configuration file contains information that is read
 by the resolver routines the first time they are invoked by a process.
 The file is designed to be human readable and contains a list of
 keywords with values that provide various types of resolver information.
-The configuration file is considered a trusted source of DNS information
-(e.g., DNSSEC AD-bit information will be returned unmodified from this
-source).
+The configuration file is considered a trusted source of DNS information;
+see the
+.B trust-ad
+option below for details.
 .PP
 If this file does not exist, only the name server on the local machine
 will be queried, and the search list contains the local domain name
@@ -317,6 +318,30 @@ Sets
 in
 .IR _res.options .
 This option disables automatic reloading of a changed configuration file.
+.TP
+.BR trust\-ad " (since glibc 2.31)"
+.\" 446997ff1433d33452b81dfa9e626b8dccf101a4
+Sets
+.BR RES_TRUSTAD
+in
+.IR _res.options .
+This option controls the AD bit behavior of the stub resolver.  If a
+validating resolver sets the AD bit in a response, it indicates that
+the data in the response was verified according to the DNSSEC
+protocol.  In order to rely on the AD bit, the local system has to
+trust both the DNSSEC-validating resolver and the network path to it,
+which is why an explicit opt-in is required.  If the
+.B trust\-ad
+option is active, the stub resolver sets the AD bit in outgoing DNS
+queries (to enable AD bit support), and preserves the AD bit in
+responses.  Without this option, the AD bit is not set in queries, and
+it is always removed from responses before they are returned to the
+application.  This means that applications can trust the AD bit in
+responses if the
+.B trust\-ad
+option has been set correctly.  In glibc version 2.30 and earlier, the
+AD is not set automatically in queries, and passed through unchanged
+to applications in responses.
 .RE
 .PP
 The \fIsearch\fP keyword of a system's \fIresolv.conf\fP file can be

-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

