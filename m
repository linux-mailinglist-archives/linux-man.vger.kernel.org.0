Return-Path: <linux-man+bounces-405-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD36983F9E1
	for <lists+linux-man@lfdr.de>; Sun, 28 Jan 2024 21:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 766F01F21A61
	for <lists+linux-man@lfdr.de>; Sun, 28 Jan 2024 20:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD6518E07;
	Sun, 28 Jan 2024 20:37:40 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0AF2D05C
	for <linux-man@vger.kernel.org>; Sun, 28 Jan 2024 20:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706474260; cv=none; b=Q1zsDroF/awf0v43lAjWW1FVSi0OhEiCkYeX0U1Wy8cPlMPizfMDvH8WAdVlQzJI9D+Yapf/O+W9xptsK0vBkbzvKmozTgCpY1M6UF5xui6cqgIXyFJyTDVIarTEvsSXkoSAmaXnsLpY8ZLxJfScCCyPLdxjRWoDcbAmJqSSXZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706474260; c=relaxed/simple;
	bh=pj4kX27q56AgP3Ji2iGj7u4R5ShAm6pdZWhOsSx/DL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dZOG32pqUHm7Lywk3O6Gf51K45Nemu3d5O770R9r8xIwAMcf3Rw5w3b4AbCkN+9W7b7tbOdu8sKARklvlMnksOqDlKDRDn5ZopJt0Dpp/k/E6/ie3DdoNcJ2AlvOfEOHjnWp2v4nYsrYPhX3hltiLXGCE9mtwFQJwiON2nmwc7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020126.0000000065B6B9DB.0017F6AD; Sun, 28 Jan 2024 20:32:27 +0000
Date: Sun, 28 Jan 2024 20:32:27 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: alx.manpages@gmail.com, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <Zba5242LqrOMhIMU@meinfjell.helgefjelltest.de>
References: <ZUJaZXoT9HQxRY1r@meinfjell.helgefjelltest.de>
 <ZU_YU1RKZa1SR6Qo@debian>
 <ZU_ZvgyEddvKasYd@meinfjell.helgefjelltest.de>
 <Zba3ngoZKI494iXB@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1570477-1706473947-0001-2"
Content-Disposition: inline
In-Reply-To: <Zba3ngoZKI494iXB@debian>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1570477-1706473947-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
thanks for keeping on track. And no, in German we say "good things
need a while". So I'm happy that you still have/had them on the list.

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1570477-1706473947-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmW2udQACgkQQbqlJmgq
5nAg+g/+M/vYq5HxI6k8hsDGYcBYnins9/fgQ5bnRgpe+D9YXtprCLt79Hf0y7Q0
ccP/6yo7JFJ73960UBzLSCF3x/AJ14jqu6ay2SiFo+tI1/lGfNUaV+82HUhlO6ti
3YNlDdQo0rFyrb+q8wimbf1emjA8fYv2p1oVuk/3suj1/87HpnqRSjli/haGeY/4
hmFETDjzdAdShFUnOGKi07mB9YSon6alHnKtGXra6sY/g67Tk+f6sik66KKdnPbM
luANhr/ifoCCBGhfufhuYIapTsMQ1HydpIRP1ey5NMenqmCjrl68BqJ/IkfGYNq+
nu5um8hIeETMjVJjjL9jChEz3xvDqzn/UCisq3v2O0M7bxPFbyJSanajjtxfBJlB
kLN2c4tTuW6CC02lWOlthG77xEcrne3/s97ReOvtOqDKsfyBqhbuW0PXSFblyf+F
qV+WDqmd5O31AVy+2ot+P0ABoVKtjycJ/3/UW3EHzNpcoBnzW9VW9Abk1IIFV9ue
OjNGxC4EGjEDcvhHLGldz8/XzAgy0m7ovpQ3OiRkrPdesbSVhgfyUpOJBDp3VwHj
52KfVwOhvzBjKeALp+S3eph0TzZGEGbSVq5QCl+jM/7RBEu89kJkLMg348v3DV+O
akuGbp/XE+o8SUwjy7QZ/RS/0BfoLdvdWQD2Dh9fs/x0bbYKo9I=
=czZO
-----END PGP SIGNATURE-----

--=_meinfjell-1570477-1706473947-0001-2--

