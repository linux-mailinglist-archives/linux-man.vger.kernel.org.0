Return-Path: <linux-man+bounces-5746-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AfQDEEURVWpvjgAAu9opvQ
	(envelope-from <linux-man+bounces-5746-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 18:24:37 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C1974D904
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 18:24:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=QhpvgxVE;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5746-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5746-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2484430099BD
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 16:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7105240BCCD;
	Mon, 13 Jul 2026 16:24:33 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E02408619
	for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 16:24:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783959873; cv=none; b=NI5+oV7rgeYeTWTp5xYi9RfPjrmV9GFxnuAY/ZdB6pcZNXJcSXdxaB9PalFVRGvDjc6Wl7tWowpbNFLR5OHvaNkwCAB0KndmlFgGw49YCw37KjZoDKhceuEI4x/zgEuu135z1Er/a5eE1Jp3KxdmkwLmOjmvfQeIvWd6KG1Gxcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783959873; c=relaxed/simple;
	bh=jekg7t9MElWWSwzJM/eP1m1f6JAmmxdrvKYo0pX/HfA=;
	h=From:To:Cc:Subject:In-Reply-To:Date:Message-ID:MIME-Version:
	 Content-Type; b=RSK6EEoBWKMnah0KqnOqTzUeHq/9M2SHKf2S2a/aAbED3VOmVKzODL/j3HzB7TjQBk1jCq/SZbIzy5ewoW9IduRbZViDGTcVWtwXirh583L2uMTAw5F3hdQnI7Qg2c9nUibUIPGlUNZctjlzcqQASw17zK9gHLYwKyroi7r/dIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=QhpvgxVE; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1783959869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=onDsNo7FzqaeqlolqH0TWwPfRPu+AHtS4kXWFiuT1xI=;
	b=QhpvgxVENcz5qJEo3erndquFDhQ4FGL9U2jwMcW8UCLUpSIm79hyoY+YVyCaYSBzxx82Ma
	qrp3VsQT4LZX29QYnpNaDTImU+toIzU/M+4PtvZE+icilXH6aslvTuv4NZELa/GrC+LCpx
	eVY9TEvYelXBKLbyKp6TRyipkdH9dWw=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-631-KcpwCz-mMxS0hNICppVvkQ-1; Mon,
 13 Jul 2026 12:24:27 -0400
X-MC-Unique: KcpwCz-mMxS0hNICppVvkQ-1
X-Mimecast-MFC-AGG-ID: KcpwCz-mMxS0hNICppVvkQ_1783959866
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7AD511805A11;
	Mon, 13 Jul 2026 16:24:26 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.89.250])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1C9873000B51;
	Mon, 13 Jul 2026 16:24:25 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTP id 66DGOJMS1004598;
	Mon, 13 Jul 2026 12:24:19 -0400
From: DJ Delorie <dj@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
In-Reply-To: <alFWqYWKJkQQxtJ6@devuan> (message from Alejandro Colomar on
 Fri, 10 Jul 2026 22:33:10 +0200)
Date: Mon, 13 Jul 2026 12:24:19 -0400
Message-ID: <xnjyqy97t8.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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
	TAGGED_FROM(0.00)[bounces-5746-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ld.so:url,greed.delorie.com:mid];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C9C1974D904


How about this?

diff --git a/man/man5/ld.so.conf.5 b/man/man5/ld.so.conf.5
index 481cf9152..aa27b73f6 100644
--- a/man/man5/ld.so.conf.5
+++ b/man/man5/ld.so.conf.5
@@ -9,6 +9,14 @@ .SH DESCRIPTION
 This file contains a list of directories,
 one per line,
 in which to search for libraries.
+The file allows lines to start with the word
+.I include
+followed by a path wildcard,
+and will include any files matching that wildcard.
+The file is parsed by
+.B \%ldconfig
+and the results stored in
+.IR /etc/ld.so.cache .
 .SH FILES
 .I /etc/ld.so.conf
 .SH SEE ALSO
