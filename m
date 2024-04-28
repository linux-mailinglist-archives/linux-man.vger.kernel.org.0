Return-Path: <linux-man+bounces-834-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5BC8B490C
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 03:20:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC73F1C211AC
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 01:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3908818;
	Sun, 28 Apr 2024 01:20:01 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485437E8
	for <linux-man@vger.kernel.org>; Sun, 28 Apr 2024 01:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714267201; cv=none; b=jjoBbn4i0lx+Ox4BP+JK0ARkk8nXapwv1ea696K7kKkT+LPr79vjcSHjjQO5jbeZq5qeynF9Yu4mf64MYt32JHtZH7CSVqAZt8LCeT1z+yarfvq2sEHun66oT0fcJBPldkGcvPpBL5oBc61rtqeIssWUTWsvOH5xxD4tFatpW88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714267201; c=relaxed/simple;
	bh=lgBZx/heWbbbe5rw20/qu5mpHtCxdPmzR/a01ObGEa8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=RMPxbnuK/Uix59B6mkfVumA4GO+tIQ80ozTn79T2aCjcF4KttAjejj+ZBSXJJwK5OmigTZ39gd53UIS2efVs6AXdMDKlDkYHSIxQ/RaLCSe9//n00QTt65PheaQY6uN2uShU5XtIPkM4E38gqaLx1f/2xSXvPqK/dAk9fKakVHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
From: Sam James <sam@gentoo.org>
To: linux-man <linux-man@vger.kernel.org>
Subject: Please consider reducing build system churn
Organization: Gentoo
User-Agent: mu4e 1.12.4; emacs 30.0.50
Date: Sun, 28 Apr 2024 02:19:55 +0100
Message-ID: <87ttjm8ero.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Hi,

I had a request to bump man-pages in Gentoo [0] and I must admit that
I've been fatigued recently, both by other work, but also the large
number of build system changes between man-pages releases.

I already try to review all build system changes but Recent Events (TM)
means that one must take even more care and not be fatigued by changes.

man-pages in particular is a critical package and if I can't review its
changes properly, I can't package updates to it.

There's a lot of churn commits like
* d0d2e2f9a21e623db208b599643e7728d71e7e6f,
* 57d0f8b4f1ba43fd4c4bfbe826d1b255c6ef9fd5,
* cdb8bd9563dd8a0d32138de40bc64f0c3475790c,
* 6658bc41a8d66afbf348126f8adcffe86227e2e1,
* d7b3f23c53d83ff714dd829c929a27f2c05aab23,
* 7de1139b82571dfe55224022e05e095a32b1ea89
and many others.

With regard to d0d2e2f9a21e623db208b599643e7728d71e7e6f specifically, it
might be worth explaining: a) what liba2i is; b) what commits were
actually pulled in (possibly with 'cherry-picked from ...' or shortlog
output or something at least.)

Alex already knows my feelings on homebrew complex Makefiles so I won't
repeat them here, but I will say that homebrew complex Makefiles
combined with a high amount of regular refactoring makes life much
harder.

Please consider either getting all the refactoring out of the way if
possible or reducing the amount of churn in the build system.

[0] https://bugs.gentoo.org/930798

thanks,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZi2kPF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZAa1gEAwu5tygF6zH+Q7ypf57xGtCAZ6ZqU7Y2gRfCo
OJm+3bUBAIkJt0MHVfdRd3noeRGxpEos56pkWiim3ys+n+XgUJQC
=cr0h
-----END PGP SIGNATURE-----
--=-=-=--

