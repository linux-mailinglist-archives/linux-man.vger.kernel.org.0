Return-Path: <linux-man+bounces-4530-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BC2CDD58B
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 06:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E30833016982
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 05:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087902D3A86;
	Thu, 25 Dec 2025 05:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="u//fyKnM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2ADF19F464
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 05:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766642292; cv=none; b=mYT5m6ywo0AiAzMuChz6nLk5AwlKwZYunD7Mi3w6xPUrBhSwSUY5PuDt8MCJd+0IBjswB66HXJ8jJhy5BPQk1g505px1ZAsPedNY/mlFXFJuKp+FNJBDcAFsBHkQkSJ/sZO9AXV+m2JFJYKjHzaqCWkyAxGdEKOWUI4aFOlBBOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766642292; c=relaxed/simple;
	bh=dbj9/vFY167JVMzckxLyrMdTu1StADMQ4J6ujaEOaYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bzDPptw7qWtVlBS0onjPIgRyy7yivAuNSsYqP/ztyIQMMD99CYh33f1zIuGQ4uMgOq67nrrBuG2na3CnU/EIjVZ+LjON93OoRBTfIL51WrWCMad4u4G82pyzpKPXYw+9OdNO0BDTLWxNjtJky7lAhNSSWpwE0ikGDa8Nhk49VsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=u//fyKnM; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766642285;
	bh=DVO8NaZcrr4Xa3B5Mh9dNc6b47sefMVdYIuOiub5a+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=u//fyKnMQmTNDEoWVTHo34fYaUbE7xiHsHualQUlblOH0R7J0O2/rdj+gLsxAmsLs
	 ciSG/u1HmvsKKUGDFVh+QCGlYmPHlZsWLl3UnqV/bTW8F5l0cQUAvgz4SQ2NjIPCtk
	 8CrJvqOFP5c5LAMEHb9EzPpwHLXGWvW6py50tT6wUm/YecQk8BeA/lVBXo8N/xX0eC
	 PNK4lBxgjikGiLZplALFPzfYLFQLzW85vMV0c1XxTHGVv/FP168rRJoWkEHR1pPAJY
	 pwmDqfAUylSNSUOqGFPFtMmsbHQJO/di8m8WaQ11G8XkHd+/rfCqdwE8Y6YanDrNpQ
	 17q/HjxhOK4Ug==
Original-Subject: Re: Issue in man page isalpha.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D3.00000000694CD26D.003B6CC9; Thu, 25 Dec 2025 05:58:05 +0000
Date: Thu, 25 Dec 2025 05:58:05 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page isalpha.3
Message-ID: <aUzSbWks734SucXM@meinfjell.helgefjelltest.de>
References: <aUv63EGuHX_jICjK@meinfjell.helgefjelltest.de>
 <aUwFOh1nSLS7fwmE@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3894473-1766642285-0001-2"
Content-Disposition: inline
In-Reply-To: <aUwFOh1nSLS7fwmE@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3894473-1766642285-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Wed, Dec 24, 2025 at 04:24:22PM +0100 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> On Wed, Dec 24, 2025 at 02:38:20PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    I<(isalpha(c)\\ || \\ isdigit(c))> =E2=86=92 B<(isalpha(>I<c>=
B<) || isdigit(>I<c>B<))>
>=20
> The current formatting is correct.  This is documented in man-pages(7):
>=20
>      Expressions, if not written on a separate indented line, should be
>      specified in italics.  Again, the use of nonbreaking spaces may be
>      appropriate if the expression is inlined with normal text.

I marked it accordingly in our sources. This rule is rather unlogical,
though. (I also marked up similar replies, so I won't answer them
individually).

Thanks for your swift handling and if applicable, happy Holiday
Season.

Greetings

        Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3894473-1766642285-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlM0moACgkQQbqlJmgq
5nAyOg//SjreXpusg2YpmnawnqhxjjgEKfo0XV8oB8NEd3TdQE5zitYjf5oFoH+8
RgGH507YjfvnuHt8hPN9xQOR3srM7ZPP7GwFO4/JEGNGx7KAG37XYb/3iVdcMI6G
owpdTp3t0TPJDfViQ1Vx6zAbwL4zPNI1kxymhRJPzfXQfy7i/4erJPu/PJZz+lB/
a04Nk+HHFg8EQ57Pp1sA8yf1IZhVF1rresZ60mclXrzZnBGdeIjMblWfY/KamOO5
LSWSgJ51ShIDbzLprFU+vkPfLZkyM53PhHu0gBPRY/fktqCyboD6cYtMYLYcPv0L
44c+dP9qwwlZ49JPFwbkao5sqZXFaSvfvH5iGF/C7vd9JBR04PQxDmVxQJXkxN48
1N0fvhxYx7CyWxZULvsA00Vxv9+M2t4+nvWGtUdy00zVryfCLivRp/c66+TAnR5D
J4FQnV0hXvLbWj6ij+4b3RP0ULbQVuR4Pl9MOcMqTCvfsl8j5FOf8QmDSgOUZZOV
qIW0/5wXn7w3rDlOE0Z1nqE957isqLMKgj/8shalhpAJsLNtG+Q+dI4rPxwFlf5b
+rWu+WYSH8oJIpNI7+5P6kmWDLPIuKwweEcib1qHt66PNWWIzzY6e7KT5l2gMoYu
fvPVBAUX5vuX0k0TLAJW8M2ErGkhW4Sl4Cclv4aD1jxwV83OQtM=
=Hcj+
-----END PGP SIGNATURE-----

--=_meinfjell-3894473-1766642285-0001-2--

