Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF5DD10EB84
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2019 15:28:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727391AbfLBO2U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Dec 2019 09:28:20 -0500
Received: from us-smtp-2.mimecast.com ([207.211.31.81]:42413 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727386AbfLBO2U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Dec 2019 09:28:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1575296899;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=yvWoj2RElazfCKmcI6lWGuXQFpMc7V12T5Ez00Q/LJU=;
        b=UxF61fg7AywImAIn0opc2Owg5SfxIXndTOl2XVYsZWQ6PQfEYnpJQ3lrKMZXY/Ip+pyd38
        NMxnjafwwCB2N5N2Nw871Try6OgOIJ0OPs3HpG2s3ELLjbhmEPEPg0gBf5FuqhEALjS8Hz
        IT/+g/M9z6NrABQ5NW879k3/XKjEqaw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-53-2ns8TejvMaio4gp7p3SXoA-1; Mon, 02 Dec 2019 09:28:16 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E9111083893;
        Mon,  2 Dec 2019 14:28:15 +0000 (UTC)
Received: from dcbz.redhat.com (ovpn-116-141.ams2.redhat.com [10.36.116.141])
        by smtp.corp.redhat.com (Postfix) with ESMTP id B16785C3FD;
        Mon,  2 Dec 2019 14:28:14 +0000 (UTC)
From:   Adrian Reber <areber@redhat.com>
To:     mtk.manpages@gmail.com,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] clone.2: added clone3() set_tid information
Date:   Mon,  2 Dec 2019 15:27:40 +0100
Message-Id: <20191202142740.59402-1-areber@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 2ns8TejvMaio4gp7p3SXoA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Adrian Reber <areber@redhat.com>
---
 v2: applied changes from review (Michael and Christian)
---
 man2/clone.2 | 95 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index 076b9258e..c1691dd78 100644
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
@@ -285,6 +289,76 @@ options when waiting for the child with
 If no signal (i.e., zero) is specified, then the parent process is not sig=
naled
 when the child terminates.
 .\"
+.SS The set_tid array
+.PP
+By default, the kernel chooses the next sequential PID for the new
+process in each of the PID namespaces where it is present.
+When creating a process with
+.BR clone3 (),
+the
+.I set_tid
+array can be used to select specific PIDs for the process in some
+or all of the PID namespaces where it is present.
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
+deeply nested PID namespace and all following entries contain the PID of t=
he
+corresponding parent PID namespace. The number of PID namespaces in which =
a PID
+should be set is defined by
+.I set_tid_size
+which cannot be larger than the number of currently nested PID namespaces.
+.PP
+To create a process with the following PIDs in a PID namespace hierarchy:
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
+Set the array to:
+.PP
+.EX
+=09set_tid[0] =3D 7;
+=09set_tid[1] =3D 42;
+=09set_tid[2] =3D 31496;
+=09set_tid_size =3D 3;
+.EE
+.PP
+If only the PIDs in the two innermost PID namespaces
+need to be specified, set the array to:
+.PP
+.EX
+=09set_tid[0] =3D 7;
+=09set_tid[1] =3D 42;
+=09set_tid_size =3D 2;
+.EE
+.PP
+The PID in the PID namespaces outside the two innermost PID namespaces
+will be selected the same way as any other PID is selected.
+.PP
+The
+.I set_tid
+feature requires
+.RB CAP_SYS_ADMIN
+in all owning user namespaces of the target PID namespaces.
+.\"
 .SS The flags mask
 .PP
 Both
@@ -1201,6 +1275,11 @@ will be set appropriately.
 Too many processes are already running; see
 .BR fork (2).
 .TP
+.BR EEXIST " (" clone3 "() only)"
+One or more of the PIDs specified in
+.I set_tid
+already exists in the corresponding PID namespace.
+.TP
 .B EINVAL
 .B CLONE_SIGHAND
 was specified in the
@@ -1379,6 +1458,15 @@ in the
 .I flags
 mask.
 .TP
+.BR EINVAL " (" clone3 "() only)"
+.I set_tid_size
+larger than current number of nested PID namespaces.
+.TP
+.BR EINVAL " (" clone3 "() only)"
+If one of the PIDs specified in
+.I set_tid
+was an invalid PID.
+.TP
 .B ENOMEM
 Cannot allocate sufficient memory to allocate a task structure for the
 child, or to copy those parts of the caller's context that need to be
@@ -1450,6 +1538,13 @@ mask and the caller is in a chroot environment
 (i.e., the caller's root directory does not match the root directory
 of the mount namespace in which it resides).
 .TP
+.BR EPERM " (" clone3 "() only)"
+.I set_tid_size
+was greater than zero, and the caller lacks the
+.B CAP_SYS_ADMIN
+capability in one or more of the user namespaces that own the
+corresponding PID namespaces.
+.TP
 .BR ERESTARTNOINTR " (since Linux 2.6.17)"
 .\" commit 4a2c7a7837da1b91468e50426066d988050e4d56
 System call was interrupted by a signal and will be restarted.

base-commit: daf57a6ae0d9662cadde3bd750e14253036f6fde
prerequisite-patch-id: 517c3fcf393b318a0711f33a93c75a65feca17ca
--=20
2.23.0

