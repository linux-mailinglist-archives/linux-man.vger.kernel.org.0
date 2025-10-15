Return-Path: <linux-man+bounces-4137-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B16BDE77F
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 14:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 31D344EEDD8
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 12:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5BB2326D5C;
	Wed, 15 Oct 2025 12:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfFIJOKS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831F72C21FC
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760531364; cv=none; b=aWvRHpQg/7L4pnHgL2Kp4fkrg1AVaGyCEJPy9lXbYLgjawxXNj7zV8g2Ld2tCC8yXg/DD3h7v6qSReVH6hfK58LtvnGyp9Bk9cWYyCZZI4JBN91ZEoMp2km+HhuAm59+smDuk0p4M0h7u1mNlXA+BAGohWyLSzQ//yPqcNil6s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760531364; c=relaxed/simple;
	bh=Qhm155KxlYzFWokNq0W8WXtwFCpQkhsK7khb//ylpgQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OeU7iPtW5yxM0z2s7aEVzUDOwdg/SMpVrxATvzfrUSh1Z7mjNhA9P2yw4XOlKDVMHkl16X0Wf0QBUqB44K44b2H6n1Xtsmcwtpk2/Qj0elG9aZNPed/YTZo9nxnmWhmSBDg8l/G5KNx+cCigIYV9B3lyKz572oYoEhiHHQN2U3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfFIJOKS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02314C4CEF8;
	Wed, 15 Oct 2025 12:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760531363;
	bh=Qhm155KxlYzFWokNq0W8WXtwFCpQkhsK7khb//ylpgQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nfFIJOKSsw1NFtn0c+J0fAoRRx2g8ceRK93fF+Q2cgdhhPXFc1Ajsyr7MRSw9b2Ed
	 e1Z1TmnG1muQNqbcBW92DJ+OHxuGAbo2p0RPK/bif8ZPyrM/A6eQFTdpuySGB/9cUq
	 SwR4dTwUAoi/8VTuKFA4NYu3aclTkSNuLWiYPftbv8/YVMtwqJDkKfIsIMuucwZ4wE
	 17gEIylTiEM7lBk6UEctEt5JSYETyvScLjv2go6GyteCYr73pmv3TqVKHOwEpplDm4
	 mYiCHYlnnTghEenlZDC8eQ1KxA7k9CEFZSy/qmCiIgs6Tgm9l6NpaOR6vqe7khtWob
	 JxgzH2qY82zFw==
Date: Wed, 15 Oct 2025 14:29:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <xxrcp3p7mb6defk3thmz5jzyrx3gbjysbhvz532h7nkv3ssjia@l74mrn7lgo3q>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ixdkivgdyorz7qec"
Content-Disposition: inline
In-Reply-To: <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>


--ixdkivgdyorz7qec
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <xxrcp3p7mb6defk3thmz5jzyrx3gbjysbhvz532h7nkv3ssjia@l74mrn7lgo3q>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>

On Wed, Oct 15, 2025 at 01:21:03PM +0200, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
>=20
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>=20
> Hi!
>=20
> I changed obvious wording, such as replacing the project name.
> On top of that, I removed a misleading sentence:
>=20
> 	They are capable of providing good assistance if you are careful
> 	enough, but we can't really rely on that.
>=20
> I don't think it's possible to be careful enough.

Ah, and I removed the reference to LLMs, banning all AIs in general.

>=20
>=20
> Have a lovely day!
> Alex
>=20
>  CONTRIBUTING.d/ai | 42 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 CONTRIBUTING.d/ai
>=20
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..92d5d85d6
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,42 @@
> +Name
> +	AI - using artificial intelligence for contributing
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created with the assistance of artificial
> +	intelligence tools.
> +
> +    Concerns
> +	Copyright concerns.
> +		At this point, the regulations concerning copyright of
> +		generated contents are still emerging worldwide.  Using
> +		such material could pose a danger of copyright
> +		violations, but it could also weaken claims to copyright
> +		and void the guarantees given by copyleft licensing.
> +
> +	Quality concerns.
> +		Popular LLMs are really great at generating plausibly
> +		looking, but meaningless content.  At this point, they
> +		pose both the risk of lowering the quality of a project,
> +		and of requiring an unfair human effort from
> +		contributors and maintainers to review contributions and
> +		detect the mistakes resulting from the use of AI.
> +
> +	Ethical concerns.
> +		The business side of AI boom is creating serious ethical
> +		concerns.  Among them:
> +
> +		-  Commercial AI projects are frequently indulging in
> +		   blatant copyright violations to train their models.
> +		-  Their operations are causing concerns about the huge
> +		   use of energy and water.
> +		-  The advertising and use of AI models has caused
> +		   a significant harm to employees and reduction of
> +		   service quality.
> +		-  LLMs have been empowering all kinds of spam and scam
> +		   efforts.
> +
> +Caveats
> +	This policy can be revisited, should a case been made over such
> +	a tool that does not pose copyright, ethical, and quality
> +	concerns.
>=20
> base-commit: ac6f5c32b3fae7549c5a42d96a3273adc24e5023
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ixdkivgdyorz7qec
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjvk5kACgkQ64mZXMKQ
wqlOzg//SwljoYXp8pnOfQDQ2jREHdb1cvc8lHLmiwIzEykOvKfJJK4MyYnNmlVZ
rbsCG/kYqJD3YzxKXKCH39kSJjWAdqC7vM7JF/xOfU0OLhi+Zd4KAgIhpOhXmTwm
Ov0KiVTS1OBHoaeE37G3myH+lyslqxfFDaTx/wk5CArU72lNP6Jn8IbMM8KNnxLY
qiylfA1V3C9UuJNTWpMYxhMYV/2vjQkIN0pdbFN6B6Jpdd9nE9wQDbcDLX9Adken
/e5yQ5d3OXSbGgaYA2QJ3S8JRQ8UDKSQrxcz2BAB0WNSh8+Jt4o7OE0cqdF0D8wd
C2wYqKpqshMlush1gT7I/If4iFQ7fVr7a4iTk4ieLcKOpYGHeJV/gndwyzPoe1Nb
y8XjIpLxfkT+TlmVIp8FU9K9RxGoQ3M/heWnX27+RwGcIG8JhiC0STU2EZDtBiHT
whvJ55f+nFG145x/jA4G15NSY6DikvcMiVjOYSqVwfO80va9p39CrKeANcD5LvhG
Or6R8bgAVjgT9fR4OepJB5djfDIilca3CG3FdED5UedqQqZaSrZPUSfK9a329zzV
eeP+StXjyqMUShDCYliTGIqD3MR8BM2AciaA1tSx8DUBKSuZ5coP0bgbyvWInjVS
qYBDiYJcxRW2eAS0Q/RnVwS0t+op1Q65EBuWLnLHkBWgoEr4L8w=
=x27v
-----END PGP SIGNATURE-----

--ixdkivgdyorz7qec--

