Return-Path: <linux-man+bounces-2247-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC9CA13A71
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 14:06:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 280F23A67E5
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2025 13:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B8A1DF974;
	Thu, 16 Jan 2025 13:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSQ5oLQG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183B81DF96E;
	Thu, 16 Jan 2025 13:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737032777; cv=none; b=sJfGuQ+leADbgus+OYA1+BAWP/HOaV3c9FiCprLV9cy4xMe57uMkJZCwAgu8SqX6R2cxmx/vPZqKXXs2pqgGjzS06TUaUkahiaRGGvfH6uF0Z/Kquu1TIycJdVcrtIlBgvPYETUiDNpL1qAaiECq4WCI/UFlAxIsodKGdEOEVrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737032777; c=relaxed/simple;
	bh=GHHjIcaIaD0is14JscuSP7qaKnFeT9Cg02552fYZLmE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TUt/OFsxDIdVoXRFpvCOKBAAsieUr9SrExXwcMwm4f/HPA3R6HcNFQwvM2yrDT9yK7MZKSPZcrmv9vqZXh6ex/zE1rWuFD/twMA5Bks6VbHqdG0hsq8omQ+sW+ouuwcgFVJkJxU2t11zPIAVzDszOFoi0KmDouX6gokwSFePpLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSQ5oLQG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF26EC4CED6;
	Thu, 16 Jan 2025 13:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737032776;
	bh=GHHjIcaIaD0is14JscuSP7qaKnFeT9Cg02552fYZLmE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sSQ5oLQGYXv/HdTEhwuge/omUHYqsIYERv3Snz7RhzNHlBqf7YzpNAIhmND/6lXRf
	 CMaEsWKL98WqSe8CM0quydmH5IRtLjco/dpNX9m7+i7JQzXv18lk337hkGxDEtfLpG
	 iNF1Za4vNi5UV6mH/8Gj6UZKsEjEGXvZhnF1jejZ2XWWABuv1GGqnhKkAzdC3fVkhN
	 wSX0mHFcNaZdSV1M2vZHRbaFf6fvuKD3YHjWo6h9CJXynCVGJIYQLChPzqvJm/La2S
	 h6JEiWCMDSoOwjNgvAnuPYi6SHUSDA3AiwS1Kt+ey+W9QbmZHRwAGRnfgdPU/7/gpD
	 h9HioyGSejBuw==
Date: Thu, 16 Jan 2025 14:06:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Phil Auld <pauld@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] sched: Mention autogroup disabled behavior
Message-ID: <fzshiseda5ispy7utboswemxr54d7646rz5v2ilgatlih3vqwk@r3775k54ixeh>
References: <20250116124654.2365691-1-pauld@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bxxn2xwgdjl6tdh2"
Content-Disposition: inline
In-Reply-To: <20250116124654.2365691-1-pauld@redhat.com>


--bxxn2xwgdjl6tdh2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Phil Auld <pauld@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] sched: Mention autogroup disabled behavior
References: <20250116124654.2365691-1-pauld@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250116124654.2365691-1-pauld@redhat.com>

Hi Phil,

> Subject: sched: Mention autogroup disabled behavior

Please use the pathname of the modified file as a prefix:

	man/man7/sched.7: Mention autogroup disabled behavior

On Thu, Jan 16, 2025 at 12:46:54PM +0000, Phil Auld wrote:
> The autogroup feature can be contolled at runtime when
> built into the kernel. Disabling it in this case still
> creates autogroups and still shows the autogroup membership
> for the task in /proc.  The scheduler code will just not
> use the the autogroup task group.

Would you mind showing (in the commit message) a shell session that
demonstrates this?

>  This can be confusing
> to users. Add a sentence to this effect to sched.7 to
> point this out.
>=20
> Signed-off-by: Phil Auld <pauld@redhat.com>
> To: Alejandro Colomar <alx@kernel.org>
> Cc: <linux-man@vger.kernel.org>
> Cc: LKML <linux-kernel@vger.kernel.org>

Thanks!

>=20
> ---
>  man/man7/sched.7 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man7/sched.7 b/man/man7/sched.7
> index 71f098e48..f0a708cd7 100644
> --- a/man/man7/sched.7
> +++ b/man/man7/sched.7
> @@ -724,6 +724,8 @@ in the group terminates.
>  .P
>  When autogrouping is enabled, all of the members of an autogroup
>  are placed in the same kernel scheduler "task group".
> +When disabled the group creation happens as above, and autogroup members=
hip

s/disabled/&,/

Also, please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely day!
Alex

> +is still visible in /proc, but the autogroups are not used.
>  The CFS scheduler employs an algorithm that equalizes the
>  distribution of CPU cycles across task groups.
>  The benefits of this for interactive desktop performance
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--bxxn2xwgdjl6tdh2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeJBEsACgkQnowa+77/
2zJl4BAAm81Q9vud6L3JiOdIjlaqjDgrE0GJ7pRRzMT8nc/HhV37W/MbWcPXchh7
v3AoAxrlWduk8BXePpZGUNmflVmuMkF6nPYdXBgnZb2L70V8VOLjRdUaV515bLdr
yWREFz1Jl5h1Oodaa2psSlae5PZSNqxbmYLaqtB4mFYeq4nFiCuavdZuU+EagLGv
YVmVjKdjf60YiVpU5pyftpvFR75CzGPmJ3oYIOp+nsA3xbJuzBjpw5+Iip16XlZ5
IfqKelQqJrqWXEZrAlWnwEpfmDEN4s9BmY8Z/sZw283KSrbXfuXkr7CGfuZmSnSQ
zQOm04CNATv6NDd+NgDvdLyipubqW+yzDdBcUsSf2C4WZboAz0FiYBMdDl+O0R4N
+iqwViFIn4xiZHWH7FEuptNLxNCLwVWshXTjWcbHku4EV/k/oJ/vJUM3baBWc/A2
TPsXm6KMNnV7rS5IQflgpuhYhwn77V54liyy7XNMbXPloGncTD7jMNhBj248UQeg
mSRWP0zYjjPa4GGtXaXRL1l4yujGIac+ZT4D5wfvIEdMUEKs/1EaaJx1QxMm7yh9
qDv5p7G3+d3XlBi+q/qa5bBWCkLEI9LpnvCp10r4inp8glh6Hs51bjmlDb3rsr7N
IbuYMFEAOjCPXDuReFzGu/0BNkAUwU6mCJAunb2vn2Z89dRyoIY=
=PJix
-----END PGP SIGNATURE-----

--bxxn2xwgdjl6tdh2--

