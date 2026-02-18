Return-Path: <linux-man+bounces-5155-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJ9bLM0KlWmqKQIAu9opvQ
	(envelope-from <linux-man+bounces-5155-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 01:41:49 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE151525CE
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 01:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B111E3019512
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 00:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E949D233149;
	Wed, 18 Feb 2026 00:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngxms2Mv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCC618027
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 00:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771375306; cv=none; b=NPqpCZRb4v21K4RBDWShk2APUM9SvIKaCkiHOoJtTa+16vxgJ8YFes4kn3VUqV7dJhTYwIS7/tPHpKW016pw9MVIMRvlGNsUii4gkYjOijRVlB+u4OZM+3iB4WwGnjld2HiE4uqbbfUP0aNfPgG4jF9z6QKdnZ3e+HggVPRAo7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771375306; c=relaxed/simple;
	bh=0UwgATNpZd1hQrw8itrXuMQrxWX2ibAmc2Ca2sBh81s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KRhsSrM9KiCTwIbqlhEQiMrLcOJZR/DdyKa+ass2bqRnw3uIsaszBIGANRMsZbSp64MCvNqT1RDa71p5wCyVDziyz85sZZ6BX3NPJtyJYqx/CHWOkqfcM22VBAsrJ79ViV19wNf+cgcyWQa6XiEi1xl7oIcG76LI6joD7gNIsMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngxms2Mv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B781C4CEF7;
	Wed, 18 Feb 2026 00:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771375306;
	bh=0UwgATNpZd1hQrw8itrXuMQrxWX2ibAmc2Ca2sBh81s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ngxms2MvB5knxc/qUk1KxAkQhKK2a7xTLl1CEOJP0jA8ils4535x3hJU0+J+V7I3O
	 KE8Gt9xsuFldFKVrxqleg3eXNapbH6AAONckh3Ss3+XRnO6q4SEwSTvAJg2q34p7Cr
	 4OruGcLgQA9ILxg7h9Szn0JuTELTm2C1vF3rxetpWNleJ9AJ5Ark59Z9KIxnZRTX4a
	 u9M5xyoNibIkS5UF03xtE5QDM57IS4L5UwwqgCfCFxuACwHtgHiv1tH4lpVos5dyyB
	 qiJycX/hQAFIUoUtSxPq4S8UwGONVGie7HfJcd6fHQZefMGcNormnwYH3FY3FczQXo
	 LkafBbkoIA8mg==
Date: Wed, 18 Feb 2026 01:41:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH v1 1/1] man/man2/futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <22d6ad793c4c4e4117f5fe77a97c5f08ee6e8100.1771374933.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1771374933.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1771374933.git.alx@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5155-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1FE151525CE
X-Rspamd-Action: no action

Cc: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man2/futex_waitv.2 | 157 ++++++++++++++++++++++++++---------------
 1 file changed, 99 insertions(+), 58 deletions(-)

diff --git a/man/man2/futex_waitv.2 b/man/man2/futex_waitv.2
index 7e336fec830d..d91050176809 100644
--- a/man/man2/futex_waitv.2
+++ b/man/man2/futex_waitv.2
@@ -65,7 +65,22 @@ .SH DESCRIPTION
 .IR waiters []. val ,
 the call fails immediately with the error
 .BR EAGAIN .
-.P
+.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
+.SH PARAMETERS
+.SS futex_waitv()
+.TP
+.I waiters
+Futex words to monitor are given by
+.IR "struct futex_waitv" ,
+whose fields are similar to
+.BR FUTEX_WAIT (2const)
+parameters.
+.TP
+.I n
+Specify as
+.IR countof(waiters) .
+.TP
+.I timeout
 If
 .I timeout
 is NULL,
@@ -76,38 +91,42 @@ .SH DESCRIPTION
 .IR clockid .
 This interval will be rounded up to the system clock granularity,
 and is guaranteed not to expire early.
-.P
-Futex words to monitor are given by
-.IR "struct futex_waitv" ,
-whose fields are analogous to
-.BR FUTEX_WAIT (2const)
-parameters, except
-.I .__reserved
-must be 0
-and
-.I .flags
-must contain one of
-.BI FUTEX2_SIZE_ *
-ORed with some of the flags below.
 .TP
