Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DFB8F10C8E4
	for <lists+linux-man@lfdr.de>; Thu, 28 Nov 2019 13:47:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726565AbfK1MrS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Nov 2019 07:47:18 -0500
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:21559 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726320AbfK1MrS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Nov 2019 07:47:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1574945237;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OozbsofMN00Kv1rCJIYCWr4m+8D9WwynO7C8PbIsDTo=;
        b=fsvoM+EJvEu/u6XLMUVIkqUVZpnktYq5BMloMZ8cNujuYPVPtyK0B0uQZ3KQKGZ3SJs5oq
        HCiuCdVWu3tele23Py1YBUtQ6wKWJuEWDGH9n7lNEeINrPZZi3N1QrHDJ50bVXDi1D2C59
        bATnpX0DBHXVtlo69W5t2KC/jMw263o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-ploqLG4CMYSVfkoPA23N-Q-1; Thu, 28 Nov 2019 07:47:16 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A854800D4C;
        Thu, 28 Nov 2019 12:47:15 +0000 (UTC)
Received: from dcbz.redhat.com (ovpn-116-142.ams2.redhat.com [10.36.116.142])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 8A8AF5D9E1;
        Thu, 28 Nov 2019 12:47:14 +0000 (UTC)
From:   Adrian Reber <areber@redhat.com>
To:     mtk.manpages@gmail.com,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] clone.2: added clone3() set_tid information
Date:   Thu, 28 Nov 2019 13:46:50 +0100
Message-Id: <20191128124650.364810-2-areber@redhat.com>
In-Reply-To: <20191128124650.364810-1-areber@redhat.com>
References: <20191128124650.364810-1-areber@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: ploqLG4CMYSVfkoPA23N-Q-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Adrian Reber <areber@redhat.com>
---
 man2/clone.2 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index 076b9258e..59c13ec35 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -195,6 +195,8 @@ struct clone_args {
     u64 stack;        /* Pointer to lowest byte of stack */
     u64 stack_size;   /* Size of stack */
     u64 tls;          /* Location of new TLS */
+    u64 set_tid;      /* Pointer to a \fIpid_t\fP array */
+    u64 set_tid_size; /* Number of elements in \fIset_tid\fP */
 };
 .EE
 .in
@@ -262,6 +264,8 @@ flags & 0xff=09exit_signal
 stack=09stack
 \fP---\fP=09stack_size
 tls=09tls=09See CLONE_SETTLS
+\fP---\fP=09set_tid=09See below for details
+\fP---\fP=09set_tid_size
 .TE
 .RE
 .\"
@@ -285,6 +289,74 @@ options when waiting for the child with
 If no signal (i.e., zero) is specified, then the parent process is not sig=
naled
 when the child terminates.
 .\"
+.SS The set_tid array
+.PP
+The
+.I set_tid
+array is used to select a certain PID for the process to be created by
+.BR clone3 ().
+If the PID of the newly created process should only be set for the current
+PID namespace or in the newly created PID namespace (if
+.I flags
+contains
+.BR CLONE_NEWPID )
+then the first element in the
+.I set_tid
+array has to be the desired PID and
+.I set_tid_size
+needs to be 1.
+.PP
+If the PID of the newly created process should have a certain value in
+multiple PID namespaces the
+.I set_tid
+array can have multiple entries. The first entry defines the PID in the mo=
st
+nested PID namespace and all following entries contain the PID of the
+corresponding parent PID namespace. The number of PID namespaces in which =
a PID
+should be set is defined by
+.I set_tid_size
+which cannot be larger than the number of currently nested PID namespaces.
+.PP
+To create a process with the following PIDs:
+.RS
+.TS
+lb lb
+l l .
+PID NS level=09Requested PID
+0 (host)=0931496
+1=0942
+2=097
+.TE
+.RE
+.PP
+The
+.I set_tid
+array would need to be filled with:
+.PP
+.EX
+=09set_tid[0] =3D 7;
+=09set_tid[1] =3D 42;
+=09set_tid[2] =3D 31496;
+=09set_tid_size =3D 3;
+.EE
+.PP
+If only the PID of the two innermost PID namespaces
+should be defined it needs to be set like this:
+.PP
+.EX
+=09set_tid[0] =3D 7;
+=09set_tid[1] =3D 42;
+=09set_tid_size =3D 2;
+.EE
+.PP
+The PID in the PID namespaces outside the two innermost PID namespaces
+is then selected the same way as any other PID is selected.
+.PP
+Only a privileged process
+.RB ( CAP_SYS_ADMIN )
+can set
+.I set_tid
+to select a PID for the process to be created.
+.\"
 .SS The flags mask
 .PP
 Both
@@ -1379,6 +1451,16 @@ in the
 .I flags
 mask.
 .TP
+.BR EINVAL " (" clone3 "() only)"
+.I set_tid_size
+larger than current number of nested PID namespaces or maximum number of
+nested PID namespaces was specified.
+.TP
+.BR EINVAL " (" clone3 "() only)"
+If one of the PIDs specified in
+.I set_tid
+was an invalid PID.
+.TP
 .B ENOMEM
 Cannot allocate sufficient memory to allocate a task structure for the
 child, or to copy those parts of the caller's context that need to be
@@ -1450,6 +1532,14 @@ mask and the caller is in a chroot environment
 (i.e., the caller's root directory does not match the root directory
 of the mount namespace in which it resides).
 .TP
+.BR EPERM " (" clone3 "() only)"
+If
+.I set_tid
+with
+.I set_tid_size
+larger than 0 was specified by an unprivileged process (process without
+\fBCAP_SYS_ADMIN\fP).
+.TP
 .BR ERESTARTNOINTR " (since Linux 2.6.17)"
 .\" commit 4a2c7a7837da1b91468e50426066d988050e4d56
 System call was interrupted by a signal and will be restarted.
--=20
2.23.0

