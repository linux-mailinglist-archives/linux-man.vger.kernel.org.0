Return-Path: <linux-man+bounces-5676-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Faa4KxcpRGpVpwoAu9opvQ
	(envelope-from <linux-man+bounces-5676-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 22:37:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAC76E7E2D
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 22:37:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=zytor.com header.s=2026062701 header.b=KyjCcFhk;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5676-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5676-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=zytor.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D7CE13010D1B
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 20:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12793B4EBD;
	Tue, 30 Jun 2026 20:37:38 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A043DDDC4
	for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 20:37:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782851858; cv=none; b=Y75OqxNcT4hXwySNoaNDcJbHh2eQ3fnTEFeQhHKSH282jMlx3Ekjo5u7mJrUwK0PMmay2hbdERuqgUAGPgR1GFvD7whtv6LrF8uMENK3dJhXlCHHg4EMnBgTTys5dQoBTnx0vaVKxHYmfT11JqLh4Um/Hw+C/M1uGkzAUni6BnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782851858; c=relaxed/simple;
	bh=YdQb6+x7SZLhWiD/AT3gJcCtZ24xmus7dN34btLuP5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fqj5i+6rrBPWe5h3xAcez/9cwLKR3JM5cvsE4mVb9O//zme8w96f3iRL19cH0AiKu5LX+SDLdx3VUp6W+J2hD9zQwEc3V7hYq29PUty2va1XS+Dz2AQl/RWH0EyRbVT9NyFQgkIny8cTpqSCbTGyRoXdQ47iCSS35+ZCZq90cVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zytor.com; spf=pass smtp.mailfrom=zytor.com; dkim=pass (2048-bit key) header.d=zytor.com header.i=@zytor.com header.b=KyjCcFhk; arc=none smtp.client-ip=198.137.202.136
Received: from [IPV6:2601:646:8081:7da1:c71f:dfcf:59c7:993c] ([IPv6:2601:646:8081:7da1:c71f:dfcf:59c7:993c])
	(authenticated bits=0)
	by mail.zytor.com (8.18.1/8.17.1) with ESMTPSA id 65UKbV7A3711782
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Tue, 30 Jun 2026 13:37:31 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 65UKbV7A3711782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
	s=2026062701; t=1782851852;
	bh=ADi6tLXnHBmqJuu5WzVxS5+nCywOCQHAzlLQhjEDRMY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KyjCcFhkx1H3TfBkqxCRrYfPqtKRy/K00r8FIigxKd1brbPkJI48RTaGAN6t6TQTM
	 BEdJeHXPjznlLpw5pJejROh//xzmb+L2Y+I6djaXzFe5N8xiaAFbaMp/5HcAxfekyi
	 3NgujK3A350Q1DfV4jsLRX6242cycrFD9FCRap8PdBDVDqZldaX2I1fMLtYf5LQ0Z9
	 gWbwR7tlNgc+y4dsRSbEnmVrvnYDHL0WInGxr6iOrArm+Ul0Tcv+TApBoSuWFvMwTo
	 Wd1jEO92KNHp9Tcrun0k9c2wAJTc/3FaCP4RDgWiEWpOPR+R4k8kYSMkxQtaoOKnEr
	 /N84gGn7TFRLw==
Message-ID: <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
Date: Tue, 30 Jun 2026 13:37:25 -0700
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
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[zytor.com,none];
	R_DKIM_ALLOW(-0.20)[zytor.com:s=2026062701];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5676-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[hpa@zytor.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,zytor.com:dkim,zytor.com:mid,zytor.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACAC76E7E2D

On 2026-06-30 03:39, Alejandro Colomar wrote:
> 
>> +.BR ioctl ()
> 
> I think this should probably refer to
> 
> 	.BR TC { G , S } ET { A , S , S2 }(2const)
> 
> instead, right?
> 
> Also, I think this belongs in a separate preceding commit.
> 

Yes, I didn't think that belonged in this page though. I have to say I think
it *really* doesn't belong in termios(3); it just continues the confusion
behind the fact that these are entirely different interfaces. If someone wants
to know the details of the ioctl interface, they should look in ioctl_tty(2).

>> +interface directly (see
>> +.BR ioctl_tty (2)).

... which is why I added this cross-reference.

>> +Instead, the
>> +.BR cfgetispeed (),
>> +.BR cfgetibaud (),
>> +.BR cfsetispeed ()
>>  and
>> -.BR TCSET *
>> -ioctls;
>> -see
>> -.BR ioctl_tty (2))
>> +.BR cfsetibaud ()
>> +functions should be used in application code.
> 
> Same rephrasing as above.
> 

See the same consideration.

> 
> The removal of old documentation should be done in a separate commit.
> 

OK.

> 
> There seems to be some wording inconsistency here.  It's hard to read.
> Maybe:
> 
> 	functions,
> 	the line rate needs to be specified
> 	as one of a set of enumerated macros
> 	defined in
> 
> That is, 'an' should be removed (and semantic newlines can be improved).

OK,


> This text isn't really being added.  The weirdness of this diff is in
> part because of including too many changes in a single commit.  In this
> case, it seems to be a movement of text from elsewhere.  Separating
> commits would improve the diff significantly. 

I'm having some challenges with the structure of this man page in general; I
feel it contains way too much for a single Unix man page and it makes it hard
to read. I almost thinking it should be rewritten entirely and refactored.
Perhaps termios(3type), tc*attr(3), cf*speed(3), cf*baud(3), cfmakeraw(3),
with the remaining tc*() functions either kept together or broken up. Some of
the underlying concepts may want to go either into something like tty(7).

However, doing that using the broken-up diffs that you want would be very
difficult at least for me, as I'm neither particularly comfortable with troff
nor a good technical writer, plus that this is a "spare time" project for me.
I would be willing to try to submit such a rewrite, but if that means
refactoring it into small diffs it isn't going to happen.

In fact, I *did* rewrite and restructure significant chunks of the termios
chapter of the glibc texinfo manual during this work partly due to the sheer
number of errors that had collected over the years, partly because the clarity
was muffled by unclear language caused by wanting to pretend that the tty
interface is anything other than an emulation of an RS232 interface.
Explaining it as an *abstraction* of an RS232 interface that may be real or
virtual really clarifies a whole lot of things.

As such, I would be very very interested in what you think of the formulations
I used in that document. Perhaps we could use some of them if you think that
such a rewrite would be worthwhile.

I *very* strongly believe, however, that the ioctl_tty(2) interface needs to
be kept separate and that we shouldn't muddle that into the termios(3) man
page. It's possible that we should be factoring out the termios parts of the
kernel interface into ioctl_termios(2), as the rest of the tty ioctls
generally coexist just fine with the termios(3) interface and thus fall into a
separate class.

Speaking of ioctl_tty(2)...

One thing I have wondered about is that in ioctl_tty(2) you state to use
<asm/termbits.h> as the include, but in practice applications use
<linux/termios.h>. There are considerable subtleties in using the kernel
termios interfaces, as they are architecture-specific *AND* mutually exclusive
from the glibc one (neither the types nor the constants necessarily match up.)
On PowerPC, for historical reasons, the ioctl values in <sys/ioctl.h> for
TC[GS]ETS* don't even match the kernel ones and are intercepted in glibc and
redirected to the *glibc* tc[gs]etattr() functions, expecting the glibc
structure which I do believe is different in that it has a different number of
reserved special character slots which also pushes out the c_ispeed and
c_ospeed members.

Let me know what you think.

	-hpa


