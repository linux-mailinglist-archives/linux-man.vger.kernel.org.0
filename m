Return-Path: <linux-man+bounces-948-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB8B8CAB80
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 12:08:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E7231C21787
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 10:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D03056475;
	Tue, 21 May 2024 10:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGfWvmQi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15874F88A
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716286097; cv=none; b=IuUq5s7G2rXaiVSV9cUHfrFfiGCj3zdGb9x/RMBnBItwiMEc3itu63BTezZCxrP/DhzNJ2UfAXXY8XO9ZDtvYjFbzWEp1urnBMH1rWoI76ioA4PHNvVK8JBkPt6OzzoZD5zvSUZnaRrnybWcfyJB00Iu6f5VS+JAOmF0BtxjGpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716286097; c=relaxed/simple;
	bh=l7UK6BhBw/YsabctV9ljMkqIp4DeIRhfSA6IotLwdPw=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bquis7lXX34U0VbVYSjnjpojxt11osuSc537bOJ2inQPTAl1idDfG+GRaOx+2EhyImxdzt3KkwJI2KaEPH7I3G1Lp51NKRjUQDA2MO3IHoljy9bESgWebn+YbGFEIVUffKiv0ycAntEeID83fczr2E7+emLqpmWON3rAg2t9+Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGfWvmQi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84495C4AF07;
	Tue, 21 May 2024 10:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716286096;
	bh=l7UK6BhBw/YsabctV9ljMkqIp4DeIRhfSA6IotLwdPw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=mGfWvmQiijvTFAazbYsWXMx1YkwC6g/nTDZOzn7X4Tx7bS9bVO3TWEd2KaQqjezfW
	 Mvo3WGur2HhumRtb/x7c4ZulTW6tHINmE0ptpd/wTWzPbVSzJRGn3OvbRbx2qv0zHo
	 Ehurrn2ZVm0zMe0nCa67DM9y7pQ0q4OBC7ycPAhOo3dsws5cGXEE7SKZSTMvfvduqC
	 rEEDL7nzduXxD7nhf07vvN3c6F4yuJeJIwlvC3nt16APH9bz8cCqGB85mjEKM1d4oY
	 7XKKR2ysdZhcOkrcSq3+cLYRSxHxkRNUSuhZVL14/0XfR3mCXOQFXx7qTzZsbV0nay
	 +Nz+OK38zZVfQ==
Date: Tue, 21 May 2024 12:08:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, libc-alpha@sourceware.org, 
	Eric Blake <eblake@redhat.com>, linux-man@vger.kernel.org
Subject: Re: LINE_MAX
Message-ID: <6wyb3mkthtzlyknwasft2fwolujrpeldsw272eqppdsv5qwxcq@mzvxfyd6epoh>
References: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
 <20240520222658.GG2665@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jokb7we6kqf3q2xh"
Content-Disposition: inline
In-Reply-To: <20240520222658.GG2665@qaa.vinc17.org>


--jokb7we6kqf3q2xh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, libc-alpha@sourceware.org, 
	Eric Blake <eblake@redhat.com>, linux-man@vger.kernel.org
Subject: Re: LINE_MAX
References: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
 <20240520222658.GG2665@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20240520222658.GG2665@qaa.vinc17.org>

Hi Vincent,

On Tue, May 21, 2024 at 12:26:58AM GMT, Vincent Lefevre wrote:
> On 2024-05-20 23:49:13 +0200, Alejandro Colomar wrote:
> > I think I found a bug in POSIX.1-2017 (and probably, previous ones too,
> > but didn't check).
>=20
> I already reported the issue in 2009 about the example:

Thanks!

> See thread "fgets/strtok and LINE_MAX" I started on 2009-09-21
> in the Austin Group mailing-list. It is available on gmane:
>=20
> Path: news.gmane.org!not-for-mail
> From: Vincent Lefevre <vincent-opgr-opTGSl+ZDNkdnm+yROfE0A@public.gmane.o=
rg>
> Newsgroups: gmane.comp.standards.posix.austin.general
> Subject: fgets/strtok and LINE_MAX
> Date: Mon, 21 Sep 2009 01:03:13 +0200
> Lines: 31
> Approved: news@gmane.org
> Message-ID: <20090920230313.GV657@prunille.vinc17.org>
> [...]

Hmmm, how does that thing work?  Any http link available?

>=20
> There's the issue with the missing "+1", but also whether
> LINE_MAX < INT_MAX.

I guess the LINE_MAX <? INT_MAX issue is not an actual issue as long as
implementations do the Right Thing and don't set it to >=3D INT_MAX.

> See also
>   https://www.austingroupbugs.net/view.php?id=3D182

Thanks!

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--jokb7we6kqf3q2xh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZMcoYACgkQnowa+77/
2zJ3sg/9FVqwe9Kgd/Al+PoGfk+O2/AWyDYxg/ZWIOHP8rqAhAvBHVNapzVMJvze
UobzTUY7k9xpDWbVw/ACc3xqR8d1lBbGP37yteCWjRQuKMO3BRiStJS+n81zznGy
RHhiIemr4WhFZsSo9PjXkXFMZ+J5+5QILDHy/sZcuP5FbQ+f9neG/KoU6RRYpULy
I4MuARuC5b8JNM2saZozgth/ftr3rtF+rX7XP00k3qofUjj+kX3wF1qhpgvLJOLb
TfGRrx3x9PsZe7/9unNrRp30ZY2QL+SSnXNNasE+dmprBwxqQokwELniX3IYqbT5
CBFkK/XdXKbgXIAlZka/FKcRxTWzGvG5isyzyYkKvSZ/ckOJPi+bV+hYMpFIlMRZ
AuiLwxgXAOgR5xRw26Y0FoE2oj1c1zGWZj6KAe+H4ruyIfwZzon+2f/Q3ggP1+Ji
ZddG3wiyB99+VVsyR+CQTDdW5pbUHLe7vInZvEBuoBMhiqSKhSVCrioigO1Hx9BG
3mtnCbT5QLROpgm8Ye2ajUbsOmV+a5BigOAdZnmgJOLnIvy1BuUPFI5ksWEgIYGx
4d+28whu8aMs3Rfz4iC1P7/vTG7E7+41eoYX7moofGi5BaPgr7C0ApYkxERzRthD
1xVRcXt+Q7phAtjBhJiNQFfgqMJBY13bReoZ/sCfKABvE/CYLf8=
=ct4I
-----END PGP SIGNATURE-----

--jokb7we6kqf3q2xh--

