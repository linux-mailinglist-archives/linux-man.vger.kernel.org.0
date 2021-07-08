Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0885F3BF9EF
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 14:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbhGHMUC convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Thu, 8 Jul 2021 08:20:02 -0400
Received: from us-smtp-delivery-44.mimecast.com ([207.211.30.44]:26348 "EHLO
        us-smtp-delivery-44.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229552AbhGHMUB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Jul 2021 08:20:01 -0400
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-60oFprcYMOy7ryUWwYjM1g-1; Thu, 08 Jul 2021 08:17:17 -0400
X-MC-Unique: 60oFprcYMOy7ryUWwYjM1g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 304DD80006E
        for <linux-man@vger.kernel.org>; Thu,  8 Jul 2021 12:17:16 +0000 (UTC)
Received: from asgard.redhat.com (unknown [10.36.110.45])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 7274810016F7
        for <linux-man@vger.kernel.org>; Thu,  8 Jul 2021 12:17:15 +0000 (UTC)
Date:   Thu, 8 Jul 2021 14:17:13 +0200
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH v2] getrlimit.2: old_getrlimit/ugetrlimit and RLIM_INFINITY
 discrepancies
Message-ID: <20210708121713.GA15864@asgard.redhat.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=evgsyr@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man2/getrlimit.2 | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 648fd3c..f80c63d 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -646,6 +646,37 @@ The name of the glibc wrapper function is
 .BR prlimit ();
 the underlying system call is
 .BR prlimit64 ().
+The corresponding infinity value constant is provided in
+.I <linux/resource.h>
+as
+.BR RLIM64_INFINITY.
+.PP
+Original Linux implementation used signed types for limits; that was changed
+(along with the value of the
+.B RLIM_INFINITY
+constant)
+.\" http://repo.or.cz/davej-history.git/blobdiff/129f8758d8c41e0378ace0b6e2f56bbb8a1ec694..15305d2e69c3a838bacd78962c07077d2821f255:/include/linux/resource.h
+during 2.4 development cycle, as it wasn't compatible
+with Single UNIX Specification.
+However, in order to preserve backward compatibility, the routine
+.IR sys_old_getrlimit
+has been implemented under
+.B __NR_getrlimit
+syscall slot, with infinity checks being performed against hard-coded 0x7fffffff
+value, and the routine
+.I sys_getrlimit
+has been exposed under a new name,
+.BR ugetrlimit ().
+Note that most newer architectures don't have the latter, with
+.BR getrlimit ()
+providing proper implementation.
+Also worth noting that Several architectures decided not to change
+.B RLIM_INFINITY
+value: 32-bit mips and sparc (but not 64-bit variants, that switched
+to the new value of (~0UL)) retained the old 0x7fffffff value,
+and alpha retained 0x7ffffffffffffffful.
+.\" ...along with a request to call when one runs into it:
+.\" https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/alpha/include/uapi/asm/resource.h#n15
 .SH BUGS
 In older Linux kernels, the
 .B SIGXCPU
-- 
2.1.4

