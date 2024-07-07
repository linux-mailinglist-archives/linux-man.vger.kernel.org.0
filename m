Return-Path: <linux-man+bounces-1361-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A66A92992F
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 19:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6336B2153A
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 17:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4928A3E479;
	Sun,  7 Jul 2024 17:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="TomhbHar"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C672261D
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 17:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720373452; cv=none; b=IlagZzPQQKqlqSg+BtlEO2rNMa9Kw8qHW+00VYF79325rAexC7nUG80aYPTbAK/cROtEGTrsL0RvJnboFoRyO/nzIiTgDMlRZK7cNLY0VPYPG6BkVan9x6GmRRNQ3CsWfPLMfhx5zZkr0v6UpvvB0aK5rhMA1tkcKfjrzJYA4nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720373452; c=relaxed/simple;
	bh=fJ2gXTsQqwHXv0zxZz0L0IDux9iDHzMVK+XpuHo7tfU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pf121rfseZu7593N9qhaD/AfQwqFZaO5AhJQjx4ZJ2h098W6H+3oNX68tX8hmQGttd6dLIy67vlPgv2ZvmFqXUFXfLGJAJw4c10IYl3CJtX5GB2vrbVgpNLY+8cFXV6xm5lXGnLguyGjxFV2MnJmFD7pBwlYYjUTx3CFMKye8U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=TomhbHar; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id A56923C011BD8;
	Sun,  7 Jul 2024 10:30:49 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id dBaCCj7Vh5KM; Sun,  7 Jul 2024 10:30:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 24EFA3C011BDB;
	Sun,  7 Jul 2024 10:30:49 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 24EFA3C011BDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1720373449;
	bh=LRuq78L4Fb7mRPBmNcIKUl4a1qGebkBLUaVO77uqBMc=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=TomhbHara0LBUR4CUs4I4Jr4CJEZo1leMlDM+D2S79IayPG26Klf8EXitkJzwCsTE
	 /tSo2Swv8utgE9kj8aD/SjmQkVTeCSX7c8u3xXmO8ll0wyRyvnCPrPhngy5YO5BlyH
	 gc0/oKOt9hqsvu0TG4QpjlSOIdmYFB7TMWb3+goEmNlCg/Evu+zZ3CJrIZYzOEzs7V
	 62ztrqIJP/Nwy2oMtYF8Ap/3PGBOQJMFr811YgBxg7tKS4uUQeWjfnUE/PM/l6+ir1
	 UxPkEJkavM2FnFK2QG9jixKRB5VdfOw37HCxyGWCCPKH9RZnt7X+91wzXiIY6ITW92
	 zIhPjmLSFSyGQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id Y8g230u6u-Bh; Sun,  7 Jul 2024 10:30:49 -0700 (PDT)
Received: from [192.168.0.105] (host-85-26-35-49.dynamic.voo.be [85.26.35.49])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 515D63C011BD8;
	Sun,  7 Jul 2024 10:30:46 -0700 (PDT)
Message-ID: <2f2d78d1-0c54-49f4-b08e-bd3640dd491f@cs.ucla.edu>
Date: Sun, 7 Jul 2024 19:30:43 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site,
 jakub@redhat.com, uecker@tugraz.at, lh_mouse@126.com, jwakely.gcc@gmail.com,
 Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com,
 heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, libc-alpha@sourceware.org
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
In-Reply-To: <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 7/7/24 14:42, Alejandro Colomar wrote:
> On Sun, Jul 07, 2024 at 12:42:51PM GMT, Paul Eggert wrote:
>> Also, =E2=80=9Cglobal variables=E2=80=9D is not
>> right here. The C standard allows strtol, for example, to read and wri=
te an
>> internal static cache. (Yes, that would be weird, but it=E2=80=99s all=
owed.)
>=20
> That's not part of the API.  A user must not access internal static
> cache

Although true in the normal (sane) case, as an extension the=20
implementation can make such a static cache visible to the user, and in=20
this case the caller must not pass cache addresses as arguments to strtol=
.

For other functions this point is not purely academic. For example, the=20
C standard specifies the signature "FILE *fopen(const char *restrict,=20
const char *restrict);". If I understand your argument correctly, it=20
says that the "restrict"s can be omitted there without changing the set=20
of valid programs. But that can't be right, as omitting the "restrict"s=20
would make the following code be valid in any platform where sizeof(int)>=
1:

    char *p =3D (char *) &errno;
    p[0] =3D 'r';
    p[1] =3D 0;
    FILE *f =3D fopen (p, p);

even though the current standard says this code is invalid.


>> =E2=80=9Cendptr	access(write_only) ... *endptr access(none)=E2=80=9D
>>
>> This is true for glibc, but it=E2=80=99s not necessarily true for all =
conforming
>> strtol implementations. If endptr is non-null, a conforming strtol
>> implementation can both read and write *endptr;
>=20
> It can't, I think.  It's perfectly valid to pass an uninitialized
> endptr, which means the callee must not read the original value.

