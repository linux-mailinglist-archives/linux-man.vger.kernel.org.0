Return-Path: <linux-man+bounces-1897-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1FD9C654A
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 00:38:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55303B30A48
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 23:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31B521C19F;
	Tue, 12 Nov 2024 23:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYx6E/mV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB9521A4BA;
	Tue, 12 Nov 2024 23:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731453979; cv=none; b=IOrzWB2Rt+qLiiEYhXCS0Dr1/SHKF+T964MSsnIqSGHE2Cv8QAYXhQxxHaaCGYCYgKkPFF8MASvXxP+tcJvjWLouVgSC7r2a1OiOHteS3QzhL/jiujIBJfbcz280+bc4RyoI1SOopZFKUaRWCp/oq+eHDwfq0cOMJG3lyPI9NRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731453979; c=relaxed/simple;
	bh=+/BD4L/R1nBoJnct/mLcdKjNjhjT97jizBEz87gS56o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bgvkph4EV/2QBxxplsTi7tGxPcV14UzNNu3bui/j3SjomW+jQMKCcx5VWWBqFCn79X4TmsOpPduJ9zmtIBRS+taZbMAquAXznet1pngdudaKrCPGm1WHZjHe6StrJyrRr/vPzP/MnTiXV+ClHRB0NcFpnAELqlRnQAm9XyC8bBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYx6E/mV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B71BFC4CECD;
	Tue, 12 Nov 2024 23:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731453979;
	bh=+/BD4L/R1nBoJnct/mLcdKjNjhjT97jizBEz87gS56o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sYx6E/mVEgu7QFsq/6plMW4JGvwyOhhxCqwb3hU6KtWvA5w5Sx65wiKMSTN6Cv80f
	 HFFJr0NSP9kJHMqnQONP630GAKRQxt+zzfpN5BnaOzyGSNX9QSVmjWqX2BFjWEMRwy
	 IQZzBtpjLeV+9Dee6YJc+VCcNWtVXGO0nH12gU6WYspjzTgHh5SuvJgMdTHHq9vBs+
	 eU6c8gECgglu+8XYJcx3sysu7VvKfquAm9G7B+qPP2P5Q48TfasNMM4areInItPgFJ
	 ZSBBKPkEj5JWndesDuCTyfxD09RYuLaNvGuYgeeWdMRb+QKKzrevjO/9elGFy245xh
	 1E38CM3alOifQ==
Date: Wed, 13 Nov 2024 00:26:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, kuniyu@amazon.com, mtk.manpages@gmail.com, 
	branden@debian.org, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <udctaxcv6yqjvffgrtzgqo24ee3kr4h4ku66ubohc7l4hqwg3w@6ujhaoyg4kla>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241111062205.207027-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f7gmd3j6k5eoylin"
Content-Disposition: inline
In-Reply-To: <20241111062205.207027-1-alexhenrie24@gmail.com>


--f7gmd3j6k5eoylin
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: linux-man@vger.kernel.org, kuniyu@amazon.com, mtk.manpages@gmail.com, 
	branden@debian.org, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241111062205.207027-1-alexhenrie24@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20241111062205.207027-1-alexhenrie24@gmail.com>

Bona nit Alex,

On Sun, Nov 10, 2024 at 11:20:06PM GMT, Alex Henrie wrote:
> struct ifa_cacheinfo contains the address's creation time, update time,
> preferred lifetime remaining, and valid lifetime remaining.
>=20
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/tree/include/uapi/linux/if_addr.h?h=3Dv6.11#n60>
> Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
> ---
> Changes from v1:
> - Move link to Link line in commit message
> - Add the word "remaining" to clarify that the reported values will
>   decrease over time
> - Say UINT32_MAX instead of -1
> - Add a short paragraph to explain the constraints on the minimum and
>   maximum lifetimes
>=20
> Thanks to Kuniyuki and Alejandro for your feedback.
> ---
>  man/man7/rtnetlink.7 | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index 86ed459bb..ed08834b0 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -176,7 +176,24 @@ IFA_BROADCAST:raw protocol address:broadcast address
>  IFA_ANYCAST:raw protocol address:anycast address
>  IFA_CACHEINFO:struct ifa_cacheinfo:Address information
>  .TE
> -.\" FIXME Document struct ifa_cacheinfo
> +.IP
> +.EX

I expect users that need to use this struct to also need to include the
header that defines it, right?  We should probably specify it by using
an #include.  What do you think?

Have a lovely night!
Alex

> +struct ifa_cacheinfo {
> +    __u32 ifa_prefered; /* Preferred lifetime remaining, in seconds */
> +    __u32 ifa_valid;    /* Valid lifetime remaining, in seconds */
> +    __u32 cstamp;       /* Creation timestamp, in hundredths of seconds =
*/
> +    __u32 tstamp;       /* Update timestamp, in hundredths of seconds */
> +};
> +.EE
> +.IP
> +.I ifa_valid
> +cannot be zero, and
> +.I ifa_prefered
> +cannot be greater than
> +.IR ifa_valid .
> +A value of
> +.B UINT32_MAX
> +represents an infinite lifetime.
>  .TP
>  .B RTM_NEWROUTE
>  .TQ
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--f7gmd3j6k5eoylin
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcz5BAACgkQnowa+77/
2zJ4yg/+JpENPpflkfg+u6+X5zt6xvktmdBehI9nDnjhbmMgSyYKCcHoz25ZNE4B
/2LrpeoC91ZPDncTyBw4ZAyQ8pxrWdwfsXW1/9Ok1vut2JmcN9hIe4WC40wQtTeo
8/iQb7lVjb6LFI1ka4EZVvkAL32C0o+k+plrD7I0zWUMRGE4Ro2WHYGjX/NELY3t
gLq2zTHu+zTm2fkWBcztMdwG3YjHqG30vOIXOo3SWff49c7EAqaMBCNqyqxIqekT
B3FRorsJdgtNql/zhrfp2mOkoObnQM12maj12FfcLsUQbWDLcLDbC+wik79gdikN
n+OKlOLeXw80fVLNt9c0h19ME/mRQJTXqnAxrDooXPl0hIjYiopy+/7jkGiX5jHI
o672YrQyGXRDmPGoHYoqNTuUCtKCHJYHaKXXFO/Yn7/753k1cY+GnRCS5/7AUv5r
AFhuuObVd2ap1OLpGYv3iIP85I0O6In0zrn5P93BVbIs9EZUIlt8hpZeVbv8AbRU
oy0xvsxPhh0fg5gvqMc6RP51LrL+M5kkm5/LhSVV0+EQIkquUUBl8QkeqXEAtv2B
USAUnTS/7AF+iLpbmf3Di38bJ1fggZgFRcMu37NJxZ0cqfFGx4eXLxqwNi+WdvLv
gwz8DW4obmtblkSy0QcaD+goqEdRXmu+IX44VzySU3+OmnNWXCY=
=NX2x
-----END PGP SIGNATURE-----

--f7gmd3j6k5eoylin--

