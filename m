Return-Path: <linux-man+bounces-1387-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EEB92B913
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 14:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D12651C235D8
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A349C1586C6;
	Tue,  9 Jul 2024 12:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="M5cz0aHJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCB815698B
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 12:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720526978; cv=none; b=PExYhvdyICbDRfkBJEm34h/iWeF6v5aFCnVRFKwHmXNv7h8caQdNvQbmGYbyqoOm5rIb1NK2covRd81i8f7LmVBlB+3BsmHK/IS3N3yioGotOcBoKiz7E1Sf65CdfNmrl3ByoCAWBYewySKLU117KbHzNbltru0tMLtrIgYTNk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720526978; c=relaxed/simple;
	bh=IsPN5rFkllDe81XFwRXWwx4K7IS1mHg9Y5mKiVMNOZU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ATSvT2kVsL+kJ3/Cs6EHL3HTLOhhCZGca29lbovvqQX+PDh8zKYrT2VKcJODN/rMi/REXpo8UmKF5fRmg8pMyQ1A+SEhdTRdch3KLrpqK+VajB785xS6ROU7fKOCdNIhkGgQ2SZAegjXXrpn3CS0AlHOOlCm8lFNNizyrMnWSPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=M5cz0aHJ; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 99F603C00E409;
	Tue,  9 Jul 2024 05:09:30 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id S9UfxFvYGeaz; Tue,  9 Jul 2024 05:09:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id E6C7E3C00E40A;
	Tue,  9 Jul 2024 05:09:29 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu E6C7E3C00E40A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1720526970;
	bh=K0o40fXyIWxlpxfQ7hXpnieFpNGDGwxn2W3lQaNBwn8=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=M5cz0aHJS6iacgHlEqIJg3lKNxBMSI93r1t/flG23NwsrWERSUxBUe5dCNZZzg8ln
	 iQgs+kjA99T6i2mfIl8SGfKoXX2C0wrivEedsmzIBGYMl0U8o6d85WXLAqj2J4mDs/
	 ddKiiyVZMbU1fHIP7fqm2bEJmzASXxXmbH0747K98C4XqMhjwLxBOXpIsxIur9ywlG
	 c0WUMqpBnP7QbKBSSfakJFKZFJCP4yT0+fU9xS5zqi2X5djCRRepIeZ66DWyilBXsz
	 11+kfSJ05I4xL4znXNcyCjAUXU51hE3vIUbcKKNfQz6Jx/1qUPBJ4esyZImTvuJsbw
	 j+BHTdkdhQ5Ag==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id nFiPDKgCAiFB; Tue,  9 Jul 2024 05:09:29 -0700 (PDT)
Received: from [192.168.1.103] (i15-les02-ntr-176-181-187-105.sfr.lns.abo.bbox.fr [176.181.187.105])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id A3A4A3C00E409;
	Tue,  9 Jul 2024 05:09:26 -0700 (PDT)
Message-ID: <8dee29a1-268c-49dc-a9ba-8dc9a4eae77b@cs.ucla.edu>
Date: Tue, 9 Jul 2024 14:09:24 +0200
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
 <2f2d78d1-0c54-49f4-b08e-bd3640dd491f@cs.ucla.edu>
 <jkxj6u2mwxbza34h344lxrtiavvvmsswqegrvi3ajop67gm54e@dzu74ktwe7bh>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
In-Reply-To: <jkxj6u2mwxbza34h344lxrtiavvvmsswqegrvi3ajop67gm54e@dzu74ktwe7bh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 7/8/24 00:52, Alejandro Colomar wrote:
 > a small set of functions
 > accept pointers that alias each other, but one of them is never
 > accessed; in those few cases, restrict was added to the parameters in
 > ISO C, but I claim it would be better removed.

Are these aliasing pointers the nptr and initial *endptr of strtol? That=20
is, are you saying that last line in the following example, which is=20
currently invalid, should become valid and should be implementable as=20
=E2=80=98end =3D s; long l =3D 0;=E2=80=99?

    char *end;
    char *s =3D (char *) &end;
    *s =3D '\0';
    long l =3D strtol (s, &end, 0);

If so, I fail to see the motivation for the proposed change, as nobody=20
writes (or should write) code like that. And if not, evidently I=20
misunderstand the proposal.


 > the small set of functions where this happens don't seem to use any=20
state,
 > so we don't need to care about implementations using internal buffers
 > that are passed somehow to the user.

For strtol (nptr, endptr, 10) evidently the state that=E2=80=99s of conce=
rn is=20
the value of *endptr. But here it=E2=80=99s possible that an implementati=
on=20
could use that state, even if the source code of the implementation's=20
strtol does not. For example, suppose the key part of the base 10=20
implementation in strtol.c is this:

     bool overflow =3D false;
     long int n =3D 0;
     for (; '0' <=3D *nptr && *nptr <=3D '9'; nptr++)
       {
	overflow |=3D ckd_mul (&n, n, 10);
	overflow |=3D ckd_add (&n, n, *nptr - '0');
       }
     *endptr =3D (char *) nptr;
     ... more code goes here ...

