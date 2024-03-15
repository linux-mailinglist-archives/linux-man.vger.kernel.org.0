Return-Path: <linux-man+bounces-611-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B4587D46C
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 20:22:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 244901C2148B
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 19:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E671051C2B;
	Fri, 15 Mar 2024 19:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODZjMqhN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D605102F
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 19:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710530530; cv=none; b=atG72Ab5Hm2RxbWyVIfd+hR5ygvioRJQzb6oHhPy7VOk6hG5UWaIge0V8bESb+3HUVqcps612h1LFzuAw05v4elGFHOh/N69mLO9xUcKU0+cUlTsoIMzzty2nSyuSmXsUfZjBzg+gjDe3A0jW/AYYipno66dyO2+jBEoqaDMmLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710530530; c=relaxed/simple;
	bh=Q6enQKZV4Co/GLd6aAysAzKEklY4DIX/h1UwHebTQW4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CjuCG8UQiwLNuuQlQInE7+7YvuGqlZUsgCDg4L2mCWHFtgf2MN9E1W//j6e+/RbMC97o0SUv9K1yXPXpHnBaWbVTf1P3xsnEAAP7h/vkqSSlLls+T1kLcB4q5WkgDhDeV42Kx2kfjHsd9sJKW+/g+d5t71xnf63h5u+232qo6Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODZjMqhN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AF5EC433F1;
	Fri, 15 Mar 2024 19:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710530529;
	bh=Q6enQKZV4Co/GLd6aAysAzKEklY4DIX/h1UwHebTQW4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ODZjMqhNwmv4U/h+oI4bFc3KJ5In9QN95HPxdWKyKrET0nCtg8pCbw1VXAJMpV6P6
	 vZg2/ohorOTeArLUZgy9xym/aurEGyNk91TXrTmGBp3yM1g8G4cbQJQHoXphS+Vab+
	 g5nZEs9OUlJgeevLqrAY2Trl7pcGJGnFWha5A/8UhRp7dagoLQObVqEBBLcPPKx3c7
	 7ztbW/Tqx8Uo5shRJH6xEpv2hg15b6YNRMwGOtVV5iDOZ5yDYDKQPsRYqhjQ7aLHoq
	 E9OWotNBAucqapURIx5m4CPcOxh5RPJKE3KtTCIvWZSoxefBNGyre15CvvezVNTQ8v
	 qYteyxfrQpBfQ==
Date: Fri, 15 Mar 2024 20:22:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfSf3f7baqC1N_ha@debian>
References: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LX770ps00Zgu6uLW"
Content-Disposition: inline
In-Reply-To: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>


--LX770ps00Zgu6uLW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Mar 2024 20:22:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

Hi Svetly,

On Fri, Mar 15, 2024 at 11:02:06AM -0700, Svetly Todorov wrote:
> ---
> Adding documentation for the new MPOL_WEIGHTED_INTERLEAVE mode in the same
> manpages that mention MPOL_INTERLEAVE; namely, mbind(2), set_mempolicy(2),
> and get_mempolicy(2).
>=20
> Descriptions were based on the changes introduced in this patch:=20
> https://lore.kernel.org/all/20240202170238.90004-4-gregory.price@memverge=
=2Ecom/
>=20
> Which was upstreamed to 6.9 here:
> https://lore.kernel.org/linux-mm/20240313200532.34e4cff216acd3db8def4637@=
linux-foundation.org/
>=20
> To: alx@kernel.org
> Cc: linux-man@vger.kernel.org
> Cc: gregory.price@memverge.com
> Cc: ying.huang@intel.com
> Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>
>=20
> Changes in v2:
> - make flag documentation implementation-agnostic
> - Link to v1: https://lore.kernel.org/r/20240314-weighted_interleave-v1-1=
-ce85d64db0d4@memverge.com
> ---
>  man2/get_mempolicy.2 |  8 ++++++--
>  man2/mbind.2         | 12 ++++++++++++
>  man2/set_mempolicy.2 | 12 ++++++++++++
>  3 files changed, 30 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
> index 5248f04ba..03550331d 100644
> --- a/man2/get_mempolicy.2
> +++ b/man2/get_mempolicy.2
> @@ -137,7 +137,9 @@ specifies
>  but not
>  .BR MPOL_F_ADDR ,
>  and the thread's current policy is
> -.BR MPOL_INTERLEAVE ,
> +.BR MPOL_INTERLEAVE
> +or
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  then
>  .BR get_mempolicy ()
>  will return in the location pointed to by a non-NULL
> @@ -206,7 +208,9 @@ specified
>  but not
>  .B MPOL_F_ADDR
>  and the current thread policy is not
> -.BR MPOL_INTERLEAVE .
> +.BR MPOL_INTERLEAVE
> +or
> +.BR MPOL_WEIGHTED_INTERLEAVE .
>  Or,
>  .I flags
>  specified
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index b0e961f9c..4673f077e 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -105,6 +105,7 @@ argument must specify one of
>  .BR MPOL_DEFAULT ,
>  .BR MPOL_BIND ,
>  .BR MPOL_INTERLEAVE ,
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
>  or
>  .B MPOL_LOCAL
> @@ -243,6 +244,17 @@ at least 1\ MB or bigger with a fairly uniform acces=
s pattern.
>  Accesses to a single page of the area will still be limited to
>  the memory bandwidth of a single node.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.

