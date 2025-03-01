Return-Path: <linux-man+bounces-2552-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D009A4AD4B
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 19:17:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E5763AC815
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 18:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF4F1519BE;
	Sat,  1 Mar 2025 18:17:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.openworlds.info (mail.openworlds.info [54.38.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7718494
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 18:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.38.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740853041; cv=none; b=QwwX9D3wmLm7vh5SYUpKns/yBhglwQPoEtxzF777TVNO8SpxlnPe+DNCQtm2LIr4z0CyKGysRZaJ1U//OB74RalYGqNSUbMxc4L3WFhGV1od3BkYKgHpH4dfyRnVgn1WfNjJ4UreGq1nfy4n6gJFZowd/98wMcEoaWq3bCrmzgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740853041; c=relaxed/simple;
	bh=Mzrcp1mqHtGgHzQ4NhUf7virP0h1C3hQP5wp02vMnDU=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=p+SqsPXLFe269VAgIm3fJ85avPkhQ1/XImbJDLUldoy012YOt/2MdvYSv0brB465m5Y8Hx3rA+4J37O5jNMh5VDaUxf2dQGu1zx9eiraj8d+av3h/yzNSgAypr+zO+nFmbt0NUKExTEyX/8rL2X2ohepIHYUUkcqv+71Og27aN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re; spf=pass smtp.mailfrom=everwhe.re; arc=none smtp.client-ip=54.38.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everwhe.re
Received: 
	by openworlds.info (OpenSMTPD) with ESMTPSA id 02c3978e (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO);
	Sat, 1 Mar 2025 19:17:15 +0100 (CET)
Date: Sat, 01 Mar 2025 18:17:08 +0000
From: rahl <rahl@everwhe.re>
To: Alejandro Colomar <alx@kernel.org>, Jonathan Wakely <jwakely.gcc@gmail.com>
CC: linux-man@vger.kernel.org, gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
In-Reply-To: <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re> <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6> <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re> <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com> <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5>
Message-ID: <DB38068C-0CD0-4D89-827B-7A92B343828A@everwhe.re>
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
Content-Type: multipart/signed; boundary="----T1XQDOJQ7EXZFHA7GATX2A1S5GBRVY";
  protocol="application/pgp-signature"; micalg="pgp-sha256"

------T1XQDOJQ7EXZFHA7GATX2A1S5GBRVY
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=utf-8


>> Well the example already relies on Linux-specific details of
>> syscall(2) and futex(2), and only GCC-compatible compilers are really
>> usable on Linux=2E So the GCC extensions could probably be assumed to
>> exist=2E
>>=20
>> If you were writing pure C11 code intended to be portable, you
>> wouldn't be using SYS_futex anyway=2E
>
>*Iff* C11 atomics were something we understand, maybe even just having
>a working example that uses it would be worth it, even if Linux-only
>stuff can do the same=2E
>
>However=2E=2E=2E
>
>> > The gcc docs are here:
>> > <https://gcc=2Egnu=2Eorg/onlinedocs/gcc/_005f_005fatomic-Builtins=2Eh=
tml>
>>=20
>> The patch assumes that you can pass _Atomic int* to the futex syscall,
>> but I'm not sure if that's correct=2E The syscall expects an int=2E
>
>Hmmm=2E
>
>>=20
>> The C standard says "NOTE The representation of atomic integer types
>> need not have the same size as their corresponding regular types=2E"
>>=20
>> With GCC and Clang, _Atomic uint32_t does have the same representation
>> as unsigned, so it should work=2E I'm not an expert here though=2E

I can at least attest that the patched code compiles without complaint and=
 appears to behave as expected=2E

Further, looking at the standard (at least C11 section 7=2E17=2E6), one ca=
n surmise that the _Atomic type for uint32_t will almost certainly always h=
ave the same representation and alignment as uint32_t; though I suppose we =
could have also used one of the documented guaranteed 32-bit types=2E

>Considering that the example has been broken for a long time, and I've
>asked for help in the glibc-help@ mailing list and nobody answered, and
>you don't feel comfortable with it either, the best course of action is
>to revert that commit=2E
>
>Thanks for the review!
>
>rahl, I'll do the revert myself, since it probably will have some merge
>conflicts=2E  I'll put all of you in Reported-by, and send you a link to
>the commit when I've done it=2E  Thanks!

Fair enough though=2E This has been a decent learning experience for me on=
 a couple of fronts anyway=2E

Your time is appreciated=2E Thank you=2E

Hi Alex and Jonathan,
------T1XQDOJQ7EXZFHA7GATX2A1S5GBRVY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iG8EABYIABcQHHJhaGxAZXZlcndoZS5yZQUCZ8NPJAAKCRD2pnx1ZYKN8K7yAP4i
UOYCDTeSUlpZdSWJD0bHUeulpEelNq9ye0wQDBSZGwEA0rwrtBRySjLFDwcoAnx3
Fl/ubbTafXnMH6qeMeEpAgY=
=V+TT
-----END PGP SIGNATURE-----

------T1XQDOJQ7EXZFHA7GATX2A1S5GBRVY--