Currently, on typical platforms where CHAR_WIDTH < INT_WIDTH and=20
INT_WIDTH =3D=3D UINT_WIDTH, the C standard lets the compiler to compile=20
this code as if it were the following instead.

     bool overflow =3D false;
     long int n =3D 0;
     *endptr =3D (char *) nptr;
     unsigned int digit =3D *nptr++ - '0';
     if (digit <=3D 9)
       {
	n =3D digit;
	while ((digit =3D *nptr++ - '0') <=3D 9)
	  {
	    overflow |=3D ckd_mul (&n, n, 10);
	    overflow |=3D ckd_add (&n, n, digit);
	  }
	*endptr =3D (char *) nptr;
       }
     ... more code goes here ...

This sort of thing might make sense on some architectures. However, the=20
proposed change would not allow this optimization, because it=E2=80=99s i=
nvalid=20
when nptr points into *endptr.

For strtol I suppose this is not that big a deal; strtol is kinda slow=20
anyway so who cares if it=E2=80=99s a bit slower? But surely we wouldn=E2=
=80=99t want to=20
give up even this minor performance win unless we get something in=20
return, and I=E2=80=99m still not seeing what we get in return.


 > Maybe I should use abstract names for the objects, to avoid confusing
 > them with the pointer variables that are used to pass them?

That might help, yes, since v0.2 is unclear on this point.


 > this formal
 > definition is quite unreadable, though.  The more I read it, the less
 > sure I am about it.

Yes, it=E2=80=99s lovely isn=E2=80=99t it? One must understand what the C=
 committee
intended in order to read and understand that part of the standard.


 > 	If L is used to access the value of the object X that it
 > 	designates, and X is also modified (by any means), then the
 > 	following requirements apply: T shall not be const-qualified
 >
 > This reads to me as "const variables are not writable when they are
 > accessed via a restricted pointer; casting away is not enough".  Am I
 > reading this correctly?

In that quoted statement, the restricted pointer is not allowed to be=20
pointer-to-const. However, I=E2=80=99m not quite sure what your question =
means,=20
as the phrase =E2=80=9Cconst variables=E2=80=9D does not appear in the st=
andard. Perhaps=20
give an example to clarify the question?


 >> an implementation is allowed to set errno =3D EINVAL first thing, and=
=20
then set
 >> errno to some other nonzero value if it determines that the=20
arguments are
 >> valid. I wouldn't implement strtol that way, but I can see where some=
one
 >> else might do that.
 >
 > In any case an implementation is not obliged to pessimize strtol(3).  =
It
 > is only allowed to.  Should we not allow them to do so?

Of course the standard should allow suboptimal implementations. However,=20
I=E2=80=99m not sure what the point of the question is. The =E2=80=9Cerrn=
o =3D EINVAL=20
first thing=E2=80=9D comment says that removing =E2=80=98restrict=E2=80=99=
 obliges the=20
implementation to support obviously-bogus calls like strtol(&errno,=20
...), which might make the implementation less efficient. I don=E2=80=99t=
 see=20
how the question is relevant to that comment.


 > Let's take a simpler one: rename(2).  Is it allowed to receive &errno?
 > Hopefully not.

I agree with that hope, but the current C standard seems to allow it. I=20
think we both agree this is a defect in the standard.


 >>>> Why is this change worth
 >>>> making? Real-world programs do not make calls like that.
 >>>
 >>> Because it makes analysis of 'restrict' more consistent.  The obviou=
s
 >>> improvement of GCC's analyzer to catch restrict violations will trig=
ger
 >>> false positives in normal uses of strtol(3).
 >>
 >> v0.2 does not support this line of reasoning. On the contrary, v0.2=20
suggests
 >> that a compiler should diagnose calls like "strtol(p, &p, 0)", which=20
would
 >> be wrong as that call is perfectly reasonable.
 >
 > That call is perfectly, reasonable, which is why I suggest that the
 > standard should modify the prototype so that strtol(p, &p, 0), which i=
s
 > a reasonable call, should not be warned by a compiler that would
 > diagnose such calls.

Of course they shouldn=E2=80=99t warn. But where are these compilers?

v0.2 asserts that =E2=80=9CAn analyzer more powerful than the current one=
s could=20
extend the current -Wrestrict diagnostic to also diagnose this case.=E2=80=
=9D=20
But why would an analyzer want to do that? v0.2 doesn=E2=80=99t say.

The proposal merely asks to change prototypes for the C standard=20
functions strtol, strtoul, etc. But if that is the only change needed=20
then why bother? C compilers already do special-case analysis for=20
functions defined by the C standard, and they can suppress undesirable=20
diagnostics for these special cases.

