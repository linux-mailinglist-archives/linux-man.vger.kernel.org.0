Return-Path: <linux-man+bounces-5680-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4aqwCbE8RGpIrAoAu9opvQ
	(envelope-from <linux-man+bounces-5680-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 00:01:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 536036E83F1
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 00:01:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b=w1Wboj0+;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5680-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5680-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9FBB730234E2
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 22:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 117912BE63F;
	Tue, 30 Jun 2026 22:01:16 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E2C283C93
	for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 22:01:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782856875; cv=none; b=T7zNqNK1EC61gQo8audBziMUgKUUTxg3y7FOnBA1u48SwQEyhAw9WeREiBRpfrMF9yeb+RjmFARjYpv+uFmx56RgrssFxESEQdXA1q/Gobx03Yp2TAZ9bNnxGftK3sOv/uQXjZ8gKd2WCmToTb6AmXLdObn9owIbK2rp6jX7QAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782856875; c=relaxed/simple;
	bh=+tLwEcqjriTaf0ex3ihWxA5+x6VXWOaMnv2OmgXxN7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VaZvu5Kz6kdhjHjzPRHE+Ujl6wU14x7qA6NcNG7NPMgdbUxk8NHdBOoxyvLptFi2VbhFzjhkx/3KVqf1bfH8EXB7du70whVMofQkp/O1ovuIFjIjjgHo9MVVs2J7GWNOgSswAczd+LhEpD2afMfeNF9YuxHiVuwJjGYiQqvdSIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=w1Wboj0+; arc=none smtp.client-ip=198.137.202.136
Received: from [10.124.221.60] ([192.55.54.43])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65UM17Dk3847545
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Tue, 30 Jun 2026 15:01:08 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65UM17Dk3847545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782856868;
	bh=6U1xsSWoti0Nm7AOQgb//rC0TjKc1uCXnyBXMbNHW3U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=w1Wboj0+m0VV+KoDtovHqkvpnMI2y9PSWJfbak+5WCgjmjablwkU6yvlIFwNgJ7IW
	 Jp7Vu8F977KQ8DjuHu40xzQjxKGjyu/sldS7ddmsVYG142mSVgKOpidFtLp29OsVv7
	 1wZVpMeQNpp7ocaI4/X5lwWs/8IwT6t+EU1ELaK37c82aYbvupcKp7FvDOgIaUTzRG
	 z8UKlOUHAQ6C5Lyq10JtkPAmWkK3v9ucfaniP2IEJzQouUtHmfKTom47TsPi7SF0H4
	 KEAYvQGhgoNTSklDeUCsj/gSTDedZWLFvo7uKA+EGt2+NASrriJbHq0/lukHo0T5Px
	 JDLHylCQA1OTg==
Message-ID: <76055054-9902-4cd8-87e5-d2745ae2b261@zytor.com>
Date: Tue, 30 Jun 2026 15:01:02 -0700
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
 <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com> <akQw0mjXu4yTzofX@devuan>
Content-Language: en-US, sv-SE
From: "H. Peter Anvin" <hpa@zytor.com>
In-Reply-To: <akQw0mjXu4yTzofX@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[zytor.com,none];
	R_DKIM_ALLOW(-0.20)[zytor.com:s=2026062701];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5680-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 536036E83F1

On 2026-06-30 14:17, Alejandro Colomar wrote:
>>
>> However, doing that using the broken-up diffs that you want would be very
>> difficult at least for me, as I'm neither particularly comfortable with troff
>> nor a good technical writer, plus that this is a "spare time" project for me.
>> I would be willing to try to submit such a rewrite, but if that means
>> refactoring it into small diffs it isn't going to happen.
> 
> I can break the page myself.  I can use the break points that you told
> me above.
> 
> Do you prefer that I break the page in small bits and then you apply
> your patches on top of that?  Or would that be inconvenient for you?
> 

No, that would probably be the best way forward.

>> In fact, I *did* rewrite and restructure significant chunks of the termios
>> chapter of the glibc texinfo manual during this work partly due to the sheer
>> number of errors that had collected over the years, partly because the clarity
>> was muffled by unclear language caused by wanting to pretend that the tty
>> interface is anything other than an emulation of an RS232 interface.
>> Explaining it as an *abstraction* of an RS232 interface that may be real or
>> virtual really clarifies a whole lot of things.
>>
>> As such, I would be very very interested in what you think of the formulations
>> I used in that document. Perhaps we could use some of them if you think that
>> such a rewrite would be worthwhile.
>>
>> I *very* strongly believe, however, that the ioctl_tty(2) interface needs to
>> be kept separate and that we shouldn't muddle that into the termios(3) man
>> page. It's possible that we should be factoring out the termios parts of the
>> kernel interface into ioctl_termios(2), as the rest of the tty ioctls
>> generally coexist just fine with the termios(3) interface and thus fall into a
>> separate class.
> 
> Okay; I'll try to do that, and send the patches to you for a review of
> the overall break points.  When I'm finished, you can rewrite the text
> as you wish.  Does that sound good?

Sounds great to me.

>>
>> Speaking of ioctl_tty(2)...
>>
>> One thing I have wondered about is that in ioctl_tty(2) you state to use
>> <asm/termbits.h> as the include, but in practice applications use
>> <linux/termios.h>.
> 
> IIRC, we weren't sure which header was preferred, so I put one that
> looked correct.  I never used these interfaces myself, so it's probably
> good to change it.  Feel free to send patches for that.

Yep, I will look at ioctl_tty(2) and its fellows, but I think that needs 
to be separate.

>> There are considerable subtleties in using the kernel
>> termios interfaces, as they are architecture-specific *AND* mutually exclusive
>> from the glibc one (neither the types nor the constants necessarily match up.)
>> On PowerPC, for historical reasons, the ioctl values in <sys/ioctl.h> for
>> TC[GS]ETS* don't even match the kernel ones and are intercepted in glibc and
>> redirected to the *glibc* tc[gs]etattr() functions, expecting the glibc
>> structure which I do believe is different in that it has a different number of
>> reserved special character slots which also pushes out the c_ispeed and
>> c_ospeed members.
>>
>> Let me know what you think.
> 
> I mostly agree with everything, I think.  There's too much to be
> specific, so maybe I should split the page, and then we can discuss more
> concrete patches.
> 
> I'll wait for your confirmation to start breaking the page into many
> bits.

