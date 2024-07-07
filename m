Return-Path: <linux-man+bounces-1356-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB347929782
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 12:52:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36FD41F213B2
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 10:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C6618C31;
	Sun,  7 Jul 2024 10:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="USJhhxsH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA62B125DB
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 10:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720349559; cv=none; b=mcQk7XCrTHtQ25ubSo5O+1moLGF4DUjY4Zlar3j2nq74P4n0ADQbqlBbaz7KwwfpSS8ReAN5hdqOEjIbsQtusYpt9nFwLE239Sm3mxC3AFkYqJlJS3FTC+DDxFrzMcYavBAOEapJtnyXT42pC7k1PmrqCu6Rkv+9SW2TuMXzNEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720349559; c=relaxed/simple;
	bh=eswCl1kgd/JQAABg9kieC53qfYcaoSvcJUvDWkc1TAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Unx8L6G5L2ni4UT7o7CTIPsU5GGXL4RqeovP76MLFS3w/ffb6hz7rLZ4JsisPgMvaTO9n7BP/n26miwPWP1D2xynzDYB6iSGoXfM35oIqkBihDLcbxV06s03rnTWj72JQ2yApSlGIQ8K9A/ypHt8aLZUlXyX8qFjR+66jkgl/Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=USJhhxsH; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 5F4083C011BC5;
	Sun,  7 Jul 2024 03:42:58 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id Ot4020Au_8KJ; Sun,  7 Jul 2024 03:42:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 319B63C011BD4;
	Sun,  7 Jul 2024 03:42:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 319B63C011BD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1720348977;
	bh=EOSwKFDyQB0qqDCXE0+dCFXeBavi2uZNfdSjy0ssiIk=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=USJhhxsHBaiX95fHzPvckQPQo7F1YTLg1+ttuOMtNQPFXd4en3QfCQCeKaIXEzTZi
	 +7FMTpEKoWM0N9URrftqDq6S9NutZ3jfDUzBITOMoGE2rFhCTlV985ZBacqLTJyZh/
	 Uu7Cq+bwkN6OpXJyugk2Ztwzl1RhbQC08NupnkUodhdIDFo+KvqgNassya3WqLFeWx
	 S+aI+whdvWraa91xdlJPCaTNQgUBpl68vJLK4xZPrdTge7I7DC/srAXyOHrFc3FqYs
	 dmEAZ2k2FjZOBEtw3hlOMDOgm8vYxn5lyQxMtPaZaYuqDFy8h+Ja2OS3TZfe56qsLq
	 dIoXzhb4RF3kQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id ziA6Uj2ImvZi; Sun,  7 Jul 2024 03:42:57 -0700 (PDT)
Received: from [192.168.0.105] (host-85-26-35-49.dynamic.voo.be [85.26.35.49])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 2A0123C011BC5;
	Sun,  7 Jul 2024 03:42:53 -0700 (PDT)
Message-ID: <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
Date: Sun, 7 Jul 2024 12:42:51 +0200
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
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
In-Reply-To: <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 7/7/24 03:58, Alejandro Colomar wrote:

> I've incorporated feedback, and here's a new revision, let's call it
> v0.2, of the draft for a WG14 paper.
Although I have not followed the email discussion closely, I read v0.2=20
and think that as stated there is little chance that its proposal will=20
be accepted.

Fundamentally the proposal is trying to say that there are two styles X=20
and Y for declaring strtol and similar functions, and that although both=20
styles are correct in some sense, style Y is better than style X.=20
However, the advantages of Y are not clearly stated and the advantages=20
of style X over Y are not admitted, so the proposal is not making the=20
case clearly and fairly.

One other thing: to maximize the chance of a proposal being accepted,=20
please tailor it for its expected readership. The C committee is expert=20
on =E2=80=98restrict=E2=80=99, so don=E2=80=99t try to define =E2=80=98re=
strict=E2=80=99 in your own way. Unless=20
merely repeating the language of the standard, any definition given for=20
=E2=80=98restrict=E2=80=99 is likely to cause the committee to quibble wi=
th the=20
restatement of the standard wording. (It is OK to mention some=20
corollaries of the standard definition, so long as the corollaries are=20
not immediately obvious.)

Here are some comments about the proposal. At the start these comments=20
are detailed; towards the end, as I could see the direction the proposal=20
was headed and was convinced it wouldn=E2=80=99t be accepted as stated, t=
he=20
comments are less detailed.


"The API may copy"

One normally doesn=E2=80=99t think of the application programming interfa=
ce as=20
copying. Please replace the phrase =E2=80=9Cthe API=E2=80=9D with =E2=80=9C=
the caller=E2=80=9D or =E2=80=9Cthe=20
callee=E2=80=9D as appropriate. (Although =E2=80=98restrict=E2=80=99 can =
be used in places other=20
than function parameters, I don=E2=80=99t think the proposal is concerned=
 about=20
those cases and so it doesn=E2=80=99t need to go into that.)


"To avoid violations of for example C11::6.5.16.1p3,"

Code that violates C11::6.5.16.1p3 will do so regardless of whether=20
=E2=80=98restrict=E2=80=99 is present. I would not mention C11::6.5.16.1p=
3 as it=E2=80=99s a red=20
herring. Fundamentally, =E2=80=98restrict=E2=80=99 is not about the conse=
quences of=20
caching when one does overlapping moves; it=E2=80=99s about caching in a =
more=20
general sense.


