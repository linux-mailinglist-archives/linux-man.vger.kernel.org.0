Return-Path: <linux-man+bounces-679-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D62CB880F4F
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 11:07:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 752041F22D71
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 10:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF7103BBF7;
	Wed, 20 Mar 2024 10:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8tv8g9y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B173BB36
	for <linux-man@vger.kernel.org>; Wed, 20 Mar 2024 10:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710929250; cv=none; b=iAiFAe5n6inug8SjyWUlOF55HT7hqIKvMLpdyPqLQULu1kgx2eULYH1ltctddcMuyVQQvzM9HdJpA6hxWvxsjnebS+YPAtTSZ9L1Rl3j6qvuaXyFdK9u+3RU131R/85iXgJOkb2usJBX0JVG7kz6D/LYnFJBkzz+5LQLYzeyB2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710929250; c=relaxed/simple;
	bh=MyBNAnU8e5nQvZPLMsAutSqSQBkMyMHL2wPWTUAtSEM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pyZfedjhynVmBQUtqs1JrMJXB3/LQ26IwB/EB0cdZDeuBOKER7w2jICy4bsj8bUlp1hEf3SyeO3DjitKxSAhv55Vj7stuZ8KttcUAdcQMuEiGaj7ETwg13VRnfp59dSwISk5CjQU5UejiJx0Q94mmIyPOIjaJdLB002HIdPDYSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8tv8g9y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A820C433F1;
	Wed, 20 Mar 2024 10:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710929250;
	bh=MyBNAnU8e5nQvZPLMsAutSqSQBkMyMHL2wPWTUAtSEM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=K8tv8g9y3VFUrKKnerviB+4ywd61uiFfhqB9ku4V3IxZdiEGf7JS9tRiahaISdjCl
	 MTLpJKI8u7bBEuAysOi7CONsjk4/j1zF9m2vP/BFZ/RYdFQAlE1uEzJsBrL7lm+vFa
	 lFsoG/1CBXz3Zf1qyoxujxhTp8O8WeEiKKx5FJcPPROCbcVvOSeDjrMXubCyo+1w6O
	 r998rVJWRaK69dnA/62iu5qpIqh2F76WcXANN1idHyvvJZ37GXHSpThVXYlXKEFrSw
	 NQxsTQ2JFIkZJjCYNa7U5SS/DkJRyCGJvODsjUi5fxzyUIPUMuZx+0zXEKPz+YwDCn
	 lCCGEchof6c/w==
Date: Wed, 20 Mar 2024 11:07:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section
Message-ID: <Zfq1X2Fj_uqzfLqu@debian>
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
 <Zek9RRW28ZinfkxB@thunder.hadrons.org>
 <Zfqp50nfXipmM4dA@thunder.hadrons.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3DpwnbybTc++E/mV"
Content-Disposition: inline
In-Reply-To: <Zfqp50nfXipmM4dA@thunder.hadrons.org>


--3DpwnbybTc++E/mV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Mar 2024 11:07:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section

On Wed, Mar 20, 2024 at 10:18:31AM +0100, Guillem Jover wrote:
> Hi!

Hi Guillem!

> On Thu, 2024-03-07 at 05:06:29 +0100, Guillem Jover wrote:
> > In this particular case, what I'll be doing is to remove the
> > timeval(3bsd), timespec(3bsd) links everywhere, and stop installing
> > the TIMEVAL_TO_TIMESPEC(3bsd) and TIMESPEC_TO_TIMEVAL(3bsd) on glibc
> > based systems, and check on what others these are already provided,
> > and install those there conditionally.
>=20
> This has been done now as part of the libbsd 0.12.2 release.

Thanks!  I saw it when checking the err.h link pages stuff.
I thought of CCing you about the man-pages-6.7 release.  :)

Have a lovely Spring!
Alex

> Thanks,
> Guillem

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--3DpwnbybTc++E/mV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX6tV8ACgkQnowa+77/
2zIDpQ//X7NzTQ7mGJ1f7pjHvc4yRIhZlm1SVnn4a3y80Gz9l1xdwf+oMeCn3ste
iIJiurOsfFHF22KckgA38Hh7uCWlM/PHOpWXID2PMcA6mYhkP7O21Tyl1DzLrrIi
/g64oUIPyxKPld58r8jcsd53+xkLELCr+ABWG/jEFrLYpk6rnfcCVoBwGzQf4DoN
GkDqNDE6E5DHKt4md8Ev2ohJyRaXIdZ9Z75Ownc3d7DjyU7EMa9AGqqKOM7gd29p
lqqf/liRAsvNQuiwza5frsjSxXADXr+SVrcmWvYVhrPiuOpvsJmY36/Bg9ticnoW
oYelnEQ0XfdqA5iR1TT8+K4t3XYVRUbBDpVRqyLMJCtXzeuZ33BXZNN0IwAIcB7J
y257JnZz7S2YT7xmNiZldOPixg2PKBLDAOOVnHlF50Y089ps/kepUynVODd9c0ro
Ze8qp5O0YtTjbyz76ZeQvPRp65/U1zWNhFHbBP2PxsLVm/nF6lq/ARL4QboUlAwn
jDQnFlLQ+sth7rn6t6tehTwZwtS0GHg2w1rHEDjQEuuYpxDJpXDAP/PDx9a5wfrn
IWb5ydEI0QSx8Lojlj/So5weA4nbWu1rTfDFS0rutIaq4EdAp7wZj3I6edlUvKyg
Vh5/gFvXDcYEHb82SOWQLHcSSa/xKui5G+GcpqSXu4aw51so7nE=
=MBXW
-----END PGP SIGNATURE-----

--3DpwnbybTc++E/mV--

