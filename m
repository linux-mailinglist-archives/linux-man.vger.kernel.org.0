Return-Path: <linux-man+bounces-194-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B27977FFEAF
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 23:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3D021C20AFD
	for <lists+linux-man@lfdr.de>; Thu, 30 Nov 2023 22:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E760059174;
	Thu, 30 Nov 2023 22:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw8GiCmY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32A15FEE3
	for <linux-man@vger.kernel.org>; Thu, 30 Nov 2023 22:45:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5A1DC433C8;
	Thu, 30 Nov 2023 22:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701384310;
	bh=Upu7m53J/EGjnNawkISAFvg5LlSwEqmn5tMoFmriI7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gw8GiCmYF9MF38yNaQ/hDUmdZDXtHKWicVte5dtusjQfTuZZWqYj1CeoQ8F2V3j7Z
	 Y4UjTrPrkqSSJDuSFro8NZKTNnj5OJjLIhTXrv2AP0OhyB0YFhI1HEWpLSoPcGomMR
	 dTWG1zL+DyPLKRPUDZ7IREVwL7w/Gv6QViOg4ADBCM1EqXSlNoZ4YvbYygjRJDcnEj
	 a3TsT/UERztnv3iGgtxzJIcuT4F1BCYJIPY99CRZCEpCvM57PN8qNLP3Uv3/VYL+x+
	 x15dm07JxI5ChbNPuiI3tpcFPbo5EKHzKCzHRa/iy+BxLdhQNgkY9rmNpkE5dGWGCc
	 KvL5KRmNbUeow==
Date: Thu, 30 Nov 2023 23:45:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Florian Weimer <fweimer@redhat.com>, libc-help@sourceware.org,
	linux-man@vger.kernel.org, Iker Pedrosa <ipedrosa@redhat.com>,
	~hallyn/shadow@lists.sr.ht,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strtol(3) setting of errno
Message-ID: <ZWkQcuFmRe0eSDaR@debian>
References: <ZWhUR9AqoSLKeT46@debian>
 <87cyvrv4bl.fsf@oldenburg.str.redhat.com>
 <ZWiCsBkRpOLEc1Y3@debian>
 <20231130221301.nteiaukktf6om6un@jwilk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dluxFMjOAqhe4yav"
Content-Disposition: inline
In-Reply-To: <20231130221301.nteiaukktf6om6un@jwilk.net>


--dluxFMjOAqhe4yav
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 23:45:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Florian Weimer <fweimer@redhat.com>, libc-help@sourceware.org,
	linux-man@vger.kernel.org, Iker Pedrosa <ipedrosa@redhat.com>,
	~hallyn/shadow@lists.sr.ht,
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strtol(3) setting of errno

Hi Jakub,

On Thu, Nov 30, 2023 at 11:13:01PM +0100, Jakub Wilk wrote:
> * Alejandro Colomar <alx@kernel.org>, 2023-11-30 13:40:
> > Since POSIX doesn't specify, I assume it allows setting errno on
> > success, as with any other libc function.  That includes setting errno
> > on a successful call that returns 0.
>=20
> No? "These functions shall not change the setting of errno if successful."

Ahhh, I missed that text.  Thanks!  It means that a simple errno!=3D0 is
enough (plus the endptr check), then, and the current page is correct.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--dluxFMjOAqhe4yav
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVpEHIACgkQnowa+77/
2zJktA/9Fb+FZoVgFHzxEPs7O2E+TwwjO79ef8SbQlbIzjNG4gtiA/5qKNtV0Vr/
LFEV/RywpqGIizBG9U9YQK97cYadvHkw4xplR0MEZv6UckpvHOtsu1XcMKxWav/i
nt0uPT9RVCaC/HCywxzSUDkva/XxKmpY1A7oSl5F2ZxlpsKs+Cn9SjKdjjG/ia1+
+PDgv/El+FgCHF0p0w5ZSKnIOrns9ONB92lNbl6wtKfksp0kBTWljgejptIUlnl1
PoKcApA+mlEfBML15ftnIk49JLqaXWwSrB847in/g+GNlHF/btuqdkBkNznTIxgu
oId3O2S3l06R0D6T4aHRoPytDkM49WTUe4l6aDfcOwIM+C3fACi6wLIcMJhlVH22
ULlCjkMKPLHiASI2Xv9UMlMMlE/iVtgeIE4YBhrXtrGfEwk06ror8urO3b23STsx
dZ6EuUrLDEx8+uzg5uGBPt82txhiQo/fWi+nFESpYLe+gWvOjgEY01wXYR7BsVZb
gIPEaNtpNZpShxhvp3dszvUcns+SVdoN5B5PHpKXqqB7HyT9bIn7rgupk4W1yj9G
JVOFu3UjEAkrUx81hF6usiaaYusBmXQcLaW/BiKePOxoXtmZPRCc0MY8B4S+Cu+C
CP+NrrbT5t/Hke10kuG5AwxJ+c58JF6VT7R/VmViCI9ZCC2WDtQ=
=NAYI
-----END PGP SIGNATURE-----

--dluxFMjOAqhe4yav--

