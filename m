Return-Path: <linux-man+bounces-5548-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EElHD0L6CmpF+wQAu9opvQ
	(envelope-from <linux-man+bounces-5548-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 13:38:42 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 283F056BB33
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 13:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DACF301C88A
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 11:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299C93F39D1;
	Mon, 18 May 2026 11:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kramkow.ski header.i=@kramkow.ski header.b="ixpktuHr"
X-Original-To: linux-man@vger.kernel.org
Received: from aion.slow.network (aion.slow.network [95.179.232.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAE33F54C7
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 11:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.179.232.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779103724; cv=none; b=hBqCSIxB458ukkwZR+VIU6rfPpLaDhbLrOxpO/04wW9l0ctwMlu2OfP6xaep6kJG/X3LrjM4+D0guAy/4UlXviAHxgjuIlPNY8VMsZIFDMulP5msljMLW/niW0+mqtb9y8vbxVL88M8HvnDEWoIlSylKfWUagrHrQ/kI7rpYLyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779103724; c=relaxed/simple;
	bh=s2DD8+GodHrotPklb+9y0gjVnRSVRFWcMGLcG00CaPw=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=aiunLckrNKtNISi8D6cZMWM49EmfhclSXQ1L9Qtqm9clB2TP99QwEPzpijx8ILLSWCWOjX7NwUKfLINIUbdVzO33GvyrY5q/Yh55s54kfc4anCP5tN/DfLI3jk8tXYqWcphgEOVXvQfXFdKHOHOCJhSr6YIzThZ2IaXP8zdCB2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kramkow.ski; spf=pass smtp.mailfrom=kramkow.ski; dkim=pass (2048-bit key) header.d=kramkow.ski header.i=@kramkow.ski header.b=ixpktuHr; arc=none smtp.client-ip=95.179.232.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kramkow.ski
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kramkow.ski
Received: from erebus.slow.network (erebus.slow.network [109.74.205.187])
	by aion.slow.network (OpenSMTPD) with ESMTPS id 4e72da6c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 18 May 2026 12:21:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=20220506; bh=s2DD8+GodHr
	otPklb+9y0gjVnRSVRFWcMGLcG00CaPw=; h=in-reply-to:references:from:
	subject:cc:to:date; d=kramkow.ski; b=ixpktuHr4dKXE0QzUOumnDV4tVe3PhgwM
	kJPoA1AomK6gilAwRnomL7Xol5uh4jVivV/M91VpNzyYpfkVaS20xIEPocDmvEOwue2bCU
	l+MVojqdYQ6bVpQbgwMU6JD3fK2jEHkUBHWjGgK7wVYaeEoIJJyqCGj/zyxfIdVXOlz56Q
	ybsTXDNC3Cc3cbBll5WBGJMAdOuKgs7iieQnALlDgjeo7TWs7cpbJq1HlzfvjAiY4iBo8x
	O0e7X2Cd/tHqpEt9ax5EZnevBCS2jH5VaKDi4pjgp3/9rU2gjoMOTwb9TpODfeD3ybT+rB
	2UNg8YcpNBHbcX3s6t2mS4twMhtxg==
Received: from localhost (flit-04-b2-v4wan-169180-cust382.vm32.cable.virginm.net [81.96.161.127])
	by erebus.slow.network (OpenSMTPD) with ESMTPSA id 8ab473a2 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 18 May 2026 11:21:51 +0000 (UTC)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 18 May 2026 12:21:50 +0100
Message-Id: <DILRHLVWZ1H4.3KE7ITJLCLV17@kramkow.ski>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man/man2/ioctl_tty.2: Fix references to TCSETS(2const)
From: "Tomasz Kramkowski" <tomasz@kramkow.ski>
X-Mailer: aerc
References: <20260501145701.66573-1-tomasz@kramkow.ski>
 <afe6kmdqSAY6HrR7@devuan>
In-Reply-To: <afe6kmdqSAY6HrR7@devuan>
X-Rspamd-Queue-Id: 283F056BB33
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.65 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kramkow.ski,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[kramkow.ski:s=20220506];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[bounces-5548-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kramkow.ski:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomasz@kramkow.ski,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kramkow.ski:email,kramkow.ski:mid,kramkow.ski:dkim]
X-Rspamd-Action: no action

Hey Alex,

On Sun May 3, 2026 at 10:14 PM BST, Alejandro Colomar wrote:
> Hi Tomasz,
>
> On 2026-05-01T15:57:01+0100, Tomasz Kramkowski wrote:
>> Change the duplicate references to refer to all of the different
>> variants of the TC{GET,SET{S,S2,W}{,W,F}} constants.
>>=20
>> This looks to be a bug which was introduced during a restructuring.
>
> Would you mind adding a Fixes:' tag for that bug?  It would help for
> reviewing.
>
> See <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING.d/patches/trailer#n16>
> and <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING.d/git#n46>.

Fixes: e59976296 (2024-06-13; "ioctl_tty.2, TC[SG]ET*.2const: Split TC[SG]E=
T* from ioctl_tty(2)")

I hope this is sufficient, but if not, let me know and I will re-send
the patch with the tag.

Thanks,

Tomasz

> Have a lovely night!
> Alex
>
>>=20
>> Signed-off-by: Tomasz Kramkowski <tomasz@kramkow.ski>
>> ---
>>  man/man2/ioctl_tty.2 | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/man/man2/ioctl_tty.2 b/man/man2/ioctl_tty.2
>> index 1d6e279c0..cb2776867 100644
>> --- a/man/man2/ioctl_tty.2
>> +++ b/man/man2/ioctl_tty.2
>> @@ -42,21 +42,21 @@ whenever possible.
>>  .TQ
>>  .BR TCSETSF (2const)
>>  .TP
>> -.BR TCGETS (2const)
>> +.BR TCGETS2 (2const)
>>  .TQ
>> -.BR TCSETS (2const)
>> +.BR TCSETS2 (2const)
>>  .TQ
>> -.BR TCSETSW (2const)
>> +.BR TCSETSW2 (2const)
>>  .TQ
>> -.BR TCSETSF (2const)
>> +.BR TCSETSF2 (2const)
>>  .TP
>> -.BR TCGETS (2const)
>> +.BR TCGETA (2const)
>>  .TQ
>> -.BR TCSETS (2const)
>> +.BR TCSETA (2const)
>>  .TQ
>> -.BR TCSETSW (2const)
>> +.BR TCSETAW (2const)
>>  .TQ
>> -.BR TCSETSF (2const)
>> +.BR TCSETAF (2const)
>>  .SS Locking the termios structure
>>  .TP
>>  .BR TIOCGLCKTRMIOS (2const)
>> --=20
>> 2.51.0
>>=20

--=20
Tomasz (Tom) Kramkowski

