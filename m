Return-Path: <linux-man+bounces-2038-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCB09D06AB
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 23:27:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC5CB1F21918
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 22:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341931DD880;
	Sun, 17 Nov 2024 22:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cc44fYE0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E765D1DD9AB
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 22:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731882439; cv=none; b=mT/SFllBVgNlSLLuWal/wJcpoJx2y3V/bmru+wQ0pJp99enNweVUILxcZl+rrI4trO/s4/fvXMAXNFLmcYgF5xQb2xZV5cdIqAhrwUHeyYwi+XflabqZAPhBD3yzOoMFPuv6wQ10Fh0mdHPUNfOAlVa3IrUPV+1t2DjNZbDi+0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731882439; c=relaxed/simple;
	bh=xKcGX+6ZZj0BsLQbmcxxnJc5vjusSHmG3SIIpO+qQSQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zap6Wv3ySvEPRrmHdcsQjxY6t5NGa+gdg+7jHXAhjNv8ljzv/krx4i14hAs8fQRpoxOQHlI5Z50itKdyB/NEJevA297S7/LeP8UJINfN0jg4ZwmNWvx2UncQ7s/EjoPwF+f9ievXK760Ns5Pn/NiNjjREqFOaNT6sGt2pvgyxC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cc44fYE0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24B0AC4CECD;
	Sun, 17 Nov 2024 22:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731882438;
	bh=xKcGX+6ZZj0BsLQbmcxxnJc5vjusSHmG3SIIpO+qQSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cc44fYE08dTwSmLp/waiHbnD+0sTWbXML9c9ZRzt6ETqdkpUf58qoxY8iXqm1T7Rj
	 fUfHTp9Y7ly84lI5WI4q5rq+nDvOOwxqX2V7N44FfquxpoFf7TtfEjEjB2bCp0RebT
	 G1kd/Pnwya7dfuqEyhThyDi+56z3+jupiUzJxykWlwR2XFvQba2g4mOJjFeG/CSTfM
	 U2+Tex4lx7n+5tC+zm44T5uNIM1Y7+coRBNN2ukpGTTROhvNtzYU5F8LEk/jdWLNnx
	 nGE2LbWxBSiCVffddVEsocXuE6E7QSiIy12ntKXaaQw/XqreLB6VioLi5r7Yu8EzZ/
	 1QRtxhwiaD01Q==
Date: Sun, 17 Nov 2024 23:27:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Jakub Wilk <jwilk@jwilk.net>, "Michael T. Kerrisk" <mtk.manpages@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <7elpn3pm64eppgssdjxww26rha27p5sgvaaan52yuklxa62byp@d3wviepzambt>
References: <ZznJfoZZNXyYl_K-@meinfjell.helgefjelltest.de>
 <mkpssyao4vvayy5w4ezm7hakazt4qsliay2x7lrjexe2tzpvck@uuqnjwizw3ex>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jfutc6peposcot5d"
Content-Disposition: inline
In-Reply-To: <mkpssyao4vvayy5w4ezm7hakazt4qsliay2x7lrjexe2tzpvck@uuqnjwizw3ex>


--jfutc6peposcot5d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Jakub Wilk <jwilk@jwilk.net>, "Michael T. Kerrisk" <mtk.manpages@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <ZznJfoZZNXyYl_K-@meinfjell.helgefjelltest.de>
 <mkpssyao4vvayy5w4ezm7hakazt4qsliay2x7lrjexe2tzpvck@uuqnjwizw3ex>
MIME-Version: 1.0
In-Reply-To: <mkpssyao4vvayy5w4ezm7hakazt4qsliay2x7lrjexe2tzpvck@uuqnjwizw3ex>

Hi Helge, Michael, Jakub,

On Sun, Nov 17, 2024 at 12:21:03PM GMT, Alejandro Colomar wrote:
> [CC +=3D Jakub, mtk]
>=20
> Hi Helge,
>=20
> On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    mount point =E2=86=92 mount ?
> >=20
> > "The propagation type assigned to a new mount depends on the propagatio=
n type "
> > "of the parent mount.  If the mount has a parent (i.e., it is a non-roo=
t "
> > "mount point) and the propagation type of the parent is B<MS_SHARED>, t=
hen "
> > "the propagation type of the new mount is also B<MS_SHARED>.  Otherwise=
, the "
> > "propagation type of the new mount is B<MS_PRIVATE>."
>=20
> I still don't know what to do about this.  Maybe Michael has an opinion.
>=20
> For context:
> <https://lore.kernel.org/linux-man/20231101162310.u4b46gii47yjhsgt@jwilk.=
net/>

