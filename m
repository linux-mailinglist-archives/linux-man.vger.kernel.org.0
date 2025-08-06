Return-Path: <linux-man+bounces-3352-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A579B1C557
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 13:48:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0D1018C1EB6
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 11:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 038CA28BAA6;
	Wed,  6 Aug 2025 11:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emo+WUdZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B124C242D8C
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 11:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754480756; cv=none; b=oiAC1AIF3OXVmiaverpEgsqHnuUuXgovEF7ujhpt14PPkmOPN+1C+rf62986XaUiOCbWu35+fMqqpT43VX+uqeQ0Acnb97DJwTNSaLCEuc86vNjbIMXHZ8NetV2UXmFm8d71Mq9UHqtXPHIbCu6P/k/mWHOA70QaIL4TXfSJV3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754480756; c=relaxed/simple;
	bh=NC+I327LfbaVOJACXyPVV1UgbiJsvXuctVrIXUIW66U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JrieB+GZAa4rklsL/s24wraxBnqSlRGjgV6wufB0BweCWol5AZXz3S12R+Z3DcG+8cbZUWvV/9tZq1Q+4EQRu/5SuXYvPQP07jhApNCKSe7IC7tchJM9YzVRaNnohMnbrLDQ+bGiQ1bR4wvop9fmkZ2rxUiK889V7Yr3yqJK5Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emo+WUdZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDB36C4CEE7;
	Wed,  6 Aug 2025 11:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754480756;
	bh=NC+I327LfbaVOJACXyPVV1UgbiJsvXuctVrIXUIW66U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=emo+WUdZlqrjsoHXqcXndLoC99EFkV0lcKdvmR2BMGSz+jB80jUkfAn9hbjoqhA6o
	 UROpV9HNOaDytPn+Dfidar+t3Qu3lUBAx/sCJX0kZtvrkd9zp1CBUqRl8VPx4Vijm2
	 tzGa7kzkfyA3x2uYBar5ect6w1xXl36mPtX9Im2Ap5fMW8vFCKv/auDmwZRCqmS0qG
	 0DpmQggacrthRgcrHqxM+kTkr/Z+N9UvMM/niM9ldmDI1m3xF66OCglSFvNq3acyS4
	 Jz1xnah311NJaZ2WeRGjSQML4bjlZp3Oy3Rcz/1FAmWMF56hXn1w8olZOr3XYI1lX1
	 6JwYx2prtysbg==
Date: Wed, 6 Aug 2025 13:45:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Aleksa Sarai <cyphar@cyphar.com>, 
	Askar Safin <safinaskar@zohomail.com>, brauner@kernel.org, dhowells@redhat.com, jack@suse.cz, 
	linux-man@vger.kernel.org, mtk.manpages@gmail.com, viro@zeniv.linux.org.uk
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yhjqncr46xms3ene"
Content-Disposition: inline
In-Reply-To: <20250806091157.ldpnbcbtik4eudjh@illithid>


--yhjqncr46xms3ene
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Aleksa Sarai <cyphar@cyphar.com>, 
	Askar Safin <safinaskar@zohomail.com>, brauner@kernel.org, dhowells@redhat.com, jack@suse.cz, 
	linux-man@vger.kernel.org, mtk.manpages@gmail.com, viro@zeniv.linux.org.uk
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
MIME-Version: 1.0
In-Reply-To: <20250806091157.ldpnbcbtik4eudjh@illithid>

Hi Branden, Aleksa,

On Wed, Aug 06, 2025 at 04:11:57AM -0500, G. Branden Robinson wrote:
> > Is there any way of knowing how long an identifier can be before it's
> > necessary to \%-ify it?
>=20
> TL;DR: five letters.[1]

Good to know.

> I use the following shell script to aid me while composing pages:

[...]

> Example:
>=20
> $ hyphen FSCONFIG_SET_PATH_EMPTY
> FS=E2=80=90CON=E2=80=90FIG_SET_PATH_EMPTY

While I see the usefulness, I'd find it cumbersome having to ask it
about every identifier I'll be using.

> > I don't know if the man-pages folks will accept a man page that is
> > just full of \% for every identifier (and there doesn't appear to be
> > any rule when it comes to existing \% usage).

I haven't made my mind yet about it.  So far, I err on the side of too
few of these, but I don't reject patches which use it abundantly.

I personally never use it, unless I read the page and find some line
break ugly.  And *never* use it in manual page references (BR), with the
rationale being that we'll eventually replace them with MR, which does
that for us.

The Linux man-pages project now provides a few scripts under ./bin/src/
which distros might be installing (Arch maybe, since it's one of the few
that has packaged the latest releases already).  Among those, there's
diffman-git(1), which you can use to see the changes of your patches to
a manual page.  You can also run the script from the source repository,
of course.  For example:

	$ diffman-git HEAD
	grotty:<standard input>:(<standard input>):9: warning: unrecognized X comm=
and 'sgr 0' ignored
	grotty:<standard input>:(<standard input>):9: warning: unrecognized X comm=
and 'sgr 0' ignored
	--- HEAD^:man/man2const/PR_GET_TIMING.2const
	+++ HEAD:man/man2const/PR_GET_TIMING.2const
	@@ -10,7 +10,7 @@
		#include <linux/prctl.h>  /* Definition of PR_* constants */
		#include <sys/prctl.h>
	=20
	-       int prctl(PR_SET_TIMING);
	+       int prctl(PR_GET_TIMING);
	=20
	 DESCRIPTION
		Return which process timing method is currently in use.

(BTW, Branden, why am I seeing those error messages recently?)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--yhjqncr46xms3ene
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTQFsACgkQ64mZXMKQ
wqkSLRAApUcg9XBbgB6EMbMes2PV1dAz3CSD8VlkVOo1xLrjeinHnNYTwECPY8ui
kLLn2/CvWWSQIlg6qRuVaSEW2mXguFZEwMrwfsgSi6+UV7z6XEr1HNi8Vfv94ERe
cFofzy/Gju0XzgaBSRwtQCV7ORdokkp0y2UrCHTguMRTivs0PrtdtOLSq5fl2Brv
NEKyTCKigJmz7HtMpRDpoRgCYUn34/8gHYe3mGFvuF31nnchsAJslQzEEEe8knqv
Q4b6vy1gFtq9MkJp0dvgyPCwdi6yTuCgDxUprEvi0U2sl7L0/+lYiAuQSTC0Qz2/
ymZNGy3xY/4SOdAACUeXKN+xcew7tiH2dEU9CwicDImYqI05teodMnfdWlXsOprE
ssFlempeqkwFOFTK+1/gITDqKB9r0r8CtT+3e8j99zXcCFB7C4UkO048s9gdl0kM
nzSol6RkGL8XKemmKzaP/ySHAoENoexHRbWRazdavvrPWR4/lzIj7gPu10LyPHsI
zBsx7xkfybhi6bfQM1lnMZhPfozm/UKohJYp/FqjYw3cYZxHEuF7gPHtO/F6+E8u
7On6noAmXKkF3QerVXj24z59NBu8e70mDRdfDh88LxD+CyTOsw8Z09WdkM7eTR6g
hegwLig3AlCDCPE2VClY29gBu+MUBxUhg2Cq0k1XKeSUYXPRG84=
=FvMO
-----END PGP SIGNATURE-----

--yhjqncr46xms3ene--

