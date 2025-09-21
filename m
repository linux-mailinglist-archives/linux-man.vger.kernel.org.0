Return-Path: <linux-man+bounces-3923-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A9EB8D97A
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 12:55:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C18B07AC563
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 10:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D711DFF7;
	Sun, 21 Sep 2025 10:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qqQ7j27h"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A972AF03
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 10:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758452148; cv=none; b=CVc+13IWC3zfXipp4LD2CW1eBaEJ5QKFwZWI+1qxOXZbMrSBBfrS12Vr/5WrBCvTq/4k+zBVElYCmM9Cd9vX3wbT178UMAgMElLqGth1gx1VWH4EQPmSDoFyoGZeFMYbnssk1HzdTfSnn1UikFAk4Evt7OlZqezh7VmEvniwyCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758452148; c=relaxed/simple;
	bh=H1E+3AbkayXxbGCwY0cy8/dz46j/vA1PMMmmCwTLfp8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=asle23GXQOA7LLt0MgDPqqzyiD68WI/MYdF/C/jqV3XXi5LfH8Bx3z3saFW6G+gec8ZZfDYptEgSzLs1jSdwKerOIAGa4Y1qid2s3dMmX46G8xTS7tJojani0A1NqrsIvLU4CYqy80nryMGpv3GbZW1559OB4SxowVoGunsbOEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qqQ7j27h; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1758451835;
	bh=/AY0clWEa7jrAzE1KTsWkLz8SB/Hf7HBDqe8xxp/Gw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=qqQ7j27hvQr+itoQZjze1pVSB5AI2QbC2PYWPJlvwSfVDXNoGO/VgG5ROCdOP15g6
	 8+vboXaL4X0LfuLtgRZYSINK1Y2topWoN1ucwkSTJSeHJstlusPrGNhH1ODXfiF1tk
	 dva8pvEL3FDeQ+9PuW/dXkTba6u/2KUEfRDxsl5kZX1c1Yte9Z5bENXf43fEEsyi7A
	 PBarDqE7O+ewEBo1sRWVWiXPDyY/h9Fb5PqI8MQHH7rFCkngBPbU7Z1QVhTbXok8eB
	 fEwNTeTgfSfi/J/3ejQqP0SD3JZc+TpGt20Jh8P6g2AaAaD5/o0QxHQ3P9Twl+/hJ1
	 dfLQEWLyDQZDw==
Original-Subject: Re: URL visibility on terminal devices
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: Alejandro Colomar <alx@kernel.org>,
  "G. Branden Robinson" <g.branden.robinson@gmail.com>,
  linux-man@vger.kernel.org, groff@gnu.org,
  mario.blaettermann@gmail.com, man-db-devel@nongnu.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000201AA.0000000068CFD87B.00086DD1; Sun, 21 Sep 2025 10:50:35 +0000
Date: Sun, 21 Sep 2025 10:50:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Colin Watson <cjwatson@debian.org>
Cc: Alejandro Colomar <alx@kernel.org>,
  "G. Branden Robinson" <g.branden.robinson@gmail.com>,
  linux-man@vger.kernel.org, groff@gnu.org,
  mario.blaettermann@gmail.com, man-db-devel@nongnu.org
Subject: Re: URL visibility on terminal devices
Message-ID: <aM_Ye_x9vgEbxvFe@meinfjell.helgefjelltest.de>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
 <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
 <aK3v4_PHAtycO4qz@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-552401-1758451835-0001-2"
Content-Disposition: inline
In-Reply-To: <aK3v4_PHAtycO4qz@riva.ucam.org>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-552401-1758451835-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Colin,
Am Tue, Aug 26, 2025 at 06:33:23PM +0100 schrieb Colin Watson:
> On Tue, Aug 26, 2025 at 07:05:49AM +0200, Alejandro Colomar wrote:
> > [CC +=3D Colin]
>=20
> > On Mon, Aug 25, 2025 at 06:04:20PM -0500, G. Branden Robinson wrote:
> > > tl;dr: Learn and use the "-rU0" option when your terminal device does=
n't
> > > support OSC 8 hyperlinks.

Are you handle this now or would you need a proper bug report for
tracking, reassigning etc? If so, where should it be filed (Debian, as
I'm seeing this under Debian?)

Finally, Mario and myself are considering right now what is more
important: Seeing the URL on the Linux console or having a nice
hyperlink when transforming the man pages into HTML. (Of course, if
this issue is resolved, no action would be required on our side).

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-552401-1758451835-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmjP2HsACgkQQbqlJmgq
5nAltg/+MrtvTyWxww6hCByD5qN6oYPW3XMQHJZDwog1y7doOHOcjvIJC40ppEub
zBE7h6a6pJBa3pWT3eBsAo2cSSZkk+SLTe0odsc+M5iA9BrKss7EhaGLwlZCOrKT
jgmeBtUg9xJphA8R2lUDrazk75XaueDt57Y0AZzot/ifw74pm1bs9EUTIMlISgJt
7fSfMXsyySHNvY6OraZM3NieNEesP7lYuekR/YfHcRme9+B+4VO3Wddp3tVOHi0+
zteBDLFNO4Zp+cE07tRmcwN2ylr/aykeXzqkE2/MNOJxTIj343CyIOnfXmJtheNn
0ftIUNDET36N8NzQ7uHcIlrXaJx8EmANsMlMU0niIyGAUw7TXaM+NbS4SZpigdyo
S/WqRV78rJbF6+cuOclN6ENrcXuCq3iTCrV9XhpdpOgt3dS4Dc9XHh736WqLrm6g
atfQeR6fbqcikd1XD/pRziTRsD3nRShM2njD76wE44tuw1W+9BRvAIJANDixfs4z
FDBXaqMJdiU4ritksnJQBGNn0uKyW8e4r54sPMugbOmbcMMkXmiSEbJ90L6yamuq
uKCIvYeaAQfsW1E73/XewbtGadBE8fi2pz6oery5sWJ1eqyMRXcXdlxHrBLSJADP
SMJ3jPZVtDHckWpT0N6+VqGLohcIVs4PU8oY25M6BoJFKTRcvo0=
=Ti8s
-----END PGP SIGNATURE-----

--=_meinfjell-552401-1758451835-0001-2--