We finally have a solution to this report.  I have pushed the following
commit to my server, and will tomorrow push to <kernel.org>.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfbbb5b3100f38721911f91caa4bd1472213649f8>

	commit 842920e7c877c93f0bddc17d4fa1710d6ce46330 (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Nov 17 23:16:59 2024 +0100

	    mount_namespaces.7: Use correctly the terms "mount" and "mount point"
	   =20
	    On Sun, Nov 17, 2024 at 04:12:24PM GMT, Michael Kerrisk wrote:
	    >
	    > A "mount" is a tuple consisting of:
	    > * a mount ID
	    > * a source (e.g., a device)
	    > * a target or "mount point" (i.e. a path name)
	    > * the ID of the parent of this mount
	    > * other stuff (e.g., options)
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Cc: Jakub Wilk <jwilk@jwilk.net>
	    Acked-by: "Michael T. Kerrisk" <mtk.manpages@gmail.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man7/mount_namespaces.7 b/man/man7/mount_namespaces.7
	index 75ccfc80d..a1645e9e2 100644
	--- a/man/man7/mount_namespaces.7
	+++ b/man/man7/mount_namespaces.7
	@@ -985,8 +985,9 @@ .SH HISTORY
	 .SH NOTES
	 The propagation type assigned to a new mount depends
	 on the propagation type of the parent mount.
	-If the mount has a parent (i.e., it is a non-root mount
	-point) and the propagation type of the parent is
	+If the mount has a parent
	+(i.e., it is a non-root mount)
	+and the propagation type of the parent is
	 .BR MS_SHARED ,
	 then the propagation type of the new mount is also
	 .BR MS_SHARED .


We finally have a guide for differentiating mounts and mount points
(thanks Michael!), so if anyone finds anything that deviates from it,
please report it.  Thanks!

Cheers,
Alex


P.S.: Michael, is this use of your addresses ok?


--=20
<https://www.alejandro-colomar.es/>

--jfutc6peposcot5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6bcIACgkQnowa+77/
2zKA+g/8C3b+h9eR8VkvMEIO1GZK/vQfkNnKwzOIJAjHWKJ/Hwckk0uvnIJVh/qW
A7IUMKsWKcqZ4BhCFL3IHcxij+GBnKP6sYryhkiVQ2JfLlTnFLBwZcE1c7otduRz
ZNZrUSBOMjgQ26NFqsEnlsgWsX0h74Un+sYlYvMSVNrjUt53MWfZuVRUtHaIVjlt
6kYhLV4HUf3gXypYjj55qA0NgSouYTB/nO9XP9emCfBdtVBY6/wdxZfIWRsIK4U9
n8fLB25Jku1OZ6GmwxRLXVOpomvHiYBP6xh26//YJn925gKHZTO7fZTdZFpy36vX
joeu/jcXVirlSfZuXhlUY5nkTS5WTb/+JdoE57rQMcAMCapRE7mi9gCMTEr2jpzb
0F7Hk3xcdlytZ7gdytbzm8svNHPD59Badc6a5JX5DdI8f/7XMxURUKzSgM2cElUY
XBaY8expTAxU4iCltEo3Vh7Ijp4BdRw51fQvKzy7ljt7z3uNE2Jqyqwbc4lz2iqd
vT3RuTi+pJ41fkLxquaihdStFw9mWP96txbVCGttv9smVpy6B/laR80EoX/eyDIz
boCM5LVb5h/lSyagjgsoUIqCYS5Z3qz16yqm3FCJJ9ig5A3Q86uXmQ+Ymxa87rCk
aEZ1x549kcvZlSFVinJ/45zUZjZ+q289LHV2t/N2IgTNdn3V+AI=
=q4d+
-----END PGP SIGNATURE-----

--jfutc6peposcot5d--

