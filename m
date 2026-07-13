Return-Path: <linux-man+bounces-5744-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BZJMJx7RVGr1fAAAu9opvQ
	(envelope-from <linux-man+bounces-5744-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 13:50:54 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9245474A8A4
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 13:50:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=smrk.net header.s=20221002 header.b="IJS/Ryq8";
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5744-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5744-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=smrk.net;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A9FB3300E316
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 11:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 818D03F482A;
	Mon, 13 Jul 2026 11:49:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3C53F1658
	for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 11:49:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783943356; cv=none; b=YpzWbgsmATj+5wXqjsYpIZdVGmz3q9iWvAmgp1P/OC2+SqwkzrhfP/vIEVG66jgGqxech5e9hDVXwb8zNeynVsyovURXnMyjwF+MxvhQJwZpjzKO8fiIGOXR5fjBvX3khC7zCS20Y6cHv/LIBBqnqbfaLBcGTLbujUyeWXrr05w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783943356; c=relaxed/simple;
	bh=VGdnzUuI4QCUtPml3/PbLh4EjYRiDzWCIRCP4ST2glw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jx1n8yjgVJoP/LUy4MvN7ZFv6m3sLEjyHPoa5oc/WgLUW3N0E7RzIN0Mnp0nVr3hga78s4mw8zZwlQCsh0nHYTHkwdgzpUHMEHroqrMoux3N8KC8PdvcRm2fcsL+z66K+PFLsGdIxk8SgI4z4KR7rcnSYKi7IRPdcLOWmsLWMx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=IJS/Ryq8; arc=none smtp.client-ip=45.76.87.244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1783943335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fW6JiFqQZC4qvMsFsj6rjnv4fnANCpSRpofOqPYPH9A=;
	b=IJS/Ryq8Zw2weg+CGBitkOlSrwit6jDmI2jrvbwQyTqCsNJLEgFWY+9/KtcvxJ5s1p8Ic+
	8uuw27qoW3Qn9c6ut2lcMBzhSJbdrOyDIvEDR+gaoVqSyupwzB5RtduPZsAT3lkHQP/Fq4
	OYkFVyehUv2p44YlQ3GH0yMyBvHP3T/DnRtaXPJ6sFzdK0nR5F5Bn1tj8K6alMPNIpBnGF
	nn78sVJ2wjefZ4JtAv+V4WOfWbcpMM3Gi4NXeMDdWtODPwujKuAhiHdi7hQErGxqPeZh3i
	EUQCTPGicsu6NGYko/a+igfFHmKHBhiNV5n4hdnsF+kjli9EPflhD3jzSZntSg==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id cd48f635 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 13 Jul 2026 13:48:55 +0200 (CEST)
From: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, =?utf-8?Q?G=C3=BCnther?= Noack
 <gnoack3000@gmail.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=
 <mic@digikod.net>
Subject: Re: [PATCH 3/3] man/man7/landlock.7: wfix
In-Reply-To: <alEh_O7UT8cjcxMq@devuan>
References: <20260709153422.210312-1-stepnem@smrk.net>
 <20260709153422.210312-3-stepnem@smrk.net> <alEh_O7UT8cjcxMq@devuan>
User-Agent: Notmuch/0.40 (https://notmuchmail.org) Emacs/31.0.50
 (x86_64-pc-linux-gnu)
Date: Mon, 13 Jul 2026 13:48:55 +0200
Message-ID: <20260713114855Z.2240445002-stepnem@smrk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	R_MIXED_CHARSET(1.25)[subject];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[smrk.net,none];
	R_DKIM_ALLOW(-0.20)[smrk.net:s=20221002];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5744-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:gnoack3000@gmail.com,m:mic@digikod.net,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[smrk.net:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stepnem@smrk.net,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,digikod.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smrk.net:from_mime,smrk.net:mid,smrk.net:email,smrk.net:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9245474A8A4

On Fri, 10 Jul 2026 18:48:36 +0200
Alejandro Colomar wrote:

> On 2026-07-09T17:34:22+0200, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
>> Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@smrk.net>
>> ---
>>  man/man7/landlock.7 | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
>> index 293374ed9b46..556b08fff04b 100644
>> --- a/man/man7/landlock.7
>> +++ b/man/man7/landlock.7
>> @@ -296,8 +296,8 @@ .SS Scope flags
>>  .SS Layers of file path access rights
>>  Each time a thread enforces a ruleset on itself,
>>  it updates its Landlock domain with a new layer of policy.
>> -Indeed, this complementary policy is composed with the
>> -potentially other rulesets already restricting this thread.
>> +Indeed, this complementary policy is composed with any
>> +other rulesets already restricting this thread.
>>  A sandboxed thread can then safely add more constraints to itself with a
>>  new enforced ruleset.
>
> I've added to CC the landlock maintainers, so that they review the text.
> They maintain the same text in the kernel, so it's better to have it
> coordinated.

Thanks, I did not realize that.

I see now that the texts have already diverged and the
equivalent paragraph in the kernel docs
(Documentation/userspace-api/landlock.rst) now reads

  Each time a thread enforces a ruleset on itself, it updates its Landlock =
domain
  with a new layer of policy.  This complementary policy is stacked with any
  other rulesets potentially already restricting this thread.  A sandboxed =
thread
  can then safely add more constraints to itself with a new enforced rulese=
t.

(Wording introduced by linux commit dad2f2071516
(2024-10-15; "landlock: Fix grammar issues in documentation").)

FWIW I see little point in this kind of duplication, given
that the kernel docs are as readily available to anyone
interested as the man pages are; OTOH it seems that the
duplication is only partial here (i.e., the documents
differ, with only isolated verbatim overlaps), so perhaps
the rationale is that the different documents target
slightly different audiences (I'm not sure I'd agree).

Anyway, here is a patch simply adjusting the man page text
to match the kernel docs (I still believe "potentially" is
more distracting than useful there, but it is an improvement
on the original.):

----------------------------------- 8< --------------------------------
Subject: [PATCH] man/man7/landlock.7: wfix

Use the current wording of the equivalent paragraph in
Linux kernel Documentation/userspace-api/landlock.rst.

Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@smrk.net>
---
 man/man7/landlock.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 293374ed9b46..f0a9b6db4bc8 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -296,8 +296,8 @@ .SS Scope flags
 .SS Layers of file path access rights
 Each time a thread enforces a ruleset on itself,
 it updates its Landlock domain with a new layer of policy.
-Indeed, this complementary policy is composed with the
-potentially other rulesets already restricting this thread.
+This complementary policy is stacked with any
+other rulesets potentially already restricting this thread.
 A sandboxed thread can then safely add more constraints to itself with a
 new enforced ruleset.
 .P

base-commit: 794e74fd54156f767801eb60a0d79a496c73e505
--=20
2.55.0

