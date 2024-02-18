Return-Path: <linux-man+bounces-456-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 343B7859796
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 16:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E234F281467
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 15:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0716BB44;
	Sun, 18 Feb 2024 15:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptrNF0BZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34FF1E48A
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 15:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708269522; cv=none; b=qGtYKnsZOekqa0cnxCOpy/t4Xv7ptbIZ1a0dJCLBvPpA0YvxC6n/Eu2ucsjgrdWnM2Dpi8EJ1ZxH+UZcWBk6VLquA6NdTIgPwXsHMiBH/kY3tyHYxgXND9lrBgmDUmPDwJOeTvUbzimywZ9ZdtuqZpkj+U/nTkZ+IQfPooCS1hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708269522; c=relaxed/simple;
	bh=vr+kcjOdKdnI4AMd4d/iNgHu+XvQXok8uamvdMvQsAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a6vf4MnA4aszi1gK1InlGTDFkni5iRiWuECD/dlctpOT83KVSyKQtfVmCzMncPPM7ph8BU+n4SYKH+qTEcqJd6XfGUHnD2qtGoV0Qf6bSLaeJk2JaHbKIR23MHHXE7P6Rw26IX3qZqMjzum7tGq9boQWZjsIGrRB4RzaNdw+yFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptrNF0BZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F7DDC433F1;
	Sun, 18 Feb 2024 15:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708269522;
	bh=vr+kcjOdKdnI4AMd4d/iNgHu+XvQXok8uamvdMvQsAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ptrNF0BZ/Y05A2s+TchNmddhxRxe6t0+80TaPPPJZ5zHG5mc5Mcilp/Kc52ha1zOk
	 lSr1ZJwg6Z+/8oWG/ERtEGFitTJDhejwLi1ibbiSYBFoajgI2SwXWapdomg7pWfh/3
	 S6ew7B/YOfpZJRjjbWXNLE4b7pzvjEVdiPM07unrhJBUxnoGLPpXzoBcOxo2PDSjpC
	 l6oL6QtNwbA2FlddWK+OZ61oYPmg10D1NE2FIib4uXMx4nmfQayzDyyY0q1iFEDM5E
	 TswWvOenKsmtBO5m4EjGZ7HjAie6pqSC/2WOiF0Suu7fsalHi5bMjg/aEBDlEbpiez
	 D6ZH2sxFvED1g==
Date: Sun, 18 Feb 2024 16:18:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Mark Wielaard <mark@klomp.org>,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: man page base paragraph inset/indentation (was: [PATCH v3]
 close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS)
Message-ID: <ZdIfz7lv2Dd9YaVG@debian>
References: <20240212120704.1638500-1-mark@klomp.org>
 <ZdFY3PwhYhhIlUIg@debian>
 <20240218120035.GE16832@gnu.wildebeest.org>
 <ZdIBa2VRKK_06f9X@debian>
 <20240218141447.q34tghthp7d4llpg@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="USsbLbaG5Aed9Y07"
Content-Disposition: inline
In-Reply-To: <20240218141447.q34tghthp7d4llpg@illithid>


--USsbLbaG5Aed9Y07
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 18 Feb 2024 16:18:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Mark Wielaard <mark@klomp.org>,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: man page base paragraph inset/indentation (was: [PATCH v3]
 close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS)

Hi Branden,

On Sun, Feb 18, 2024 at 08:14:47AM -0600, G. Branden Robinson wrote:
> This rendering parameter is now configurable, of course, to accommodate
> people who prefer the "old" one.  So when generating cat pages, doing
> diffs, or similar, you can pass the following option to GNU troff(1):
>=20
> -rBP=3D7n

Nah, I like 5n.  I could use -RBP=3D7n in the build system for preventing
errors like this one for the time 1.24.0 is not a thing, to catch those
formatting issues with `make check`... but I think I prefer not.

Do you have in mind a date around which you intend to freeze for 1.24.0?
Mind the time it will take from a freeze to a release, so we get it in
Trixie this time.  :)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--USsbLbaG5Aed9Y07
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXSH84ACgkQnowa+77/
2zL2gA//RBcurkctoXKIWNUG3Z5lD+7qSrE/QXiCgEMtO+DAiDC6L0Fd+9x8FSgF
CToswI0HBn6NhZhs+ggAtDcbCQXSVe3IFss1J40WV/J7XpnLGqKgpCUennyWHOUy
TWQEbffvQTRRZsMFezHltpt2DWElK1GCjRK3pA+9lFxlYpmSiakolHdlougPw/L2
0KpjSmhmjt2IIcRCJ/pjpA0x6GFq0clDzqDEzEgn0tYYihSo5YPV9mnuwbDiPdS2
ISf0Q91JVXeQhxKpc7F4XAwpFxpFaR4efNqY9kmXbGP/7HFRgFGLVHMIydXYfULR
Q02Op+mxPOljgEO5RihKcSKrWp6WNup9H+aFGVvqM1Hq7WmTsvSMxQBrokstwTjP
d1TnIFPb+ZMnZlRFxZ+V+eX2uYmBsxB7/hPE9NYedEyFYQTNGmhAGALw/cosvbgx
AY6PhEnh/TdtrDKB29PxtXXF4iKXtnQ1qLl6hE/ST09FEYxwqQps4kvXxqcUtQbl
9Q3//T+CvSuIXcddYEk6TlQK6s2UnvnjPstv9aBIyZd+O9agZHzh7tHQQgqbLhAq
GAN/KlgfFvoGm/eE4ce4cjTYwxRrABrVrbYC14IvcF5c9+SJGJpprPo3BiBgWXeW
wmWAoIcKFq2IayAFwblA/CJfKv+TVj8isLQ3W61VgNaO+DAVT7s=
=WSHj
-----END PGP SIGNATURE-----

--USsbLbaG5Aed9Y07--

