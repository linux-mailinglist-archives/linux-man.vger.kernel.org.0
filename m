Return-Path: <linux-man+bounces-2556-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 305BCA4AEA0
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 02:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B44516F12B
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 01:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C078494;
	Sun,  2 Mar 2025 01:08:01 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.openworlds.info (mail.openworlds.info [54.38.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02194322E
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 01:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.38.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740877681; cv=none; b=HHmpasR9oNMLnXT0UcOTr/RFgu0XtplzneB+FMTQyqXiixReBWmg5LSxsaaP1OFzMzL15TbMk/oG2W4RwVxWvccqnAZ/K1kal1/QmgP4G4G8hUBK/SCdoBA/Pk3v4WkshMMbr/1QGeT8L3LjZ2HvAgO2MWc0Uj/r3hF8apE9ywc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740877681; c=relaxed/simple;
	bh=CMHtVDIB89vhJZIwdcXLRBybHsiDxLS6dq0/jJBzyKs=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=aMyMAiRmoP+ElSbU2RotwL8tUsNA4KUd4ovymk+o36iGNqYm1mLNASQ4p7wDcN+AWU15qiKHE3KXeOFdODG6L7KXIwhuKkURwkCHxrAHrsR82Q8FPt8yWSJo2BRyqd6InBj1fxcT3Tgn7FY8d8wCw9hf/KXNRi+NS2nl6hfwoo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re; spf=pass smtp.mailfrom=everwhe.re; arc=none smtp.client-ip=54.38.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everwhe.re
Received: 
	by openworlds.info (OpenSMTPD) with ESMTPSA id 94cd3166 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO);
	Sun, 2 Mar 2025 02:07:55 +0100 (CET)
Date: Sun, 02 Mar 2025 01:07:47 +0000
From: rahl <rahl@everwhe.re>
To: Jonathan Wakely <jwakely.gcc@gmail.com>, Alejandro Colomar <alx@kernel.org>
CC: linux-man@vger.kernel.org, gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
In-Reply-To: <CAH6eHdQRwcDTQXKo5JvYwy5-nD4GpNsaxjD1Zbfr6Ui16D_gqw@mail.gmail.com>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re> <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6> <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re> <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com> <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5> <CAH6eHdQRwcDTQXKo5JvYwy5-nD4GpNsaxjD1Zbfr6Ui16D_gqw@mail.gmail.com>
Message-ID: <87CA201A-A03B-4214-81F0-4F045BD08D30@everwhe.re>
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
Content-Type: multipart/signed; boundary="----KOOK89VGRUHP4PYGWLVB1BMSNE56FN";
  protocol="application/pgp-signature"; micalg="pgp-sha256"

------KOOK89VGRUHP4PYGWLVB1BMSNE56FN
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=utf-8

On 1 March 2025 21:06:22 UTC, Jonathan Wakely <jwakely=2Egcc@gmail=2Ecom> w=
rote:
>> > > It turns out these calls could be replaced with a compiler built-in=
 (__atomic_compare_exchange_n) both for clang and gcc, which wouldn't have =
the above problem, and would also allow for the removal of 'stdatomic=2Eh'=
=2E However, this didn't feel too in keeping with manpage example code=2E
>> >
>> > Well the example already relies on Linux-specific details of
>> > syscall(2) and futex(2), and only GCC-compatible compilers are really
>> > usable on Linux=2E So the GCC extensions could probably be assumed to
>> > exist=2E
>> >
>> > If you were writing pure C11 code intended to be portable, you
>> > wouldn't be using SYS_futex anyway=2E
>>
>> *Iff* C11 atomics were something we understand, maybe even just having
>> a working example that uses it would be worth it, even if Linux-only
>> stuff can do the same=2E
>
>I understand the C11 atomics fine, I don't understand how they
>interact with syscall(2)=2E
>
>>
>> However=2E=2E=2E
>>
>> > > The gcc docs are here:
>> > > <https://gcc=2Egnu=2Eorg/onlinedocs/gcc/_005f_005fatomic-Builtins=
=2Ehtml>
>> >
>> > The patch assumes that you can pass _Atomic int* to the futex syscall=
,
>> > but I'm not sure if that's correct=2E The syscall expects an int=2E
>>
>> Hmmm=2E
>>
>> >
>> > The C standard says "NOTE The representation of atomic integer types
>> > need not have the same size as their corresponding regular types=2E"
>> >
>> > With GCC and Clang, _Atomic uint32_t does have the same representatio=
n
>> > as unsigned, so it should work=2E I'm not an expert here though=2E
>>
>> Considering that the example has been broken for a long time, and I've
>> asked for help in the glibc-help@ mailing list and nobody answered, and
>> you don't feel comfortable with it either, the best course of action is
>> to revert that commit=2E
>
>The __sync_xxx built-ins are documented as legacy and not to be used
>in new code:
>https://gcc=2Egnu=2Eorg/onlinedocs/gcc/_005f_005fsync-Builtins=2Ehtml
>So while reverting it seems better than having broken examples, it
>would be better to not use the legacy APIs=2E

Ok, so we should probably improve the situation rather than just revert=2E

Perhaps using __atomic_compare_exchange_n would have been a more suitable =
approach than I had earlier realised=2E

------KOOK89VGRUHP4PYGWLVB1BMSNE56FN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iG8EABYIABcQHHJhaGxAZXZlcndoZS5yZQUCZ8OvYwAKCRD2pnx1ZYKN8BPzAP9Y
ug7ww8sRTL7Z7m4K3YhhwdVxBBspdTyGxH/u5fJ57AD/f51cAKDJdBjOq7zrZqdu
PcFaNOBct5a+tH22SQF7vA0=
=3LHa
-----END PGP SIGNATURE-----

------KOOK89VGRUHP4PYGWLVB1BMSNE56FN--

