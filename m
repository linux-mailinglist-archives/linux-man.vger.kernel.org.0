Return-Path: <linux-man+bounces-2000-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 926C89D03DB
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3450B1F218CE
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 983AA18E361;
	Sun, 17 Nov 2024 12:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="hh4ZZ3zM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF1317B427
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731847222; cv=none; b=OZs282YrfvLxiQADEqTL2sVnjtoO5LV16qpaW3HSngYd2qZ3FSsA83TtPAcWMB5SCj4FFF3QeCMnTnAs5fXr5h/rYWtGSVEttV0PqxVWLwEXA0RtyjRSqkeWfgTtIquBSGg+M9Bth89XcMdG2nZF6AbrPDmGce2k6V43CY7tWQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731847222; c=relaxed/simple;
	bh=Ox66AdNBSRpK5em2iRg84M0Zn2/H06dzzT5S+iKluTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sl0HiIV0jQDjJ5XFJrm4n8/S0yZPo0yqthHWVJM0EOJQld7M9/k2AyQgmBTNxJcKAgXJKCSE56b26vvTGyjYynWn7i5D1vjFcLpVNCY8EzI5drDOdWNQ/zIrSS6luR2XVWOCXPbuWleqeZnbv/xlrL9Sywx3zcfa++/J99eNYAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=hh4ZZ3zM; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731847219;
	bh=5jaKh7Ki0WN7U0qZzWpJsN0QTNPWtGoJuTJp3TFrAqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hh4ZZ3zMYCXzFFM61ZTRAu7EsaVRsk/pScNUtIKDA+L4s4faSFJqToEZcInSKqAWr
	 P9vZtpzpcF/9Gfq3q1GTphemVaFhxc0POMXGovYSw62SuKOc+rAQnCJuHhiqmm4Xfk
	 1zKPGW+0w1yh21xhz+oh6BGKqPWLp+Fl33ZfMN99zkbIVb5lVdmHEd/reZlv3oy/m2
	 JV6fEh5xG71S+sgWU0XfE3psid/93h/j880XWSGFIA62YB2g6MDr/v6WYjF+FWuT+y
	 ZGFcvHcBuLW7M322i3jGIluDG51HNUZx0Xs3pzaALhEfx67yX/++XFKtZEQgd1ThzZ
	 gP8VpxZpaE0IQ==
Original-Subject: Re: Issue in man page s390_pci_mmio_write.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002006F.000000006739E433.003FD705; Sun, 17 Nov 2024 12:40:19 +0000
Date: Sun, 17 Nov 2024 12:40:19 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page s390_pci_mmio_write.2
Message-ID: <ZznkMx-rni5woEPl@meinfjell.helgefjelltest.de>
References: <ZznJfzz4dlbC_-ao@meinfjell.helgefjelltest.de>
 <6rqjtj6ggaiedbp7vjmtrwx3pydetbtl4cfr5ts6tmeo4sgxft@to2wpimwhwsl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4183813-1731847219-0001-2"
Content-Disposition: inline
In-Reply-To: <6rqjtj6ggaiedbp7vjmtrwx3pydetbtl4cfr5ts6tmeo4sgxft@to2wpimwhwsl>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4183813-1731847219-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 12:40:56PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    to the user-space buffer I<user_buffer> =E2=86=92 and writes =
them to the user-space buffer I<user_buffer>
> >=20
> > "The B<s390_pci_mmio_write>()  system call writes I<length> bytes of da=
ta "
> > "from the user-space buffer I<user_buffer> to the PCI MMIO memory locat=
ion "
> > "specified by I<mmio_addr>.  The B<s390_pci_mmio_read>()  system call r=
eads "
> > "I<length> bytes of data from the PCI MMIO memory location specified by=
 "
> > "I<mmio_addr> to the user-space buffer I<user_buffer>."
>=20
> While your wording is more correct, I prefer the current wording, for
> mnemotechnic reasons (associating read and write with the system-call
> name).

Ok, but for me this reads strange, and I think the addition of "write"
in the second sentence really improves the understanding.

Greetings

        Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4183813-1731847219-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc55DIACgkQQbqlJmgq
5nDSGA//bUlh9V4JJyWhEiCejtmz49i10CcNFuJQ4IYkxNDlwfuPQQf6b1/sjOkN
uo+m6isceSTrh70UjZlOB4/7rIO+GgX+WArExJBX3cBBu/M6vqSiRkzXUsCpGL/4
b+2tSWXOrAdJFA4rDNKQp6ce+8ahnbNnt+7QsxL70Uq5Qfggkdbe6Hp29vnkl+qN
HMIioS2y9tTZ5gTIaOllIVP2J1CMEkE73xxT+omD+VrjI0CUsQRDmulIOJVGgtmc
aOAUhhVTxFsO3Sp41LNZ39Vqkrpul6bvFvnVGdtbLy16bD8IsIJLaBMt4kXUEBm4
kcHcfE5WOURuTeGCtv4Ha/pz4cqz1+0VQZ8x6M54uMHvxDGyNwBtqnqF/F+PJ+bq
K5liV9MFq43Ko+pqxRel0ub9SwEFOn2zd3NGY3tCOx7daeCPtId77WFUAE+LiWTK
qNfl8XSrs5VOaZvRP7ZMqQqFnhud/Fhfao5rjX8hzGy9GCQIzGms5aQcTv7UaSnq
7Xo+Fc5cC/jMBHuxpIbJvwaaRfz5UFUy3tmfsrUNLvUenfuGfooOXOVlajBTuEE+
kmhF5fUsxxp7mhrfeMQOUupYz4sx4foGgB0wu6G0Lr/KZ1hX8o+twbgeQbe0bIjf
FPqv50dcQczhmpOOVgGz90SzzdL7ltGvG6z44hk4SdEdHCpow2s=
=HqZV
-----END PGP SIGNATURE-----

--=_meinfjell-4183813-1731847219-0001-2--