Sure, but the callee can do something silly like "*endptr =3D p + 1;=20
*endptr =3D *endptr - 1;". That is, it can read *endptr after writing it,=
=20
without any undefined behavior. (And if the callee is written in=20
assembly language it can read *endptr even before writing it - but I=20
digress.)

The point is that it is not correct to say that *endptr cannot be read=20
from; it can. Similarly for **endptr.


> Here, we need to consider two separate objects.  The object pointed-to
> by *endptr _before_ the object pointed to by endptr is written to, and
> the object pointed-to by *endptr _after_ the object pointed to by endpt=
r
> is written to.

Those are not the only possibilities. The C standard also permits strtol=20
to set *endptr to some other pointer value, not pointing anywhere into=20
the string being scanned, so long as it sets *endptr correctly before it=20
returns.


>> =E2=80=9CThe caller knows that errno doesn=E2=80=99t alias any of the =
function arguments.=E2=80=9D
>>
>> Only because all args are declared with =E2=80=98restrict=E2=80=99. So=
 if the proposal is
>> accepted, the caller doesn=E2=80=99t necessarily know that.
>=20
> Not really.  The caller has created the string (or has received it via =
a
> restricted pointer)

v0.2 doesn't state the assumption that the caller either created the=20
string or received it via a restricted pointer. If this assumption were=20
stated clearly, that would address the objection here.


>> =E2=80=9CThe callee knows that *endptr is not accessed.=E2=80=9D
>>
>> This is true for glibc, but not necessarily true for every conforming =
strtol
>> implementation.
>=20
> The original *endptr may be uninitialized, and so must not be accessed.

**endptr can be read once the callee sets *endptr. **endptr can even be=20
written, if the callee temporarily sets *endptr to point to a writable=20
buffer; admittedly this would be weird but it's allowed.


>> =E2=80=9CIt might seem that it=E2=80=99s a problem that the callee doe=
sn=E2=80=99t know if nptr can
>> alias errno or not. However, the callee will not write to the latter
>> directly until it knows it has failed,=E2=80=9D
>>
>> Again this is true for glibc, but not necessarily true for every confo=
rming
>> strtol implementation.
>=20
> An implementation is free to set errno =3D EDEADLK in the middle of it,=
 as
> long as it later removes that.  However, I don't see how it would make
> any sense.

It could make sense in some cases. Here the spec is a bit tricky, but an=20
implementation is allowed to set errno =3D EINVAL first thing, and then=20
set errno to some other nonzero value if it determines that the=20
arguments are valid. I wouldn't implement strtol that way, but I can see=20
where someone else might do that.


> Let's find
> an ISO C function that accepts a non-restrict string:
>=20
> 	int system(const char *string);
>=20
> Does ISO C constrain implementations to support system((char *)&errno)?
> I don't think so.  Maybe it does implicitly because of a defect in the
> wording, but even then it's widely understood that it doesn't.

'system' is a special case since the C standard says 'system' can do=20
pretty much anything it likes. That being said, I agree that=20
implementations shouldn't need to support calls like atol((char *)=20
&errno). Certainly the C standard's description of atol, which defines=20
atol's behavior in terms of a call to strtol, means that atol's argument=20
in practice must follow the 'restrict' rules.

Perhaps we should report this sort of thing as a defect in the standard.=20
It is odd, for example, that fopen's two arguments are both const char=20
*restrict, but system's argument lacks the "restrict".


>> Why is this change worth
>> making? Real-world programs do not make calls like that.
>=20
> Because it makes analysis of 'restrict' more consistent.  The obvious
> improvement of GCC's analyzer to catch restrict violations will trigger
> false positives in normal uses of strtol(3).

v0.2 does not support this line of reasoning. On the contrary, v0.2=20
suggests that a compiler should diagnose calls like "strtol(p, &p, 0)",=20
which would be wrong as that call is perfectly reasonable.

Another way to put it: v0.2 does not clearly state the advantages of the=20
proposed change, and in at least one area what it states as an advantage=20
would actually be a disadvantage.


>> =E2=80=9Cm =3D strtol(p, &p, 0); An analyzer more powerful than the cu=
rrent ones
>> could extend the current -Wrestrict diagnostic to also diagnose this c=
ase.=E2=80=9D
>>
>> Why would an analyzer want to do that? This case is a perfectly normal=
 thing
>> to do and it has well-defined behavior.
>=20
> Because without an analyzer, restrict cannot emit many useful
> diagnostics.  It's a qualifier that's all about data flow analysis, and
> normal diagnostics aren't able to do that.
>=20
> A qualifier that enables optimizations but doesn't enable diagnostics i=
s
> quite dangerous, and probably better not used.  If however, the analyze=
r
> emits advanced diagnostics for misuses of it, then it's a good
> qualifier.

Sorry, but I don't understand what you're trying to say here. Really, I=20
can't make heads or tails of it. As-is, 'restrict' can be useful both=20
for optimization and for generating diagnostics, and GCC does both of=20
these things right now even if you don't use -fanalyzer.

Perhaps adding an example or two would help explain your point. But=20
they'd need to be better examples than what's in v0.2 because v0.2 is=20
unclear about this quality-of-diagnostics issue, as it relates to strtol.


