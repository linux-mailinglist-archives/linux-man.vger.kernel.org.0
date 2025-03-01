Return-Path: <linux-man+bounces-2553-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8C4A4AD65
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 19:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AFB21701B6
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 18:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D6F1D63D9;
	Sat,  1 Mar 2025 18:41:25 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.openworlds.info (mail.openworlds.info [54.38.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBD742A87
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 18:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.38.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740854484; cv=none; b=c8EVv2wo0lci/FyU0lTW0N71vEx1KHaN7rZoVLa+UiVNu+iEBhiapUTEy8B+4hx8/BrP0EXFr7ZLao8/XkzWGMzFMFSF6xx3NhuMnvvs6u1lpponvC5PP/GNvwGjqL9kVBXJ7R8/rFZdD1eSm85xWxrnIuwr78mJVo4aabJS2yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740854484; c=relaxed/simple;
	bh=legKhZUFke8YoJsveXZtxcV2ejz5QFa9151Q5feyTNY=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=C4ZGnjlPG4qfRHG14CTCpLeq7xTFYdWGe9NAmM9ThAuO5GgzvFuy0OVd7+pZFYqgHV5etkzrcCbnfY+0ptKDb2bZP4ZiKpCuo0B2A2r36XLJoWM098+M7qRcIvQTIpHOeXQ+dSaRKvX7/p3Nny7yMhTYv2bjJnzQfwmY+WCF65I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re; spf=pass smtp.mailfrom=everwhe.re; arc=none smtp.client-ip=54.38.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everwhe.re
Received: 
	by openworlds.info (OpenSMTPD) with ESMTPSA id a3698250 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO);
	Sat, 1 Mar 2025 19:41:19 +0100 (CET)
Date: Sat, 01 Mar 2025 18:41:13 +0000
From: rahl <rahl@everwhe.re>
To: Alejandro Colomar <alx@kernel.org>
CC: linux-man@vger.kernel.org
Subject: Re: Incorrect const in futex(2) example code
In-Reply-To: <ehgu6ozyc6mhmsp2vcheluwqwoho5e4ar3gpba6aoywuqn6xuq@3au5clsivokn>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re> <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6> <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re> <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com> <ehgu6ozyc6mhmsp2vcheluwqwoho5e4ar3gpba6aoywuqn6xuq@3au5clsivokn>
Message-ID: <4305CB4C-EB96-4848-A418-FC045D4DFE89@everwhe.re>
Autocrypt: addr=rahl@everwhe.re; prefer-encrypt=mutual; keydata=
 mDMEZ8LTKRYJKwYBBAHaRw8BAQdAnF2sox8dD7X4iF/Sxskh4FkNri1MhpPZOelVJit7RPG0D3Jh
 aGxAZXZlcndoZS5yZYhyBBMWCAAaBAsJCAcCFQgCFgECGQAFgmfC0ykCngECmwMACgkQ9qZ8dWWC
 jfDaewD+Pll8wQhyYplibiKHBV79sjKHGeVp1SVYVRTIUpvHb9YBAMp2w3gNPLyysGXxMeFAxtEC
 3EPiZb1KXXmUqyTwu5QDuDgEZ8LTKRIKKwYBBAGXVQEFAQEHQCZ/Tz3sKB0ZD4cVVwHRVnxY3KcN
 oPyDtpiQAtn2GmAUAwEIB4hhBBgWCAAJBYJnwtMpApsMAAoJEPamfHVlgo3w09cA+gK8hPLCu0Sj
 rvdavukaVlmZr5mfCWbEALiT8Ri3gOm/AQCSRqAgr0/YnpSZ14UyE5q9ibLkPWs11I8gksUbXuZG
 Ag==
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: multipart/signed; boundary="----MZQ0AC7WK4MVKIH0V5L5EJDORZZIE8";
  protocol="application/pgp-signature"; micalg="pgp-sha256"

------MZQ0AC7WK4MVKIH0V5L5EJDORZZIE8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=utf-8

On 1 March 2025 13:44:56 UTC, Alejandro Colomar <alx@kernel=2Eorg> wrote:
>> > >> Attached is the trivial patch to remove the offending qualifiers=
=2E
>> > >
>> > >Please provide a complete patch, with a commit message=2E  See the f=
iles
>> > >under <CONTRIBUTING=2Ed/>=2E
>> >
>> > Rather than submit a separate email, I have attached a file
>> > containing the full output from git-format-patch,
>
>Yes, that's what I needed (I don't know why people strip the output of
>git-format-patch(1); it's easier to just send it as is, I think)=2E  :)

Initially I had not read enough of the CONTRIBUTING=2Ed docs, so my first =
patch was just the output from 'git diff'=2E

>> > - having read that an attachment is also an acceptable approach,
>> > albeit perhaps not in email form=2E
>
>Yes, it is=2E  What you sent this time is just fine=2E
>
>Do you think I could improve that documentation that would have
>prevented you from sending the first email with the stripped patch?
>Do you think anything there is unclear and could be clarified?

When first searching for how to submit a patch I found this page:
<https://kernel=2Eorg/doc/man-pages/maintaining=2Ehtml>
Where the 'Kernel bugzilla' section led me to:
<https://web=2Egit=2Ekernel=2Eorg/pub/scm/docs/man-pages/man-pages=2Egit/t=
ree/CONTRIBUTING>
I believe I then only read the 'bugs' doc before sending my first message =
and patch=2E
<https://web=2Egit=2Ekernel=2Eorg/pub/scm/docs/man-pages/man-pages=2Egit/t=
ree/CONTRIBUTING=2Ed/bugs>

I suppose I should have been more methodical and read through most or all =
of the other docs first=2E

However, ideally I might have first come across a single document that jus=
t gave an example of what the whole email and patch should look like - even=
 perhaps including that the raw output from git-format-patch is most prefer=
able=2E
This would at least make it immediately clear that the email is really mad=
e up of a particularly crafted git commit message + diff=2E

That page could then reference any of the other documents for further deta=
il=2E

I actually didn't realise for a while that the output from format-patch wo=
uld include email headers, the subject line being the first commit message =
line, and the message body being the commit message followed by diff patch=
=2E

>> > If for some reason you feel it should be submitted as a separate
>> > email I can do so=2E
>> > This way seemed more prudent for now as this is my first such patch
>> > and I'd like to get it right before having multiple threads in the ML=
=2E
>
>You could still send as a separate email in the same thread with
>git-format-patch(1)'s --in-reply-to flag (or git-send-email(1), which
>has the same flag), which would have been fine, but this is okay too=2E

Thank you=2E I shall endeavour to remember this in future=2E

Cheers,
rahl


------MZQ0AC7WK4MVKIH0V5L5EJDORZZIE8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iG8EABYIABcQHHJhaGxAZXZlcndoZS5yZQUCZ8NUyQAKCRD2pnx1ZYKN8ObDAP0Y
t1YvObTeLnpiH/akn6hSeqVhktnJxs09fTgieLaoYAD/TUo1Qj0qpCfOpW9zFpd/
u60ac3v91UNtBlTD0d8elAo=
=Tj4w
-----END PGP SIGNATURE-----

------MZQ0AC7WK4MVKIH0V5L5EJDORZZIE8--

