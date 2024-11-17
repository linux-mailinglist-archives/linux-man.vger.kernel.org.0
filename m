Return-Path: <linux-man+bounces-2011-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E2A9D0462
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC89D281C7F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F871D95B3;
	Sun, 17 Nov 2024 14:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="twfQkLIJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34F91898FC
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855584; cv=none; b=tsXX53pMa3yQuAnyXsgowh4V6ulYF3c0gCEgONfkRk8qSXF3xAQJb0WYeVOjsno5qOokSYVvhyiktZKOLPYaxVbyh7D9hdiWpNFAtXm46l7yo40MV9fGu0v5sTLrAT/yN6D4Ga3LQfyqpF4/VrMOzsWAHFJeJ/P7LqTExzk+Zlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855584; c=relaxed/simple;
	bh=AjnctIhmFbbyVQf7tJoRQPwZWCCp6epnF6CLdd0t+iM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BYXNKFzSN34mYhwdjVxdv3vUqC66gyFy7an6aoQlLtA9KNdk4MZ4SvmtqlwwrGIrVUXN90p1shWDvPBxHo0+grFh9HPRhYxlAGRmnbJY+lKXsXO/7cWXT63t/B5Yv8vfyb5vNKxadakd+gOpkTuAP6TzgkAo3W17UBdGm6HsdeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=twfQkLIJ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731855580;
	bh=N71C4zcVkyvOPoTCQCU/MKRhUu9YDRMWSn13N04VFXY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=twfQkLIJFdE6JJsqTQfBoKTQei55vjbyp8f5kPp/qux4t/Nzw6DlOf42adPMjxYLW
	 fbUDNP3uNnfIAIFIFEPPrf9168gjp45tns/9jqsH3j9brMKi2EwGjM8AY3Qs6wEwQ4
	 SdhMbAQL2MeSoyx2jpPngN1igs4zURsTrtTVd0mU6v0NsQgVb9YhbMlOYt7id76d1k
	 FNFJI8qcoQBxcynBGnv4AkyoVvDlfIiQBYBerMfaVQFaLj3KsaZ8mniNfKzzwuPvH0
	 JpOX2TO5J/YJDPhxD13xGkcvbvD440H7q+lD8rkr7UfaDr5Us1N3NyH+t7vrLoarMC
	 w20lje8dUPpaA==
Original-Subject: Re: Issue in man page time.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.00000000673A04DC.003FF06F; Sun, 17 Nov 2024 14:59:40 +0000
Date: Sun, 17 Nov 2024 14:59:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <ZzoE3H70OPK8UGrE@meinfjell.helgefjelltest.de>
References: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>
 <txrfnlxmmte5pnmhr4dax6s33ngxlrdo4sjvazw3vlaa3njuju@dp6ndbsnftfn>
 <Zznk42mDzTgnDybs@meinfjell.helgefjelltest.de>
 <wta45qjgdevaukfvryg6iefakxet2txhrrldbrv4qhqfutsuyp@7byr3rdccnw5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4190319-1731855580-0001-2"
Content-Disposition: inline
In-Reply-To: <wta45qjgdevaukfvryg6iefakxet2txhrrldbrv4qhqfutsuyp@7byr3rdccnw5>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4190319-1731855580-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 03:40:09PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 12:43:15PM GMT, Helge Kreutzmann wrote:
> > Am Sun, Nov 17, 2024 at 01:12:31PM +0100 schrieb Alejandro Colomar:
> > > On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> > > I don't find that text.  Could you please check where that page comes
> > > from?
> >=20
> > They stem (only) from Debian, so probably a patch there =E2=80=A6
>=20
> I checked the Debian downstream repo, just in case, but I didn't see any
> patches.  Maybe it's a page from another project?  The time(1) binary
> comes from the time package, so maybe it's from there?  I don't know.

Error on this side of the keyboard, just disregard this report. It comes
=66rom a different package (applies to the other "strange" report one as we=
ll).

Greetings

               Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4190319-1731855580-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6BNcACgkQQbqlJmgq
5nA7zxAAmGjldAWrpX1fMm9mFdeKYbmD8MTw6+i1CIJrJFx8tQTZmOLhJiIdRaxi
bt0mIWs5jsP00/URh1a4KNt8/WnaWeBgEimOp/Eg84k5jXi1vyITRxylx2JIRyuL
w30oEWVJgq/4AaJMJajuMjmn+YXU4/UcMiRGtzDCFyq8AvdYzV+donjhMpbGeucs
Db6LnykgavQB8AKAJIDkAJgRPMwPSeCS/qS+J/WRdOa6fa9730MJ7OT3gBz+Oe2I
CwXF5EfJ8hB1JLopnvq8AubW0imDiBQ/RP0eDmPLrJY3ukSSec+/WHQWvUIgQDXD
VO6ZY22spmR2AjFeqlwEz4zOlWOE8wXwqyED0/VasMEtEdBxfC/hJrOjT8eYPS/Q
8s43IUwBlfCMcJ8gGKxGWddW6+vzOC4MFXKD93quW1e23cQ9AuutcsFKjkNle5DW
6QYxDDhsBjeCpL0IncazTLGZCIohIQQn+T7Vlfgyd/Vh3bKU8YSOOsE2eAVuxJ/a
f0lCr5zFq/w4MQ1i34n0lGDxYzMxLv5NwFOcejeQhGtVWpD1UuJcQbpufPmBFs5Z
sKo5RVjt+mR6x/ZUKbpCvCKVN1gE6cUss1A6AhfTXCWrEhdyuw2e/1zu7sDL4FJL
d5fVlMUmN5Iczc3LTw/npI+yABHhBaoGxu5R+dAha2AOFUrEe0Y=
=SHIq
-----END PGP SIGNATURE-----

--=_meinfjell-4190319-1731855580-0001-2--

