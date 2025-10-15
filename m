Return-Path: <linux-man+bounces-4159-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F8DBE0CFA
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:26:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20AC44043E3
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B4632FF154;
	Wed, 15 Oct 2025 21:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqDI09Gt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBA72FDC59
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 21:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760563536; cv=none; b=AJsM7tJy52NsRY6ikiaI+UXwB2o7TntcC+lwvpVReyV2RaLL9rJ9fBIkuYWQ0sIJjn2J/9Ou1AWlU+WkT51zbaO3fPtnXP89tvi4lxnJr4st5S2nBOVGCfpZ9KhKNA5zkIupPH+Zofj4lB8gBvD6bZ3il4WHj0x7xG9WeoW8+Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760563536; c=relaxed/simple;
	bh=UMy2BvDBJVxv3KrDi0R5Gphd+HNB2MN2lgKFqIyd4ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUFQ/eFRGjd8BGOpetwd4KzHNeYynXEzDCVfUJPxotJ2wYqezD48Q7PpJ9iL1C+AZYs/WGGJ9Jpor4y/N9ywhKE691yANSY8OmB/lFJt+dUC2nTSrFoK7a7HsfMCQmuyGqqb/D+WLuRgGCchg2cHXdOZe3ty/dJr8A9ID3rvygI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqDI09Gt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 910E4C4CEF8;
	Wed, 15 Oct 2025 21:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760563536;
	bh=UMy2BvDBJVxv3KrDi0R5Gphd+HNB2MN2lgKFqIyd4ac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VqDI09GttHluXr/qvWq/dFQQjVcHEOu4P7zAsoY1Yoy6UTOByzroeJV4TXb42O4j+
	 jIJBSmLp9jxnWmb9IZwiOZCUZMY/ACzXh2rDFEvCqVeHc9i9DVqwsiTObH0rbjB8wG
	 bL81jK8rh6agAK0ew0ugEvpnvju7pBF+sB/3Yc4lU1mi7krhlY5GClHVroqJ6xgqmQ
	 kRQc2bqbudFnmpZKzllzb21ZZyMgEMGAuA35SQ6W6HbSI+D1Pb9lGy/kv9so56MXIs
	 Yz5+3LB3YuDX5EfGZHe5XxFGf4FTj3OCn8b8xnHVqxmtjVrJgPR2cyGkuz6jbpaVeO
	 DoREh+g5h/K3A==
Date: Wed, 15 Oct 2025 23:25:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: ValdikSS <iam@valdikss.org.ru>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/tcp.7: Add TCP_SAVE_SYN and TCP_SAVED_SYN
Message-ID: <bryfjq5xnxrlxg3bo5ixfcwkqmxkgkx5ejm23jzxd3xshitgm6@7uvif553iqiv>
References: <20251007210352.68976-1-iam@valdikss.org.ru>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="maxwk4l6gnzh4zqu"
Content-Disposition: inline
In-Reply-To: <20251007210352.68976-1-iam@valdikss.org.ru>


--maxwk4l6gnzh4zqu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: ValdikSS <iam@valdikss.org.ru>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/tcp.7: Add TCP_SAVE_SYN and TCP_SAVED_SYN
Message-ID: <bryfjq5xnxrlxg3bo5ixfcwkqmxkgkx5ejm23jzxd3xshitgm6@7uvif553iqiv>
References: <20251007210352.68976-1-iam@valdikss.org.ru>
MIME-Version: 1.0
In-Reply-To: <20251007210352.68976-1-iam@valdikss.org.ru>

Hi,

On Wed, Oct 08, 2025 at 12:03:52AM +0300, ValdikSS wrote:
> ---

Would you mind signing the patch?  Also, it would be helpful to describe
how you obtained the information, and also CC Eric Dumazet in your
patch (or any other person that might be involved in the feature).

See the contributing guidelines:

	$ cat CONTRIBUTING.d/patches/description=20
	Name
		patches/description - instructions for writing a patch description

	Description
		The descrpiption of a patch is commonly known as commit message.
		it should describe the patch, including any details that may be
		of importance for its review.  It is formed by the subject, a
		blank line, the body, a blank line, and the trailer.

	    Subject
		See <CONTRIBUTING.d/patches/subject>.

	    Body
		Describe how you obtained the information in your patch.  For
		example, was it:

		-  by reading (or writing) the relevant kernel or (g)libc source
		   code?  Please provide a pointer to the relevant code.

		-  from a commit message in the kernel or (g)libc source code
		   repository?  Please provide a commit ID.

		-  by writing a test program?  Send it with the patch, but
		   please make sure it's as simple as possible, and provide
		   instructions on how to use it and/or a demo run.

		-  from a standards document?  Please name the standard, and
		   quote the relevant text.

		-  from other documentation?  Please provide a pointer to that
		   documentation.

		-  from a mailing list or online forum?  Please provide a URL
		   if possible.

		Where relevant, cite commit hashes for relevant kernel or glibc
		changes:

			linux.git f4b89d8ce5a8 ("landlock: Various documentation improvements")

	    Style guide
		URIs should always be enclosed in <>.

		The correct inter-sentence space amount is two.  See some
		history about this:
		<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.c=
