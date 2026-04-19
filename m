Return-Path: <linux-man+bounces-5342-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kWooOiNm5GnkUwEAu9opvQ
	(envelope-from <linux-man+bounces-5342-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 07:20:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CFF423288
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 07:20:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 69FB530031C4
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 05:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E8A34A786;
	Sun, 19 Apr 2026 05:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="je/9sMMX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4D32D6407
	for <linux-man@vger.kernel.org>; Sun, 19 Apr 2026 05:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776576030; cv=none; b=uyI71Ufs3rbm+pjxWgwSFVhvIU23HPvUtTlA8JHfj1WN1jM4iJU387rIdQU211xnZ8IE9T/iI2tor93utgCFCG7/sNb/d2CdXrRZ6HlpH1s/kVd5wn2LkJIRnhJe9FHhFm4Ko5OsoyBmUkbsAeWu+Ku01jVkLAU3iS+nOqDsIo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776576030; c=relaxed/simple;
	bh=N/SpSwxbXcTlGC2gSfXiVqyL+bAZqDAF4aVQd56Q4j4=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=NY4HzRLm1im8ChTsKEgfeAv6ghHtbq3+q9PhxlnHoCMaCFGedTehZ/P56Ra1n/LruTVcx7HtSq78+GOprcDC3o7fU3GmXcnwjWZAfCa8Aeti84hxNXFBrkes6gelK2O/VY7hEOUBkufdenOEtD4ULGwBZh1DVod8VGNMuEJ9nN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=je/9sMMX; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1776575712;
	bh=s68W+/ts4ISHVHMjqExh0pRKxTq8bWs2fkCXQYwK7UU=;
	h=Date:From:To:Cc:Subject;
	b=je/9sMMXFufnc8BussKQEcqViQGWrt165ghD/Krnb0m7rouRsecNP1xJNUfyC4IMP
	 pdiZ+BAoB801pEX4YOLNvO8qwfEttE9HhtJn+Fr2vr3ULOeV++iUOws2sbEWiffeK9
	 N7ahqPOfPLBJlMQiur9I/dgqQ3vvawlfA9CghPHhD9DR5/nbFbWvE/GcN2ecFZiN4K
	 ZU1mtEc3qOYal2bPuWIYN9TuZ1uvXALL1ZwQECitsow4RPBci6nyLSHDFnqu+phkSI
	 J13YJrlwpD0K3HvM/1gnJqKbeq8NO+I18biUJGHuCzrmkzcwXJLpX995ooU+G7KN8c
	 ViG8KQ8wTnQNA==
Original-Subject: Example in mansectf(1) does not work in Debian unstable
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  "Dr. Tobias Quathamer" <toddy@debian.org>
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200E8.0000000069E464E0.000F2BDE; Sun, 19 Apr 2026 05:15:12 +0000
Date: Sun, 19 Apr 2026 05:15:12 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  "Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Example in mansectf(1) does not work in Debian unstable
Message-ID: <aeRk4J-i7pnkrdke@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-994270-1776575712-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[helgefjell.de:s=selector.helgefjell];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[helgefjell.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5342-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[helgefjell.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debian@helgefjell.de,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,debian.org];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,twentytwo:email,helgefjell.de:email,helgefjell.de:dkim,helgefjell.de:url,meinfjell.helgefjelltest.de:mid]
X-Rspamd-Queue-Id: 43CFF423288
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-994270-1776575712-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
while translating the man page, I noticed that the example does not
work in Debian unstable:

root@twentytwo:/# man -w strtol strtoul | xargs mansectf "NAME|SEE ALSO" | =
cat
Binary file (standard input) matches

(The first part works:
root@twentytwo:/# man -w strtol strtoul
/usr/share/man/man3/strtol.3.gz
/usr/share/man/man3/strtoul.3.gz
)

I put the Debian maintainer in CC, in case this is a Debian (only)
bug, I could file a bug report there as well.

Greetings

         Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-994270-1776575712-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmnkZNoACgkQQbqlJmgq
5nBaWQ//dyhHt0uRtNWl9bq2CgLs9w/kvHLCI9p4ygFHBnLBBgFPknUnsPsCX9vo
Vcj5iYKvDuTXqXHaRskjY1pgtWev6wsniSnBp9Z2pmfkSj431fvwYRzCYLonddSd
UQWFThOVFW6a9ODmbICXnFLU1RO+h0FZpnRv1HBUk23+cATicAfArdp03Sta9Lkg
Sb4awVQdmkrf3IPW6FNHf1QVj1i6GEtDbYFWB7CGNyMJlXOF3ZBXh5DW+vkaOowj
WExK0AHiadl/vuEMNOSeMgAx78G6Lx7u65uejGgWCF35qeyTxykEJfvTLvJUmcZh
tzY0hGQushgth9YmNVx7ZP4js0E/48F/wmUOhYLNt7HiJ7jK1QACMkkXyaAUOA2w
1PyCEq5ceyzSR8gsJWmx1fRLqHFLoEn0uIJ6b4FfNPcESZKyJHAeVCCkV55NTEnE
RT/Kpe5cwWO7zv0OmFAEDg9S5pyvGp0cMcIeUHwWr25yAqDy4HCd5HUWTjlzAlXZ
wO8KcCQDDKXj0ul7NI+qAQ1pSFdB6nHm9oAilwoJ62Jw4QZ4FwRJvcZ++lzvx7K3
KjEw7U7FPdhnJVaP2n2YKjz8vN4rLB76hRmCLayAqWYSB/U/mdezyNLGNyOBuhJ0
tblRcqgY38fCY+1wVIU8/5uh0KblFX4zczpULekEGhRY0FzAZLs=
=KqAy
-----END PGP SIGNATURE-----

--=_meinfjell-994270-1776575712-0001-2--

