Return-Path: <linux-man+bounces-5698-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rr2YIgDbTGrtqwEAu9opvQ
	(envelope-from <linux-man+bounces-5698-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 12:54:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2078D71AAD6
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 12:54:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=jasonyundt.email header.s=mail header.b=OLEStvjz;
	dmarc=pass (policy=quarantine) header.from=jasonyundt.email;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5698-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="linux-man+bounces-5698-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8FAB3300B1D9
	for <lists+linux-man@lfdr.de>; Tue,  7 Jul 2026 10:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3FD237C109;
	Tue,  7 Jul 2026 10:54:54 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE3E2F8EB1
	for <linux-man@vger.kernel.org>; Tue,  7 Jul 2026 10:54:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783421694; cv=none; b=axBN1PNY5guYeDsMVF9KHsbvtuRIHiMOkOUgypfFpfD9b6tuAfDuwqWogeBNArWrjgS0g7KfJQHYU3qwR0UfeLO3KbWdu58pDcMlwx5DlgdfpYliE8eMJSxcA8xMk4AU4eILzrIbUBb55QDv2+LPM7/uqLy4DFEYuFKRWb0k7Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783421694; c=relaxed/simple;
	bh=kaCaoBMPQwTDlgItGNqpO0iCLffuF6Zr9tYaVHbtET0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=It93XLnr0foHUfo/MrYLgPTLrLqbcZnlCp7PDYFxMy0qx0FiR12N+zP2va6OFPj61qsMgpveAjmYNH6b6+J9FQ5f3jRT6m4DYt11iIZL4RfE4KXxrkQvxPMABziPgjGKG5qe4RfJ5wRzlxvUgn2Gv/I9N1v3932hnFsDDCx5Ut8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=OLEStvjz; arc=none smtp.client-ip=104.248.224.157
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1783421690;
	bh=kaCaoBMPQwTDlgItGNqpO0iCLffuF6Zr9tYaVHbtET0=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To:From;
	b=OLEStvjzlKJTVFK+e9JgBZ0q7b/B4DBh3za1WUbfiw1I84dsvpKRuu86VdkhfhjH+
	 WHLWWLLnRCKF1YOI2/mFyoPr85irKRZFHUr91FYm5x6dAQHstyYQ8SllVDalY+Cw8K
	 fcXvRlN5tU5z0jL4cjne3PB9dGXyIZeVRI7KlaGi2bwdJjh5J6lFraP1QYgMW5qHCw
	 g3klVGjPoydQMVAnciNR0wAYydomaxF7RYUh+2nc5on0TZRq9gX0uTDxZ6gOHQ0nzU
	 hrBTNKCIMeyHcIDDKiv11WGo01lDXV/z8Rw+/A+L6GkXA3K3MBn8jjy8sdxkquqzn0
	 h2fPuJT1DbE5A==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 7ECA97E36E;
	Tue,  7 Jul 2026 06:54:50 -0400 (EDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 07 Jul 2026 06:54:49 -0400
Message-Id: <DJSA85QXGWYK.1D40FPI15883J@jasonyundt.email>
Cc: <linux-man@vger.kernel.org>
Subject: Re: [PATCH v1] man/man7/environ.7: Fix underspecification of
 "name=value" strings
From: "Jason Yundt" <jason@jasonyundt.email>
To: "Alejandro Colomar" <alx@kernel.org>, "Jason Yundt"
 <jason@jasonyundt.email>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email> <akvEyqpWVMYkkJei@devuan>
In-Reply-To: <akvEyqpWVMYkkJei@devuan>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[jasonyundt.email,quarantine];
	R_DKIM_ALLOW(-0.20)[jasonyundt.email:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5698-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jason@jasonyundt.email,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-man@vger.kernel.org,m:alx@kernel.org,m:jason@jasonyundt.email,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[jasonyundt.email:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jason@jasonyundt.email,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,wikipedia.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2078D71AAD6

On Mon Jul 6, 2026 at 11:27 AM EDT, Alejandro Colomar wrote:
> Hi Jason,
>
> On 2026-07-06T10:26:20-0400, Jason Yundt wrote:
>> Before this change, environ(7) said this:
>>=20
>> > By convention, the strings in environ have the form "name=3Dvalue".  T=
he
>> > name is case-sensitive and may not contain the character "=3D".  The
>> > value can be anything that can be represented as a string.  The name
>> > and the value may not contain an embedded null byte ('\0'), since this
>> > is assumed to terminate the string.
>>=20
>> That description has a few problems:
>>=20
>> 1. It talks about =E2=80=98the character "=3D"=E2=80=99, but it doesn=E2=
=80=99t specify what
>>    character encoding would be used to represent that character.  Two
>>    different character encodings could represent that same =E2=80=9C=3D=
=E2=80=9D character
>>    using two different bytes (or even sequences of bytes).
>
> POSIX says that '=3D' is part of the portable character set.

I don=E2=80=99t really think that '=3D' being a part of the POSIX Portable
Character Set matters here.  For one thing, environ(7) doesn=E2=80=99t ment=
ion
the POSIX Portable Character Set at all.  Even if it did, the POSIX
Portable Character Set does not specify that the character encoding of
'=3D' is 0x3D so it wouldn=E2=80=99t really help us.

> Do we really need to care about the value of '=3D'?

There needs to be a specification somewhere that says what the character
encoding would be.  You can=E2=80=99t represent any characters on a compute=
r
without choosing a character encoding.

> Is this really possible?

Definitely.  Anyone can create whatever character encoding that they
want to.  There=E2=80=99s nothing that would force people to always encode =
the
=E2=80=9C=3D=E2=80=9D character as 0x3D in every character encoding that th=
ey create.
There are already character encodings in existence where =E2=80=9C=3D=E2=80=
=9D is not
encoded as a 0x3D byte.  For example, =E2=80=9C=3D=E2=80=9D is encoded as a=
 0x7E byte in
EBCDIC [1].

>
>> 2. It mentions that =E2=80=98The name is case-sensitive and may not cont=
ain the
>>    character "=3D".=E2=80=99  It doesn=E2=80=99t clearly say what what i=
s allowed to be in
>>    a name.  It only says that those two things are explicitly
>>    disallowed.
>
> Anything else is allowed, obviously.

I don=E2=80=99t think that the current wording clearly specifies what is al=
lowed
to be in a name.  It=E2=80=99s definitely not obvious to me.

>
>> This change fixes those two problems.  For the first problem, this
>> change makes it so that the description is all about bytes, not
>> characters.  Describing the format in terms of bytes allows us to
>> sidestep the question of character encoding entirely.  Additionally, it
>> is more accurate to describe strings in environ as being sequences of
>> bytes instead of sequences of characters.  Both the name and value of an
>> environment variable could be sequences of bytes that don=E2=80=99t cont=
ain any
>> characters at all.
>>=20
>> For the second problem, this change clarifies that the name of an
>> environment variable can contain any byte except for 0x3D.  It also
>> clarifies that while it=E2=80=99s OK for environment variable values to =
be
>> empty, it=E2=80=99s not OK for environment variable names to be empty.
>>=20
>> Additionally, this change replaces "=3D" with '=3D'.  In the C programmi=
ng
>> language, "=3D" refers to two bytes: one for the equals character plus o=
ne
>> for the terminating null byte.  In the C programming language, '=3D'
>> refers to a single byte.  In this particular instance, we=E2=80=99re tal=
king
>> about a single byte, so it=E2=80=99s better to use '=3D'.  Using '=3D' a=
lso makes
>> environ(7) more internally consistent.  Before this change, environ(7)
>> used '\0' and "=3D".  This change makes it so that environ(7) uses '\0'
>> and '=3D'.
>>=20
>> I was able to obtain obtain the information that I needed in order to
>> create this change by writing a test program.  You can find the test
>> program here [1].  Additionally, I got the information about the setenv(=
3)
>> and unsetenv(3) functions from their man pages (specifically, the parts
>> of their man pages that talk about EINVAL).
>>=20
>> [1]: <https://codeberg.org/JasonYundt/environ-format-example-program>
>
> Please include the C program in the commit message so that it can be
> compiled and run easily, without having to understand Nix stuff.

OK.  I created a shorter version of the test code that=E2=80=99s available =
at
that link.  I have embedded the new shorter version in the commit
message for the second version of this patch.

>
>>=20
>> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
>> ---
>>  man/man7/environ.7 | 23 +++++++++++++++++------
>>  1 file changed, 17 insertions(+), 6 deletions(-)
>>=20
>> diff --git a/man/man7/environ.7 b/man/man7/environ.7
>> index 31a69017cf75..bf5726e32429 100644
>> --- a/man/man7/environ.7
>> +++ b/man/man7/environ.7
>> @@ -28,12 +28,23 @@ .SH DESCRIPTION
>>  .I environ
>>  have the form
>>  .RI \[dq] name\f[B]=3D\f[]value \[dq].
>> -The name is case-sensitive and may not contain
>> -the character
>> -.RB \[dq] =3D \[dq].
>> -The value can be anything that can be represented as a string.
>> -The name and the value may not contain an embedded null byte (\[aq]\[rs=
]0\[aq]),
>> -since this is assumed to terminate the string.
>
> I liked the old wording about the terminating null byte more.

OK.  In the second version of this patch, I brought back the old wording
about the terminating null byte.

>
>> +The name is case-sensitive
>> +and may contain any byte
>> +other than null (\[aq]\[rs]0\[aq]) and 0x3D (the
>> +.BR ascii (7)
>> +.RB \[aq] =3D \[aq]
>> +character).
>> +The name must be at least one byte long,
>> +or else programs will not be able to manipulate it using the
>> +.BR setenv (3)
>> +or
>> +.BR unsetenv (3)
>> +functions.
>> +Immediately after the name, there should be a 0x3D byte.
>
> What should readers interpret of 'should'?  Is it a recommendation or an
> obligation?  This is unclear wording.

OK.  In the second version of this patch, I replaced the word =E2=80=9Cshou=
ld=E2=80=9D
with the word =E2=80=9Cmust=E2=80=9D.

>
>> +Immediately after the 0x3D byte is the value.
>
> This seems redundant with the sentence that shows the format
> "name=3Dvalue".

OK.  In the second version of this patch, I got rid of that sentence.

>
>> +The value may contain any byte except for null.
>
> What is the null value?  You mean an empty string?  Or you mean embedded
> null bytes in the string?  Please clarify.

When I wrote =E2=80=9CThe value may contain any byte except for null.=E2=80=
=9D, I meant
=E2=80=9CThe value may contain any byte except for the null byte.=E2=80=9D =
 That being
said, I have removed that sentence from the second version of this
patch.

>
>> +The value may be zero bytes long.
>
> That's commonly known as an empty string.
>
> I think saying that the value can be anything that can be represented as
> a string is fine (the old wording).

OK.  In the second version of this patch, I got rid of the sentence =E2=80=
=9CThe
value may be zero bytes long.=E2=80=9D

>
>> +Immediately after the value, there must be a terminating null byte.
>
> The fact that it's a string already implied this.

OK.  In the second version of this patch, I got rid of the sentence
=E2=80=9CImmediately after the value, there must be a terminating null byte=
.=E2=80=9D

>
>
> Have a lovely day!
> Alex
>
>>  .P
>>  Environment variables may be placed in the shell's environment by the
>>  .I export
>>=20
>> Range-diff against v0:
>> -:  ------------ > 1:  d5b0d9b86029 man/man7/environ.7: Fix underspecifi=
cation of "name=3Dvalue" strings
>> --=20
>> 2.54.0
>>=20
>>=20

[1]: <https://en.wikipedia.org/wiki/Ebcidic#Code_page_layout>

