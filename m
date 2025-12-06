Return-Path: <linux-man+bounces-4369-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9E6CAAB2C
	for <lists+linux-man@lfdr.de>; Sat, 06 Dec 2025 18:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3758F300B332
	for <lists+linux-man@lfdr.de>; Sat,  6 Dec 2025 17:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE2C1DF73C;
	Sat,  6 Dec 2025 17:34:18 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A661A9FA7
	for <linux-man@vger.kernel.org>; Sat,  6 Dec 2025 17:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.63.66.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765042458; cv=none; b=rxlPwkSP8SxhwocP2Iyj9QORWSmHpbaLSugjwC4NyjQfDHq4rsf/HaAphGKbNgCDC4JOuN23bRYl8I1BhyiAjRpupnP2WSuLdtDepoCxb3Iz2tPj4Y85DnKVAp5qqFxEQZbAltYSIWqFgymLf03Yt8Kj6VHe5qG+G5/IGVdsGRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765042458; c=relaxed/simple;
	bh=iGlitlDTuIRQQ9tSvBQrn9ZwKHdsrauZWvkd3x9CUns=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=i7gT1W4YgjaR4yhnP7vQ8C4h1wPuk/EF/W+HYe818pREoXk0vUse34gPmMdAqrAzgVA9F1Rz/Clmt7Yi/BFOWTl7ECtd8Cb0DdhWPg2QaZ/3LT/QLx1oIKdp60hj7oJfbpnzlBx7bSZe6m0KcvGQEy7gs91lgCtTONmfqL7Pi4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hallyn.com; spf=pass smtp.mailfrom=hallyn.com; arc=none smtp.client-ip=178.63.66.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hallyn.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hallyn.com
Received: from dummy.faircode.eu (unknown [172.56.89.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: serge)
	by mail.hallyn.com (Postfix) with ESMTPSA id DF72092D;
	Sat,  6 Dec 2025 11:34:07 -0600 (CST)
Date: Sat, 6 Dec 2025 11:33:54 -0600 (CST)
From: Serge Hallyn <serge@hallyn.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <bbb268f5-db18-41bf-a30b-00079d9b97ae@hallyn.com>
In-Reply-To: <hnvmgfwqf4tjg7d5o56wxmwntbvym53g2v65vlesfgmv3t3pbu@zdyiafbysfpc>
References: <cover.1764964289.git.alx@kernel.org> <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org> <hnvmgfwqf4tjg7d5o56wxmwntbvym53g2v65vlesfgmv3t3pbu@zdyiafbysfpc>
Subject: Re: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a
 negative size is essentially UB
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <bbb268f5-db18-41bf-a30b-00079d9b97ae@hallyn.com>

Dec 6, 2025 07:32:46 Alejandro Colomar <alx@kernel.org>:

>
> Hi,
>
> On Fri, Dec 05, 2025 at 09:14:14PM +0100, Alejandro Colomar wrote:
>> Reported-by: Serge Hallyn <serge@hallyn.com>
>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>> ---
>> man/man3/snprintf.3 | 21 ++++++++++++++++++++-
>> 1 file changed, 20 insertions(+), 1 deletion(-)
>>
>> diff --git a/man/man3/snprintf.3 b/man/man3/snprintf.3
>> index dca9fc3ef..e6bb9547d 100644
>> --- a/man/man3/snprintf.3
>> +++ b/man/man3/snprintf.3
>> @@ -54,7 +54,8 @@ .SH DESCRIPTION
>> write at most
>> .I size
>> bytes (including the terminating null byte (\[aq]\[rs]0\[aq])) to
>> -.IR str .
>> +.I str
>> +(but see BUGS).
>> .P
>> The functions
>> .BR vsprintf ()
>> @@ -242,6 +243,24 @@ .SS sprintf(), vsprintf()
>> .BR asprintf (3)
>> and
>> .BR vasprintf (3)).
>> +.SS snprintf(), vsnprintf()
>> +If
>> +.I size
>> +is negative,
>> +these functions will behave
>> +as if the size was some unreasonably high value.
>> +This turns these functions essentially equivalent to
>> +.RB [ v ] sprintf (),
>> +and thus likely to overflow the buffer.
>> +It is the programmer's responsibility to pass a non-negative
>> +.IR size .
>> +.P
>> +For historic reasons,
>> +the
>> +.I size
>> +parameter is of type
>> +.IR int ,
>> +which makes it relatively easy to pass a negative value.
>
> Actually, I was completely wrong.=C2=A0 The parameter is of type size_t.
> Only the return value is of type int.
>
>
> Have a lovely day!
> Alex
>

Right,=C2=A0 that's actually the danger. It's easy to pass in an int or ssi=
ze_t, and end up overflowing the buffer, even if you (the caller) check for=
 > buflen in advance, by passing in a negative value. By the time you check=
 the return value,=C2=A0 it's too late.

"You just need to know (and not do that)", but if you are reviewing a patch=
 and don't=C2=A0 notice the extra s in ssize_t...

