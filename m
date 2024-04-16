Return-Path: <linux-man+bounces-768-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 864DB8A755B
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 22:16:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 156C6B2143E
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 20:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 622B5139CEF;
	Tue, 16 Apr 2024 20:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/jX7T2D"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F08211181
	for <linux-man@vger.kernel.org>; Tue, 16 Apr 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713298554; cv=none; b=uowV1mGP+Ow5tGa65NFDofYNFCarniL9MYvKPjTTzkg/+RmU514Rqd88zyvXkdGIu9jEiDJgzz3W3WPBvMibL1TXhZUsicdWJNZCOewuMGWIeGNEQ3lKYgU6j2ebavCqib7EFla1m+KWfPU4kogpjf8zAUCJJ6qpqvIiXcnkvt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713298554; c=relaxed/simple;
	bh=65b0/VU2Tq6CUcwdBCKITzBxxuvca2kHWvqjeQ1BTUM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KqvemBa3+pk7hWhpCwRbbEaji/vW1oDCsV9zTC8a0yyoaTIhanD9YJvVAGSNs/6I1POSbVmVUJKjM7bIbBbyHjVzpVJmnrHUGf7KtFyzXuOCJz1CycCd89bxU/5Gs8sX4503nX0ieKQdXW7/MpKE3XkR89KuVYO70LXWu8eqI1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/jX7T2D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA60BC113CE;
	Tue, 16 Apr 2024 20:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713298553;
	bh=65b0/VU2Tq6CUcwdBCKITzBxxuvca2kHWvqjeQ1BTUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W/jX7T2DsPsf0mF5ubtlFi57kwVIjIQj+O7sWS1rBjc/uUKx7/OM/3HRtpijPw5G4
	 19NXOKBCJJ+NUPSOPag0WJPhOn06901uSaBeQzDLwJ046Lpzo/DxxQ8TevC48vLH7l
	 Xlb3D3XvYgb8robJlm7W/CEWK9OQI4U8tnRYlNpDPZ3Jt7RUH3UkB3fIdZLrbbwxkC
	 DONZFDUaHN7JkoQ7qmfSxDDjhOCep6VxdWfqt+bpQu8TGGTM7/aLGcwhl9UX9ZXEOH
	 UeFk39N73g2XwbO6mlyNR9m/Dw4CsOvABa4+EDaGyGfaRnDGZV6I3PpJ3Aw8mT9a6P
	 fiV6zIYGCuT7g==
Date: Tue, 16 Apr 2024 22:15:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zh7cdp1mGgEBM7zw@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <3935722.768hzMJKAL@pip>
 <Zh3OKsBl0SyyR1f9@debian>
 <44896690.SEQk1G1hEZ@pip>
 <20240416165157.ml3ntjoozh3mpyzo@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+WCZg/hMGK6vP2ZM"
Content-Disposition: inline
In-Reply-To: <20240416165157.ml3ntjoozh3mpyzo@illithid>


--+WCZg/hMGK6vP2ZM
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Apr 2024 22:15:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

[CC +=3D linux-man]

Hi Branden,

On Tue, Apr 16, 2024 at 11:51:57AM -0500, G. Branden Robinson wrote:
> At 2024-04-16T15:06:47+0100, Deri wrote:
> > On Tuesday, 16 April 2024 02:02:28 BST Alejandro Colomar wrote:
> > Also I rewrote prepare.pl to not use calls to .MR, to make it faster,
> > which is why you notice no slow down in the run since Branden released
> > code to pdf.tmac, which affected the speed of .MR.
>=20
> I want to keep an eye on this.  As soon as I observe/reproduce a major
> performance hit (with _any_ man page collection), I mean to do something
> about it.

I'll let you know how bad it is in the Linux man-pages, once I have
something stable that I understand.

> > > Also, how can I get
> > > the Unifont files?  I don't see any .pfa or .pfb in any unifont
> > > packages.
> >=20
> > Do a bit of research on Peter Schaffter's "install-font.sh".
>=20
> I forgot to mention afmtodit(1).  The grops(1) and gropdf(1) man pages
> also contain step-by-step procedures=20

Some feedback from gropdf(1):

     The  following is a step=E2=80=90by=E2=80=90step font installation gui=
de for
     gropdf.

     =E2=80=A2  Convert your font to something groff  understands.   This

The first step is already assuming I already have a font.  Too bad.  I
don't have one.  Where's my font?

        is  a  PostScript  Type  1 font in PFA or PFB format, to=E2=80=90
        gether with an AFM file.  A PFA file begins as follows.

If there any Debian package that provides either a PFA or PFB font for
Unifont?  I haven't found it.  So I don't have a font.  Does it mean
that this procedure doesn't apply to my case?

               %!PS-AdobeFont-1.0:
        A PFB file contains this string as well, preceded by some
        non=E2=80=90printing bytes.  In the following steps, we will con=E2=
=80=90
        sider the use of CTAN=E2=80=99s BrushScriptX=E2=80=90Italic font  i=
n  PFA
        format.


> for supporting "external" fonts.

(sigh) I guess I need to clarify.  I don't know what's an "external"
font.

> But Peter's script is vastly more convenient for pretty much everyone
> (except maybe distro package maintainers, who have not, as far as I
> know, tried to tackle the problem at all).

Why?  What does it do better or worse?  I find it more convenient to use
something that I can apt-get(1) install, and that's not the case here.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--+WCZg/hMGK6vP2ZM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYe3HAACgkQnowa+77/
2zLt0Q/5AePoGlKcmg0eYewMYPuimL2YhZAfsmb6/9ZKlOlqU1oCUuk3gIYbp7+Y
w+TBmX+NxOeeTlZ0EJ2p4VYxrV7kpGH/7GIP2+on8iUPd+hsnZg46pI3kjiKuZ6L
vZLwIC7HWjSlBOLg8tFFKgMN/5dK5NStJaXu0L4KhZpE4olTqkUlk2ZZ9dNETfaF
EbvWB+LJ5nSDsr86q3IVCZ/6l8YzkCiK4vpNg3lyYmVCk8m/kn8VLIQBuh6G/KeB
XKdxf9/8yFgUS1g2FBmdbZKnXddN08sXyYQN2kxBhn4k0sIpWiL+e29xwZBgxjZu
6tdeDYMy4F7qCfFtJIkm/dgjGHAEpgqXAxXFfRnrBsOrXmN3DVzeSBF7WvGXaOMU
vHp6vgzQcFi4lEUOqoA/2QGZMcN8UKpm6HwWeHTC06LH5UCP8k+fGuSL4SE57ndv
Fx4o/rBFVWpqMjOHf9lHBbWgqMO8CGls+rUUgYYKl/xfnNHqLuDXQqJCc4N8lT4J
CuXuOZog3WtJzvUHMdC+b9/rGLB9gLrz4YLfF6Y/2s/cVbkOF+SdsrOtO1HzoFvD
mn/M3VMCXa+cLg8y13m2ubVi+9qu0E2DX5w/WSTGkYtZfvzD+/ub1HPaGxXcqpSJ
8TDFdT3Ou1CyPAKBjbhuI2VuqNFg7flvUOdqaadSlOZhD26EB14=
=LVMH
-----END PGP SIGNATURE-----

--+WCZg/hMGK6vP2ZM--