=E2=80=9CAs long as an object is only accessed via one restricted pointer=
, other=20
restricted pointers are allowed to point to the same object.=E2=80=9D

=E2=80=9Conly accessed=E2=80=9D =E2=86=92 =E2=80=9Caccessed only=E2=80=9D


=E2=80=9CThis is less strict than I think it should be, but this proposal=
=20
doesn=E2=80=99t attempt to change that definition.=E2=80=9D

I would omit this sentence and all similar sentences. Don=E2=80=99t distr=
act the=20
reader with other potential proposals. The proposal as it stands is=20
complicated enough.


=E2=80=9Creturn ca > a;=E2=80=9D
=E2=80=9Creturn ca > *ap;=E2=80=9D

I fail to understand why these examples are present. It=E2=80=99s not sim=
ply=20
that nobody writes code like that: the examples are not on point. I=20
would remove the entire programs containing them, along with the=20
sections that discuss them. When writing to the C committee one can=20
assume the reader is expert in =E2=80=98restrict=E2=80=99, there is no ne=
ed for examples=20
such as these.


=E2=80=9Cstrtol(3) accepts 4 objects via pointer parameters and global va=
riables.=E2=80=9D

Omit the =E2=80=9C(3)=E2=80=9D, here and elsewhere, as the audience is th=
e C standard=20
committee.

=E2=80=9Caccepts=E2=80=9D is a strange word to use here: normally one say=
s =E2=80=9Caccepts=E2=80=9D to=20
talk about parameters, not global variables. Also, =E2=80=9Cglobal variab=
les=E2=80=9D is=20
not right here. The C standard allows strtol, for example, to read and=20
write an internal static cache. (Yes, that would be weird, but it=E2=80=99=
s=20
allowed.) I suggest rephrasing this sentence to talk about accessing,=20
not accepting.


=E2=80=9Cendptr	access(write_only) ... *endptr access(none)=E2=80=9D

This is true for glibc, but it=E2=80=99s not necessarily true for all con=
forming=20
strtol implementations. If endptr is non-null, a conforming strtol=20
implementation can both read and write *endptr; it can also both read=20
and write **endptr. (Although it would need to write before reading,=20
reading is allowed.)


=E2=80=9CThis qualifier helps catch obvious bugs such as strtol(p, p, 0) =
and=20
strtol(&p, &p, 0) .=E2=80=9D

No it doesn=E2=80=99t. Ordinary type checking catches those obvious bugs,=
 and=20
=E2=80=98restrict=E2=80=99 provides no additional help there. Please comp=
licate the=20
examples to make the point more clearly.


=E2=80=9CThe caller knows that errno doesn=E2=80=99t alias any of the fun=
ction arguments.=E2=80=9D

Only because all args are declared with =E2=80=98restrict=E2=80=99. So if=
 the proposal=20
is accepted, the caller doesn=E2=80=99t necessarily know that.


=E2=80=9CThe callee knows that *endptr is not accessed.=E2=80=9D

This is true for glibc, but not necessarily true for every conforming=20
strtol implementation.


=E2=80=9CIt might seem that it=E2=80=99s a problem that the callee doesn=E2=
=80=99t know if nptr=20
can alias errno or not. However, the callee will not write to the latter=20
directly until it knows it has failed,=E2=80=9D

Again this is true for glibc, but not necessarily true for every=20
conforming strtol implementation.

To my mind this is the most serious objection. The current standard=20
prohibits calls like strtol((char *) &errno, 0, 0). The proposal would=20
relax the standard to allow such calls. In other words, the proposal=20
would constrain implementations to support such calls. Why is this=20
change worth making? Real-world programs do not make calls like that.


=E2=80=9CBut nothing prohibits those internal helper functions to specify=
 that=20
nptr is restrict and thus distinct from errno.=E2=80=9D

Although true, it=E2=80=99s also the case that the C standard does not *r=
equire*=20
internal helper functions to use =E2=80=98restrict=E2=80=99. All that mat=
ters is the=20
accesses. So I=E2=80=99m not sure what the point of this statement is.


=E2=80=9Cm =3D strtol(p, &p, 0); An analyzer more powerful than the curre=
nt ones
could extend the current -Wrestrict diagnostic to also diagnose this case=
.=E2=80=9D

Why would an analyzer want to do that? This case is a perfectly normal=20
thing to do and it has well-defined behavior.


=E2=80=9CTo prevent triggering diagnostics in a powerful analyzer that wo=
uld be=20
smart enough to diagnose the example function g(), the prototype of=20
strtol(3) should be changed to =E2=80=98long int strtol(const char *nptr,=
 char=20
**restrict endptr, int base);=E2=80=99=E2=80=9D

Sorry, but the case has not been made to make any such change to=20
strtol=E2=80=99s prototype. On the contrary, what I=E2=80=99m mostly gath=
ering from the=20
discussion is that =E2=80=98restrict=E2=80=99 can be confusing, which is =
not news.

n3220 =C2=A76.7.4.2 examples 5 through 7 demonstrate that the C committee=
 has=20
thought through the points you=E2=80=99re making. (These examples were no=
t=20
present in C11.) This may help to explain why the standard specifies=20
strtol with =E2=80=98restrict=E2=80=99 on both arguments.