Path names should go in italics.  See groff_man(7):

     .I [text]
            Set  text in an italic or oblique face.  If no argument is
            given, a one=E2=80=90line input trap is planted; text on the  n=
ext
            line,  which can be further formatted with a macro, is set
            in an italic or oblique face.

            Use italics for file and path names, [...]
                    An exception involves variant text  in  a  context
            already  typeset  in  italics,  such as file or path names
            with replaceable components; in  such  cases,  follow  the
            convention  of  mathematical  typography:  set the file or
            path name in italics as usual but use roman for the  vari=E2=80=
=90
            ant  part  (see  .IR  and .RI below), and italics again in
            running roman text when referring to the variant material.

Have a lovely day!
Alex

> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
> +/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively,
> +then pages in this region will be allocated on nodes 0, 2, and 5
> +in a 4:7:9 ratio.
> +.TP
>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index fc3ad9df8..e2f5e5bf8 100644
> --- a/man2/set_mempolicy.2
> +++ b/man2/set_mempolicy.2
> @@ -63,6 +63,7 @@ argument must specify one of
>  .BR MPOL_DEFAULT ,
>  .BR MPOL_BIND ,
>  .BR MPOL_INTERLEAVE ,
> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>  .BR MPOL_PREFERRED ,
>  or
>  .B MPOL_LOCAL
> @@ -199,6 +200,17 @@ the memory bandwidth of a single node.
>  .\" To be effective the memory area should be fairly large,
>  .\" at least 1 MB or bigger.
>  .TP
> +.B MPOL_WEIGHTED_INTERLEAVE
> +This mode interleaves page allocations across the nodes specified in
> +.I nodemask
> +according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
> +For example, if bits 0, 2, and 5 are raised in
> +.IR nodemask ,
> +and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
> +/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively,
> +then pages in this region will be allocated on nodes 0, 2, and 5
> +in a 4:7:9 ratio.
> +.TP
>  .B MPOL_PREFERRED
>  This mode sets the preferred node for allocation.
>  The kernel will try to allocate pages from this node first
>=20
> ---
> base-commit: a4ea5f76215dcf1d8d017eb65ab12919ccf09f3f
> change-id: 20240313-weighted_interleave-e8141ed754f9
>=20
> Best regards,
> --=20
> Svetly Todorov <svetly.todorov@memverge.com>
>=20

--=20
<https://www.alejandro-colomar.es/>

--LX770ps00Zgu6uLW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX0n90ACgkQnowa+77/
2zLiVg/9Es3bZV4g2Q/6KnY0QWOOmrNMEH2JwFEhvKsAxNTpKcPM9Oe8sr9L7y5S
TtzKtLknWz/LSQk2zd+YLNQFKNR9fL5H+RSRjSnfB91picKedVUqQvTxnZsuqmK8
99cXAs8k3eZuiM07wgMeCqj6q8hhlm4ezdIKAG6lvsYqTKU4WYBO1iM7szO9jsgl
reNosePvQSxaB1tOv62sb/zJwg1suCvCciAp8UNdQu4aYfPLZaEIVLz1yio5hJgT
eOJjWvlYRZempc7uLV2C471lSmAIkPi0g1332d0qJPdyG+ze7HwdzhmTEBUpOXpK
1n/JRSOWF2EUA5z6LSU44oywlD6H01x6f5aOWZBYgmX1DE/FZeuujtFLihWwLTvK
Sz6FwdVIdwLbMxsOPMHZ52/2+/vW92hX+E2YkWdKzpEztw0SlIuj5zAG+e+qZODF
ouAJwp8ZxOFRUEeW9OQDMFySh6/LXzSVPly1xdQiKjRGMu6tOISn00STQDeKLJXM
rX1huW+XNcaRfd8N1/QupsSR65SLvFlfxQMz0KQSbCSZF1w3V3V0UZTnxKHXMYq5
7LC+8PxJRGADMcW7LJNpnb6BKCRQLtFD5W1uhXPmKDiliFL6tkwgm9wsiSG4Ct+L
AacA9UW9bFu5BcK0HVffYt+1x5pAx9RzS+Y3wbPRm+r0Pj2W4/g=
=4m48
-----END PGP SIGNATURE-----

--LX770ps00Zgu6uLW--

