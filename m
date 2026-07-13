Return-Path: <linux-man+bounces-5748-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t3hWEqRaVWognQAAu9opvQ
	(envelope-from <linux-man+bounces-5748-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 23:37:40 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 919E774F4C2
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 23:37:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=ZnS8gCm4;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5748-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5748-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 359C230F596C
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 21:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B1F350D7D;
	Mon, 13 Jul 2026 21:33:15 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978561E5714
	for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 21:33:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783978395; cv=none; b=gtTJJz+WqIsdd84t+9VjCUZd0aOEiXiU2ECXbEuqQjhRzlznubS0npg3ZW1sFSsxbM7YhonyZ/AuJ6CmsANLvzKUD6qe34sYPBCNckVMMoQHNlIrg5SaNcI0gM253bvyHegdhQ5aVyVEUj9mCSmZAOzXDo4Vd9csJjcdXb+9PuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783978395; c=relaxed/simple;
	bh=qJ37a/AcHH5lYTW5B23FNB1OcucbSHCY/sNOWww6BGY=;
	h=From:To:Cc:Subject:In-Reply-To:Date:Message-ID:MIME-Version:
	 Content-Type; b=St59noQFGXKZx822PxqtPFeBcvfn0V2mtfFhmBCkPajV1CqqrgCtAe1jlq0fUSbuPnGhAtahJueqHd6Oqh5565QaXaafZuivfEwCJxRmwouhzqEWyQQCKRYUXdNspWeUfNUrGVBI2KYwKySNjW9CkUmtde4aasx2YVAMXsS9Xu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZnS8gCm4; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1783978392;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=7Qa7JhORomN6Ik0GjADZQTI4tZsa0w/KuUxWFtrDnk4=;
	b=ZnS8gCm4dtTl6AsuQPo8oTwztPBifqSFycTwiVObb76A/ZfOBxP3EUntd+TtW+erkl3dzO
	gRRwVXL2ykOHFatIvtPq4kh6Maxb2Of1V7UrM0WCvnTm/1WF6nPMiTl+0Lhstc6anZSP3Z
	NIgAyPtUkdmScZ1uY7bcsrl2L2sZwSc=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-131-pmdVa86VPb2fMxZ1vPRTcQ-1; Mon,
 13 Jul 2026 17:33:08 -0400
X-MC-Unique: pmdVa86VPb2fMxZ1vPRTcQ-1
X-Mimecast-MFC-AGG-ID: pmdVa86VPb2fMxZ1vPRTcQ_1783978387
Received: from mx-prod-int-10.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-10.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9BE99195608C;
	Mon, 13 Jul 2026 21:33:07 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.89.250])
	by mx-prod-int-10.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5CC0FD6E;
	Mon, 13 Jul 2026 21:33:07 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTP id 66DLX5PI1019283;
	Mon, 13 Jul 2026 17:33:05 -0400
From: DJ Delorie <dj@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
In-Reply-To: <alVCfr38jr38jIfT@devuan> (message from Alejandro Colomar on
 Mon, 13 Jul 2026 22:16:25 +0200)
Date: Mon, 13 Jul 2026 17:33:05 -0400
Message-ID: <xn5x2i8tim.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.6 on 10.30.177.95
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5748-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,greed.delorie.com:mid];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 919E774F4C2

Alejandro Colomar <alx@kernel.org> writes:
> Please split into separate patches with commit messages,

How do you want them split?  Per man page, or one for breaking out
ld.so.conf and one for adding tunables.conf?

Also, I've been using the output of "git show" for these patches.

> Let's start a new paragraph:
>
> 	.P

