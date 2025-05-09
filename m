Return-Path: <linux-man+bounces-2887-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39161AB1793
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 16:39:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5039987FA7
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30EAD2288E3;
	Fri,  9 May 2025 14:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnFW6g/H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43E0226D1C
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 14:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746801549; cv=none; b=ruPPwZPJIUIVpSeqnDfJqkZlqwDGAzs2Yy/RgigDpfpwO8vSdjJ3ZzMrlAPmIFLoZcHmNeZcFvcaCCij0IUDf5QdX9XDzHnRZotbqd2KHYy8QmO4HrUt6/sSFkO3+k7A8zG3bSNiUlgzAQt7T1md3TlFgcpnmS5n/673OhTzOEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746801549; c=relaxed/simple;
	bh=UChOKvoZSrhpa/Shrgf+ucgDZKx4vErvza98Wc7rPpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WQLY8BN6QgsUNCeTPU4CnIv69bgbyrAEILFQEQyPa+m3KvY0SqzMDkopzMIxrCqRHybDtWeiGerr8AHVfXuB6kc3616lXxLwuAq9hGktDwEUkvyLif/W+YJx60iCP37LRXrcNm8wuto3N9n04KlqXTgs6tsNZdYsexGiOZ9pgiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnFW6g/H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A8C7C4CEE4;
	Fri,  9 May 2025 14:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746801548;
	bh=UChOKvoZSrhpa/Shrgf+ucgDZKx4vErvza98Wc7rPpo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dnFW6g/HHcolMo107d4U3HUfID8IR3BhKQjVB6c7sMoJNuXTPn/q+rb2eN6cLreD9
	 1eyfrhjeHSmzN/sIeyU2UwCAEMHpAa2m6aGk3qrTAC7rJIZtFdLtsaK0JDWI7B+aCy
	 DN++mxWPR5ZGuH+q0nfNS48AkV15vFLaZfVgw0Ze6L+kOLX6KRlPYyCAKPZI852Juq
	 0nO6BARUg/7NnS/fP6s8XGjShCvd/mC3uOxLC75Eav+DWTVfcoTiFsi5fYB41dO5tQ
	 BbSAbXGCOLDh67NpL0/8JkyPfa6OK/Xc/WnPzIqDnpdwETpQOtg0+9r8XWxMY2q0Jd
	 ZzPWrlFXt4Umw==
Date: Fri, 9 May 2025 16:39:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7wd6d5tuqwbx2ukr"
Content-Disposition: inline
In-Reply-To: <aB4N4eD1gbZi6Cao@e133380.arm.com>


--7wd6d5tuqwbx2ukr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
MIME-Version: 1.0
In-Reply-To: <aB4N4eD1gbZi6Cao@e133380.arm.com>

Hi Dave,

On Fri, May 09, 2025 at 03:14:57PM +0100, Dave Martin wrote:
> Hi,
>=20
> On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> > Hi all,
> >=20
> > I've added to BCC everyone whose copyright notices have been removed
> > (those that noted an email).  The full thread for this discussion can be
> > found here:
> > <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsz=
nrudgioox3nn72@57uybxbe3h4p/T/#u>
> >=20
> > Please let me know if it's okay to you to transform your copyright
> > notices to make them uniform?  That is, do you approve
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D9f2986c34166085225bb5606ebfd4952054e1657>
> > in what affects you?
>=20
>=20
> Should the one-line replacement statement in each file refer back to
> the CREDITS file?

I prefer not, because then someone can copy the files to a different
repository, without needing to modify the notices (they might take the
CREDITS file as CREDITS_Linux-man-pages).

> Also, nothing seems to say that anyone listed in CREDITS actually
> contributed copyrightable material to the project (as opposed to, say,
> review effort, moral support or free pizza).

I initially planned to include reviewers, etc. into CREDITS.  While
doing that, I realized that wasn't easy, because the file would be huge,
and would need to be updated too frequently; plus git(1) does a better
job of documenting that with the Reviewed-by, Cc, and other tags.

> Renaming the CREDITS file to AUTHORS and/or clarifying this in a brief
> top-level LICENSE / COPYING file might make the meaning clearer?

Yes, now that I discarded the idea of crediting *all* contributors, I
agree this file should be renamed to AUTHORS.  Regarding a file solely
to clarify that the AUTHORS file holds the copyright holders of the
project, I guess by calling it AUTHORS it would already be obvious.  I'm
hesitant to add another file for explaining that because the more
uppercase files there are in the root of the repo, the harder it is to
understand their relationship.  However, I can add something in the
README, where I already document what each file is.

> Either way, ack for the changes affecting me.

Thanks!


Have a lovely day!
Alex

>=20
> [...]
>=20
> Cheers
> ---Dave
>=20

--=20
<https://www.alejandro-colomar.es/>

--7wd6d5tuqwbx2ukr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeE4MACgkQ64mZXMKQ
wqlzchAAq6BieOeTRtkJ6QtoVAxlGjiBRWVm8q2WzdVuvEt3nNQVOMUh4+RKblNF
jEg55HIH976KlCvpPoDR386ql8LpHVqsrq9aEuEXTD4mkuqt660LAkxjDyzdbOpM
z1/uYiOan5CznzoFnaUoClXpbSuPvYqwZSCvGe/TEXMIZGVMwXc7oyIOZSj9xKZR
PSg6CP2dBxkcGOLebM8s9ZSP8vD2FM/g/4E6yvQJKhgtCyI51bOH3ZJYDvGbgflD
ZpE6eJLdmLdvJ7T62rEpBkdLLG3/29RYE3a0+Ko2aD/bXEP+iI1LhXmYbWlI/Gs3
l3YTWxyJo6Q7oppvEoyRgtfp+55dY2uPoxN40dlz339vJd0qrsg5PrKLCVXjVKQG
FYZpT6m8KPBSFhYM4uvW3dlW3g5B82DDtWk+ihGGk7d9FYqNc/yPMeFdNK+mgAx5
4jE9xDOQziN3p9R13mOTSanz1/ZpEzTHOorYnXDiTLkMwuFrLBuY4QzXzX5jkJ06
unD5Uz1/Aj8//gY3JYa8ENcHiJobV3jpo9V01ktHiWJuJR8QzUiWDFWLpADbhsmf
y/3AJ6Ytaegg/0GoMsL6I25H49Nc7+jv2SnN3MT4jKMcEv58+PynacT9cD6jq6ZY
hZNpbBJI7xePrS4hRJw+tVINU7jzNbPsQd+1VtWvac4QpB2rZrU=
=3Abi
-----END PGP SIGNATURE-----

--7wd6d5tuqwbx2ukr--

