Return-Path: <linux-man+bounces-1665-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3452595CC5A
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 599F81C23453
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 12:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D5F185950;
	Fri, 23 Aug 2024 12:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEAV6/N9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B211850B6
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 12:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724416097; cv=none; b=o8EkjjvHbtj0haAN+FmktneBBvhFP2INdXUN1iz/QcTtdFNocA4ARhp3IjptPCQzezr3b83CkteJTJ/UycpZ6QWrMwGjxnDGcaUJSVd95N9Rfigq9Be4O3lYscMUsCbq71XnyHKNuBy7rurWTdrIMStEgSpboVfYA48h6giEe60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724416097; c=relaxed/simple;
	bh=ZHZ3z+L4Grm/+EaaPJWLj5gXcdulGNKjhVwlFysTGXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qD1ReHJ8mMI/UXXnJ0ROZre3IfywrMP4JgtsUPGE1E1zZQ8rIxeKGrci0dNCxwQ1R4BDolifBoFNYOlRC8k/skuQ/oLWDXxWZq/apusXFVei9ImCdz4qT3I/WaClQw3g9Khmovj+aepRriQPEz5Dw79n5N0G0B7Zak/Xo7BUOXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEAV6/N9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E818FC32786;
	Fri, 23 Aug 2024 12:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724416097;
	bh=ZHZ3z+L4Grm/+EaaPJWLj5gXcdulGNKjhVwlFysTGXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cEAV6/N9D76/uDyCPY/Yi/UNSpgUV9XPB1u1vLj0HEF4XgbxcsobEkC0zhsDo9EBW
	 WWNtQXoOE215nKGzy0CpQ4+nm2LMm/kzLE1gtQjJ2uTEf40KhcloYbVGe4ZsZj9zqJ
	 e00uji7cQijCSNlKwuToASoxNHEpYbhvyp2i/Ql1UqIk9JG/M1RWJjgVeZ/xmjV6qh
	 qsnitHMxZaLhTsUukAP+3qvKyhAxgYwBMrUQ76frs7fzgnZnV/m0FjxG48641zxqUx
	 85f0PHkN5bHCxVLU7TwK9OxzmU3Xbsb+fBHh96ujWNe7NSvoRjBcXuMZw6mIM+y8kD
	 HaujyAHaqRuuA==
Date: Fri, 23 Aug 2024 14:28:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org, 
	DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, carlos@redhat.com
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fkwt46o6ov5nhv76"
Content-Disposition: inline
In-Reply-To: <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>


--fkwt46o6ov5nhv76
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org, 
	DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org, carlos@redhat.com
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
MIME-Version: 1.0
In-Reply-To: <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>

Hi Xi,

On Fri, Aug 23, 2024 at 03:26:04PM GMT, Xi Ruoyao wrote:
> On Fri, 2024-08-23 at 09:02 +0200, Alejandro Colomar wrote:
> > Is mktime(3) allowed to return -1 and set EOVERFLOW on a successful
> > call?
> >=20
> > RETURN VALUE
> > =C2=A0=C2=A0=C2=A0=C2=A0 The mktime() function shall return the specifi=
ed=C2=A0 time=C2=A0 since=C2=A0 the
> > =C2=A0=C2=A0=C2=A0=C2=A0 Epoch=C2=A0 encoded=C2=A0 as=C2=A0 a value of =
type time_t.=C2=A0 If the time since the
> > =C2=A0=C2=A0=C2=A0=C2=A0 Epoch cannot be represented, the function shal=
l return=C2=A0 the=C2=A0 value
> > =C2=A0=C2=A0=C2=A0=C2=A0 (time_t)-1 and set errno to indicate the error.
>=20
> For mktime the standard only says "return (time_t)-1."  It does not
> mention errno at all.  And the standard also says:
>=20
>    The value of errno may be set to nonzero by a library function call
>    whether or not there is an error, provided the use of errno is not
>    documented in the description of the function in this document.
>=20
> > Then I think the API is completely broken.  How should we check for
> > errors after a mktime(3) call?
>=20
> Maybe, special case if tm contains Dec 31 1969 23:59:59 UTC...  But it's
> just stupid.
>=20
> > If this is so, let me file a glibc bug requesting a fix of the API,
> > adding a promise that on success, errno will remain unset.
>=20
> It's a bug in the standard, not glibc.  And the standard has deprecated
> it anyway.
>=20
> https://www.open-std.org/JTC1/SC22/WG14/www/docs/n2566.pdf

