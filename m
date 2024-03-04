Return-Path: <linux-man+bounces-522-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D25418708AD
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 18:52:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69E5F1F23A5B
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 17:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929F96166F;
	Mon,  4 Mar 2024 17:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8tTM4OO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546CA61668
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 17:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709574740; cv=none; b=p9hLLloWGAW03yl5Z9wqazWnXJRBeKKH29znOogM7TZbVyGH69JLfa8O1KtjaO/f8G8ospkgB6Om+Uo70/BR70L/WlJyx3YRVSA9EvnhzI81v5hs/yuxST7aYz/uhJKuHgnfYaaqiiugYkLd1XAbKEdADFJ1pavkygGOoYNUNKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709574740; c=relaxed/simple;
	bh=Q2VTBJvRm67nWQA4o9Y0sJjcx1BYodhXuxxGA9Wof40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o9IglCcW18P6kQLuof3ujlb3qXrfmKiKJ+P1DA8YoPIIaU7AhgTXdoQGRDT2S2WGllZ4lD6zZ23CesYmSPzkUP/yESEzrB5S0eI35dE8SuAXOaSjeXwTFOD287DtBP07xxN8YJ7VdFToIaK+0GqDnjqOMkz31QJLy3aLNisv+dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8tTM4OO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B6C0C433F1;
	Mon,  4 Mar 2024 17:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709574740;
	bh=Q2VTBJvRm67nWQA4o9Y0sJjcx1BYodhXuxxGA9Wof40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B8tTM4OOCtzJrIuWPpbLbDzhgnHNcAiUwPhUpu13ruPNiz8XzZadxLi8oCCz/d6th
	 PVEsHXCbP/Q4XXE2khINJI2AZU1/0VFNRnAoOY5dzFd+8TQLw3JdWJt/HDDb1veCo+
	 04YfOhCYQpXnP1n2Xzk+G9cn+b6Jhn8o/qNVZpZNC12T6CWPgyEyLHqo7ixDqk7c46
	 KtWwFxe07sVVuSBp7KJ+224SOuJvbv6WzHg5tXHTxRJ3XQSvVIwjXL32hbCHBavPmQ
	 dJjQjnkoiD2cMf3pEWG7lnQ0laMMJ0uoObqoInubEKCkp9XFgjCEw49NeKzDmNSnnQ
	 WAPAe0tTxGlow==
Date: Mon, 4 Mar 2024 18:52:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: logb() vs floor(log2()) (was: Man page issues: logb, significand,
 cbrt, log2, log10, exp10)
Message-ID: <ZeYKUOKYS7G90SaV@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qt/6QOdeBIjdvKGJ"
Content-Disposition: inline
In-Reply-To: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>


--Qt/6QOdeBIjdvKGJ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 Mar 2024 18:52:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: logb() vs floor(log2()) (was: Man page issues: logb, significand,
 cbrt, log2, log10, exp10)

Hi Morten,

On Thu, Feb 29, 2024 at 07:28:10PM -0500, Morten Welinder wrote:
> I came across some minor issues in some math man pages.
>=20
> M.
>=20
>=20
>=20
> logb:
> The formula "floor(log2(x))" should be "floor(log2(fabs(x)))".  (Or
> ...abs(...) if it's meant to be math and not C.)

Confirmed.  This is a bug in glibc too, BTW.  That text seems to be
copied from their manual.

ISO C says this function is specified in ANSI/IEEE 854, but I don't have
access to that document, so I'm not sure what's the specification of the
function.  I'm not sure if it should fail for negative values (like
log2(3)) or not; although the standard mentions the behavior for
negative infinity, so it probably is specified to work for negative
values too.

So, the behavior of the function seems to be correct, and it's just the
manual that needs to be fixed.

I've CCed glibc, in case they want to comment.  But yeah, your
suggestion seems correct.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Qt/6QOdeBIjdvKGJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXmCkoACgkQnowa+77/
2zJruxAAmbixMiXdFwE83fEYTGrfPrlmuv1JpLODstsdRS2goJi5IuA+wf7ai/ye
+yryD/gyezqhz67MQJSXOyJFq55C4xVpqldnJxv4Y06+JzOGZmDyOYkybwahwCR6
V2e0KCEQLHDlafqtFRv1tapfwzOVw/DAsRRcYd2VAgtmf6aIVvx8pry5yMyHPEsK
3JejwI9iaKZcRKzWiu5J9Mm/nnEyza0636hz9Oq8xmQ/PI/MDsq30+k71IchxRB/
C8uUC0SFRwtP/97oC+S40L7xCjnHof0MVUH7I7uhE1CIh+DNbdbwnWnNmcDt82o6
m7m97DjxFJ11zPND+PZ/RQCukCCkgyps1LaYIKgDIhiXuRf6H7x9zUs3Sau8dpGf
3M/z7exqpRonlakwaPhqMdo3Iqhwy7wihV+wMfnRKAry+5ZwCVN5J60pgn7PBM+G
C8SQHpPlgsfNPYEorZRMLEzBhxDq1Ll6ny88p5XU3OOu309G8dGxMxSBdy8jBveg
HXkWg8agR3lnr1MfJMkOg1htVEcWg8zJiRexpyNS/Xx43NtLNpkMQIXd2IV+QG/g
3O3H3cpJ68Y8Du5QCVMJQaihbte1ss9iB7R7vhpqPKK2zOSp3xZPI5l36pTvAXSk
NQIh79pq9xjzYIbhU/KMo5efmzYL7VA+tIQIqRLPeGAemt95waU=
=in1C
-----END PGP SIGNATURE-----

--Qt/6QOdeBIjdvKGJ--

