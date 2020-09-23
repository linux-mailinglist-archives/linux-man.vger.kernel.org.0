Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B251275739
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 13:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726332AbgIWLiM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 07:38:12 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:22724 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726221AbgIWLiM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 07:38:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600861090;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=HsTm/HPcvCNXP4PB/uvWBSEMzv9An+Ym+octvp3ErYs=;
        b=c4iM+o6tBkrQCmJO0QHA635JuLM4XB6qPqRUOi+qWrImFTpvaM0g3FJUUxPVYrDebj0uYH
        gBxgQacZIrkbG/Xs5853PVJjwmry8gLWbX7YL4bNo3pWrddD2ralwiLGlA8iulbHjombSA
        jWXKne/cw581tYdwCyW9XA9kxH2DgSk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-4i-t4-CkNj-TPV1jd1F3FQ-1; Wed, 23 Sep 2020 07:38:09 -0400
X-MC-Unique: 4i-t4-CkNj-TPV1jd1F3FQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CDBB1007468;
        Wed, 23 Sep 2020 11:38:08 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-114-108.ams2.redhat.com [10.36.114.108])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B9CE7368E;
        Wed, 23 Sep 2020 11:38:07 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org
Subject: [PATCH] rtld-audit.7: Clarify la_version handshake
Date:   Wed, 23 Sep 2020 13:38:05 +0200
Message-ID: <874knosoyq.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Returning its argument without further checks is almost always
wrong for la_version.

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man7/rtld-audit.7 | 31 ++++++++++++++++++++++---------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index b1b7dfebc..ca8afa752 100644
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
+assuming the module can adjust its implement to match the requirements
+of the previous version of the audit interface.  The
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

-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

