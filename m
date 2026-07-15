Return-Path: <linux-man+bounces-5756-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wIpDHyT4VmoKDwEAu9opvQ
	(envelope-from <linux-man+bounces-5756-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 05:01:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1497D75A2E7
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 05:01:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=EdIaaqAX;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5756-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5756-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D8C530F121C
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 03:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20A33839A1;
	Wed, 15 Jul 2026 03:00:55 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B49242D9B
	for <linux-man@vger.kernel.org>; Wed, 15 Jul 2026 03:00:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784084455; cv=none; b=A7RNaWYbkb12DiOO+NmuWw/v0pEwHVoCH/o2KomZU8ijAC25nXnwJLhpl+90QF32SHzf5Y9s8L5XO8sEmfMM2Cw4n0fHPcYdV3RW1FK+nw5JpGH5W0EMkY8KYpolzzqD1imSJ+dQ+eSgVcIgoTxRMIVncI7oLjjsoLN1LmZg4/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784084455; c=relaxed/simple;
	bh=7pozuWLUCZmh2YxPSw5X8Z0Z+hnL/sEQTObb63aemfk=;
	h=Message-ID:In-Reply-To:References:From:Date:Subject:Content-type:
	 To; b=nlpis8pjNYKwLheAKbKNrQ3oAmxkz7Nryj3yD97ikT801nqjBc0vygxaMRXJxpJ1E/SvR8NESmBzQVfFAFx3w/rJBpfrawILZXqQo3XQQChTHgHahS3beWcA1r6bOEye3IBTzqQHkMHGXgP79XhDM9/rXF1c1O6ffU4XWLGHQ7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EdIaaqAX; arc=none smtp.client-ip=170.10.133.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784084452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:in-reply-to:in-reply-to:
	 references:references; bh=KkXw1dUsUnvVeKb3rd4b9hYDf1c1BVQbHubHO/uI46I=;
	b=EdIaaqAX2vbLyYHJMgDrPLwZ8Xon2l6CTsezQgRRfj7kkimUDJni13a/RfrAtHr6BHJwff
	LrrJrG1RD2SyWW2TbXQXV03XXmjGKNJK65vmd4PoP6m/+/WWbJ8DGoT4dJrkT0WpcY6nBr
	DR9VvpOnSwA6H1K1ChlgILD+zKo4D9I=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-120-7tQhvhp0OaqkAzKPdNQwkA-1; Tue,
 14 Jul 2026 23:00:49 -0400
X-MC-Unique: 7tQhvhp0OaqkAzKPdNQwkA-1
X-Mimecast-MFC-AGG-ID: 7tQhvhp0OaqkAzKPdNQwkA_1784084448
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B0E56195605E
	for <linux-man@vger.kernel.org>; Wed, 15 Jul 2026 03:00:48 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.89.250])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 716D230001A1
	for <linux-man@vger.kernel.org>; Wed, 15 Jul 2026 03:00:48 +0000 (UTC)
Received: from greed.delorie.com (localhost [127.0.0.1])
	by greed.delorie.com (8.16.1/8.16.1) with ESMTPS id 66F30kC11140971
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <linux-man@vger.kernel.org>; Tue, 14 Jul 2026 23:00:47 -0400
Received: (from dj@localhost)
	by greed.delorie.com (8.16.1/8.16.1/Submit) id 66F30kOC1140970;
	Tue, 14 Jul 2026 23:00:46 -0400
Message-ID: <ad382eef274a64bfa0724a31f09846948a84142b.1784084289.git.dj@redhat.com>
In-Reply-To: <cover.1784084289.git.dj@redhat.com>
References: <cover.1784084289.git.dj@redhat.com>
From: DJ Delorie <dj@redhat.com>
Date: Tue, 14 Jul 2026 22:58:09 -0400
Subject: [PATCH v2 1/4] man/man5/ld.so.conf.5: document include syntax
Content-type: text/plain; charset=UTF-8
To: linux-man@vger.kernel.org
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5756-lists,linux-man=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dj@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1497D75A2E7

---
 man/man5/ld.so.conf.5 | 28 ++++++++++++++++++++++++++++
 man/man8/ldconfig.8   |  2 --
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/man/man5/ld.so.conf.5 b/man/man5/ld.so.conf.5
index 481cf9152..25f9adf90 100644
--- a/man/man5/ld.so.conf.5
+++ b/man/man5/ld.so.conf.5
@@ -9,6 +9,34 @@ .SH DESCRIPTION
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
+.in +4n
+.EX
+/lib
+/usr/lib
+/usr/local/lib
+include /etc/ld.so.conf.d/*.conf
+.EE
+.in
 .SH FILES
 .I /etc/ld.so.conf
 .SH SEE ALSO
diff --git a/man/man8/ldconfig.8 b/man/man8/ldconfig.8
index 9ac146b44..cb7d62ccc 100644
--- a/man/man8/ldconfig.8
+++ b/man/man8/ldconfig.8
@@ -178,8 +178,6 @@ .SH OPTIONS
 is also specified,
 the cache is still rebuilt.
 .SH FILES
-.\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so.conf
-.\"
 .\" FIXME Since glibc-2.4, "hwcap" directives are supported in ld.so.conf
 .PD 0
 .TP
-- 
2.47.3


