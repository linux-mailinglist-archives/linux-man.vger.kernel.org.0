Return-Path: <linux-man+bounces-2016-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8849D046C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED2721F21963
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F8BE1898FC;
	Sun, 17 Nov 2024 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qMQil7vs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D701CBEA4
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856054; cv=none; b=RTvJTJIDfXS1GZ+iR1shC2AhbLX9zeBEu6Ds1/B2XrWGhYjZr7rS+pT0CwpkeVQWvzJBes3Q43GHWo75dqVM98VBKZIaQVCUSAGPlJjOJhvtLjpSHmX3oTo0knTI/LgbXFlSJIQ5M6H1skPc7eaADJHmUXDU5F++p2dECX+2tCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856054; c=relaxed/simple;
	bh=/flF30Sd3DtP7QAxaGyixaP5kpK4WDbSiyN5U3zcHqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QCNAOoNIVprtjnjOYzlknK86qpR7E7EwBnVC5cRBVZ9aEooje65kmI/k00S0Qsyq0DI//OK5tkpgYBpTvJMbWn5D5PXvReRDO/rWMUdLSxJDFgEby3mv0bS8REZCvDxLIom5lhMNWw+VKIVKRHguJ0lS1+5n79lt5qnogaVd56A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qMQil7vs; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731856050;
	bh=C9/1s2MIYNPk9q5aO0cnZaoDUfbGJJtnEM0J9lOegN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=qMQil7vsGUx9UlHTxLPp85CtHnwhkSmBmiupJtS0td9bg2trmZadViNCa9Fpbi6Ih
	 CJAkQ54CcAYYFMqinheuCX/E6Qi84+EMXyF0f60ZUQ/1d6YycY+tW6FydbuVYuKPNV
	 cY+2iDoegXlpHTNDrtHbwHjtUAGgFCnrchwk62VA/cao6QxClxpXrBwS0dWmhWsPi5
	 wkjyTY+dsOgPgn7bvtU8GU9RaznkP86+qVdy9tS1XuV5J/pP8Zo6Ktj5Fn0zTeuFRe
	 R8O2H184HRi/miATxZl9yfAn6wS6LyWhVPO85Y3RadeCYkeiDi5qh6ufGrL3X6x3PK
	 8d09SCJg9dnJg==
Original-Subject: Re: Issue in man page charsets.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.00000000673A06B2.003FF22A; Sun, 17 Nov 2024 15:07:30 +0000
Date: Sun, 17 Nov 2024 15:07:30 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <ZzoGspXgEj0u0TMO@meinfjell.helgefjelltest.de>
References: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>
 <zdew7riqkeywiwstzz2jecvet63zwozvjtpeudr2ef7z5ezvhn@tvow2a5qofwe>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4190762-1731856050-0001-2"
Content-Disposition: inline
In-Reply-To: <zdew7riqkeywiwstzz2jecvet63zwozvjtpeudr2ef7z5ezvhn@tvow2a5qofwe>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4190762-1731856050-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 03:47:27PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    (it) is \\[aq]/\\[aq]s correct (the final s is a english plur=
al s)
>=20
> Would you mind clarifying the report?  I don't understand it.  Thanks!
>=20
> Cheers,
> Alex
>=20
> >=20
> > "Note that UTF-8 is self-synchronizing: 10xxxxxx is a tail, any other b=
yte is "
> > "the head of a code.  Note that the only way ASCII bytes occur in a UTF=
-8 "
> > "stream, is as themselves.  In particular, there are no embedded NULs "
> > "(\\[aq]\\[rs]0\\[aq]) or \\[aq]/\\[aq]s that form part of some larger =
code."

As I understand it, the reporter is wondering if the "s" after \\[aq]/\\[aq=
]=20
is correct. For the (\\[aq]\\[rs]0\\[aq]) there is no (plural) "s" and
here grammar (which probably dictates a plural s) and clarity are a
little in conflict.

Greetings

      Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4190762-1731856050-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6BrIACgkQQbqlJmgq
5nBJ2w//R+dJhoYbQfKcDSmhiXjsqybPulDwCJ1cxYkAbplfWlIdXibbXpw5OBOV
o7Km9/lQT613kN06K+Q9D4RKtz4vtbNJBOytAhrAWU8se1uaOfnjldUsY2Kko4Sc
tS774ZlcxJqfccLS6Pbf+r8PSdtW9xx2bfEZBe2BhDp+OlTpP0DnclBbnxWlBNL/
fTZZ7a9v6tFHhh8UfDBlScZfIpo3ESFStW84rGCbVOXkg4VoTtqRj7qvgco4Afxa
IsaxcHbKfBxhkj1SfpJ2h7PrkTrDOw6acc0zkwrrpj0bBNIrYKjvhQUXQt4ER/bw
g0+6TR1kyekxWIKzA44b5IsZNSVHydeOXABMlDCKavYap1/nS/u16fKg8aQC0Msy
Z6IpbNoNnSkBXAFgFUjhamraceI4j2HfcUUtUvkqNNjpe5nkDoK2MNiv8zmBEUiG
olkkDId1Gi6JRazbyjkLfx5serLmwi7CfLPsdrYbZsWfxseS/CM21PlIVFjl8A7B
3G3PQOqp0VsN0dMMqiLtuR10pREdAXd5Ki5Rk+7WcebFyjKydMxGDfPdWqAnqiF8
BbJFWOTcav8XUGiD5aqBPrLQvwOe/LhnAx7Ia5ndt7MjyiD3RFnopaI6dswW/4Zy
wSpEzLuYqbifwh/y4085IQwCxc7tWvvSVfHVx1Iz6xNqg6LJVQg=
=H6x+
-----END PGP SIGNATURE-----

--=_meinfjell-4190762-1731856050-0001-2--

