Return-Path: <linux-man+bounces-472-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07121862A1C
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10B62B20F57
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 11:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19696101F2;
	Sun, 25 Feb 2024 11:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSdMPjTb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0FD101EE
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 11:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708861288; cv=none; b=fiEkOuHrXBXDgahyTdqXpQ5oGYyXB592dzprwl9Ofzyiqxs+5gKi/wgen1yUHA1Rp+JFTWm+OwcjbFxBdqEEsa+tdWzlhItS9fMev7KfreF877Q5s7ZTtAmAcLYF9vYZ0LXsN2a4XO74GKhrTIVMie13bCZ15eFu6EWTlq2rdyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708861288; c=relaxed/simple;
	bh=YhrjeiOzMlRVGhL/fHneFxhEI898oyevZwoSc8iRRhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fU8mGnnWtnKKlV2tqfss1zmG0iZOdLXpMX0D965UVOEM0ESzmhLrjZWvOEwm1iWAADpIrdOtIKtEQkGsihxEiU4DrulyGeHQV/TSuKSy6fHiDOguFwYsPkvvGQuRIhc0SYOg+Mc9Sep3eZfRvzWmqbMLUd7/33XK6soOUyuUnz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSdMPjTb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73A39C433C7;
	Sun, 25 Feb 2024 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708861288;
	bh=YhrjeiOzMlRVGhL/fHneFxhEI898oyevZwoSc8iRRhc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VSdMPjTbbbSeAL63WIHGpsor3IGX+GcHakejVK517zg88jgyxpurqtIISEgx2vo1Q
	 ZfQu+uRo6PPtm2ngXdUasMyYPLwHTAXFCWeJacRUoonNkowf6E1Api0/oT2CPsZdbi
	 AV04YjlPjc+E1BjlK8V6wUtpvA3sLbSmVn8U4Lrn8MiQf71f1QDfYKWe+KE5ZbXEFZ
	 Em9KPYRXF+1SwBL2LyEwIPQO9dMWoDqR2wu6N4d1CVSARfF5vowUvEehLP+HUBtP5h
	 shev35dWa9QWrqpxkGIqPotQRhVbKUsc6yt5I5FQiyvP6np/MK496UzgQdxKshMQJP
	 xDFo6ICgnhqZw==
Date: Sun, 25 Feb 2024 12:41:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: Thomas Orgis <thomas@orgis.org>, linux-man@vger.kernel.org
Subject: Status of SA_NOCLDWAIT in POSIX.1 (was: SA_RESTART and friends as
 XSI extensions to POSIX.1-2001 < XOPEN_SOURCE >= 600)
Message-ID: <ZdsnZcu1IRjkRyo5@debian>
References: <20240214095707.1824c25c@plasteblaster>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XzU6VbO8JhN6Et3r"
Content-Disposition: inline
In-Reply-To: <20240214095707.1824c25c@plasteblaster>


--XzU6VbO8JhN6Et3r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 25 Feb 2024 12:41:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: Thomas Orgis <thomas@orgis.org>, linux-man@vger.kernel.org
Subject: Status of SA_NOCLDWAIT in POSIX.1 (was: SA_RESTART and friends as
 XSI extensions to POSIX.1-2001 < XOPEN_SOURCE >= 600)

Hi Eric,

I received a bug report for the Linux man-pages' sigaction(2) HISTORY
section, regarding some constants being XSI extensions in POSIX.1-2001
while the manual page was silent about it (so the user didn't understand
why their feature test macros weren't being enough.

While trying to write correct HISTORY for those constants, I realized
about an inconsistency in POSIX.1-2008 (2017 revision), in
<https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/signal.h.html>.

The DESCRIPTION (normative) section of signal.h says SA_NOCLDWAIT is an
XSI extension:

        SA_NOCLDWAIT
	    [XSI] [Option Start] Causes implementations not to create
            zombie processes or status information on child termination.
            See sigaction.  [Option End]

But then, the CHANGE HISTORY (informative) section says about Issue 7:

	The SA_RESETHAND, SA_RESTART, SA_SIGINFO, SA_NOCLDWAIT, and
        SA_NODEFER constants are moved from the XSI option to the Base.

That seems like an accident, since 'SA_NOCLDWAIT' wasn't moved to base,
right?

Please forward this to the Austin group if you find it appropriate.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--XzU6VbO8JhN6Et3r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbJ14ACgkQnowa+77/
2zIOMxAAmrOlEwt19kFvmBNqUBqW6mTFNZAetAbLG+NUbVF7XobJE3UWBRZQZxS4
aXrNiFJN2cYkdzap6F1nuntkZGgHNUss4Wgr3W7a1q65VEcKBFnwTtV4W5kx/t7f
7A3oGRAR3J4E2FeM3633Ixam7S+lNy4vkAvZ484m0h4ukOTpdg8Nnb4c1Cl99M6Q
5qnwY6uh1QIMm2n9oHkcycWjqqBPmeW/tgHYgFifQQ+/Rk5YfjuUsGDiey0W5PWY
UMHPd1vTI8lqelQOpAQAMxfO3WthC6FfZiTZ1SsVVzLfsmHwoFHCtDBGmbDht1qI
RCgyKtTupIw/rjHVba/JI8U+aeQ9UNTDe4ebQ5AFFL47hJPO0zhubG4gmlzxZA5I
5grXjNvUiMLVJu8570Vmu6SQy14XOiVCMyMkGNEqMSH5lgaC8V7JAiWa248BJkf2
90ROuVKWTiEkoZb2l1W0SBvtzwR0/JiwQldIrIvEAWU2bBUr44GrO7kjvhOAN2uB
eS8HwrttexGu8ufLc/+9HsbG5t6RljguviDUq6aG1a6S+M22Wtz0uzIfS3ucANUS
3TEyBYrrjXcKdxiSNoxcQ6ofCYDfCkob2wXHjAc2QwTkNCgihGmuX7DBV7aNCne0
BBUoBMgQqfYhg/D65jRvoaJjrQph/oT1+on19orUcdf7djRh3lk=
=XIdK
-----END PGP SIGNATURE-----

--XzU6VbO8JhN6Et3r--