diff --git a/man/man5/tunables.conf.5 b/man/man5/tunables.conf.5
new file mode 100644
index 000000000..d24eb0fa5
--- /dev/null
+++ b/man/man5/tunables.conf.5
@@ -0,0 +1,86 @@
+.TH tunables.conf 5 (date) "Linux man-pages (unreleased)"
+.SH NAME
+tunables.conf \- System-wide tunables configuration file
+.SH SYNOPSIS
+.nf
+.B /etc/tunables.conf
+.fi
+.SH DESCRIPTION
+Each line in the file
+.I /etc/tunables.conf
+specifies a tunable,
+which is a name and value separated by an equals sign.
+For a list of valid tunables,
+please consult the glibc manual.
+The file allows lines to start with the word
+.I include
+followed by a path wildcard,
+and will include any files matching that wildcard.
+The file is parsed by
+.B \%ldconfig
+and the results stored in
+.IR /etc/ld.so.cache .
+.P
+Each line may include zero or more words or symbols at the beginning:
+.TP
+.B overridable
+.TQ
+.B +
+Allow the tunable to be overridden by the environment variable
+(this is the default).
+.TP
+.B nonoverridable
+.TQ
+.B \-
+Do not allow the tunable to be overridden by the environment variable.
+.TP
+.B onlysecure
+.TQ
+.B @
+The tunable only applies to AT_SECURE
+(such as setuid, or elevated capabilities)
+processes.
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
+which limit the tunables following it, up to the end of the file
+(or end of the included file, or start of a new included file)
+or a line with only
+.B []
+on it.  The syntax is:
+.IP
+.EX
+.RI [ filter : pattern ]
+.EE
+.TP
+.B proc
+The
+.I proc
+filter limits the following tunables to processes starting from the
+file matching the pattern.
+The file may be fully qualified or just the basename.
+.P
+Example config file:
+.IP
+.EX
+glibc.malloc.arenas_max=5
+onlysecure glibc.malloc.arenas_max=1
+-glibc.pthread.rseq=1
+[proc:/bin/bad.program]
+-glibc.pthread.rseq=0
+.EE
+.SH FILES
+.I /etc/ld.so.conf
+.SH SEE ALSO
+.BR ld.so (8),
+.BR ldconfig (8)
diff --git a/man/man8/ld.so.8 b/man/man8/ld.so.8
index 5f3c22ef2..40f129b71 100644
--- a/man/man8/ld.so.8
+++ b/man/man8/ld.so.8
@@ -792,7 +792,8 @@ .SH FILES
 .TP
 .I /etc/ld.so.cache
 File containing a compiled list of directories in which to search for
-shared objects and an ordered list of candidate shared objects.
+shared objects and an ordered list of candidate shared objects,
+and any system-wide tunables to be applied.
 See
 .BR ldconfig (8).
 .TP
diff --git a/man/man8/ldconfig.8 b/man/man8/ldconfig.8
index 9ac146b44..234169504 100644
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
@@ -85,6 +87,13 @@ .SH DESCRIPTION
 .P
 Failure to follow this pattern may result in compatibility issues
 after an upgrade.
+.P
+If the file
+.I /etc/tunables.conf
+exists,
+it contains tunables to be applied to all processes.
+These tunables are stored
+in the cache and applied to every process at its startup.
 .SH OPTIONS
 .TP
 .BI \-\-format= fmt
@@ -157,6 +166,12 @@ .SH OPTIONS
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
@@ -178,8 +193,6 @@ .SH OPTIONS
 is also specified,
 the cache is still rebuilt.
 .SH FILES
-.\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so.conf
-.\"
 .\" FIXME Since glibc-2.4, "hwcap" directives are supported in ld.so.conf
 .PD 0
 .TP
@@ -190,11 +203,17 @@ .SH FILES
 See
 .BR ld.so.conf (5).
 .TP
+.I /etc/tunables.conf
+See
+.BR tunables.conf (5).
+.TP
 .I /etc/ld.so.cache
 contains an ordered list of libraries found in the directories
 specified in
 .IR /etc/ld.so.conf ,
-as well as those found in the trusted directories.
+as well as those found in the trusted directories,
+and any system-wide tunables listed in
+.IR /etc/tunables.conf .
 .PD
 .SH SEE ALSO
 .BR ldd (1),


