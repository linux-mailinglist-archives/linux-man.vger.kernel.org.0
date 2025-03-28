Return-Path: <linux-man+bounces-2667-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1157A75350
	for <lists+linux-man@lfdr.de>; Sat, 29 Mar 2025 00:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8917C172BF5
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 23:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E2A1F3BBF;
	Fri, 28 Mar 2025 23:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b="VIHNF2vn"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.web.de (mout.web.de [212.227.17.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3B91F4C8C
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 23:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743204434; cv=none; b=A4KIhzqSJ5fp4pCQzeIsNIh1jzdQcofZO7YLbgw9Unn5Opvh0tOtLhBjr3prQrR8MN3FVXo/zWIo4P6XNMUhA/G0anMuvwD3ehi5eoGjqkNsOz8uSWvCy9ASwhrekWY4PF1l90cHkkjFiEXUzdtfBve2YQitlxy4D9oSF8y+e8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743204434; c=relaxed/simple;
	bh=o9PmH46L4mHakKJ3EKP3kjlYnqkVVmE9o+VNBkqzciY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m0y/w7BMaGmHDBShBFhvWM3rdhbdSGt4U29IIjeDMOkvNVes7xfiBWAiJqJOZNhjetfQSqKXBXlSX75Z/y6jn1OAFLsc8jbhgJl/ozqRN1JilzfLIvIp3ybwjMag6aa2vVSBrLEdbQr0r4b3dfjU9WO+crrt9dINje9xU/qkYqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de; spf=pass smtp.mailfrom=web.de; dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b=VIHNF2vn; arc=none smtp.client-ip=212.227.17.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1743204409; x=1743809209; i=radisson97@web.de;
	bh=o9PmH46L4mHakKJ3EKP3kjlYnqkVVmE9o+VNBkqzciY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=VIHNF2vnFzSWnPs4wpUbMM93PeTnCSPawfsfoG9SVskYU9TlCy373YUSJ4VgiybU
	 9Wey4errr9djGdKm5pAiT1VJkyGwNZfb2Rl6gpyFKV1z/Yo74o2fAkkBEKiBZAmJT
	 9fb87YwjsTUdiDieDO7VslR1AAHzgDZAD/G7c4msrpb06D/SSOvkD5lkW0sAPbYrj
	 9liWVHkfK8+GCoyBbqgkmueRZgmj3JvirtAs6cn2KJ2rLgsk6CO58aQu1rd/l3B4A
	 ekteQnYsMjJCKuEOpmGesmgjoK0sLPSKCZxewYeR0JJJPE0QDonWe1nyqYkyy1MWa
	 0kWAop4GQ0UBKQVWcQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.40] ([91.96.44.44]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1Mt8kN-1t9eU42bsn-0147xP; Sat, 29
 Mar 2025 00:26:49 +0100
Message-ID: <3f5eaef3-5751-4ff3-9d30-b67f11e9457f@web.de>
Date: Sat, 29 Mar 2025 00:26:49 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: fix: recvfrom() error handling
Content-Language: en-US
To: Carlos O'Donell <carlos@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
 "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
 <ryuuydac7ybjw4pxiqzrjokcwvds3a6ezbjdi6h5fbz7zbr5d7@cqk5eio4lyrh>
 <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>
 <7cf47smc7ntz2k4rkekbuzehzymi3fnvwybsrn42pqgptm75wg@6s5b6mrwkhfv>
 <977a59f6-4e1e-4f7d-996d-8dbcd7a46794@web.de>
 <4fee13e3-d3d6-47be-87b8-d4303918cbaa@redhat.com>
From: Peter Radisson <radisson97@web.de>
In-Reply-To: <4fee13e3-d3d6-47be-87b8-d4303918cbaa@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:qCnPw1UAsI7qVDe7jOsoVy0VaeZThIOysbPFx7UF34S66J/Ik98
 wBVa775MM43TN07Utz5Ot8tOlz3gF49Wd7FFrwMW2hFa53P6mGL+DShPuvd/6r74QMfCxDO
 yiKY2qd80B472RltWlOrEWE0D5AVkeuHEY59kjy6uIpUMijMNEj+mVexWddZmm9XIzJwJtq
 b3onljz2raOiGFUk5nKEw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ptXCuWPZT8E=;t/BkMQYxfLEPXZsKrElN4E9o0mW
 p8/Pdjjp7DUVIhF4sdU6S6+RqpjpXMCk91PhCrCcCImR1N1Luze/q/Hx2XFAblM9a0VDhlEqJ
 72sGk0BfjBMRsCN+lQOKsIOrF/MFSkJc7NswJHvc7hHTwMgjCnQcYz/1hu0667ZeTKAcOJWy1
 OaDTwQmqIg16Z5gOnOVWX6Qea6V/WSMz7ov4nFdLOkG47Cz75Q+KBJ+ihsK6XZX+ZASRXxJre
 2TdgvQE4HLO0dTQq/Gcg/EDPFWnIUQeWG2ff5DgaYkrto8z3pwfqkiTNZ2lZOeQzIxhMjzyCt
 L08cxmTT3XypOnOUxB+EJ1KUXC8xzaHzon6XyDyj6zsgy4QfL7cBK77m97d3tNeNHBCbgIJlS
 UVrL8kKF/5AY67CBuT2bqpLQjx3pKL56ghYLNway8fbsRJ+UDJIAS4VsvALbbdv7ukaObI/RU
 san6PyFqCZOx8eMf6x08+Qhl8zyKDzu1ElcfMxGHZHlSG4Z2yyRp3KjBckwOxyvN2FAvyq9ig
 SBcGjB3SaQCS1SPbw8GuovRoiMoPMr/MQS7utIj88x1durNqLFMRsIq1LEOFHrEJm7ZTLrCCr
 sh47FgP9qDC7kKzJaiK7MIvqv+fJ8oEZQ0OCC+Ws/ThGyuVg16TFcIK7VFIbR231y0qPusC6i
 0KWD8bLnc4cYrzMhnsq9i0SspwOEO2nqLi0NhrOcAgtxRvcivwP2A28tCGFg1YCGES1VFT50j
 WoVxOV/7MJts6/TXcrghGfba0VK5p3IfqG1HmkHCB65S/agvYGjaxXul1sIfrysAuj02C0uRY
 gjJW3qze5NSD30hxSOInmvx9VXKRkBQ+KYBRXPKIpjBGYF6whZaTBRgvjPngjRaRm1vhhjqxy
 XyKqhKOvpxVxeu6QZwON2yyJ8BSOc+ZH7Hjkd5A33f25eaUhDW/Xwgg3hnWbNdpTMEBW8LvY6
 bG5tuEaI2d9GCzQ7cvd6Qd0uzUPDxm5qr3fUzAPMzqMZm/iCaAh4hZ3KYHuB7Dfovlz/k/Znq
 JWcgaG+jPnJQvbteqKbCXu7YTk/hl0jxIs02h5Bzgp4yG1g2nBJVPK46JLV8gQ48+QKTR9t0J
 Ja5eGgTX7fnN0w4bEuwXyRoNKhfqO/rRrxX347QdXgBDv4XXmXxSWtdfRT1iCEq72naZ9Wi39
 yoWJfH6cyA1lyVgMFW0Ai/KQGtPvpqQD00+iFwLk5DwTPh6w/DT8yUFdEb/XsTx7K+WGVVCNx
 1sXBKWVkT8wS/vVbhPW68t+GZPeEsEWM1NTZd+GO8YC/8z3oDRFoDUdrXyAZtm1GJKbfJuUlH
 trj1f3rPEq2Jwh6miX9zDIjgA5qJ0TuLxBMMBiRlN3B71jQU5vvOdII56QHDmQBDNO3j4SfJ1
 RBGaICh8OsohzfqZInc7bGQLwQVkZje8S2zHa9P4L2f3tjqBX78eUjUQNc+bdHqPKhmaE+USq
 6Daf9FQ==



Am 28.03.25 um 23:45 schrieb Carlos O'Donell:
> On 3/27/25 1:47 PM, Peter Radisson wrote:
>> Am 27.03.25 um 18:28 schrieb Alejandro Colomar:
>>> On Thu, Mar 27, 2025 at 05:35:21PM +0100, Peter Radisson wrote:
>>>> V2:
>>>> * removed 1 empty line
>>>> * and changed wording to "content of" to make clear *addrlen is used.
>>
>> V3:
>> * changed wording:
>> less that null -> negativ
>
> s/negativ/negative/g
>
>>
>> thx for fast reply, unfortunately i noticed an other problem with the
>> page. I will report in an other mail.
>>
>>>> To replicate the problem:
>>>>
>>>> // intended use
>>>> struct sockaddr_in=C2=A0 sock_out;
>>>> int slen=3Dsizeof(sock_out); //socklen_t
>>>> recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_ou=
t,
>>>> &slen);
>>>>
>>>> // error case
>>>> struct sockaddr_in=C2=A0 sock_out;
>>>> int slen=3D1;
>>>> recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_ou=
t,
>>>> &slen);
>>>>
>>>> funfact: this escapes the error handling in the linux kernel (no cras=
h)
>>>> set slen=3D-1 and you get EINVAL.
>>>>
>>>> hope that helps.
>>>>
>>
>> =C2=A0From 9f464fde8dd168b71430ca29f631153e3e3fb2e5 Mon Sep 17 00:00:00=
 2001
