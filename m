Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BAA627831D
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:48:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727201AbgIYIsr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:48:47 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:36551 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727132AbgIYIsr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:48:47 -0400
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1601023725;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=qULHxo34ubrFAP/cecI98Yo/UFPvTWyuZCdfTUMV0sM=;
        b=SHKNh+XLcTJY/HoEnlEwF3kzc9qAS0/uFzjM3zrdRxj+Nyp33VdF9Fw239lF93bpg2Yl+C
        T6WcVX1Q2pddssmWcLa0+HVc++Kzyr2tyiblsUgyoon/lv/YPKKAV0lRszO8eXAsw36taT
        fd9ppJ08eeHYcUxG4x+r6w8PwPMU/ek=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-G-SjrGfrMICftUsR3WGJEQ-1; Fri, 25 Sep 2020 04:48:43 -0400
X-MC-Unique: G-SjrGfrMICftUsR3WGJEQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D88B51084D81;
        Fri, 25 Sep 2020 08:48:42 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-114-84.ams2.redhat.com [10.36.114.84])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id F2F0460C17;
        Fri, 25 Sep 2020 08:48:38 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org, Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH] rtld-audit.7: Clarify la_version handshake
Date:   Fri, 25 Sep 2020 10:48:37 +0200
Message-ID: <87k0wifdi2.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Returning its argument without further checks is almost always
wrong for la_version.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man7/rtld-audit.7 | 36 +++++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index b1b7dfebc..21cc339d0 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -70,17 +70,30 @@ the auditing library.
 When invoking this function, the dynamic linker passes, in
 .IR version ,
 the highest version of the auditing interface that the linker supports.
-If necessary, the auditing library can check that this version
-is sufficient for its requirements.
 .PP
-As its function result,
-this function should return the version of the auditing interface
-that this auditing library expects to use (returning
+A typical implementation of this function simply returns the constant
+.BR LAV_CURRENT ,
+which indicates the version of
+.I <link.h>
+that was used to build the audit module.  If the dynamic linker does
+not support this version of the audit interface, it will refuse to
+activate this audit module.  If the function returns zero, the dynamic
+linker also does not activate this audit module.
+.PP
+In order to enable backwards compatibility with older dynamic linkers,
+an audit module can examine the
+.I version
+argument and return an earlier version than
+.BR LAV_CURRENT ,
+assuming the module can adjust its implementation to match the
+requirements of the previous version of the audit interface.  The
+.B la_version
+function should not return the value of
 .I version
-is acceptable).
-If the returned value is 0,
-or a version that is greater than that supported by the dynamic linker,
-then the audit library is ignored.
+without further checks because it could correspond to an interface
+that does not match the
+.I <link.h>
+definitions used to build the audit module.
 .SS la_objsearch()
 \&
 .nf
@@ -508,9 +521,10 @@ This is reportedly fixed in glibc 2.10.
 unsigned int
 la_version(unsigned int version)
 {
-    printf("la_version(): %u\en", version);
+    printf("la_version(): version = %u; LAV_CURRENT = %u\en",
+            version, LAV_CURRENT);
 
-    return version;
+    return LAV_CURRENT;
 }
 
 char *

-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