om/?p=3D324>

	    Trailer
		Sign your patch with "Signed-off-by:".  Read about the
		"Developer's Certificate of Origin" at
		<https://www.kernel.org/doc/Documentation/process/submitting-patches.rst>.
		When appropriate, other tags documented in that file, such as
		"Reported-by:", "Reviewed-by:", "Acked-by:", and "Suggested-by:"
		can be added to the patch.  We use "Co-authored-by:" instead of
		"Co-developed-by:".  Example:

			Signed-off-by: Alejandro Colomar <alx@kernel.org>

>  man/man7/tcp.7 | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man7/tcp.7 b/man/man7/tcp.7
> index a5fa4baa6..cb640f340 100644
> --- a/man/man7/tcp.7
> +++ b/man/man7/tcp.7
> @@ -72,10 +72,6 @@
>  .\"	   commit 6e9250f59ef9efb932c84850cd221f22c2a03c4a
>  .\"	   Author: Eric Dumazet <edumazet@google.com>
>  .\"
> -.\"	TCP_SAVE_SYN, TCP_SAVED_SYN (4.2)
> -.\"	    commit cd8ae85299d54155702a56811b2e035e63064d3d
> -.\"	    Author: Eric Dumazet <edumazet@google.com>
> -.\"
>  .TH tcp 7 (date) "Linux man-pages (unreleased)"
>  .SH NAME
>  tcp \- TCP protocol
> @@ -1202,6 +1198,22 @@ aborting the attempt to connect.
>  It cannot exceed 255.
>  This option should not be used in code intended to be portable.
>  .TP
> +.BR TCP_SAVE_SYN " (since Linux 4.3)"
> +Saves incoming SYN packet contents of the listening socket until
> +it is read with
> +.B TCP_SAVED_SYN
> +once. Could be set before or after the

Please use semantic newlines.

See man-pages(7):

$ MANWIDTH=3D72 man man-pages| sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely night!
Alex

> +.BR listen (2)
> +call.
> +.TP
> +.BR TCP_SAVED_SYN " (since Linux 4.3)"
> +Reads SYN packet contents saved by
> +.BR TCP_SAVE_SYN .
> +The saved SYN headers are freed after the first call.
> +The data returned in
> +.BR TCP_SAVED_SYN
> +are network (IPv4/IPv6) and TCP headers.
> +.TP
>  .BR TCP_USER_TIMEOUT " (since Linux 2.6.37)"
>  .\"	    commit dca43c75e7e545694a9dd6288553f55c53e2a3a3
>  .\"	    Author: Jerry Chu <hkchu@google.com>
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--maxwk4l6gnzh4zqu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwEUwACgkQ64mZXMKQ
wqmjExAArxQJG5C3PJDb9Vvu5NEjBAGJPvMCYP74lE4eiLTS/6VZIIYxLLvn8MQv
Gy0sUayvo3A6kECvf/3UFbzBukYm5VrV5JpmDEj4zrzo9okgPdLTur4X0HE58HPn
XXaDuxGP5uoAXBbvHdzPhKuANuO0P0xO1XGY6xvuIjkMjArOKzM4v++OnqMWaUBs
I3mnoyPQteKi2iFPdNIbf1U+l2JlmW3602LALuIvqJwBexKgEd05NGekPYJ5flwg
iOWqAFN2pJYwVGteSmBxA06tYg1mTW/JNOLkSwN6YI+or6DORpezh5kLW/N67Suo
TR1kO9GT90kmJt6NrhGcMSxd3q11gvaoGdLdEeisMPEBf6/+A2DPIl9caPtVM/bY
A3AjbZlGcT9UOCPFipys8U1/hwOkvVu+faudmnwtQSaOfM70vkKnJk+4DfNBgcQh
00tJntAvpjCHFX1da72eWVtxj1OHE/AWHf+oEGk6g3OVZVrzYxU5F2n7LOmi2qRR
j6zpgti6rivA1OkZ0hmAWxrRFZhj4RDShZxVBICGgnvxJ7+JkKOS4EFtWPgP/PVT
3WkvZJcoutA9maMexRLwRyYzd/CRsN6ZBccMWghXvsvLuNIyZr1THEJeuBQ+K0xt
HWXxEbETJNGVNNb22zm9uZE1V/Qp+CrD26HnzgIXojlvkFGngAs=
=Dh/3
-----END PGP SIGNATURE-----

--maxwk4l6gnzh4zqu--

