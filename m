Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 031EEF2DE6
	for <lists+linux-man@lfdr.de>; Thu,  7 Nov 2019 13:06:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727142AbfKGMGc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Nov 2019 07:06:32 -0500
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:20449 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726873AbfKGMGc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Nov 2019 07:06:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1573128390;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=5l8lqhgl7ya+vo0DIFwM3Kuy+mhBl09U74Yubx7k6Rw=;
        b=WHn2ilEfDNLwZw29Y8wFUol7yuLR9KN5qkW6KXuGIEbmiNhnIcEnXrDBkN0hOL6wzLVwYv
        /yt1Kr94pTMV8F7c3aO5r19NT5fQy0W1V+dfcOVIOAuvP7jFtQHInqfGdWCSZQRKHfiJ4m
        Yq6Xn2YKPVZBMTC5jrIMNYuvY8pEXFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232--UhouGX1P5GZNzPUiZuiPQ-1; Thu, 07 Nov 2019 07:06:29 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 745CF1005500
        for <linux-man@vger.kernel.org>; Thu,  7 Nov 2019 12:06:28 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-200.str.redhat.com [10.33.192.200])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id F170A5DA76
        for <linux-man@vger.kernel.org>; Thu,  7 Nov 2019 12:06:27 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man <linux-man@vger.kernel.org>
Subject: [PATCH] resolv.conf(5): Attempt clarify domain/search interaction
Date:   Thu, 7 Nov 2019 13:05:14 +0100
Message-ID: <874kzfki0t.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: -UhouGX1P5GZNzPUiZuiPQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The domain directive is historic at this point; it should not be used.
---
 man5/resolv.conf.5 | 41 ++++++++++++++++++++---------------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index 49a8eed4c..2ffe973a1 100644
--- a/man5/resolv.conf.5
+++ b/man5/resolv.conf.5
@@ -39,10 +39,9 @@ The configuration file is considered a trusted source of=
 DNS information
 (e.g., DNSSEC AD-bit information will be returned unmodified from this
 source).
 .PP
-If this file does not exist,
-only the name server on the local machine will be queried;
-the domain name is determined from the hostname
-and the domain search path is constructed from the domain name.
+If this file does not exist, only the name server on the local machine
+will be queried, and the search list contains the local domain name
+determined from the hostname.
 .PP
 The different configuration options are:
 .TP
@@ -63,20 +62,14 @@ try the next, until out of name servers,
 then repeat trying all the name servers
 until a maximum number of retries are made.)
 .TP
-\fBdomain\fP Local domain name.
-Most queries for names within this domain can use short names
-relative to the local domain.
-If set to \(aq.\(aq, the root domain is considered.
-If no \fBdomain\fP entry is present, the domain is determined
-from the local hostname returned by
-.BR gethostname (2);
-the domain part is taken to be everything after the first \(aq.\(aq.
-Finally, if the hostname does not contain a domain part, the root
-domain is assumed.
-.TP
 \fBsearch\fP Search list for host-name lookup.
-The search list is normally determined from the local domain name;
-by default, it contains only the local domain name.
+By default, the search list contains one entry, the local domain name.
+It is determined from the local hostname returned by
+.BR gethostname (2);
+the local domain name is taken to be everything after the first
+\(aq.\(aq.  Finally, if the hostname does not contain a \(aq.\(aq, the
+root domain is assumed as the local domain name.
+.IP
 This may be changed by listing the desired domain search path
 following the \fIsearch\fP keyword with spaces or tabs separating
 the names.
@@ -104,11 +97,21 @@ traffic if the servers for the listed domains are not =
local,
 and that queries will time out if no server is available
 for one of the domains.
 .IP
+If there are multiple
+.B search
+directives, only the search list from the last instance is used.
+.IP
 In glibc 2.25 and earlier, the search list is limited to six domains
 with a total of 256 characters.
 Since glibc 2.26,
 .\" glibc commit 3f853f22c87f0b671c0366eb290919719fa56c0e
 the search list is unlimited.
+.IP
+The
+.B domain
+directive is an obsolete name for the
+.B search
+directive that handles one search list entry only.
 .TP
 \fBsortlist\fP
 This option allows addresses returned by
@@ -315,10 +318,6 @@ in
 This option disables automatic reloading of a changed configuration file.
 .RE
 .PP
-The \fIdomain\fP and \fIsearch\fP keywords are mutually exclusive.
-If more than one instance of these keywords is present,
-the last instance wins.
-.PP
 The \fIsearch\fP keyword of a system's \fIresolv.conf\fP file can be
 overridden on a per-process basis by setting the environment variable
 .B LOCALDOMAIN
--=20
2.21.0