The standard has only codified existing practice regarding mktime(3).
mktime(3) was already standardized in POSIX.1-1988 before ANSI C.  And
considering that POSIX usually just codifies existing practice without
inventions, the blame is on the implementations.

So, yes, all implementations and the standard seem sub-par.

Although, I've been checking ISO C after your comments, and I found an
interesting specification in ISO C that is not present in POSIX, and is
also missing in the Linux manual page:

tm_wday is guaranteed to be left unmodified on a failed call.  This
provides a way to determine if the call failed.  Indeed, this is the
only way to determine if the call failed:

	tm.tm_wday =3D INT_MAX;
	mktime(&tm);
	if (tm.tm_wday =3D=3D INT_MAX)
		err(1, "mktime");

I'll add this to the manual page.  This makes mktime(3) not broken.
Although it is still quite obscure.  Every call that I've seen in a
search either don't check for errors, or check them incorrectly.  A
better API is definitely possible, and it would even keep backwards
compatibility.

>=20
> > > How about if we omit the sample code and make the minimal changes I
> > > suggested earlier?
> >=20
> > Because I'm being very careful writing that code, and still I'm having
> > trouble doing that, I think we must provide some example of a correct
> > call, to prevent many other programmers from doing it wrong.
>=20
> So IMO you should just say "the interface is deprecated, do not use it
> in any new code."

mktime(3) is not deprecated, as Vincent pointed out.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--fkwt46o6ov5nhv76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbIgF0ACgkQnowa+77/
2zKFMg//QQrJHuxo8FiD17Py+9gr8J9Wn8eLZBSnI4We/G+T9UvHZ7YQ4Ov3q6fs
0MuYknFCDicI3d/uCmkGQbw4DDdxjc9g3rzm6ckBY9Timlq0PxVueBnzBKyR9maF
8L5QFClUdXy9mB/V3zlfZltyhLmy0oWRzu5TsEM9WH4BNVjHCpgpZ7P7IkFcSwBd
u6gVpnZRQlnRAfDHcdJ/8Nrhmadxujh5soxkrs5vyoWgVm3+4givix38dA6YqKJf
rc2wBs2wkU++lqY/Nah84FhmcN/AmThgMeLDzCKyayJ7bkn4QpYL+bJK1fGWbbbE
i/pSkB2hzjnKzGPlQiVOYdJuJs1Rh/UtoU6zichq8es4raLYRRPiJJGGeQbFs1iU
BrrXfCW3k9ODYhFFyoVSzXq0sk5VWqcSRL/RdrVt/m+5H72fIQJ7o9PQ282oZx4+
/Pmz2GriJf0fd1f39rJ3Fv0MNy64+Yrpf6ISAUj/a+m8qs/KpXh7Hlu6zHUM2y5J
VMUcDR7M+S5cqH7W7awHiVMUpInlmIWLmC6TxzK7mOCwJx4sh/iIt/lNiI1EePSu
k6KFYirSc8N4tLG4l+GRJgL57+j5iH3460WkPBEeealXf9VKRuthh2bDWi4KJoeX
FakEe8Z/kiq2669DMCmkuGWMpcdf1Dy+U4K5XMk+gbPR/vbDA6Q=
=XO5F
-----END PGP SIGNATURE-----

--fkwt46o6ov5nhv76--

