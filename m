Return-Path: <linux-man+bounces-1468-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BA09317EB
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 17:56:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87792B21973
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 15:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A7AEAD5;
	Mon, 15 Jul 2024 15:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="QwRqRkIK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CC2E552
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 15:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058970; cv=none; b=SdtFkYVxI13xdrJBwHwKxJSWJWHF79FwVvgd9rRCOgWDHjegHz+79ifMwK/6szvMpTM0ASMttnD5oWx8fPUTXENjc1C3YNt5KUlyB5OtIVyYDn/iRC3Gwjg9oM0EK0QPmbUryo/lg21SXXKRumssaagFMZxR4LMTursY+qu819o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058970; c=relaxed/simple;
	bh=9UXu4egbdoTpd8rhetMLw6BOBoVxJzBQGVvXBaqpU5Y=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=IXHbaWJHAWQLgr0Mdtk2WxdhFBeUcyMXNakD6nFDfTwdzRqKu4LM+BSLSqf5A6f8Atsnf7mExJ9NPv93GnH/97NUHq/8C8riBiuMvU0HQv1LRK0iQTt2ElS/ySITyT06i0rUdU9VN9A4+8T/58b+o+efLOA7tg6h8KWHSbpie8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=QwRqRkIK; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e036440617fso8566553276.1
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 08:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721058967; x=1721663767; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Q/wJ+pkBMSRZCbbscpvelitV/puClZ8zcJRK/6GgwI=;
        b=QwRqRkIK5SRysn//efI81IkaXa5LhYPlzI13lA89k/pGpC3B1nl1FhaOF+cZAtaJA1
         z7Hkyc3huQ0jEohFm9e3RlVzsziTD255uvFna6yk0Eodv7beTeCnWiPCcc1xHdlbYQUt
         qfcJ4MSSyhzenFQWg9kmFuluGiAPoB/9s/LcD7vpLjAmf3xDAj+ggV97EpErx8SiFnbe
         dglBOkc94uje7UnCu2EdDSMCGPAzDbJclRlPR3eeY91/IBTq36fJm8DLcPnR7ZBPkfWK
         RJDOALEfkDoz2nXlSqcISwZLXBE+5ZK0QDff4h6s65ZR/miuiLGi+Er5HkLqWAgVv/gM
         3yvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058967; x=1721663767;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2Q/wJ+pkBMSRZCbbscpvelitV/puClZ8zcJRK/6GgwI=;
        b=MQUDzYclj0udDV+XnacfEhaWLJs8lf1TBPKbeowN9RKlrUcYwTGz7Tl02LIpH0KcL7
         A6s2mh8HQ7Rr1vzXg6e0lwpPJYAJGqMCuMU3yEFeyID3XAlYvkv4aLnRBJ0Kpe3KJO43
         Kbj7EAJMIBclCGcTOvysh+EWC2g+K3RcAhJEct4ZrFGZqrHdIChzh2mARfoKuv0UH9Sw
         E6LX60/TWbDnJmWlU9iE+IQMip++ViMajZYkA98Y5K8b3Qkkbw+6sboPbvrIwQ5R3w36
         /nOPiZmJ3S4cEAtm9SSZ3z6/3taEY1fv6qIi5KG2q9rmgMGllR+HsFRzuN/Jn/r0+LAB
         6ndw==
X-Forwarded-Encrypted: i=1; AJvYcCWoeyNT2WgnKUd93pSTmkWEPXTEEuxKEwHDZUBUHaE3uh+o/6D1iEZeaFr9wWWZzfBxOroVqFwhTyLW7JiLMtg2tvUwgGobDI57
X-Gm-Message-State: AOJu0Yytjpc+zuoYY9bkLEVwRs/9wo5R2QJtiCJfUso9TzesZkkgFM7f
	K/YU/xcpEjQypcLS+SeQHZh+Zj/qTXpOj7lOo1t+o3CrOg1M1I4xr4OKguXy/03dnDkJV1jYdDh
	ODw==
X-Google-Smtp-Source: AGHT+IGJmlOU6YmgoFto8+8gEn74gbFRwpM507eVB+6pDXiqG8bvlHRdPWuUUlukyLupX0Ib7trZbzx/tw8=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:1ac9:b0:e03:572c:30d8 with SMTP id
 3f1490d57ef6-e041b1e39efmr1048330276.11.1721058967594; Mon, 15 Jul 2024
 08:56:07 -0700 (PDT)
Date: Mon, 15 Jul 2024 15:55:53 +0000
In-Reply-To: <20240715155554.2791018-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240715155554.2791018-1-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.993.g49e7a77208-goog
Message-ID: <20240715155554.2791018-5-gnoack@google.com>
Subject: [PATCH 4/5] landlock.7, landlock_*.2: Document Landlock ABI version 4
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.

The intent is to bring the man pages mostly in line with the kernel
documentation again.  I intentionally did not add networking support to the
usage example in landlock.7 - I feel that in the long run, we would be bett=
er
advised to maintain longer example code in the kernel samples.

Link: https://github.com/landlock-lsm/linux/issues/32
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2/landlock_add_rule.2       | 74 ++++++++++++++++++++++++++----
 man/man2/landlock_create_ruleset.2 | 12 ++++-
 man/man7/landlock.7                | 23 ++++++++--
 3 files changed, 94 insertions(+), 15 deletions(-)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index 530b45947..a0ab13419 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -20,15 +20,14 @@ Standard C library
 .BI "            const void *" rule_attr ", uint32_t " flags );
 .fi
 .SH DESCRIPTION
