Return-Path: <linux-man+bounces-3258-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF324B020FA
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 17:59:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD6D54A73DE
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 15:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F2A2EE26F;
	Fri, 11 Jul 2025 15:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZqpLQ2T"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781F92E763B
	for <linux-man@vger.kernel.org>; Fri, 11 Jul 2025 15:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752249569; cv=none; b=ftEYlpIbNCxBfBDQjpcRaxvPbRzHbG0mLaymDAQlJLnKrRu3ygucvJwGEy+u94j8UXWf/iRuaRaztToi3N44ICI1bwOZ57dBDEs0K4Syf0G3oXTyOkgoY1FK1Uki11n88hZvJPE81wsEZAMj18iAvHC0air921RN3L47Gj/TUg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752249569; c=relaxed/simple;
	bh=Q93wo7xM4L0jz8NdrEPBA5z5DnlKEJvLjcq/Yt7V79Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u/H5tk3+nNEGVymKznJcab4SKqaoF8uIGbU+tMqszUNYa3muWEIbXqxStc6BxCuY/4x8oFPartShm9PY1Bd6t2EkzvJlhfLbWvLg/Mr3WaHDpRZZ+k08MVCS/5mjLWrw2yHU9zg/objfwG3dhSCvM+PGbbsnIYx+ZXLypoz7NLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZqpLQ2T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 721D3C4CEED;
	Fri, 11 Jul 2025 15:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752249569;
	bh=Q93wo7xM4L0jz8NdrEPBA5z5DnlKEJvLjcq/Yt7V79Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uZqpLQ2T3p0hv9yM55CCXMnYM/kMvuQYZaBrejX/0l0p/tAqT7gPWVxFeUXFGgFz3
	 QAqxOk88JmpsGzjwpr+Dqk1oOuzNaMX7F1AViMCTVzAvvfh03rPdi/hkDlHpmEnRAH
	 aOAjv3csHQIklVHOjb8WVeHwqoBJQVOPVuZLMJhwTYhByHsl2F6la/Xxo3mMG54wjd
	 WmMhHAhuU4d3qQ68treIIokxYTECt7NDb1oDBSdBQULTV05nTFjYXAHDAtfhnUfAjB
	 NZ7XEx6CsKbE3cvOP/Yvhey48ZOJly1ODlZWAQOxmuUS4xEGUlaALOZGMlO5u44OJz
	 vRdYjYglvDxVQ==
Date: Fri, 11 Jul 2025 17:59:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
Message-ID: <l7qzqdba7d3u5dq22tizokrlawzyimjjp6muprznz4qsdlmrxt@ak3aaykp2x6w>
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
 <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
 <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie>
 <ijc2bqonmqeqbbl5lg2qsucoltoq5atkepfp62aipmjjnc6egt@aw2l6zclt35c>
 <CAJgzZooCaSxfXeja7rsBopY7aouDyRfMNM-PT9p03TWmk=jL6A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="whi3wbxbidcggzfp"
Content-Disposition: inline
In-Reply-To: <CAJgzZooCaSxfXeja7rsBopY7aouDyRfMNM-PT9p03TWmk=jL6A@mail.gmail.com>


--whi3wbxbidcggzfp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
 <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
 <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie>
 <ijc2bqonmqeqbbl5lg2qsucoltoq5atkepfp62aipmjjnc6egt@aw2l6zclt35c>
 <CAJgzZooCaSxfXeja7rsBopY7aouDyRfMNM-PT9p03TWmk=jL6A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZooCaSxfXeja7rsBopY7aouDyRfMNM-PT9p03TWmk=jL6A@mail.gmail.com>

Hi Elliott,

On Fri, Jul 11, 2025 at 11:54:06AM -0400, enh wrote:
> > I didn't find any text in wcsncpy(3) similar to this.  Maybe you read it
> > elsewhere?  It would be interesting to find the source, if it needs to
> > be fixed.
>=20
> yeah, looks like i might have been copying from the wrong man page:
>=20
> ~/man-pages$ grep -r 'of the wide-character string'
> ./man/man3/wcsdup.3:contents is a duplicate of the wide-character
> string pointed to by
> ./man/man3/wcsncat.3:to the end of the wide-character string pointed
> ./man/man3/mbsrtowcs.3:up the converted part of the wide-character
> string, not including the
> ./man/man3/mbstowcs.3:up the converted part of the wide-character
> string, not including the
> ./man/man3/wcpcpy.3:returns a pointer to the end of the wide-character st=
ring
> ./man/man3/wcscat.3:to the end of the wide-character string pointed to by
> ./man/man3/wcsstr.3:It searches for the first occurrence of the
> wide-character string
> ./man/man3/wcstok.3:If the end of the wide-character string is now
> ./man/man3/wcslen.3:It determines the length of the wide-character
> string pointed to
> ./man/man3/mbsnrtowcs.3:that make up the converted part of the
> wide-character string,
>=20
> you are in a maze of twisty function names, all alike.

Ahhh, I suspect you got it from wcpcpy(3).  That makes sense.

As I told a friend recently, the 'n' in strncpy(3), stpncpy(3),
strncat(3), strndup(3), and of course their wide-string counterparts,
should be interpreted as "strings NO".  :)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--whi3wbxbidcggzfp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhxNN0ACgkQ64mZXMKQ
wqnNeg//Ufc55WK3DuZikcp2yYGxAz8pOtbf0Qt3p92YvAPi9WtTeB8jYi6t03sv
pf1HiYC/hGlDcU0t0SUvW3zkTi8usVS5PLfG+R3G91QqfWeaH0lhgukCPPfZQ5mn
MFx/68MX+p1VFQsP9oz2lQ+ZyUpv2U6o1bJrH/9oB5k6HXKKqK4CwyoF9qB2XPmk
CqUTnGCajYOH4qO61o2czw91dU16edtFRnvd9Xq2FlKxfhJ5mi4jkXfT1H6e5/Rw
YXRZrdyXug8TX9bSGfK9MZYNlGAYFXO795lL5n4uA8KKF8RnS2M6Ltm05tRLS5to
DIijrwCQOUsRNcvTaoSwPPMi6F1jCYl7xVN4rXe9MvmDuLc6ZRYlOgSNwaQN/8FE
zBA4T8DUW5VqQqjz0tiCbmjLdAlJvyXM4MVHi3ZRPD5fy0/UWPbVBDPihpPPsfT8
xpkN/bOT+PrDpRr2Cn25o66xQQCza/jQSYYbdpTpWZnPF8Kr+blDooeFJbjZdj0V
xEqInHD5cT4KdTQpj5rPgOzpmB5eW8CnvrMNqVxEkj2UfadAwMDUf3wYMymYLUKA
u0b5F5DlJTbShQXplC6AKI6WZNg1+7OtMmdEHCpnkyIZBAREVDWDe22OHwQNvsUt
5DvSRjztyNH+YNBqL/HZuMZOsefgHNN266jvmk2gHTrHJu+MWSY=
=FxOe
-----END PGP SIGNATURE-----

--whi3wbxbidcggzfp--

