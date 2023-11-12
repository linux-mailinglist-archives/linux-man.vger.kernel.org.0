Return-Path: <linux-man+bounces-46-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 114747E8F98
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 12:26:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D52C41C2030B
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 11:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2C579FB;
	Sun, 12 Nov 2023 11:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJJCLHD1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C763579C6
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 11:26:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDA1AC433C7;
	Sun, 12 Nov 2023 11:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699788404;
	bh=OIktjU/jqIavhyGURGW/2Oeg+WW4tUPdMPFEbNVkouQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WJJCLHD1gJzgzjsftKSao4EPyHcWyOwaGQNrQLHR9zdM+EFJp4xdiMG6DSdgxqmq/
	 +bkgj/l43g2VXtGig0ftIYU9rOl+hCzXgQPWNcKuA/tZ0yMkyjcN46evdSt5iFbN9m
	 h9vemqbuqB+H0oDEUa9OCDIv6XWDGJ7EMinpGShRvhbeb4vJ3acXcsJ0ZW6oanePpx
	 0BJHauPG0j73cHCDG9aRqImTe/P68u/kMx5nnhG4qxuDO+HrtTPo3WL9EfCiyB6UF7
	 gruY6B2V/1tLUvrAA1KCj2dMZLEXltiU1Earxih1h81xkAj2/Uyp5gVO+shDodQSi/
	 IfUB9LYtyYoqA==
Date: Sun, 12 Nov 2023 12:26:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Jonny Grant <jg@jguk.org>,
	DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>, Xi Ruoyao <xry111@xry111.site>,
	Stefan Puiu <stefan.puiu@gmail.com>,
	Andreas Schwab <schwab@linux-m68k.org>
Subject: [PATCH v2 0/3] Improve string_copying(7)
Message-ID: <20231112112629.13827-2-alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SdQdqSftj0ju3s9s"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Mailer: git-send-email 2.42.0


--SdQdqSftj0ju3s9s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 12:26:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Paul Eggert <eggert@cs.ucla.edu>, Jonny Grant <jg@jguk.org>,
	DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>, Xi Ruoyao <xry111@xry111.site>,
	Stefan Puiu <stefan.puiu@gmail.com>,
	Andreas Schwab <schwab@linux-m68k.org>
Subject: [PATCH v2 0/3] Improve string_copying(7)


Hi,

v3:

-  Patches 1/3 and 2/3 are identical to v2, except that I CCd libbsd's
   maintainer (Guillem) in 2/3 so he's aware that we're documenting BUGS
   for strlcpy(3).  Since the strlcpy(3bsd) manual page is part of
   libbsd, it may be interesting to also add a BUGS section in that
   page.

-  Add 3/3, which adds strtcpy(3), a function almost identical to
   strscpy(9), and very similar to strlcpy(3), which doesn't share its
   bugs.

Cheers,
Alex

Alejandro Colomar (3):
  string_copying.7: BUGS: *cat(3) functions aren't always bad
  string_copying.7: BUGS: Document strl{cpy,cat}(3)'s performance
    problems
  strtcpy.3, string_copying.7: Add strtcpy(3)

 man3/strtcpy.3        |   1 +
 man7/string_copying.7 | 121 +++++++++++++++++++++++++++++++-----------
 2 files changed, 92 insertions(+), 30 deletions(-)
 create mode 100644 man3/strtcpy.3

--=20
2.42.0


--SdQdqSftj0ju3s9s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQtm8ACgkQnowa+77/
2zKJBBAAk57P+1BkdQLSYgrMp1skpFxYFoURCnhBz7olOsCv5sw+VhPmjx5z047G
uU5A/PhQF6VZ//NzZJGfLKcy2j4MBkc52ksGoLedVied+A/Z/DeuKXBJaGR/MVoK
gbJfV84J94Lsa5DuSAZKXEsak8KWc23F4As7cpIZHStz9eGeKVOfVcvF9kBSkxPm
yEdOrnVdaY+pRIZwN+S3URsfbnG/g+jzrJbInJeyMlLC/s11ppSzuC7VDdI8PnJd
085VMi17zuPXMbc5mruKO3qF8dRpWLE/13/RAKmy1C5JsOUi5n3z3UFk8rOYOLaD
ueEoIqIQwM13I7q+BlWpMl2pFLAMbrJcBHonrbKw3cbuekozKq4los5uhVJ+ep6/
6aDgrSzvd+qcaVj/1/pF6QfMq28gv5Wdjck7wnKla0X1ywkl0wyg7EnY4SiregKd
6Jj1kDYAxBu6VlVzFbQE30wIxfLfgvEbKEgYJC/w9YrS0MDr5DXMBGUJdezwTfoW
vbjwDkxOEqTRRl47ST1SJNgdwK2Lt6x25rVEcZdDfox0aMFNmXk40JxcwHJ5WcYR
V3kNnDvswTJlh1pr7Wjd0ALXA8iwFMP9f2VpQzNCeTIIWBbL0SQ/U7FnuxqaROfa
VoMWZtUd0qel4VY7McVilQoYTnZMwfilAVKUHMZ56vmBdbIFgxM=
=vNjA
-----END PGP SIGNATURE-----

--SdQdqSftj0ju3s9s--

