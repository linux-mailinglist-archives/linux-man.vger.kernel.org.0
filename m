Return-Path: <linux-man+bounces-2546-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FBEA4AAA8
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 12:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D44A41727EA
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 11:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8FD11D90B3;
	Sat,  1 Mar 2025 11:34:48 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.openworlds.info (mail.openworlds.info [54.38.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CAD1D79B1
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 11:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.38.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740828888; cv=none; b=SSbZX8p44THIeMjC/rvtQz5iUvCV4rSCa5rid98kmgbWciqB3yeXNrPDBhds+oomr9tAO2j9OtEdXSQcVceilR054HPJyp+cSu3a8N7iHauOBFoDmFcASX18I32IQCX8RkTQaGtL1ACPgCWia7GpINYZPl3F+IYdm1K6ekFPluc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740828888; c=relaxed/simple;
	bh=LIhySIXrQlbnmYbGCQPrmyQvFdlXCLi02LgHLndEfrs=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=dXF/Vhcgn/s2J52f+LS4TFfaY+RGO54JgWy6il3jZI7XUox90xYIlRYOMD2nkMTLij93ej1dkr4tC/DHtOuMUF4GBImjSFs7WyOH1ciinravVTs0lg3Ayb2zw08YGLYCMkArTtAwpeCg1GwXsVEqgj5tO+GLUIozzYwBXt7ICTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re; spf=pass smtp.mailfrom=everwhe.re; arc=none smtp.client-ip=54.38.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everwhe.re
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everwhe.re
Received: 
	by openworlds.info (OpenSMTPD) with ESMTPSA id 93d3ffa0 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO);
	Sat, 1 Mar 2025 12:34:34 +0100 (CET)
Date: Sat, 01 Mar 2025 11:34:28 +0000
From: rahl <rahl@everwhe.re>
To: Alejandro Colomar <alx@kernel.org>
CC: linux-man@vger.kernel.org, gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
In-Reply-To: <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re> <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
Message-ID: <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
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
Content-Type: multipart/signed; boundary="----HNVVETLT0A2L43ZU9Q8LY1R1MDEM7E";
  protocol="application/pgp-signature"; micalg="pgp-sha256"

------HNVVETLT0A2L43ZU9Q8LY1R1MDEM7E
Content-Transfer-Encoding: 7bit
Content-Type: multipart/mixed;
 boundary=----AGKAJP4IF0NXR3MY1GL50FI5W0HQOZ

------AGKAJP4IF0NXR3MY1GL50FI5W0HQOZ
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 28 February 2025 20:57:50 UTC, Alejandro Colomar <alx@kernel=2Eorg> wrot=
e:
>On Fri, Feb 28, 2025 at 10:13:04AM +0000, rahl wrote:
>> I noticed that 'const' is used for both 'one' and 'zero' variables in
>> the Examples section demo code of manpage 'futex(2)'=2E
>>=20
>> The variables are both used in calls to
>> 'atomic_compare_exchange_strong()' where the 'const' is discarded as
>> it may write to the 'expected' parameter during a "failure" case=2E
>
>I don't understand what that function is=2E  It doesn't have a manual
>page, and it's neither in /usr/include=2E  It doesn't appear in the GCC
>manual either=2E  And it's not described in ISO C=2E
>
>What is that function?
>
>I'd like to understand what we're calling to be able to understand how
>the calling code is wrong=2E

atomic_compare_exchange_XXX() are defined in stdatomic=2Eh and were introd=
uced in C11 (ISO/IEC 9899:2011 I believe)=2E

The main online documentation for these that I'm currently aware of is at =
cppreference=2E
<https://en=2Ecppreference=2Ecom/w/c/atomic/atomic_compare_exchange>

>BTW, there seem to be other important bugs in that example program,
>which I don't understand either=2E  Would you mind having a look at those
>(I'm assuming that you seem familiar with these atomic APIs)?  See:

You're right, there are more bugs=2E I'm however not so familiar with thes=
e functions, but I do have some help=2E

The errors in question relate to a missing _Atomic qualifier for several v=
ariables and function parameters=2E
The documentation linked above should clarify this as well=2E

It turns out these calls could be replaced with a compiler built-in (__ato=
mic_compare_exchange_n) both for clang and gcc, which wouldn't have the abo=
ve problem, and would also allow for the removal of 'stdatomic=2Eh'=2E Howe=
ver, this didn't feel too in keeping with manpage example code=2E

The gcc docs are here:
<https://gcc=2Egnu=2Eorg/onlinedocs/gcc/_005f_005fatomic-Builtins=2Ehtml>

>> Attached is the trivial patch to remove the offending qualifiers=2E
>
>Please provide a complete patch, with a commit message=2E  See the files
>under <CONTRIBUTING=2Ed/>=2E

Rather than submit a separate email, I have attached a file containing the=
 full output from git-format-patch, with the message being in what I believ=
e is the expected format - having read that an attachment is also an accept=
able approach, albeit perhaps not in email form=2E
If for some reason you feel it should be submitted as a separate email I c=
an do so=2E
This way seemed more prudent for now as this is my first such patch and I'=
d like to get it right before having multiple threads in the ML=2E

Let me know if there are any further issues=2E
Cheers,

rahl
------AGKAJP4IF0NXR3MY1GL50FI5W0HQOZ
Content-Type: text/x-diff;
 name=0001-man-man2-futex.2-Fix-demo-code-example.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=0001-man-man2-futex.2-Fix-demo-code-example.patch;
 size=3551

RnJvbSBjZjZmMDEyMjQ4MWVlOGU4YjNkYzg4NTMyYTRjY2I2YjQ1MTNlMDlkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiByYWhsIDxyYWhsQGV2ZXJ3aGUucmU+CkRhdGU6IFNhdCwgMSBN
YXIgMjAyNSAxMDo0MDoxOCArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIG1hbi9tYW4yL2Z1dGV4LjI6
IEZpeCBkZW1vIGNvZGUgZXhhbXBsZQpUbzogQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwu
b3JnPgpDYzogPGxpbnV4LW1hbkB2Z2VyLmtlcm5lbC5vcmc+CgpUaGlzIGJlZ2FuIGJ5IG5vdGlj
aW5nIHRoYXQgdGhlIHVzZSBvZiBjb25zdCBmb3IgdGhlIGZ1dGV4IyB2YXJpYWJsZXMgd2FzCmlu
Y29ycmVjdCBnaXZlbiB0aGF0IHRoZWlyIHZhbHVlcyBtYXkgYmUgYWx0ZXJlZCBieSBjYWxscyB0
bwphdG9taWNfY29tcGFyZV9leGNoYW5nZV9zdHJvbmcoKS4KCkZ1cnRoZXIsIHdoaWxlIGdjYyBp
cyBzaWxlbnQgb24gdGhlIG1hdHRlciwgY2xhbmcncyBpbXBsZW1lbnRhdGlvbiBvZgpfX2MxMV9h
dG9taWNfZXhjaGFuZ2VfY29tcGFyZV9zdHJvbmcoKSAoY2FsbGVkIHZpYSB0aGUgZnVuY3Rpb24g
bWFjcm8KYXRvbWljX2V4Y2hhbmdlX2NvbXBhcmVfc3Ryb25nKSB0aHJvd3MgYW4gZXJyb3IgZHVl
IHRvIGl0IHJlcXVpcmluZyBhbiBfQXRvbWljCnR5cGUuCgpUaGlzIHBhdGNoIGlzIGFuIGF0dGVt
cHQgdG8gbWFrZSB0aGUgbWluaW1hbCBhbW91bnQgb2YgY2hhbmdlIHRvIGZpeCB0aGVzZQppc3N1
ZXMuCgpEdXJpbmcgaW1wbGVtZW50YXRpb24sIE5SSyBwb2ludGVkIG91dCB0aGF0IHRoZSAnb25l
JyB2YXJpYWJsZSBuZWVkIG9ubHkgZXhpc3QKd2l0aGluIHRoZSByZWxldmFudCAnd2hpbGUnIGxv
b3AgYXMgaXQncyB2YWx1ZSB3b3VsZCBuZWVkIHRvIGJlIHJlaW5pdGlhbGlzZWQKb24gZXZlcnkg
aXRlcmF0aW9uIChoYXZpbmcgYmVlbiBhbHRlcmVkIGFmdGVyIGEgZmFpbGVkIGNhbGwgdG8KYXRv
bWljX2NvbXBhcmVfZXhjaGFuZ2Vfc3Ryb25nKS4KCkNvLWF1dGhvcmVkLWJ5OiBucmsgPG5ya0Bk
aXNyb290Lm9yZz4KU2lnbmVkLW9mZi1ieTogcmFobCA8cmFobEBldmVyd2hlLnJlPgotLS0KIG1h
bi9tYW4yL2Z1dGV4LjIgfCAzNiArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9tYW4vbWFuMi9mdXRleC4yIGIvbWFuL21hbjIvZnV0ZXguMgppbmRleCA3MGMzOTU2
YWIuLjU0MzJiYTMxNiAxMDA2NDQKLS0tIGEvbWFuL21hbjIvZnV0ZXguMgorKysgYi9tYW4vbWFu
Mi9mdXRleC4yCkBAIC0xODA2LDEwICsxODA2LDExIEBAIENoaWxkICAoMTg1MzUpIDQKICNpbmNs
dWRlIDxzeXMvd2FpdC5oPgogI2luY2x1ZGUgPHVuaXN0ZC5oPgogXCYKLXN0YXRpYyB1aW50MzJf
dCAqZnV0ZXgxLCAqZnV0ZXgyLCAqaWFkZHI7CitzdGF0aWMgX0F0b21pYyB1aW50MzJfdCAqZnV0
ZXgxLCAqZnV0ZXgyOworc3RhdGljIHVpbnQzMl90ICppYWRkcjsKIFwmCiBzdGF0aWMgaW50Ci1m
dXRleCh1aW50MzJfdCAqdWFkZHIsIGludCBmdXRleF9vcCwgdWludDMyX3QgdmFsLAorZnV0ZXgo
X0F0b21pYyB1aW50MzJfdCAqdWFkZHIsIGludCBmdXRleF9vcCwgdWludDMyX3QgdmFsLAogICAg
ICAgY29uc3Qgc3RydWN0IHRpbWVzcGVjICp0aW1lb3V0LCB1aW50MzJfdCAqdWFkZHIyLCB1aW50
MzJfdCB2YWwzKQogewogICAgIHJldHVybiBzeXNjYWxsKFNZU19mdXRleCwgdWFkZHIsIGZ1dGV4
X29wLCB2YWwsCkBAIC0xODIwLDIwICsxODIxLDI1IEBAIGZ1dGV4KHVpbnQzMl90ICp1YWRkciwg
aW50IGZ1dGV4X29wLCB1aW50MzJfdCB2YWwsCiAgICBiZWNvbWUgMSwgYW5kIHRoZW4gc2V0IHRo
ZSB2YWx1ZSB0byAwLiAqLwogXCYKIHN0YXRpYyB2b2lkCi1md2FpdCh1aW50MzJfdCAqZnV0ZXhw
KQorZndhaXQoX0F0b21pYyB1aW50MzJfdCAqZnV0ZXhwKQogewotICAgIGxvbmcgICAgICAgICAg
ICBzOwotICAgIGNvbnN0IHVpbnQzMl90ICBvbmUgPSAxOworICAgIGxvbmcgczsKIFwmCi0gICAg
LyogYXRvbWljX2NvbXBhcmVfZXhjaGFuZ2Vfc3Ryb25nKHB0ciwgb2xkdmFsLCBuZXd2YWwpCisg
ICAgLyogYXRvbWljX2NvbXBhcmVfZXhjaGFuZ2Vfc3Ryb25nKFQgKm9iaiwgVCAqZXhwZWN0ZWQs
IFQgZGVzaXJlZCkKICAgICAgICBhdG9taWNhbGx5IHBlcmZvcm1zIHRoZSBlcXVpdmFsZW50IG9m
OgogXCYKLSAgICAgICAgICAgaWYgKCpwdHIgPT0gKm9sZHZhbCkKLSAgICAgICAgICAgICAgICpw
dHIgPSBuZXd2YWw7Ci1cJgotICAgICAgIEl0IHJldHVybnMgdHJ1ZSBpZiB0aGUgdGVzdCB5aWVs
ZGVkIHRydWUgYW5kICpwdHIgd2FzIHVwZGF0ZWQuICovCisgICAgICAgICAgIGlmIChtZW1jbXAo
b2JqLCBleHBlY3RlZCwgc2l6ZW9mICpvYmopID09IDApIHsKKyAgICAgICAgICAgICAgIG1lbWNw
eShvYmosICZkZXNpcmVkLCBzaXplb2YgKm9iaik7CisgICAgICAgICAgICAgICByZXR1cm4gdHJ1
ZTsKKyAgICAgICAgICAgfSBlbHNlIHsKKyAgICAgICAgICAgICAgIG1lbWNweShleHBlY3RlZCwg
b2JqLCBzaXplb2YgKm9iaik7CisgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7CisgICAgICAg
ICAgIH0KKyAgICAqLwogXCYKICAgICB3aGlsZSAoMSkgeworXCYKKyAgICAgICAgdWludDMyX3Qg
b25lID0gMTsKIFwmCiAgICAgICAgIC8qIElzIHRoZSBmdXRleCBhdmFpbGFibGU/ICovCiAgICAg
ICAgIGlmIChhdG9taWNfY29tcGFyZV9leGNoYW5nZV9zdHJvbmcoZnV0ZXhwLCAmb25lLCAwKSkK
QEAgLTE4NTIsMTAgKzE4NTgsMTAgQEAgZndhaXQodWludDMyX3QgKmZ1dGV4cCkKICAgIHNvIHRo
YXQgaWYgdGhlIHBlZXIgaXMgYmxvY2tlZCBpbiBmd2FpdCgpLCBpdCBjYW4gcHJvY2VlZC4gKi8K
IFwmCiBzdGF0aWMgdm9pZAotZnBvc3QodWludDMyX3QgKmZ1dGV4cCkKK2Zwb3N0KF9BdG9taWMg
dWludDMyX3QgKmZ1dGV4cCkKIHsKLSAgICBsb25nICAgICAgICAgICAgczsKLSAgICBjb25zdCB1
aW50MzJfdCAgemVybyA9IDA7CisgICAgbG9uZyAgICAgICAgczsKKyAgICB1aW50MzJfdCAgICB6
ZXJvID0gMDsKIFwmCiAgICAgLyogYXRvbWljX2NvbXBhcmVfZXhjaGFuZ2Vfc3Ryb25nKCkgd2Fz
IGRlc2NyaWJlZAogICAgICAgIGluIGNvbW1lbnRzIGFib3ZlLiAqLwpAQCAtMTg4Nyw4ICsxODkz
LDggQEAgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQogICAgIGlmIChpYWRkciA9PSBNQVBf
RkFJTEVEKQogICAgICAgICBlcnIoRVhJVF9GQUlMVVJFLCAibW1hcCIpOwogXCYKLSAgICBmdXRl
eDEgPSAmaWFkZHJbMF07Ci0gICAgZnV0ZXgyID0gJmlhZGRyWzFdOworICAgIGZ1dGV4MSA9IChf
QXRvbWljIHVpbnQzMl90ICopJmlhZGRyWzBdOworICAgIGZ1dGV4MiA9IChfQXRvbWljIHVpbnQz
Ml90ICopJmlhZGRyWzFdOwogXCYKICAgICAqZnV0ZXgxID0gMDsgICAgICAgIC8qIFN0YXRlOiB1
bmF2YWlsYWJsZSAqLwogICAgICpmdXRleDIgPSAxOyAgICAgICAgLyogU3RhdGU6IGF2YWlsYWJs
ZSAqLwotLSAKMi40OC4xCgo=

------AGKAJP4IF0NXR3MY1GL50FI5W0HQOZ--

------HNVVETLT0A2L43ZU9Q8LY1R1MDEM7E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iG8EABYIABcQHHJhaGxAZXZlcndoZS5yZQUCZ8LwxAAKCRD2pnx1ZYKN8NWnAP0e
0dRHNdWc6pgHkPXAiIvNAW/x9DXrqV3qD0xOp3z3+AD5AX6gxRvAPkP5xzwadJ5k
PUOooxxGJefiXJaEfjHR7Qs=
=EldM
-----END PGP SIGNATURE-----

------HNVVETLT0A2L43ZU9Q8LY1R1MDEM7E--