-A Landlock rule describes an action on an object.
-An object is currently a file hierarchy,
-and the related filesystem actions
-are defined with a set of access rights.
-This
+A Landlock rule describes an action on an object
+which the process intends to perform.
+A set of rules is aggregated in a ruleset,
+which can then restrict the thread enforcing it, and its future children.
+.P
+The
 .BR landlock_add_rule ()
-system call enables adding a new Landlock rule to an existing ruleset
-created with
-.BR landlock_create_ruleset (2).
+system call adds a new Landlock rule to an existing ruleset.
 See
 .BR landlock (7)
 for a global overview.
@@ -42,10 +41,15 @@ identifies the structure type pointed to by
 .IR rule_attr .
 Currently, Linux supports the following
 .I rule_type
-value:
+values:
 .TP
 .B LANDLOCK_RULE_PATH_BENEATH
-This defines the object type as a file hierarchy.
+For these rules,
+the object is a file hierarchy,
+and the related filesystem actions
+are defined with
+.IR "filesystem access rights" .
+.IP
 In this case,
 .I rule_attr
 points to the following structure:
@@ -74,6 +78,45 @@ is an opened file descriptor, preferably with the
 flag,
 which identifies the parent directory of the file hierarchy or
 just a file.
+.TP
+.B LANDLOCK_RULE_NET_PORT
+For these rules,
+the object is a TCP port,
+and the related actions are defined with
+.IR "network access rights" .
+.IP
+In this case,
+.I rule_attr
+points to the following structure:
+.IP
+.in +4n
+.EX
+struct landlock_net_port_attr {
+    __u64 allowed_access;
+    __u64 port;
+};
+.EE
+.in
+.IP
+.i allowed_access
+contains a bitmask of allowed network actions,
+which can be applied on the given port.
+.IP
+.i port
+is the network port in host endianness.
+.IP
+It should be noted that port 0 passed to
+.BR bind (2)
+will bind to an available port from the ephemeral port range.
+This can be configured in the
+.I /proc/sys/net/ipv4/ip_local_port_range
+sysctl (also used for IPv6).
+.IP
+A Landlock rule with port 0
+and the
+.B LANDLOCK_ACCESS_NET_BIND_TCP
+right means that requesting to bind on port 0 is allowed
+and it will automatically translate to binding on the related port range.
 .P
 .I flags
 must be 0.
@@ -89,6 +132,12 @@ is set to indicate the error.
 .BR landlock_add_rule ()
 can fail for the following reasons:
 .TP
+.B EAFNOSUPPORT
+.I rule_type
+is
+.BR LANDLOCK_RULE_NET_PORT ,
+but TCP is not supported by the running kernel.
+.TP
 .B EOPNOTSUPP
 Landlock is supported by the kernel but disabled at boot time.
 .TP
@@ -111,6 +160,11 @@ are only applicable to directories, but
 .I rule_attr\->parent_fd
 does not refer to a directory).
 .TP
+.B EINVAL
+In
+.IR "struct landlock_net_port_attr" ,
+the port number is greater than 65535.
+.TP
 .B ENOMSG
 Empty accesses (i.e.,
 .I rule_attr\->allowed_access
diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_=
ruleset.2
index 105e9b062..ca635ddbc 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -41,6 +41,7 @@ It points to the following structure:
 .EX
 struct landlock_ruleset_attr {
     __u64 handled_access_fs;
+    __u64 handled_access_net;
 };
 .EE
 .in
@@ -52,6 +53,13 @@ is a bitmask of handled filesystem actions
 in
 .BR landlock (7)).
 .IP
+.I handled_access_net
+is a bitmask of handled network actions
+(see
+.B Network actions
+in
+.BR landlock (7)).
+.IP
 This structure defines a set of
 .IR "handled access rights" ,
 a set of actions on different object types,
@@ -143,8 +151,8 @@ was not a valid address.
 .TP
 .B ENOMSG
 Empty accesses (i.e.,
-.I attr\->handled_access_fs
-is 0).
+.I attr
+did not specify any access rights to restrict).
 .SH STANDARDS
 Linux.
 .SH HISTORY
diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index f7bb37cba..d452b93b2 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -189,6 +189,19 @@ If multiple requirements are not met, the
 error code takes precedence over
 .BR EXDEV .
 .\"
+.SS Network flags
+These flags enable to restrict a sandboxed process
+to a set of network actions.
+This is supported since the Landlock ABI version 4.
+.P
+The following access rights apply to TCP port numbers:
+.TP
+.B LANDLOCK_ACCESS_NET_BIND_TCP
+Bind a TCP socket to a local port.
+.TP
+.B LANDLOCK_ACCESS_NET_CONNECT_TCP
+Connect an active TCP socket to a remote port.
+.\"
 .SS Layers of file path access rights
 Each time a thread enforces a ruleset on itself,
 it updates its Landlock domain with a new layer of policy.
@@ -339,6 +352,9 @@ _	_	_
 2	5.19	LANDLOCK_ACCESS_FS_REFER
 _	_	_
 3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
+_	_	_
+4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
+\^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
 .TE
 .P
 Users should use the Landlock ABI version rather than the kernel version
@@ -439,9 +455,10 @@ and only use the available subset of access rights:
  * numbers hardcoded to keep the example short.
  */
 __u64 landlock_fs_access_rights[] =3D {
-    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
-    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
-    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
+    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
+    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
+    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
+    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
 };
 \&
 int abi =3D landlock_create_ruleset(NULL, 0,
--=20
2.45.2.993.g49e7a77208-goog


