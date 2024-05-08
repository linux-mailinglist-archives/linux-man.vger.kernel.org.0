Return-Path: <linux-man+bounces-892-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B53B88C01EC
	for <lists+linux-man@lfdr.de>; Wed,  8 May 2024 18:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B11828308F
	for <lists+linux-man@lfdr.de>; Wed,  8 May 2024 16:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7666E129E6F;
	Wed,  8 May 2024 16:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK/Mpt1H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F9B1292E9
	for <linux-man@vger.kernel.org>; Wed,  8 May 2024 16:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715185484; cv=none; b=sgRlbpqlXhv2ZgkP9czlOLbUDyIyeP3qj8xS5Cbc9aLVNb10gGybRadSUbA1K9WH7hEfEuUNEeYovg7xLMhicVv+edAeynChHxXX5qeWTNhxbsuuRo89taQVCZzFb2A5x2tTHWyMrwwrCtrc4skzlqjAbeSupFwb6uwIZOKKYR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715185484; c=relaxed/simple;
	bh=lUO8ZhbiTDqHyVf734CHHctBCdT1YvRMZfyYTV4ruio=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=VQ+2r6Jw/afAlE4vPfwZCqWC1vMBFWxVLe5Qzbt22fMP3mRcL5dTFJSb79yRxWCjO0qIthRJQ+DmhvtfH3+cQnFL+adDj5x5+yXAGgF6Yr7o0M1N/wfOZwkucKY7VlXCM948Y3v8qxi5Po1Hl2sLbs4sQkIOk0qjA7KfgNxciGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK/Mpt1H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB146C113CC;
	Wed,  8 May 2024 16:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715185483;
	bh=lUO8ZhbiTDqHyVf734CHHctBCdT1YvRMZfyYTV4ruio=;
	h=Date:From:To:Cc:Subject:From;
	b=eK/Mpt1H0bylk+BDYcQ6SapecDUWLeNZ2Go3i97CTgiSa++akErbuXzb2P2CkFfSb
	 HhL4+LdIr1Q5ryD0uGjpD7FRNeqwQrsWwzpe5s4BFBKiEm9eQ7DzMATFaSAoG3J87Y
	 K3Bpwc4HeSXXxWGb+GqpLMqqu52qpYtpxxcJ139QgpEPZjsTtD6uPAIbvHliyeY5ef
	 4Hk+GoKZ8gzKVSLUXQbO700Lh4A75JQohS9POK8bBYMSJ/5BpB5vi01FIjPlw/cIhL
	 I2v+iZRMXPPNaNv1QJIxlL2oOuCd5P1wkGrdpAOlKoJ8GOKkNcaPkjtsU8BDcmtnn9
	 W47je5MjTi7sg==
Date: Wed, 8 May 2024 18:24:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: manual pages in tzdb
Message-ID: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vlrwlpmhhxmej4fl"
Content-Disposition: inline


--vlrwlpmhhxmej4fl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: manual pages in tzdb
MIME-Version: 1.0

Hi Paul,

I had in mind something: I would like to cherry-pick all tzdb's commits
that affect manual pages into the Linux man-pages git repository,
instead of just pasting here snapshots of your manual pages.

For that to work, we'd need to agree on a path inside the repository (or
I could manually --or with a script-- edit each commit, which would be
combersome, and I'd rather avoid).

What do you think of moving the pages in the tzdb repository into
man/man*/ directories?  I see your repository is perfectly flat, so I
don't know if there are strong reasons for that, or if it's just
innertia.

To be explicit, this is what I'd do in tzdb.git:

	diff --git a/date.1 b/man/man1/date.1
	similarity index 100%
	rename from date.1
	rename to man/man1/date.1
	diff --git a/newctime.3 b/man/man3/newctime.3
	similarity index 100%
	rename from newctime.3
	rename to man/man3/newctime.3
	diff --git a/newstrftime.3 b/man/man3/newstrftime.3
	similarity index 100%
	rename from newstrftime.3
	rename to man/man3/newstrftime.3
	diff --git a/newtzset.3 b/man/man3/newtzset.3
	similarity index 100%
	rename from newtzset.3
	rename to man/man3/newtzset.3
	diff --git a/time2posix.3 b/man/man3/time2posix.3
	similarity index 100%
	rename from time2posix.3
	rename to man/man3/time2posix.3
	diff --git a/tzfile.5 b/man/man5/tzfile.5
	similarity index 100%
	rename from tzfile.5
	rename to man/man5/tzfile.5
	diff --git a/tzselect.8 b/man/man8/tzselect.8
	similarity index 100%
	rename from tzselect.8
	rename to man/man8/tzselect.8
	diff --git a/zdump.8 b/man/man8/zdump.8
	similarity index 100%
	rename from zdump.8
	rename to man/man8/zdump.8
	diff --git a/zic.8 b/man/man8/zic.8
	similarity index 100%
	rename from zic.8
	rename to man/man8/zic.8

If we do that, then my idea would be to do

	$ git remote add tzdb git@github.com:eggert/tz.git

in my Linux man-pages local repo, and cherry-pick commits '-- man/' from
time to time.

Does that sound good to you?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--vlrwlpmhhxmej4fl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmY7p0gACgkQnowa+77/
2zKEyRAAktCOds1l3pb2wGJwrelSlTSwX7XPp+pJlBGWdva9uJjgxKaCtoZsRD5q
t4XP/l76upWxb5JaSVa95b4WNdlq0lmKIQi0WZrriY4a1CDm3PJfE1OXo0o4Szg5
orGdMCuaTbiYokY7t+phsj/zQZq8R8YyoD3LmRh0DT8CbTRHCjdFaCelVgZhnHH1
2XSwufV2kxUKVprMJ2fv0so4vvmTyvYQt528a+T3NOFCdNNHvXhdNqxiAZut1bn5
FMJWN0OWfRnceXGhKCdtNItgzeZWpJKTMCDLz34+yBVBa2MkauK8qaBhveKHfVv3
RqkcgsZfFd2UQvht+vTwf2gvEXsFruQO9hXWQKyQM6CZjPQcaHGxw7VZaQLDd4me
UMSxRpWL0v6dCIMSTgtvBNPxjpOkkLYcqV4WlbBtM4dIfJlypnhwj1XSUNLTonJ+
gBNJqJ/K/gcGJodo+Kyv4dnXDMY+/KkWFq6VpklOcF26eh6rjCOOUuhaMjfXtCuz
RTDOEqAE8a5qBBmag4r1PC3tbXYELuN+UEueTmPT8Fek7h9v24WQC/spBBbpSaEc
OjJiGb6SbJp59QMm6xD2znAQZAOna8fp7hhM2am5Rs7UQhhFHT6ygyHJX5+RD2wG
oZQxaaVNSvOjMV4Ttae7qHnbM3imrwxLhOYtXkucps3I7chl58w=
=fDFt
-----END PGP SIGNATURE-----

--vlrwlpmhhxmej4fl--

