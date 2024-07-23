Return-Path: <linux-man+bounces-1514-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D9D939EAD
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 12:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EACFD1F22E1F
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 10:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4144F14D71E;
	Tue, 23 Jul 2024 10:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iMObW2zl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f73.google.com (mail-ej1-f73.google.com [209.85.218.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A53D6A
	for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 10:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721729970; cv=none; b=m1s4vyPe645qEOXZTKYGDQgsqEaS4jMTJVlO3HEV/jijUOba69ekFP0LNhb6MODjKKGNxnT9utALsTXWMYevLWIhyVGbrxKJySuMx09M2+Br5N+yMQGCo1PrwKrUOZJc/yV14lh6Apn0bsuUZwqEC2ema9/dcoCmqBU2/dfMf7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721729970; c=relaxed/simple;
	bh=rfGkTvrmrDMcGo1MWO6sAKPJROo4I/ANw21lioeYyoc=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Qy10c32OqTfbrbov8wyo5KWZCz8wSeSFRgZij/pJC0X2Y70F3w9IzDQTndlQ7Djy9pqzXPYVRHpI3gaXKgml3aupSUO8z9HT0AjuO+nAJanfHxIcfMr15bK7KDw3ySCAqENmyu6s5yfN+2BsebZ9LlNVFHz2AuJ9WurTFgQGg7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=iMObW2zl; arc=none smtp.client-ip=209.85.218.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f73.google.com with SMTP id a640c23a62f3a-a7a8281dba5so90277466b.3
        for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 03:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721729966; x=1722334766; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7GEPs4dQ/S5tUCAg9QdBl6+mnrIZn55wV6Qt0i3yBAA=;
        b=iMObW2zlJWpdbca2fwwzh5UNsv8zz4LEwo/0Y34SWvejFS+IJYZ6Ckx1erkSFDYFBf
         7O9FxyZNCdqzKwN+ZjTA0FeIjUOC6sbShFazbsnYqTP4YGJXfFPoPwYFjMvar3HDkCMm
         Z1hnjhPgWokP50rJ5BiCHbYal4GA1MKKJ4Pr5RCCsE48xxBYHT1+o0i+AkYa2svz0uZF
         0+xODyQdI+YyfPb+rS99a6XUmF5ryvWyY5MjraOJEXpg3oOmQnfKquDYmld9gYh11sEh
         OFm8WZsU35HX0II8/ZgaqSPuCcoWQIeDMzVKMoPeEXX7rPAKPLp97ZLA3I20ETqRigAv
         X4CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721729966; x=1722334766;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7GEPs4dQ/S5tUCAg9QdBl6+mnrIZn55wV6Qt0i3yBAA=;
        b=pjdA5lbAnCqoU7LixtCS4XHrtv2Dpfpy4HtieJA3EpjoRyZT7V+WMbRtc04CsUtVlH
         7IAs+trs9wpeRc7Akrf3EihtnPLDHJpwk8VQhoTuKIDaVe3Pcm+xBmU5D103/bOUThHP
         I/u1f0+29Oiab3T6giXv3Dpa8bSXTrf531UslICx7vwAoF12W0SnGVc8iZv099Z17gnu
         ZwWT+j1WvWe59cgHykY5Ip5PEbXf5DAT/wlKi6jSjZ7HszS01LjDpuVRptZEf86DQ1wx
         UCpYPYctvtBIfnri+z1t2Li8Tzm1A5TAv5PaumQWPldxvUR6h4/ngMgh1u+YqAgBw5tb
         itvw==
X-Forwarded-Encrypted: i=1; AJvYcCUxtz2x4eXOUmbbuQay0Qk+c/m3fTK5OD+uvmHQpnDPTMsaoWy6aAliaTVviiAee/jz4TciAADiTGOtxsQ/upK6/kDzMg2sShxK
X-Gm-Message-State: AOJu0YytiN0dgYYOL7wLxhOyUOx9G+X5gplEsWk2svzmk86nJPysDb1I
	IV1ZPOe4zQNoV3cfq0aqQsz9LtTzPrRMwGYHlwxQcB2GOxHT+wwCr3Q355IU8+X40QOwQ67ls6u
	jcA==
X-Google-Smtp-Source: AGHT+IGAIW3+QvaIywDFV5UPXYHg9UTRSLOP+7JgzddPWIkQ/tt+T1IEoViYNdAtGyBmDJmM0FBlK309dSE=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a17:906:3396:b0:a7a:84fa:ef48 with SMTP id
 a640c23a62f3a-a7a84faf0acmr211666b.4.1721729966207; Tue, 23 Jul 2024 03:19:26
 -0700 (PDT)
Date: Tue, 23 Jul 2024 10:19:16 +0000
In-Reply-To: <20240723101917.90918-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240723101917.90918-2-gnoack@google.com>
Subject: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.

The intent is to bring the man pages mostly in line with the kernel
documentation again.  I intentionally did not add networking support to the
usage example in landlock.7 - I feel that in the long run, we would be bett=
er
advised to maintain longer example code in the kernel samples.

Closes: <https://github.com/landlock-lsm/linux/issues/32>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2/landlock_add_rule.2       | 74 ++++++++++++++++++++++++++----
 man/man2/landlock_create_ruleset.2 | 12 ++++-
 man/man7/landlock.7                | 23 ++++++++--
 3 files changed, 94 insertions(+), 15 deletions(-)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index 7a83bb303..489e9c354 100644
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
 .I \%rule_attr\->parent_fd
 does not refer to a directory).
 .TP
+.B EINVAL
+In
+.IR \%struct\~landlock_net_port_attr ,
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
index 652054f15..52876a3de 100644
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
2.45.2.1089.g2a221341d9-goog