We still need a better language ;-) ("why doesn't it know to start a
paragraph after a heading?" ;)

>> +The file allows lines to start with the word
>> +.I include
>> +followed by a path wildcard,
>
> What is a path wildcard?  We should specify it, since different programs
> treat wildcards differently.  Is it a glob(7)?

.P
The syntax allows lines to start with the word
.I include
followed by a path wildcard,
and will include any files matching that wildcard.
The wildcard is a path specification in the
.BR \%glob (7)
format.
Files matching that wildcard will be processed
as if their contents were included in the main config file.

>> +and will include any files matching that wildcard.
>> +The file is parsed by
>> +.B \%ldconfig
>
> .BR \%ldconfig (8)

Fixed.

> However, I think 'system-wide' is unnecessary here: 'tunables
> configuration file' should be enough.  By being in /etc/, it is known to
> be system-wide.

Fixed.

>> +.SH SYNOPSIS
>> +.nf
>> +.B /etc/tunables.conf
>> +.fi
>> +.SH DESCRIPTION
>> +Each line in the file
>> +.I /etc/tunables.conf
>> +specifies a tunable,
>> +which is a name and value separated by an equals sign.
>
> 	.P

Fixed, but that's a lot of one-sentence paragraphs.

>> +.IR /etc/ld.so.cache .
>> +.P
>> +Each line may include zero or more words or symbols at the beginning:
>> +.TP
>> +.B overridable
>> +.TQ
>> +.B +
>> +Allow the tunable to be overridden by the environment variable
>> +(this is the default).
>
> Which environment variable?

Fixed.

> Should we document an ENVIRONMENT section in ldconfig(8)?

No, the environment variable is read at runtime, not by ldconfig.

>> +(such as setuid, or elevated capabilities)
>
> Do you mean the system call setuid(2)?  Or a setuid program?

a set-user-ID program.  Fixed.

>> +.IP
>> +.EX
>> +.RI [ filter : pattern ]
>> +.EE
>
> You should indent this compared to the surrounding text:
>
> 	.IP
> 	.in +4n

Isn't that what the .IP does ?

>> +filter limits the following tunables to processes starting from the
>> +file matching the pattern.
>
> What do you mean by processes starting from the file?  Processes that
> exec(3) the file and its children?

It actually means exactly what it says, but I admit it can be confusing.
When the dynamic linker creates a process, and uses the image in file
/file/ as the template, that new process is affected.

i.e.  If you type "/usr/bin/ls" and the filter is "/usr/bin/ls", that
new copy of /usr/bin/ls is affected.

>> +The file may be fully qualified or just the basename.
>
> 'fully qualified' isn't something we say of paths.  We should say an
> absolute pathname.  Is it only absolute pathnames and basenames?  How
> about relative pathnames?

No, for security and logical reasons, it cannot be a relative path.  So
you end up with "one specific version of XYZ" or "any version of XYZ".
No wildcards either.  It's intended for rare exceptions.

commit a9b49369175e67e07b556ec28cd2d9d5538c0fe6
Author: DJ Delorie <dj@redhat.com>
Date:   Mon Jul 13 17:30:56 2026 -0400

    man/man8/ldconfig.8: document system-wide tunables

diff --git a/man/man5/ld.so.conf.5 b/man/man5/ld.so.conf.5
index 481cf9152..9954c74bc 100644
--- a/man/man5/ld.so.conf.5
+++ b/man/man5/ld.so.conf.5
@@ -6,9 +6,36 @@ .SH SYNOPSIS
 .B /etc/ld.so.conf
 .fi
 .SH DESCRIPTION
+.P
 This file contains a list of directories,
 one per line,
 in which to search for libraries.
+.P
+The file
+(and any other files included by it)
+is parsed by
+.B \%ldconfig
+and the results stored in
+.IR /etc/ld.so.cache .
+.P
+The syntax allows lines to start with the word
+.I include
+followed by a path wildcard,
+and will include any files matching that wildcard.
+The wildcard is a path specification in the
+.BR \%glob (7)
+format.
+Files matching that wildcard will be processed
+as if their contents were included in the main config file.
+.P
+Example config file:
+.IP
+.EX
+/lib
+/usr/lib
+/usr/local/lib
+include /etc/ld.so.conf.d/*.conf
+.EE
 .SH FILES
 .I /etc/ld.so.conf
 .SH SEE ALSO
diff --git a/man/man5/tunables.conf.5 b/man/man5/tunables.conf.5
new file mode 100644
index 000000000..b983a2bfe
--- /dev/null
+++ b/man/man5/tunables.conf.5
@@ -0,0 +1,112 @@
+.TH tunables.conf 5 (date) "Linux man-pages (unreleased)"
+.SH NAME
+tunables.conf \- tunables configuration file
+.SH SYNOPSIS
+.nf
+.B /etc/tunables.conf
+.fi
+.SH DESCRIPTION
+Each line in the file
+.I /etc/tunables.conf
+specifies a tunable,
+which is a name and value separated by an equals sign.
+.P
+For a list of valid tunables,
+please consult the glibc manual.
+.P
+The syntax allows lines to start with the word
+.I include
+followed by a path wildcard,
+and will include any files matching that wildcard.
+The wildcard is a path specification in the
+.BR \%glob (7)
+format.
+Files matching that wildcard will be processed
+as if their contents were included in the main config file.
+.P
+The file is parsed by
+.BR \%ldconfig (8)
+and the results stored in
+.IR /etc/ld.so.cache .
+The resulting data is read when a new process starts.
+.P
+Each line may include zero or more words or symbols at the beginning,
+which affect how each tunable affects each processes:
+.TP
+.B overridable
+.TQ
+.B +
+Allow the tunable to be overridden by the
+.B GLIBC_TUNABLES
+environment variable when the process runs
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
+The tunable only applies to
+.B AT_SECURE
+processes,
+such as a set-user-ID process,
+or one with elevated capabilities.
+.TP
+.B nonsecure
+.TQ
+.B $
+The tunable only applies to
+.RB non- AT_SECURE
+processes (this is the default).
+.TP
+.B anysecure
+.TQ
+.B *
+The tunable only applies to both
+.B AT_SECURE
+and
+.RB non- AT_SECURE
+processes.
+.P
+The file may also contain
+.IR filters ,
+which limit the tunables following it,
+up to the end of the file
+(or end of the included file,
+or start of a new included file)
+or a line with only
+.B []
+on it.
+The syntax is:
+.IP
+.EX
+.RI [ filter : pattern ]
+.EE
+.TP
+.B proc
+The
+.I proc
+filter limits the following tunables to processes
+whose name matches the pattern.
+The pattern may be an absolute path
+or just the base name.
+.P
+Example config file:
+.IP
+.EX
+glibc.malloc.arenas_max=5
+onlysecure glibc.malloc.arenas_max=1
+\-glibc.pthread.rseq=1
+[proc:/bin/bad.program]
+\-glibc.pthread.rseq=0
+[proc:some.program]
+\-glibc.malloc.mmap_threshold=65536
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


