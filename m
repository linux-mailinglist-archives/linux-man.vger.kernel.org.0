Return-Path: <linux-man+bounces-999-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 294248CF413
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 13:27:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71E49B20B72
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 11:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B01B669;
	Sun, 26 May 2024 11:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnVy8BEY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A8F79DF
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 11:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716722864; cv=none; b=PhmN+7ypz2Z+mq82cniYVMlrgGagCfLo+r2gjGOJHo5ZzCczs5KBCrIRWkISrWgzZfRYkh2WnegoYq2OtkSImhreikoDz3deDzBPQdJkTCT5c5b2qW/eMRm/RBi/4JwZzCfyzKsH91MdGaXsUdIQL/KupHShg0GFqgNXQai/76I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716722864; c=relaxed/simple;
	bh=zz6+sqfLE37fygIYE6q+ngjKzPSkI0i7HpssTY0hcKE=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e6ME2QuNZehJxDBrmbkhB2REPD0IwdssACSFj2v99Cz33OJzglPCyqS1JRRKPt0G6AiILI51aUn9Xqf5MxC09AD4l67Pf6xacq7oYPNFt5piq4Wby1xmisg+xB2iS0C/XTHbLatK9SBy5UM6RNySp3BaOKIfdmrV0d0VjKnUP3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnVy8BEY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51EEAC2BD10
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 11:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716722863;
	bh=zz6+sqfLE37fygIYE6q+ngjKzPSkI0i7HpssTY0hcKE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=KnVy8BEYPrIBluRvhq3PX+i277DafzarvdVdJWmenWM9+OmXRFQpv9lhBtpMhJbzk
	 1K2MTNz3ZurvfUlDZb0yEIpZJ+BdC4Upmh8SdfjRD1BNinELlYulfTtg/w5tb38/UV
	 MvU0k0gFGS/LRiJeB8gAaXa93WXnKh6hq2RvXkhsoUC0p9RWu9T2tKIzWf2kzZpU1v
	 aDgoXS9CEop+8Cx0bZmb8frucpMkPaH/P6vb3P7+jUuvjQpmg1/o4SLd+3uutEVAGB
	 3PeWIirP6OEXJVdst8ec9WLU4HUmSsvvq9l3vbb5SjVph0ihJW4xFBqyMBY9qWhPcS
	 unzuGxymtPV4Q==
Date: Sun, 26 May 2024 13:27:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Re: Sashimi of prctl(2)
Message-ID: <ddbdyaiptesjalgfmztxideej67e3yaob7ucsmbf6qvriwxiif@dohhxrqgwhrf>
References: <eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vcitrxkpfzt4tc7n"
Content-Disposition: inline
In-Reply-To: <eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>


--vcitrxkpfzt4tc7n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Re: Sashimi of prctl(2)
References: <eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>
MIME-Version: 1.0
In-Reply-To: <eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>

On Sun, May 26, 2024 at 01:07:24PM GMT, Alejandro Colomar wrote:
> Hi!
>=20
> I'm considering making sashimi of prctl(2), similar to what I did
> recently to proc(5).  Another precedent is in ioctl(2).
>=20
> I'm still unsure about the naming scheme.  I've thought of the following
> (using prctl(PR_CAP_AMBIENT, ...) for the example):
>=20
> -  prctl_cap_ambient(2)
> -  prctl_PR_CAP_AMBIENT(2)
> -  prctl_CAT_AMBIENT(2)

=46rom these, my favourite is the second one.  Here's another one:

-  PR_CAP_AMBIENT(2)

>=20
> The upper-/lower-case mix shouldn't be a problem, since man(1) is case-
> insensitive (mostly).
>=20
> Any opinions on this or other aspects of the split?
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--vcitrxkpfzt4tc7n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTHKwACgkQnowa+77/
2zJTvw//aMVznoJgxy1qZRop2l2cu/8cE3g+bG5ArF+FdvWPB0Bq798S3YIQI7Tj
sDW3pExhY+w40wr9N1X81BuRO5i7fOjhhqAosJsRtLHHbK2GFOK6flEyf5jFlzF7
DlfKuvFZciVX3u5CVVk3HOKh9wSBrN3WGVjxOPtAxRkfu6GzKo2Gjsr/KTLhYl26
rNDDVaWpXucggUEkXWjojepQeiO8pwlc9bV00mx3anE3tejqMHmcRVXUy0/W9glV
bxUMjNJdJbMU+znBhoEMTtKuGI7kfNImlZYuU0arUB0kWWfN3n+EOE2ACAoMBFf4
3zt05Z0QtZ1Uy7l8zebKVyiGZTLcj7I/+eJUrbn+GUb5M+Owjf+CbV1Im0IO00Lc
kVtSdsAHwgFJ/uuGRvcIasN10vJ+ldr20/eEFeCLTDF3xqA4iJkT2s/wrzznFAk0
zeF3PjiXMPlxCGIsunH6GbsJAV8tWx2kjOl5ICQnySw46wmq43rmehumb9AwtvHV
J+1ZQ9RgxtOiNPL706o0MmLQ/cUo4CMMb2zW/XX/YV7fkkHXwfe2uuksIum0uH4n
DAnHFOP+ft3NrDIrsW3+onxUlxoDLPgc+00dftpwQT8GIoz1HeI4dPG9J/RrsHNo
9Tm//sK2uGFjchDR7Xl6HSR8PBfyaErjbtdlisQSy1tiQzzn4p0=
=G9kk
-----END PGP SIGNATURE-----

--vcitrxkpfzt4tc7n--

