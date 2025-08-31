Return-Path: <linux-man+bounces-3788-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FF3B3D482
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 934A716438C
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02DC2629F;
	Sun, 31 Aug 2025 16:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="B8pLJGoF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99004315C
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756659204; cv=none; b=M3NaDftSOqrNKXA37rCDd1/yHciJzbUmCZIpSXMwluB02qGaTKCaKF6uMYsMvJoQKYS8g343KcLj5VW2bUT8wVTYbNzViSOBwNW5HYvpPKIsJoh3DYLzl4BtcRMDw9r+qKYx8Fw4r+cetyr2sG7SfQDUWdzMBBIlEOLcXXGnzRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756659204; c=relaxed/simple;
	bh=BlQqFR08hDQjRVEhegzVxUwemNm6S9lOlj21Cy+xYsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dj8Iof3y5Sr4PZ65AEthQC5sLCWMMmipJZFB2bXauiSa0wUSNnhWFqIzwzzUOaM7P8/por5pM55S0A48REeGY9MV7z4vgbA+Ei1D+RYBokVrLNW6vtfjIJRKm4pJPoxuY5bxUJv9SJKza/4woegC7ZJe20XUrkLv34tMcMhQ5XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=B8pLJGoF; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756659200;
	bh=/0glUWtq7luSMSoqf7h4Dq9RvoTWcJmy8BTD0woNBfc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=B8pLJGoFffCk3FQAts8CWn4S+5OkLMZn9+Qf1tVpaQdTJeck/M9k8BUipA2vXdg+Q
	 WriIzW67mZf3Fu9yAvt7gSZgXcsrtpnqh3ggZe4V8f/6QaMFPwwRQizrydaJAxZSqU
	 m9+FaCCtN5OcyxMV1MEdQhy0caEWWc72d18IEEysbbQz7vjqWiuHPevnAyVp5fgrVE
	 c0GqM5QHDm9aRkF+UpBHL9CQE4f/KB+X0OZvPGRUEwfyuhJL9KYlfVBUUDzdgt+UG6
	 syKwuIaNxb7BzoE56pdCsjL9cgsNxrGJX7jmxboBvl7ve1U4EPafzcmU7xQfRcXOJw
	 /KP/u39200h3Q==
Original-Subject: Re: Issue in man page getpt.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.0000000068B47E00.0025E9CA; Sun, 31 Aug 2025 16:53:20 +0000
Date: Sun, 31 Aug 2025 16:53:20 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getpt.3
Message-ID: <aLR-ACFjZylDgN8n@meinfjell.helgefjelltest.de>
References: <aKsmSaMGovnInrf4@meinfjell.helgefjelltest.de>
 <oa6mzyidr2664jmviev3tejy5mfngoz7zsblk2gybi5w7az22o@2pscshkovdba>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-2484682-1756659200-0001-2"
Content-Disposition: inline
In-Reply-To: <oa6mzyidr2664jmviev3tejy5mfngoz7zsblk2gybi5w7az22o@2pscshkovdba>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-2484682-1756659200-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 31, 2025 at 06:36:51PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:41PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    multiplexor =E2=86=92 multiplexer
>=20
> My dictionary says both are correct.  Does anyone know what's the
> difference?  I guess it depends on the country, but I couldn't find
> which uses which.

I only the the latter, but I'm not a native speaker.

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-2484682-1756659200-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi0ff0ACgkQQbqlJmgq
5nAAuxAAqw+YiycdmrHNPnVCez4a4pbDszXJbSi+oN3yaIoiA0UeWl7sCys57sZA
vbhnEvmcvP23VXwJ+uQnehTF34e68sW4wPtnn5GdTzQn06LdasQ7+VP0omnnZxmF
n+QRf5aQvErly1UYMcWPWA/TJs9w5WWcQJkmjoK6H/lvy3tpYrOlNMOpE7VAuY7C
L80I3LVb217XO0RkVwBGXlkICYeWPG+wbQgPm44zZxMEbka000uPB4us69WF7FoS
olCAq6Wl9pB5R4QlMKs4puxouQsmhK1xQPQgoU/biYIPlANikfThDsrYgZqMuNWv
V+GpitMms3i0Kw2LvlZQJFaHvKWP3iVSLcS8Q9JaPZEKeVQdSaIl3SUciWoRgir4
an6VEeK7SsWcusHrowxSMXUepsWtjsbBuYLx5BRIRFftRKPU1JufqE9Y+0MRsgQI
MzZqlgJvnf+wy0z9VghvmNuKEHtKQtYkuxy6qpzq/+u9U3qYGuMaMj9BlbG/T0pX
jcr17ocpUjTtTC87fvM5+W93Gd/oIwM+vmKauY4lYiYv9Xo+b4zMuvUX32BvOJlt
HOtViRRgHMiwMQ4pVkbySA1LHjO9Z9VJhmhhVxDgKelQDy5rdBP7ht8cFctxRAnR
hzSVJ84MmY1YjzpPcxJstEvWNW86Q9sG4pZCjPfg13gx+PL9E/E=
=KkAu
-----END PGP SIGNATURE-----

--=_meinfjell-2484682-1756659200-0001-2--

