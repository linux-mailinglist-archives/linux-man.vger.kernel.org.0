Return-Path: <linux-man+bounces-1385-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A1F92B53C
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:28:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54971B24680
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 10:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2218D156F20;
	Tue,  9 Jul 2024 10:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj506chL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D1F156654
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 10:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720520898; cv=none; b=oxrysAzaEhCvg0q45tsqo67jMSAc6vsrNFWo+ITpke9HmBWeWINbNuyuMoeRTa8Lv8J8EgSLjOS3ockrlLTcCh2nnlcQYL9IlYFscpVr/vbTaCR+ks5z/4ssEvPUE/dHi131rjVMrhXeRTwgKSXS6Yhd3QP67fEHNTp/Rc0LlrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720520898; c=relaxed/simple;
	bh=MnyIP4/LZaxiueKcc2wsEbDTwS/NHv9qwz0a84EMV64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sG1Tid1NT/U+of/k5sTMYRszi54UdXIBnGzsROmlOZzBeCZixsyoibfsRGOxhchg8U4Mmr91dO3CCnuMtJ2ls/MOvH8irecV5RaugX04CTeBwTvNWU2ESQwHfecC76HgIgOvxupUFaKDtW49WeLi2WZYKSA19TNXKwMA5/E41Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj506chL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAD68C32786;
	Tue,  9 Jul 2024 10:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720520898;
	bh=MnyIP4/LZaxiueKcc2wsEbDTwS/NHv9qwz0a84EMV64=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gj506chLAUXPpr/pVFTlhrlNTVevrH43JtDdlgxMrwxABwX+vpQdHnlv3rTo3VoSE
	 MCyFcBEpBBWuckDznI8lzY+tj1bFl9e/qOrRhfd6a+cldCUGxm8A5M8uizojj5G0ad
	 C9oWwO01mC6bpjcXg6zYwdcCDIH64ynQY90PcxawTwz9BA0NK4UlQ0y4l4zgL8kZBi
	 IzM7a7/wzH0m7yCRSxMVU6wf+XlKa+5eM9qA8E2qisu3ezPQgGnEWOopzUAyC8K8MZ
	 7JeheuGc55gLdBawi0ynG6NxjYU9qu/PbfcgZI/rfm3N32ExebeaJe7MlTB6Bgd9LU
	 YHWXKcxTklK4A==
Date: Tue, 9 Jul 2024 12:28:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Jelinek <jakub@redhat.com>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <blfqp47wjycet3bwsisallosmkzfvp4tvcr3udpyne4dsjbw7x@ysheym7kkowr>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
 <rh6sttlv3mpjgiktqcje5we7io5pnd24i7nt5yxi45nxjmcoee@mhuv3rq34mzz>
 <Zo0AU/3YFNIeEELE@tucnak>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtmfkwkg3iyiizf6"
Content-Disposition: inline
In-Reply-To: <Zo0AU/3YFNIeEELE@tucnak>


--wtmfkwkg3iyiizf6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Jelinek <jakub@redhat.com>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
 <rh6sttlv3mpjgiktqcje5we7io5pnd24i7nt5yxi45nxjmcoee@mhuv3rq34mzz>
 <Zo0AU/3YFNIeEELE@tucnak>
MIME-Version: 1.0
In-Reply-To: <Zo0AU/3YFNIeEELE@tucnak>

Hi Jakub,

On Tue, Jul 09, 2024 at 11:18:11AM GMT, Jakub Jelinek wrote:
> On Tue, Jul 09, 2024 at 11:07:59AM +0200, Alejandro Colomar wrote:
> > Yup, I was thinking that maybe noalias is a better name.
>=20
> Name is one thing, but you'd also need to clearly define what it means.
> When restrict is access based, it is clear what it means.
>=20
> If you want something else which is not based on accesses and which should
> allow warnings in the callers, I suppose you need to specify not just the
> pointer but the extent as well (and maybe stride) or that it is an '\0'

Agree.  Here's how I'd define it as an attribute:

noalias

	The noalias function attribute specifies that the pointer to
	which it applies is the only reference to the array object that
	it points to (except that a pointer to one past the last
	element may overlap another object).

	If the number of elements is specified with array notation, the
	array object to be considered is a subobject of the original
	array object, which is limited to the number of elements
	specified in the function prototype.

	Example:

	[[alx::noalias(1)]] [[alx::noalias(2)]]
	[[gnu::access(read_write, 1)]] [[gnu::access(read_only, 2)]]
	void add_inplace(int a[n], const int b[n], size_t n);

	char arr[100] =3D ...;

	add_inplace(arr, arr + 50, 50);

	In the example above, the parameters a and b don't alias inside
	the function, since the subobjects of 50 elements do not overlap
	eachother, even though they are one single array object to the
	outer function.

It may need some adjustment, to avoid conflicts with other parts of
ISO C, but this is the idea I have in mind.

> terminated string, because if you want to say that for
> void foo (char *, const char *, int);
> the 2 pointers don't really alias, the size information is missing.  So,
> shall the new warning warn on
> struct S { char a[1024]; char b[1024]; } s;
> foo (s.a, s.b, 512);

This does not need clarification of bounds.  You're passing separate
objects, and thus cannot alias (except that maybe you're able to cast
to the struct type, and then access s.b from a pointer derived from
s.a; I never know that rule too well).

> or not?  Or foo (s.a, s.a + 512, 512);

According to the definition I provide in this email, the above is just
fine.

Thanks!

Have a lovely day!
Alex

>=20
> 	Jakub
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--wtmfkwkg3iyiizf6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNELUACgkQnowa+77/
2zJEIRAAijPNnhG+411zHIyayLpbEuLRQTLKywqHGnb1r/cx7IynzpkOXqTTSrhl
wRKs+yxOkg7KSTc3AiW3sVkeSnOpDg3TOP7yKeca/zrL4RIDmDAQIdi2soyjjNw2
jWWi2yWxS3j8kUF47zqCmkUQm6YPUeka2H0h0wjJ4XNixbQi1l4ZHOjhIRJw9d9w
bx3VylKRsbZKVzsWDFUL8uGGd9pV6E+MLp/2TnkQa9Mh6qDGcHh1o5NCeSO47Tsy
LZaNMIj9OG+jTs2hgcEFMpjxGp6j35w7W6UwxpJj9D/TBIWAN7n3hkt/IDHkd3BM
irHRoOfRsOSwR1T+DiHTcX6cFS4/DwqJNa0zo6sD9cuzEaxiKrsHRabZnkaM57/B
UuryVoX69IxfSpH9mIsSiS8t8B66/Or9BjmHZtB1gV4E62kdNMue64cqGUaR6ZqY
MSsSKLvfCKlGr/BIT+g5o8Eu3IxB2OFRm8zCH8xzbX0WlcrBXIkB6ii+lNEOT6rc
/daNErOU7SZY6LvpM8BHhNAL633ZaARWu8qGTXO2t+zSQBiJDjFTWNyeiwRK7+gN
FNn0tc+DcbPOXLFSRzQs9qNXZvRG8dPt7/VMox7PgcVttfK3vcNZtgcUqTkhuOT7
oflvxplIPj7vdFuJwjHxobL8dZd8WdLB38XdEX783kvqBU+optk=
=ZOmS
-----END PGP SIGNATURE-----

--wtmfkwkg3iyiizf6--

