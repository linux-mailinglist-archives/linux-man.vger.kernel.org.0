Return-Path: <linux-man+bounces-4128-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 337BABDB987
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:15:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F1531925C9C
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 22:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2843E2DE6F5;
	Tue, 14 Oct 2025 22:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFwcmfAX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC2F1E3DED
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 22:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760480143; cv=none; b=Q4nVpgRdhRdJLjg8kPf6aUsES8Rsiz+akkgJy5laeckq/8OJWxYg2VC11QOC/i+ds8B4/ljUUmGtS/5Ls+hzp/WZdq5Mp3GMGGFD2rCVPRta7u6Ca9hKvyqsqseiVjqXfwDoTEuQs7iV9P6yakJhaYGHNBxeKFrI8fMBSrtjbRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760480143; c=relaxed/simple;
	bh=v5RvYcB39+5chEmORgspp5haVZqfuqSdblloPIMyuMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EIfFdd1Tnv8yUGrM1VYfPrh88YoezofrH/kSOX8XTu0S8DZjNGLjTQ5jQ0pqL5LrxeakveI3Heo3r6dcZUS9m8CPa2UAYC2+kk3Wk0VlPbFJk0NQ1JBdT2/85xVRBd00j4TIhDLwXlCbd+iYn673syFMSx4szYcEdcnYr7ht7Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFwcmfAX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C48E7C4CEE7;
	Tue, 14 Oct 2025 22:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760480143;
	bh=v5RvYcB39+5chEmORgspp5haVZqfuqSdblloPIMyuMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hFwcmfAXFUOLePBuKDSBBFMzmdusaQCG2MDdBLCdn4G8Vgb5GRNgHNi3nQf004JEN
	 oHHITDzheARn0CDncFwIVDdwMFamXE5f5sYZCvVvSsuJXu42yGw7oFfhEGDKrqYGUu
	 yEf0NZaousij+rd9pONIH9DIcCZJ7AbN1Y643qVmayHSZ+KkY9SogHvR+vzGYx6Sk7
	 KAucKgddpLaL+svGBMlc6Y8C1iQagQxrGDXIZsOC+AWNdsASvn/VoPgi8u6DekutsB
	 FcreVEu9wN5OnS4Rc6SrB09V638QfXyjedxln2ZQrfGDpzX57JYnpmOycWjnyqqOyQ
	 TrhKRP7XmhGbQ==
Date: Wed, 15 Oct 2025 00:15:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <qkhl5lirdusce4fgbei243fklzzkmmct4okcjobeddnozkdrip@fv6xh2a7lkf6>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5vmzeqi4muebtctc"
Content-Disposition: inline
In-Reply-To: <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>


--5vmzeqi4muebtctc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <qkhl5lirdusce4fgbei243fklzzkmmct4okcjobeddnozkdrip@fv6xh2a7lkf6>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>
MIME-Version: 1.0
In-Reply-To: <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>

Hi Carlos,

On Tue, Oct 14, 2025 at 05:54:41PM -0400, Carlos O'Donell wrote:
> > I've already been DDoSed in my own home server by AI crawlers (which is
> > the reason I decided to move the HTTPS server to port 80, just to break
> > links and stop the madness.  I could install Anubis, but I'll resist for
> > some time.
>=20
> It does not logically follow that because there are bad actors we should
> ban a particular tool that the bad actors use.

It's not the main reason, but it's something I wanted to note in the
discussion.

> > So far, I haven't noticed any contributors using AI.  Probably, the
> > combination of relatively few people contributing documentation,
> > combined with still working on a mailing list, has helped us avoid the
> > wave of AI contributions.
> >=20
> > However, it's better to take preventive measures.  AI is entirely banned
> > in this project.  The guidelines are clear and concise.
> Why?
>=20
> (1) Document intent.
>=20
> I don't support a ban without a justification.
>=20
> That justification can be on moral or ethical grounds, or even on the
> grounds of energy used vs outcomes achieved.

Okay, I'll add some generic justification.

> (2) Document acceptable use.
>=20
> We should also talk about where it would be acceptable to use such tools,
> for example could the tool check spelling, or grammar?

I explicitly want to disallow such uses.  I think using AI to lint code
(documentation or C source code) is dangerous, as it puts trust in the
AI system to find issues.  The AI system might trick you to accidentally
introduce typos or bugs, or it could create a false sense of
correctness or safety.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--5vmzeqi4muebtctc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjuy4wACgkQ64mZXMKQ
wql75RAAl0c312rwAUylmBJNpFDDoIy87BmrsYO/enB/SmmKnEpHcfElbpwOzEBD
t1RHYYIiz5awzRv+FVcR/7U7ciNsNElF9u9XwEh1EL5TKcB4dI/HpMdwyoWLK/hm
8MEk7ABeMcKgB75OBt3wcorMatSh1gLUYeTRalAtoCUYZETFjwJyTLoG8cDY3suR
Pdpb36Y8ng1SNNwWjJP0zT8dg8n9Q401zu/4AblxYpM5UIP8fHqXy/4JscIK2wWq
gEUzetqLPkzkdwm2a2t1T+qpwqOBuRszuXaPn86+Axs6ipFQCSedOa85HjzPH+zX
mvICDVXtF8PYkC2reThXOqm/L6pMik7YPJbQ8ezJKnL7v6AWDsfk7BeCLcJHxlZR
saxX3w0HfbCPwuRz62TJsMU/a6TF0OIdCYAyw9UNIS1AWq+73Mg1P3XACHLQ9xyu
Bpvq/EAXNFszWDKT7CteuqDArMnHkJCWyqmjPERJfrDQjgRNODoHrQ7botm02o0l
PUR3Ko3j93F5/uGaKzTMmXpkYPVK+wg2BjHq1Xaibk8eyfYDWxnHpzJVK+zHvE5e
CLdFZwM8UGxtpAIJQOy0b88kSTB8y6I5adEwByutAOnu/1Zlst1yMtFN1sf9csoj
d9OedVcaZSCVvo++JL2f/8VhSWGGjzyGvhHuUh2KkKvX7qAuh6U=
=fO8I
-----END PGP SIGNATURE-----

--5vmzeqi4muebtctc--

