Return-Path: <linux-man+bounces-5677-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rnNJKvwqRGrcpwoAu9opvQ
	(envelope-from <linux-man+bounces-5677-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 22:45:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 040856E7EAE
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 22:45:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b=Ijh64fbK;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5677-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5677-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18A4C313D13B
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 20:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801A947B41C;
	Tue, 30 Jun 2026 20:41:27 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5F647AF6B
	for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 20:41:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782852087; cv=none; b=jJygfkKMaNcxssnmjFihQOKCU4l23fds9r5007GyUtAcihKH5DZUnHYhsmkbUjEE4IWCMnJwXxtzqihP0GPoJOTsKAFp9fXqbkQIS6r6ef0NFNeVDhrmJ+A69cE8prvVmbBbmc1ocBNwrIJ9hGd7dg3pro7BGsE+16oDOMiUOQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782852087; c=relaxed/simple;
	bh=0H49zYv3aevZJHg/zYfhu3oWirpuUCdxk2bGtM3m1J4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=afUfi5dWvajpWECviJv8YVPmW2YDyWE/9GQCcShQWuUzMckd354A+ot7x8FdxaxqdwjZI+yCiT3lqOQUPQHtl5rCeON7vtSSheIspeW6kpwb277dsURdZWdoYKPTgDD4lFRwvU3q2TMvb0Fxkb19U+SN0sU7FLLJ3yJlrcIMEdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=Ijh64fbK; arc=none smtp.client-ip=198.137.202.136
Received: from [IPV6:2601:646:8081:7da1:c71f:dfcf:59c7:993c] ([IPv6:2601:646:8081:7da1:c71f:dfcf:59c7:993c])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65UKfLFA3717052
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Tue, 30 Jun 2026 13:41:21 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65UKfLFA3717052
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782852082;
	bh=0MQZaLtWPGQX0xTVjyr2CDaD3yFgGKr/894e3J9weNI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ijh64fbKqoLTji2JtqZMqwIF7o9l8W8px05iNcRkxJrbS9aW1zrKz+Shsm8aUN6HY
	 dXACu+XHbZGrsbQcWpMeMLsLRHKUFsPzoxtiJxERJ88Rx+pe1lcrRS51t7oLsDtOVE
	 NdTZh5bmVIQh1qzDA9JsCkiBOCF1rQB43mRsroqvrIZuSdLU7TQlMB0NMsDrFfYDsj
	 jWbzPCM7EfT/ZDld9Yz9oDlESStRN7SwnFVJnsmL7viGcKXNHxb6ANWreW0Eqa5xRz
	 jngZr0n+4cNcCxMQ+7HKiylLQgwbe5h+IMgP0IwsjL9S3fGU2Yh2fsMMTaCJrzrPQe
	 700OlNxdbHFJQ==
Message-ID: <edef56f0-90d6-47a6-8a4d-314825f3167b@zytor.com>
Date: Tue, 30 Jun 2026 13:41:16 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t termios
 interface
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com> <akOL9gQovBTRQ3VW@devuan>
Content-Language: en-US, sv-SE
From: "H. Peter Anvin" <hpa@zytor.com>
In-Reply-To: <akOL9gQovBTRQ3VW@devuan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[zytor.com,none];
	R_DKIM_ALLOW(-0.20)[zytor.com:s=2026062701];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5677-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[zytor.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zytor.com:dkim,zytor.com:mid,zytor.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 040856E7EAE

On 2026-06-30 03:39, Alejandro Colomar wrote:
> 
> Hmmm, even with --diff-algorithm=patience it shows the diff too badly.
> I've been trying, and --diff-algorithm=histogram shows a much nicer
> diff.  I have the following in my gitconfig:
> 
> 	[diff]
> 		algorithm = histogram
> 
> I suggest adding that to your gitconfig file.  It is implicitly also
> used when you generate patches.  The histogram algorithm works quite
> nicely (I've been using for a few years already).
> 
OK, I'll try that. I haven't played with the diff algorithms, perhaps because
I naïvely assumed that the default would be the "currently best" algorithm and
ending up using a stale algorithm choice when a new one is introduced is
unfortunate.

	-hpa


