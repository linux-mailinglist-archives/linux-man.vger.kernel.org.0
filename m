Return-Path: <linux-man+bounces-950-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF5F8CABB7
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 12:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFE37B20E2C
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 10:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B5C7581A;
	Tue, 21 May 2024 10:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxCaL+5S"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836B674E26
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 10:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716286445; cv=none; b=MsIX1V6suS1ycsEkaro7swMllwGi9VakHP66a8KnoOoBAudwdAySQQ31FHYTcJBG/sVUe3s2qwozJEYkuxLavyAPINzUrXm439cMjL2ET2Tdq9/LiUK68NmLLg5MycMuUhiMtxMiU4b0yWXsE+eSFUg4ZK4LXd0RzVE7iT/Mf3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716286445; c=relaxed/simple;
	bh=uJCI3B5M00D+0md8dn6lzJwoJawjfqkhRqX0SQMlJTg=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c98d7P8/OsbbBKbh4FWAmZttnBSpidCyFTo2/BwoyuH19FlPxi/mtUBzZZGe+aJAOlXp3MbLYJWzJa2sMR50DDLPGpeqsTeTUS1aspKlFhH08SGy2pHTMUGKNKIerKNJMtxSMXAgY971tHZ++dkA00Ilsjtk67gWuQQ4xZKtZsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxCaL+5S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E365C32782;
	Tue, 21 May 2024 10:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716286445;
	bh=uJCI3B5M00D+0md8dn6lzJwoJawjfqkhRqX0SQMlJTg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=hxCaL+5SBzaSn8FUP4vSgl7gT0zyglmefsoSsCzD51XN/CMRzwyhCAVLr5J661C5Z
	 XkVOo3kUbKifbp6BOFPwSUy6m3RhfvkJinTpg1Gx1enZzhI52S++aX72YNSRqaOGeU
	 DMNTjXRb++nm9+fYZViSBkJHJDaRRy131nKFwJ2w5W0RryRUxH18dpGcOafI2EiYxZ
	 Cr6EMfpWQi59nDg0gTvH0whFqWB95S/4727r4GRqBRsxwy84q04Nz5lJZdwdiWzYEm
	 KZeldjC4DYeILtjTr6Zhi8tZzmijRbpSW7jduARFLG2krLC/nOolP2rpyT8C090xC9
	 4kB+jCdsy4hCA==
Date: Tue, 21 May 2024 12:14:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, Eric Blake <eblake@redhat.com>, 
	linux-man@vger.kernel.org
Subject: Re: LINE_MAX
Message-ID: <6u577ud6lqgsef7titpg6ngfuhxw7yvuzkhlrzo6shrrq3jlgl@rblynlq4fm53>
References: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
 <ZkvQIlVNJ-aYs9RI@fluorine>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wamn6v7mciu7x3ku"
Content-Disposition: inline
In-Reply-To: <ZkvQIlVNJ-aYs9RI@fluorine>


--wamn6v7mciu7x3ku
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, Eric Blake <eblake@redhat.com>, 
	linux-man@vger.kernel.org
Subject: Re: LINE_MAX
References: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
 <ZkvQIlVNJ-aYs9RI@fluorine>
MIME-Version: 1.0
In-Reply-To: <ZkvQIlVNJ-aYs9RI@fluorine>

Hi Lennart,

On Mon, May 20, 2024 at 10:35:14PM GMT, Lennart Jablonka wrote:
> Quoth Alejandro Colomar:
> > I think I found a bug in POSIX.1-2017 (and probably, previous ones too,
> > but didn't check).

[...]

> > This example seems to contradict my understanding of what limits.h says.
> >=20
> > So, either limits.h should be explicit that the trailing null byte is
> > also included in LINE_MAX, or the example is bogus and should be fixed.
> > I guess it's the latter, although I wish it was the former, so we can
> > avoid a +1 in the code.
> >=20
> > In any case, could you please forward this to the Austin group?
>=20
> Good find.  You aren=E2=80=99t the first one to find it:

:-)

> https://austingroupbugs.net/view.php?id=3D182 discusses that example a li=
ttle.
> The desired action written there appears verbatim (bar formatting) in the
> 4.1 draft of POSIX.1-202x.

Could you please paste that part of the draft?  It's quite inaccessible
to me.  And since the info is already public in the ticket, I guess it's
not a violation of anything.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--wamn6v7mciu7x3ku
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZMc+oACgkQnowa+77/
2zKoLg//QWV+3OOi/4CGwI0fn3fhji8YJFG01BGYPY4KQ9d/Tq6T4XUTcj8gcqFW
r+KodVo/wI7xm9wCvUm+6F0+quDmPF3TnYTDQwuWC88EXUySs2ON1UZe5qG6CrAb
aA/IyYnxrT4I4lJ/p3Ubh75vPElhnR819/aYkQJpocxPo9u45szJ8juCUFdwoW49
k/OX3IoURZ3PqclrLsvoEqz6KImkZAlJom/2i19ueHqzq+lNZIsunFqfS7VZ+vHG
Dj7tL00cnt6Sm9Wz9j3P3PToCTUk7HJLQt937QmoWOKCelTVR0SoqGU/HKeNnoNq
VGncjlXdcGy8C397pGbCq8gGiUpPR4cG9y2ptOTrsQxJSXGNchjT4NO6HldgBWKL
8ssq5mMexENcpkAOdTaSt4eO8dYFvPYiHXtuSP0LjswaahPwuwldpBwpDxf2lWX/
cj8fgaHKlt8dgMTZaOB1FT3ZCiXi8DhRS72J9f5pYyB9lyNscHPQ1nNQtIUxfc6q
rcInPLchmK8pG0OEnc+8QHp2JaZGiNOM0y3NI53XCoyca5C0hQounAZ6dndfVPWr
5cFu3FYKomd1+tze+NlSEFnrV4b97zUBd1wzsPxQ+ySEHdcWTTeaqrnfoOS84r63
swhf1wlBg/f8qM0C6NyG7UXVm4zNscvweLRp2Mmx/WZ8zTUNtnI=
=EvEN
-----END PGP SIGNATURE-----

--wamn6v7mciu7x3ku--