If you=E2=80=99ve identified a more general problem with =E2=80=98restric=
t=E2=80=99 then welcome=20
to the club! The experts already know it=E2=80=99s confusing and limited,=
 and=20
are discussing about whether and how to improve things in the next C=20
standard. I am sure you=E2=80=99d be welcome to those discussions.


 > That is, just by reading the prototypes:
 >
 > 	void foo(int *restrict x, int **restrict p);
 >
 > and
 >
 > 	void bar(int *x, int **restrict endp);
 >
 > one should be able to determine that
 >
 > 	foo(p, &p);
 >
 > is probably causing UB (and thus trigger a warning) but
 >
 > 	bar(p, &p);
 >
 > is fine.

Sure, but this is a discussion we should be having with the compiler=20
writers, no?

Is this the main motivation for the proposal? If so, how would weakening=20
the spec for strtol etc. affect that discussion with the compiler=20
writers? v0.2 does not make this clear.


 >> Another way to put it: v0.2 does not clearly state the advantages of =
the
 >> proposed change, and in at least one area what it states as an advant=
age
 >> would actually be a disadvantage.
 >
 > The advantage is having more information in the caller.  As a caller, =
I
 > want to distinguish calls where it's ok to pass pointers that alias, a=
nd
 > where not.  And I want my compiler to be able to help me there.

I=E2=80=99m still not understanding. Removing =E2=80=98restrict=E2=80=99 =
from strtol=E2=80=99s first arg=20
gives the caller less information, not more.


 > I'd rather have a simple analyzer, which will provide for
 > less false positives and negatives.

The C committee appears to have the opposite opinion, as when they were=20
asked about this matter they added Examples 5 through 7 to what is now=20
=C2=A76.7.4.2 (Formal definition of restrict). These examples say that=20
Example 2 (which uses =E2=80=98restrict=E2=80=99 on all arguments) is the=
 simplest and=20
most effective way to use =E2=80=98restrict=E2=80=99, even though a smart=
er compiler can=20
still make some good inferences when some pointer args are =E2=80=98restr=
ict=E2=80=99=20
and others are merely pointers to const.

If the proposal is disagreeing with Examples 5 through 7, this point=20
needs to be thoroughly discussed in the proposal.


 > GCC can only catch the most obvious violations of restrict.

Yes, but I fail to see how changing the API for strtol etc. would=20
improve that situation.


 > 	#include <string.h>
 >
 > 	typedef struct {
 > 		int x;
 > 	} T;
 >
 > 	[[gnu::access(read_only, 1)]]
 > 	[[gnu::access(read_only, 2)]]
 > 	void
 > 	replace(T *restrict *restrict ls, const T *restrict new, size_t pos)
 > 	{
 > 		memcpy(ls[pos], new, sizeof(T));
 > 	}
 >
 > 	void
 > 	f(T *restrict *restrict ls)
 > 	{
 > 		replace(ls, ls[0], 1);
 > 	}
 >
 > 	$ gcc-14 -Wall -Wextra -fanalyzer replace.c -S
 > 	$
 >
 > The above program causes UB,

It=E2=80=99s not a complete program and I don=E2=80=99t see the undefined=
 behavior. If=20
behavior is undefined because it violates the [[gnu::access(...)]]=20
restrictions, that is not the sort of example that would convince the C=20
standardization committee; they=E2=80=99d want to see a standard C progra=
m.

I tried to write a standard C program to illustrate the issue, and came=20
up with the following.

   #include <string.h>

   typedef struct { int x; } T;

   static void
   replace (T *restrict const *restrict ls,
	   T const *restrict new, size_t pos)
   {
     memcpy (ls[pos], new, sizeof (T));
   }

   static void
   f (T *restrict const *restrict ls)
   {
     replace (ls, ls[0], 1);
   }

   int
   main ()
   {
     T u =3D {100}, v =3D {200}, *a[2] =3D {&u, &v};
     f (a);
     return a[0]->x ^ a[1]->x;
   }

However, I still don=E2=80=99t see undefined behavior there. gcc -O2 comp=
iles=20
this as if it were =E2=80=98int main () { return 0; }=E2=80=99 which is t=
he only=20
possible correct behavior.


 > writing an analyzer that triggers on this code, it
 > will trigger on strtol(3) too.

Sorry, I=E2=80=99m still not following the motivation for the proposed ch=
ange.=20
It appears to be something like =E2=80=9Cif we removed =E2=80=98restrict=E2=
=80=99 from strtol=20
etc=E2=80=99s first arg, compilers could generate better =E2=80=98restric=
t=E2=80=99 diagnostics=20
everywhere=E2=80=9D but none if this is clear or making sense to me. And =
if I=E2=80=99m=20
missing the point I have little doubt that the C committee will miss it t=
oo.