-.B FUTEX2_SIZE_U32
+.I clockid
+Supported clocks:
+.RS
+.TP
+.B CLOCK_MONOTONIC
+.TQ
+.B CLOCK_REALTIME
+.RE
+.TP
+.I flags
+Specify as
+.BR 0 .
+.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
+.SS struct futex_waitv
+.TP
 .I .val
-and
-.I .uaddr[]
-are 32-bit unsigned integers.
+Expected value of
+.IR .uaddr[0] .
 .TP
+.I .uaddr
+.RS
+.TP
+.I .uaddr[0]
+See
+.BR FUTEX_WAIT (2const).
+.TP
+.I .uaddr[1]
+See
 .B FUTEX2_NUMA
-The futex word is followed by another word of the same size
-.RI ( .uaddr
-points to
-.IR uint N _t[2]
-rather than
-.IR uint N _t .
-The word is given by
-.IR .uaddr[1] ),
+below.
+This field,
+if it exists,
+must contain a NUMA word,
 which can be either
 .B FUTEX_NO_NODE
-(all bits set)
 or a NUMA node number.
 .IP
 If the NUMA word is
@@ -122,6 +141,50 @@ .SH DESCRIPTION
 have
 .B FUTEX2_NUMA
 set.)
+.RE
+.IP
+Programs should assign to
+.I .uaddr
+by casting a pointer to
+.IR uintptr_t .
+.RE
+.TP
+.I .flags
+It must contain
+exactly one size flag
+ORed with
+zero or more of the other flags.
+.RS
+.TP
+Size flags
+.RS
+.TP
+.B FUTEX2_SIZE_U32
+.I .val
+and
+.I .uaddr[]
+are 32-bit unsigned integers.
+.TP
+.B FUTEX2_SIZE_U8
+.TQ
+.B FUTEX2_SIZE_U16
+.TQ
+.B FUTEX2_SIZE_U64
+These are defined, but not supported
+.RB ( EINVAL ).
+.RE
+.TP
+Other flags
+.RS
+.TP
+.B FUTEX2_NUMA
+The futex word is followed by the NUMA word,
+of the same size
+.RI ( .uaddr
+points to
+.IR uint N _t[2]
+rather than
+.IR uint N _t ).
 .IP
 Futexes are placed on the NUMA node given by the NUMA word.
 Futexes without this flag are placed on a random node.
@@ -142,14 +205,13 @@ .SH DESCRIPTION
 .BR FUTEX_WAIT_PRIVATE ;
 this most often means they are part of the same process).
 Private futexes are faster than shared ones.
-.P
-Programs should assign to
-.I .uaddr
-by casting a pointer to
-.IR uintptr_t .
-.\"
+.RE
+.RE
+.TP
+.I .__reserved
+Specify as
+.BR 0 .
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-.\"
 .SH RETURN VALUE
 Returns an index to an arbitrary entry in
 .I waiters
@@ -161,9 +223,7 @@ .SH RETURN VALUE
 and
 .I errno
 is set to indicate the error.
-.\"
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-.\"
 .SH ERRORS
 .TP
 .B EFAULT
@@ -200,10 +260,7 @@ .SH ERRORS
 .I timeout
 was not NULL and
 .I clockid
-was not a valid clock
-.RB ( CLOCK_MONOTONIC
-or
-.BR CLOCK_REALTIME ).
+was not a valid clock.
 .TP
 .B EINVAL
 .I *timeout
@@ -221,11 +278,8 @@ .SH ERRORS
 .B EINVAL
 Any
 .IR waiters []. flags
-field is missing a
-.BI FUTEX2_SIZE_ *
-flag or has a size flag different than
-.B FUTEX2_SIZE_U32
-set.
+field is missing a size flag
+or has an unsupported one.
 .TP
 .B EINVAL
 Any
@@ -269,22 +323,9 @@ .SH ERRORS
 The
 operation was interrupted by a signal (see
 .BR signal (7)).
-.\"
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-.\"
 .SH STANDARDS
 Linux.
-.SH NOTES
-.BR FUTEX2_SIZE_U8 ,
-.BR FUTEX2_SIZE_U16 ,
-and
-.B FUTEX2_SIZE_U64
-where
-.I .val
-and
-.I .uaddr[]
-are 8, 16, or 64 bits are defined, but not implemented
-.RB ( EINVAL ).
 .SH HISTORY
 .\" commit bf69bad38cf63d980e8a603f8d1bd1f85b5ed3d9
 .\" Author: André Almeida <andrealmeid@igalia.com>
-- 
2.51.0