>> From: Peter Radisson <--show-origin>
>> Date: Thu, 27 Mar 2025 18:39:29 +0100
>> Subject: [PATCH] Be more verbose about recvfrom(2) error handling
>>
>> Signed-off-by: Peter Radisson <--show-origin>
>> ---
>> =C2=A0=C2=A0man2/recv.2 | 16 ++++++++++++++++
>> =C2=A0=C2=A01 file changed, 16 insertions(+)
>>
>> diff --git a/man2/recv.2 b/man2/recv.2
>> index 2659957a6..ba17d03a3 100644
>> --- a/man2/recv.2
>> +++ b/man2/recv.2
>> @@ -293,6 +293,22 @@ The returned address is truncated if the buffer
>> provided is too small;
>> =C2=A0=C2=A0in this case,
>> =C2=A0=C2=A0.I addrlen
>> =C2=A0=C2=A0will return a value greater than was supplied to the call.
>> +If
>> +.I src_addr
>> +is NULL
>> +.I addrlen
>> +will be ignored.
>> +If
>> +.I src_addr
>> +is not NULL and the content of
>> +.I addrlen
>> +is negativ the call will return with
>
> s/negativ/negative/g
>
>> +.IR EINVAL .
>> +If
>> +.I addrlen
>> +is less than sizeof struct sockaddr_in the src_addr will
>> +not be modified.
>
> My suggestion would be to place this as an entry under ERRORS
> for EINVAL.
>
> Adding all of this conditional text under recvfrom() seems overly
> complicated.
>
> We should document the success case and how it work for truncation.
>

IMHO is the error handling broken. Anything less that sizeof(struct
sockaddr_in) should cause an error. It does not so this behavier should
be documented here so everybody is aware about it.
(second thought: BUGS section ?)

ym2c

>> +
>> =C2=A0=C2=A0.PP
>> =C2=A0=C2=A0If the caller is not interested in the source address,
>> =C2=A0=C2=A0.I src_addr
>> --
>> 2.35.3
>>
>>
>>
>
>


