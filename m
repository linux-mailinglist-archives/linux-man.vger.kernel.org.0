Return-Path: <linux-man+bounces-5728-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id plPaBp/uT2prqgIAu9opvQ
	(envelope-from <linux-man+bounces-5728-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 09 Jul 2026 20:55:27 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C947349C5
	for <lists+linux-man@lfdr.de>; Thu, 09 Jul 2026 20:55:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="THHCGS/7";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5728-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5728-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5AC543020E05
	for <lists+linux-man@lfdr.de>; Thu,  9 Jul 2026 18:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414BA449997;
	Thu,  9 Jul 2026 18:53:18 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5F244998D
	for <linux-man@vger.kernel.org>; Thu,  9 Jul 2026 18:53:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783623198; cv=none; b=UWJ9e+cGNBPKs5YrEjxu4qwoM8srWb8iYnrKZGXPTKADZSrWnEGFvqjNUbgVw6sdW4sf/gTeFaZEhkzBJUi8YSCRr7+ZoHm+aKxB/MaU/uXayCgZ7vlfUYj2ycG3gZe3bxx1fnY8ahMSOlcEW/uoDgnMf7ZVOwiAIBG4RbMd5ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783623198; c=relaxed/simple;
	bh=7/vd18ml8GWw+tDhE/H/B3TCaD9VtiMZiHeKO5+nQ4Y=;
	h=Date:Message-Id:From:To:Cc:Subject; b=Nk8IOpKOylHYb0Bl94RruPyvNF0GId6zXaAvIwRsxnmMBg5e5lsFleSHIoUejUDNSN6Cc5x7/ASmv3rNogHcrZClF6bBDpC0bO3rwrFdwdnbY67rvMCOUY+G8i5+lRkgbsHfLqvpDqZ8/ZPv+B0zWcM8rs98W0WdeBQUWCVG8O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=THHCGS/7; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1783623195;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc; bh=yarLs+0jJ30X1GlZLAgBHE+DP9InEkx/pXADczPiCD8=;
	b=THHCGS/7e63/Hig8bH2ZcVFnRNu6XKbOv8zkRoV0aI6qEji6cO8XWgAgg2R2FbXaopvul/
	hJihVmviOSyx5sL4uAtYgt91rsPVM7faviWj6ozMEKk25BGgIOuS6w+9e7y/ojZt2r/N4j
	xThRKXA2LnQYYxz7nCkmfg9BJfOFM/0=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-539-O4KcX4KRP5mdTEiepYjIKg-1; Thu,
 09 Jul 2026 14:53:12 -0400
X-MC-Unique: O4KcX4KRP5mdTEiepYjIKg-1
X-Mimecast-MFC-AGG-ID: O4KcX4KRP5mdTEiepYjIKg_1783623191
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 607E319560B2;
	Thu,  9 Jul 2026 18:53:11 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.89.250])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 14C63195608A;
	Thu,  9 Jul 2026 18:53:10 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTP id 669Ir9j9459288;
	Thu, 9 Jul 2026 14:53:09 -0400
Date: Thu, 09 Jul 2026 14:53:09 -0400
Message-Id: <xny0fk806i.fsf@greed.delorie.com>
From: DJ Delorie <dj@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Subject: man/man8/ldconfig.8: document system-wide tunables
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5728-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87C947349C5


diff --git a/man/man8/ldconfig.8 b/man/man8/ldconfig.8
index ee024b8f6..8574eae24 100644
--- a/man/man8/ldconfig.8
+++ b/man/man8/ldconfig.8
@@ -17,6 +17,8 @@ .SH SYNOPSIS
 .IR conf ]
 .RB [ \-r\~\c
 .IR root ]
+.RB [ \-t\~\c
+.IR tunconf ]
 .IR directory \~.\|.\|.
 .YS
 .SY /sbin/ldconfig
@@ -85,6 +87,11 @@ .SH DESCRIPTION
 .P
 Failure to follow this pattern may result in compatibility issues
 after an upgrade.
+.P
+If the file
+.IR /etc/tunables.conf
+exists, it contains one tunable per line.  These tunables are stored
+in the cache and applied to every process at its startup.
 .SH OPTIONS
 .TP
 .BI \-\-format= fmt
@@ -157,6 +164,12 @@ .SH OPTIONS
 .I root
 as the root directory.
 .TP
+.BI \-t\~ tunconf
+Use
+.I tunconf
+instead of
+.IR /etc/tunables.conf .
+.TP
 .B \-\-verbose
 .TQ
 .B \-v
@@ -177,9 +190,85 @@ .SH OPTIONS
 .B \-N
 is also specified,
 the cache is still rebuilt.
+.SH INCLUDES
+The files
+.IR /etc/ld.so.conf
+and
+.IR /etc/tunables.conf
+allow lines to start with the word
+.I include
+followed by a path wildcard, and will include any files matching that
+wildcard.
+.SH TUNABLES
+Each line in the file
+.I /etc/tunables.conf
+specifies a tunable, which is a name and value
+separated by an equals sign.
+Each line may include zero or more words or symbols at the beginning:
+.TP
+.B overridable
+.TQ
+.B +
+Allow the tunable to be overridden by the environment variable (this is the default).
+.TP
+.B nonoverridable
+.TQ
+.B \-
+Do not allow the tunable to be overridden by the environment variable.
+.TP
+.B onlysecure
+.TQ
+.B @
+The tunable only applies to AT_SECURE (i.e. setuid, or elevated
+capabilities) processes.
+.TP
+.B nonsecure
+.TQ
+.B $
+The tunable only applies to non-AT_SECURE processes (this is the default).
+.TP
+.B anysecure
+.TQ
+.B *
+The tunable only applies to both AT_SECURE and non-AT_SECURE processes.
+.P
+The file may also contain
+.I filters ,
+which limit the tunables following it, up to the end of the file (or
+end of the included file, or start of a new included file) or a line
+with only
+.B []
+on it.  The syntax is:
+.RS
+.P
+[
+.I filter
+:
+.I pattern
+]
+.RE
+.P
+.TP
+.B proc
+The
+.I proc
+filter limits the following tunables to processes starting from the
+file matching the pattern.  The file may be fully qualified or just
+the basename.
+.P
+Example config file:
+.P
+.RS
+.nf
+glibc.malloc.arenas_max=5
+onlysecure glibc.malloc.arenas_max=1
+-glibc.pthread.rseq=1
+[proc:/bin/bad.program]
+-glibc.pthread.rseq=0
+.fi
+.RE
+.P
 .SH FILES
-.\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so.conf
-.\"
 .\" FIXME Since glibc-2.4, "hwcap" directives are supported in ld.so.conf
 .PD 0
 .TP
@@ -191,6 +280,11 @@ .SH FILES
 one per line,
 in which to search for libraries.
 .TP
+.I /etc/tunables.conf
+contains a list of tunables,
+one per line,
+to apply to all newly created processes.
+.TP
 .I /etc/ld.so.cache
 contains an ordered list of libraries found in the directories
 specified in


