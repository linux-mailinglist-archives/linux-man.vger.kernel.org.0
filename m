Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB4993DB02D
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 02:15:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235295AbhG3APi convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Thu, 29 Jul 2021 20:15:38 -0400
Received: from us-smtp-delivery-44.mimecast.com ([205.139.111.44]:44873 "EHLO
        us-smtp-delivery-44.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235124AbhG3APi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 20:15:38 -0400
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-Yj5iP5QgMdC0sflj9y47-w-1; Thu, 29 Jul 2021 20:15:29 -0400
X-MC-Unique: Yj5iP5QgMdC0sflj9y47-w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5579DDF8A3;
        Fri, 30 Jul 2021 00:15:28 +0000 (UTC)
Received: from asgard.redhat.com (unknown [10.36.110.5])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id E383660877;
        Fri, 30 Jul 2021 00:15:26 +0000 (UTC)
Date:   Fri, 30 Jul 2021 02:15:23 +0200
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v4] getrlimit.2: old_getrlimit/ugetrlimit and RLIM_INFINITY
 discrepancies
Message-ID: <20210730001523.GA5767@asgard.redhat.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Historically, Linux didn't follow SUS with respect to RLIM_INFINITY
signedness; it was changed during 2.4 development cycle, but in somewhat
peculiar and arch-dependent fashion due to backward compatibility
concerns.

Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
---
 man2/getrlimit.2 | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 648fd3c..df392a5 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -646,6 +646,40 @@ The name of the glibc wrapper function is
 .BR prlimit ();
 the underlying system call is
 .BR prlimit64 ().
+The corresponding infinity value constant is provided in
+.I <linux/resource.h>
+as
+.BR RLIM64_INFINITY.
+.PP
+Linux 2.2 and earlier versions used signed types for limits;
+that was changed
+(along with the value of
+.BR RLIM_INFINITY )
+.\" http://repo.or.cz/davej-history.git/blobdiff/129f8758d8c41e0378ace0b6e2f56bbb8a1ec694..15305d2e69c3a838bacd78962c07077d2821f255:/include/linux/resource.h
+during the 2.4 development cycle,
+as it was not compatible with the Single UNIX Specification.
+However, in order to preserve backward compatibility,
+the routine
+.IR sys_old_getrlimit
+was implemented for the
+.B __NR_getrlimit
+syscall slot,
+with infinity checks being performed against a literal 0x7fffffff value,
+and
+.I sys_getrlimit
+has been exposed under a new name,
+.BR ugetrlimit ().
+Most newer architectures do not have the latter, with
+.BR getrlimit ()
+providing the conforming implementation.
+However, several architectures decided not to change the
+.B RLIM_INFINITY
+value: 32-bit MIPS and SPARC
+(but not 64-bit variants, that switched to the new value of (~0UL))
+retained the old 0x7fffffff value,
+and Alpha retained 0x7ffffffffffffffful.
+.\" ...along with a request to call when one runs into it:
+.\" https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/alpha/include/uapi/asm/resource.h#n15
 .SH BUGS
 In older Linux kernels, the
 .B SIGXCPU
-- 
2.1.4

