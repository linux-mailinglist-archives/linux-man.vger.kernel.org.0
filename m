Return-Path: <linux-man+bounces-777-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A169C8A8104
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 12:34:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 429D71F22025
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 10:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037E6139CEF;
	Wed, 17 Apr 2024 10:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQSEJxtA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78E87F48E
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 10:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713350041; cv=none; b=cBHYzixijN8c3lejb/Qs45mvy1y4JpQ+LaI95CHnGjVN5afB3zhrEDCJzEqCi88+b4CHL/rDe/PFUpVMw7OBTOLOqo/Rgyi0b2X3WB8H8wHWEd1QyK0FDmY15YhYxqF6MsI9PgRUxmqVInnZwCipM0GNjuMLrpvpRCUWGUZc+No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713350041; c=relaxed/simple;
	bh=atN1GqGxtYLEDL5BPfBSZzDim0yjoYm8RuSsJazxRQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L2JQ3eozANCC4v7JYSRaANNRkcBYp+nFktGsydqCZ27pCEKtvLkxxKnrZ4vtbafFC8aIxOkPdlmjlr9CpPN6S5ruUQe3BSDr4HjFK2c1Am2C6eiL5GXld4cUOCWNSgmCbUKw8GkYJWZcTUgeI16YRHfvIvBAHMhKVI+JX7PH46Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQSEJxtA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADE4DC072AA;
	Wed, 17 Apr 2024 10:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713350041;
	bh=atN1GqGxtYLEDL5BPfBSZzDim0yjoYm8RuSsJazxRQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QQSEJxtAFvE8eKg2HQfkabw77LVVKarcYgy++U/KEa/8Kr6OjSJGyyvEVEwUd79ta
	 z0y96brRNEgXNmQH7N0aye1t9cZ9PViGS5VDQZsnX9+yq3O7QXfnU2Q7RCqpYGJMSR
	 pfrXdSprYzudxxwqT6xF7zJ8D1tPOg2RvCOKTyxTSSEi5hYUZqM12x8AjZ8wZZr7HH
	 55j1b2xAVrmw92AuCVszb66unMTIa3T1h0vBCcEadCXBl7vZWe8yhEati5s89wd5pT
	 JzHJ+6FQr8vYxZtlTh99+gokFMOvKpSBNgiD8NLuww+I2Q3yYmWEi0zB90KLNNd+yk
	 1uwNHmvl2osKw==
Date: Wed, 17 Apr 2024 12:33:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zh-llsEJE6qt85uS@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <Zh-cTQSZbb8z8W0s@debian>
 <Zh-csLhEDqCj4o1z@debian>
 <4799523.HlgaahpBl1@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yST7hWdfpG3oUCCZ"
Content-Disposition: inline
In-Reply-To: <4799523.HlgaahpBl1@pip>


--yST7hWdfpG3oUCCZ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 12:33:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Deri,

On Wed, Apr 17, 2024 at 11:28:07AM +0100, Deri wrote:
> [...]
> > > Now I get some new warnings.  :)
>=20
> Is it a secret?

No, but they contain binary.  Here's an example:

gropdf:zic.8: warning: Don't understand 'dup 0 11 -| =EF=BF=BD=EF=BF=BD=EF=
=BF=BD=EF=BF=BD=EF=BF=BDB4fD=EF=BF=BD" |'

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--yST7hWdfpG3oUCCZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYfpZYACgkQnowa+77/
2zIcTw//QkaX5+aGoLWZaNDyS94ZKqlhmwdhocxXwGAAw2ZOw4SUMl0ZreAJqjkn
U7P1phl+c52/+rA8KkMt2LwzWFXVnMO/jpd/FWyqgRs51ICSmi8SBpC54eYkkOvP
v/pr0G1LEo52wSUbsIaZgXCZLt+r/amVho9gK6bKilBw3fTK9dr6tzu9WXl0fqJd
8iFG5DRzmzFtZ7UGjDNziU2cmLq4u4C0DM1DzvDQy8YiwLgU+EJ4zPVZbG7dSiCq
Y6b+Q2HT94LPPFnCgPnsD808LqnVvoHP7af1W7tVu64JYIbyLP+lUGS5g4OVlFb1
0BDv7xXQxL04pmsuztYT2klcPSK2FtB375TqqleggGM0R4wTXOnj9HPxAZ1PhfVy
Lm7Yla5lnWaQhdIScvDL/D4piqXXENlXWb9l7tiBEfNj5y6JFrM8HIFnfnTyHcEs
+U5bCUcMLCw71fXos9f7Q7Eeb9LXsXpCAR2KkqTxNXQJ9gL0pjxINZksJHxqPXTF
JvNiKMAKmJwYyu1zeBwj9SpU8DghxzePOT8C7Wvuef8sdGl+XzNBNdUj9DhujJTP
qPqvm9egeOhw49jZC69w/5eICQFv9vHfNCo6hFxfK8vieN5LYd+CKE5QuGNFaIXi
iQk+Hg/59WOnpmdAS4aeCYSaXHrrWrIlxOLdWYRRgzV01ruN/Io=
=qTWy
-----END PGP SIGNATURE-----

--yST7hWdfpG3oUCCZ--

