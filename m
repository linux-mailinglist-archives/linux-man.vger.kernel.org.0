Return-Path: <linux-man+bounces-1697-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6876E95E2E5
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 11:52:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E40A1C20B55
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 09:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9746374070;
	Sun, 25 Aug 2024 09:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgXJHu7u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5621A59164
	for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 09:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724579568; cv=none; b=HvDUkhv0YSNiDCs0B3PRDaSXSuEpH75bCthoT9M8gmUGg3YG9xzURodo22jO23zVd+0gGmL2dAc4sj1A4SHBK871PtqEI/Bkc4dBGH9L/SecPvAQMZ16gO7AQ0mKmXG4Hs6h159tXLDZZHbXj056KXBQ1iCsao0lYjkCbGZct00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724579568; c=relaxed/simple;
	bh=Uqyd5zeH11jnboGltqR0W2LdoSQBnfeJO4mT2lFvc2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uRiXYIyWwhphEipycDrzjB096+HV/WOr0XVQCKYCDBVPOY5jaef3bq+9dZEjcT5HVQw/pdQB1fLE/blyRzwDc+iuQ+gPj6hww4zwWOa2tnWB8BQjfucs/Sf01FkQrcp3Z6vQT2ijv1i4lKBSK3N74ktZUDCTe3Nt0+HLKCvXYf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgXJHu7u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A8F4C32782;
	Sun, 25 Aug 2024 09:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724579567;
	bh=Uqyd5zeH11jnboGltqR0W2LdoSQBnfeJO4mT2lFvc2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IgXJHu7ud0lOykzNqdxr8XqmfXeJljhT7x2K+XuPM1OvTzJDhLKrE21+gvHplJ5em
	 mo6M6OajAMfC8HMdl2IcDszLoSqlmvpjDM/P+yF57gdH39k1AsV1bqFefTjeyDbvOl
	 AMhC549/wQIDKWp0MLGGwECnOOFHYGWNimN1Mvq4AOKvs3HFqzqX1nw7l/UVywQPBB
	 8mgMdT+4C90fsKn59CaE+Z0Kv9X1yyVhhTsuIMT2GSH5ytF3Rx9ajqASHLvuv4Yvtm
	 oJ+r1eM/RXZUFp8fjHkva1cHNCv1wqnvr7gbvTaHlqaWM+H8M03Z+4w3MZ22BS6J2V
	 BStocpLn1jE4w==
Date: Sun, 25 Aug 2024 11:52:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
Message-ID: <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ascxuecrybiukruh"
Content-Disposition: inline
In-Reply-To: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>


--ascxuecrybiukruh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>

Hi Elliott,

On Fri, Aug 23, 2024 at 02:40:16PM GMT, enh wrote:
> subject says it all... the "This flag is not currently implemented."
> on the man page is wrong, i think?

I guess it was right when the text was written in 2006.

$ git blame --follow -- man/man2/chmod.2 | grep currently
92f114db82 man2/chmod.2     (Michael Kerrisk   2014-02-21 08:35:27 +0100 20=
7) This flag is not currently implemented.
$ git blame 92f114db82^ -- man2/fchmodat.2 | grep currently
a53b8cb2a0 (Michael Kerrisk  2006-05-02 00:05:06 +0000  99) This flag is no=
t currently implemented.

That might perfectly have changed in the last 18 years.  :)

Would you mind writing a small program and shell session that
demonstrates it?  It could be interesting for an EXAMPLES section.


Have a lovely day!
Alex=20

--=20
<https://www.alejandro-colomar.es/>

--ascxuecrybiukruh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbK/uYACgkQnowa+77/
2zLK+A//SgYc7mm1ckEvIKuify6E3xg7OeSusxZ9J5iu9R6qsGuhV9IV35UNjl6U
MYfry8d/4ow2PptAuBUP2eZ8TCG9+iNkbDcvvsFAjo6n+v9vdf1KltdySit72337
rj0MiDiEWoBna457+DBtysDvBcidN7ZkcFO4MgKlCg8VxmFyD3ACbv/gEKICVpZK
zQo7CKt+LQZ0vMQm3+tTEodLc0i6lYMoIojMMCG8sK0jT7YpMVmMsgyLRoaBrHP0
mvDtil8/TGYa9ElA7eEFSp8PnCJdz7FzDGYXrEPGPQ/ne8Bow2EgRA/1yJEGTs3L
KQyzsgDpqE69r0XoFjN8XXo0RZ+2fd24pAQh5hqVkvFJwZJ1Zv7YeJjnuDb55uLJ
v9dwySC+L/29aovDva+zZRDX+OnAlRSk99wbvfqovzewC6l2cXRQOjpP4he8dbBb
52MeT37G7M9mn3sSQqbwP8Xb/+IO9neTwJn7Wf1/kRr6Q/eHdN75cnObKRgcQwjT
CA6i5KVq5DtA/qyf9hY+bXce8ecuGOFJ2E8zwn8dDvtf/XZ645W8YhkcKcQJ1eXR
WSc55XQ2DXhAjFsDfOfmJ9CNVO4uv4uluZ9Ih3ThzCRlPLuPnfHocrSOZMmJBVa4
UXgKzceUKzt53p10Nhdy1qpRqATOiukGwknVYZ3SAsMMmLryzYk=
=vlZZ
-----END PGP SIGNATURE-----

--ascxuecrybiukruh--

