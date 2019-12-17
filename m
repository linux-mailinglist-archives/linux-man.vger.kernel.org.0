Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CC854122F9F
	for <lists+linux-man@lfdr.de>; Tue, 17 Dec 2019 16:05:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727241AbfLQPFP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Dec 2019 10:05:15 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:29275 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726560AbfLQPFO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Dec 2019 10:05:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1576595112;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=NzcLjRKyGvd2leCu3+DtYFKhAnAKhvqOx1ehp08LlYA=;
        b=M9mQ6QfFU2LnyNTvLL4oz0HhRYyyjH5t4ps/63FY1md/uEzzkSL0FJDIC4pf7Lw1m/NPHQ
        2fkS6ollajY/18J0JxHjBmQB8q4Bog7xU7pNBN4aB0SGgSFi/YjJhza86Z4JTJogWkdSsN
        U0Flwr9J4CC5ITec35a7HT7VlxsvHOQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-T8POBjuCNIK1RORHaXHGrA-1; Tue, 17 Dec 2019 10:05:11 -0500
X-MC-Unique: T8POBjuCNIK1RORHaXHGrA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E90058024DA;
        Tue, 17 Dec 2019 15:05:09 +0000 (UTC)
Received: from dcbz.redhat.com (ovpn-116-77.ams2.redhat.com [10.36.116.77])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 0E3471001281;
        Tue, 17 Dec 2019 15:05:08 +0000 (UTC)
From:   Adrian Reber <areber@redhat.com>
To:     mtk.manpages@gmail.com,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] clone.2: added clone3() set_tid information
Date:   Tue, 17 Dec 2019 16:05:05 +0100
Message-Id: <20191217150505.417628-1-areber@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Adrian Reber <areber@redhat.com>
---
 v2: applied changes from review (Michael and Christian)

 v3: added explanation about needing a PID 1 in a PID namespace
---
 man2/clone.2 | 99 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index 076b9258e..15a1b56f6 100644
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
@@ -262,6 +264,8 @@ flags & 0xff	exit_signal
 stack	stack
 \fP---\fP	stack_size
 tls	tls	See CLONE_SETTLS
+\fP---\fP	set_tid	See below for details
+\fP---\fP	set_tid_size
 .TE
 .RE
 .\"
@@ -285,6 +289,80 @@ options when waiting for the child with
 If no signal (i.e., zero) is specified, then the parent process is not s=
ignaled
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
+If the PID of the newly created process should only be set for the curre=
nt
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
+array can have multiple entries. The first entry defines the PID in the =
most
+deeply nested PID namespace and all following entries contain the PID of=
 the
+corresponding parent PID namespace. The number of PID namespaces in whic=
h a PID
+should be set is defined by
+.I set_tid_size
+which cannot be larger than the number of currently nested PID namespace=
s.
+.PP
+To create a process with the following PIDs in a PID namespace hierarchy=
:
+.RS
+.TS
+lb lb
+l l .
+PID NS level	Requested PID
+0 (host)	31496
+1	42
+2	7
+.TE
+.RE
+.PP
+Set the array to:
+.PP
+.EX
+	set_tid[0] =3D 7;
+	set_tid[1] =3D 42;
+	set_tid[2] =3D 31496;
+	set_tid_size =3D 3;
+.EE
+.PP
+If only the PIDs in the two innermost PID namespaces
+need to be specified, set the array to:
+.PP
+.EX
+	set_tid[0] =3D 7;
+	set_tid[1] =3D 42;
+	set_tid_size =3D 2;
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
+.PP
+Callers may only choose a PID > 1 in a given PID namespace if an init
+process (i.e. a process with PID 1) already exists. Otherwise the PID
+entry for this PID namespace must be 1.
+.\"
 .SS The flags mask
 .PP
 Both
@@ -1201,6 +1279,11 @@ will be set appropriately.
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
@@ -1379,6 +1462,15 @@ in the
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
@@ -1450,6 +1542,13 @@ mask and the caller is in a chroot environment
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

base-commit: 5373f62f1e4352e665c24dfe49b7e3fe03721cab
--=20
2.23.0

