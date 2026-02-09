Return-Path: <linux-man+bounces-5062-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEEqFoQcimmtHAAAu9opvQ
	(envelope-from <linux-man+bounces-5062-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 18:42:28 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E98113254
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 18:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC86E301BC3D
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 17:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B22A3859D5;
	Mon,  9 Feb 2026 17:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="HytsLoCG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14733803D6
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 17:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770658809; cv=none; b=SkCMmjJmM/EvMtTdaI0hrcNQLzcldAbYformgFADS1KN6jQqHLd/WyTh5Y0IS5TBkhq/xY7tHAdwsrGYEq/euBDYDJIrYajq1fFAqoeIw0I/3t8j7pWEIGdCf2FQ1keGFL/cmvct/H6MgVdET8LJZ3n2NdhQLWYBXkl99Uut/CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770658809; c=relaxed/simple;
	bh=HJWF+Md0MWti7Jo5RLAQxsPMPql/8cpaZBGiuOiaPhw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cNYYv00UMbIfB4+UiP9xP1MbamWUmuiwN7fI9abKqs23qaG2OrYGsTEfjyKSx6XxzuiEk/KkYZASJUZk1IJR1PGIzxix2RRJ/vwVKB6YmgKSeZQ1hPZmXj6POVg9nsH0V1Dy01pMA2XWgxg4RIDDABW5dE/FskvrQuOBOGX2YGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=HytsLoCG; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1770658800;
	bh=ZwwtCP8oIkvDBFtVmdQ+4axg7RU0z4rXkknc9ESVFJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HytsLoCGGBxHNiXLg8KVYs2TnQpwJHH7E8s0Ly5i/tvO9zIA8Y3ZofyLlQ/ANcRPh
	 3In+acCFOAS2juoHTen5J9duCVoVgH6h435w36gDwyMKjJSipgjKGqfbYm+LD8tge5
	 Zo4Xp96YmWas74Ym7fYyck4pLcgat/TK+zNcKr5tAsWgbJhqwnb9f5HjXxMuAgWk25
	 e0UJRyQTKdxtYJCOfQa6AVdg4aVMB2eZGNrB50wVy3V9eLY1DEyHd+0ZatRWxG5e/K
	 u/iDBqQ8nQhDA/PFLzdw3B/qRsfxUXo1jds1dojPpATxwTQkIW9QnDxrX9DVrKYbV1
	 LKpQ2QFNsDO+g==
Original-Subject: Re: Issue in man page sprof.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: Alejandro Colomar <alx@kernel.org>, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org, libc-alpha@sourceware.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002004C.00000000698A1BF0.0013D118; Mon, 09 Feb 2026 17:40:00 +0000
Date: Mon, 9 Feb 2026 17:40:00 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Florian Weimer <fweimer@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: Issue in man page sprof.1
Message-ID: <aYob8JOv64u7tVtt@meinfjell.helgefjelltest.de>
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
 <xdv6pfasrfbegf3pb34ktupjcjao7kunwj65zmmbgwt53jdy6x@fnarmmxyzgpr>
 <87mshxxyol.fsf@oldenburg.str.redhat.com>
 <aYjV0n96GmH-lZl-@meinfjell.helgefjelltest.de>
 <lhuqzquv3la.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1298712-1770658800-0001-2"
Content-Disposition: inline
In-Reply-To: <lhuqzquv3la.fsf@oldenburg.str.redhat.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[helgefjell.de:s=selector.helgefjell];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DMARC_NA(0.00)[helgefjell.de];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-5062-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[helgefjell.de:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debian@helgefjell.de,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,sourceware.org];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,helgefjell.de:dkim,helgefjell.de:url,helgefjell.de:email,twentytwo:email,ffii.de:url,meinfjell.helgefjelltest.de:mid]
X-Rspamd-Queue-Id: A0E98113254
X-Rspamd-Action: no action

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1298712-1770658800-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Florian,
On Mon, Feb 09, 2026 at 07:22:09AM +0100, Florian Weimer wrote:
> > Am Sun, Nov 17, 2024 at 11:50:18PM +0100 schrieb Florian Weimer:
> >> * Alejandro Colomar:
=20
> > I can run all commands of sprof(1), however none produces any content,
> > i.e. something beyond the header lines. As I'm not a programmer, I
> > don't know if this is something to worry about.
> >
> > helge@twentytwo:/tmp$ sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.=
so.1.profile
> > Flat profile:
> >
> > Each sample counts as 0,01 seconds.
> >   %   cumulative   self              self     total
> >  time   seconds   seconds    calls  us/call  us/call  name
>=20
> Is it possible that no profiling events have been recorded?
> How do you call functions in libdemo.so.1?
=20
I simply copied the instructions in the man page one by one and
observed the output, without really understanding what I'm doing. So
yes, the problem may be perfectly on my side, that I should have
generated some events.

But since I'm not a programmer but a translator, I don't think this is
worth further investigating.

Greetings

          Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1298712-1770658800-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmmKG+gACgkQQbqlJmgq
5nC9ohAAmE3NfZMV/RykpbTCObQdmkpRrgTC7QQp08gqYkYV8gxuhQj4IQ3rierO
cLydIrnzjWn4mfLPI78O/mcGAMv5JLQac3DuidhM4X2liy9wqq3GU2GYlmC/d63c
yu2ndTA2U2UMvtAD5maCH1e8Zevgsd8yECuix3ehSjZrLq8AB7MjSxV7Avt8d6nZ
VA4xCf0xGLYFBQ8csj9AVAPyZSRVR6olLElthe+di9b9VvfoHmcJVvKlVqVWuPQu
yAd8nulSJ/OuKOlvpc4YCwAX5jbBjmNIE1vI1LEksofLOViCllWYDr5KtL/27TUG
I5DH5z9Y6ooGZwZ8XpCgjUNpcyjDB1P2pfdVErjmW/jvFtwtjhUA4sHnEz0SQLxw
3wzzRU29Hcaux2y+3QISZ92LyGa+X+2/SGDoE6UUARPzTOS038f2NNPzo92sStfF
KVXDQeDsp7phtF/n8/ZjNojHGDuziQtx/3DT9w8awtdH7qENEsyUpIT8If33S3/g
pfHTiRwch7vaaEGh7kdKYQc+AWI+T/wfymdSr0lT9hYSXTXVNOHJ37hQt3WXy/zW
9If+7EdoXyFDoc+R/2e7b97CZQVhmrTnmuh2cxv5gK8DuMnm8ILwLqptP5A7b02Q
8qo/vnaZ6GcmNN1uqlSmjx5G1zAcifewDoRvcfZEnueM0INAFYk=
=IyJd
-----END PGP SIGNATURE-----

--=_meinfjell-1298712-1770658800-0001-2--

