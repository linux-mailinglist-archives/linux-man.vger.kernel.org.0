Return-Path: <linux-man+bounces-2034-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 731EC9D04B1
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 17:52:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 726CF2823B6
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C171D9A78;
	Sun, 17 Nov 2024 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C91C+YPa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B44C16F27E
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 16:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731862373; cv=none; b=KSTzvXRF0ZYlVBTvLuhtjnIqF6hb7WHopeQQAP+Qd1ZBPCqPA1kubO8qpA3ED1z1oBcioSJx7ntfbA712CcboMAJjOweidWnFu9RVUnITlEZQySGQ/10VcY6LW7Vn9j2BoLV4QrMKy6lVAEQYASvo950/dpHyC5w1HRSMFUKBW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731862373; c=relaxed/simple;
	bh=iMzuz9Onck3O2F7NfseggpDaoKIMU+nZXfSocdF9OX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VoBQj0AvgPVUrijv1ih2S3J2g24RRGJgFWnG02qNyKpvebvMFjngr8QoE2rY1ozs7oWd0t0vYY+rK3Y3vycdx8kOGVK2uulprCd4ndUAUMcEHDBv7oCTuyroePV68kEc0ENWk7PF67ZPc1P4W397FJiKjf4kHqRw6rmoAOjLOFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C91C+YPa; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-29678315c06so153057fac.1
        for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 08:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731862370; x=1732467170; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MlcKk1K7mHuoeFWXW7GLK9/cTImPL5r69l5+JlNeRyQ=;
        b=C91C+YPappoTknfZRYwnejjGAkLKcoZ4n9OREh69mpDyULjNePp4RERUEGQ1RAHEsH
         SnnlF1i4eNPsnPjOQfKTEFFRiuIc0YqeRXEQCsZGVh+rvAYO9E1p2w3PjfTX/7357SHR
         TV1eZdSIbrGop/vFitTK305QSd+21FCsQajblPGUvjQa72+wa2Y8XqVZwJte7XCloE9g
         JH7AxnBPlIU+lggVr+BWwwXRc/3mZIhlh1um9491x5EbIcDnJi/jF9qp7x/NgxXQPJwV
         WGCEXNTKh4LfzFN+1+n3oc7iHtZEWRefiGnuwcJ7Ypc6EL86Th9Mq3K4Di1vWA55xm7+
         mJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731862370; x=1732467170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MlcKk1K7mHuoeFWXW7GLK9/cTImPL5r69l5+JlNeRyQ=;
        b=dDI37CZ5yWD4nWnpGKyx++i2hsvq28rttvfm0cXFUpT3Toi0anCY3Y+wbfjlKARVdy
         hhHuYf/AehsaCLxyNspkI8oTShDbHEJTITMddlJRpcEirTwSQoqR6C6k7lZTCTwV7dvV
         EB0q7HvkfrHWTVIu0RZAcfSnZwT9kstPntOXX2nl1EjNl0y2IXzzwLITI7pbtT5MnX9Y
         HARqOPWxK9RDRYcyJR9unfQvc1nRp3WVw+oKLvF94Ev5i3fuKtYA5XpLiGaE4a8z4Z/o
         Ooxw2gltKeEgkQ8pxs2sukQJLvf8jKbSZQUk9juu+7sg8scQYf1C64h7qQgS8ROfkAWt
         soww==
X-Forwarded-Encrypted: i=1; AJvYcCVVCh+JrNEhXeBranvQPY753RkNfPAmj5BPm8Fpq0Pv68XtldaLWlBIxOyKGYdsozeck3HCJ2aT/Mo=@vger.kernel.org
X-Gm-Message-State: AOJu0YzdVo81E23zma2yAWY36dc1sXcwUju6N4gbtNNTUYdMP2o6sr85
	CLxJhqJvIMpxZXefwishzvHfkZiQhhWeWyMlwJhJHWRrGwn3c+yjnt9akQ==
X-Google-Smtp-Source: AGHT+IFsC8GZqGUVCy05oVOs6b4lplXyKobnP1AXUZ+pbkaF9Jv8SE1TL1BZcaJqfYqH9v7XMNk2pw==
X-Received: by 2002:a05:6870:76ac:b0:296:82ed:12ec with SMTP id 586e51a60fabf-29682ed61b1mr449572fac.17.1731862370531;
        Sun, 17 Nov 2024 08:52:50 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a78124c58sm2105239a34.41.2024.11.17.08.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 08:52:48 -0800 (PST)
Date: Sun, 17 Nov 2024 10:52:46 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <20241117165246.wokob2lw4if72cer@illithid>
References: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>
 <6teowwb5747ra73s6kt4egc44obtwtmuilcrmxuf4n5p2ruusv@uuuf5gsdf3cw>
 <Zznh6miM2ROCvd5G@meinfjell.helgefjelltest.de>
 <ewbluvbiuqurszt2nquemzv4v7lb6p6vlmqoob6k5wiwweptmc@6pex5535xuee>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gk7oz6jbziormyke"
Content-Disposition: inline
In-Reply-To: <ewbluvbiuqurszt2nquemzv4v7lb6p6vlmqoob6k5wiwweptmc@6pex5535xuee>


--gk7oz6jbziormyke
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
MIME-Version: 1.0

Hi Alex,

At 2024-11-17T15:33:33+0100, Alejandro Colomar wrote:
> On Sun, Nov 17, 2024 at 12:30:34PM GMT, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > Am Sun, Nov 17, 2024 at 12:26:16PM +0100 schrieb Alejandro Colomar:
> > > On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    inherit-scheduler =E2=86=92 inherit scheduler
> > > >=20
> > > > "In order for the policy setting made by B<pthread_attr_setschedpol=
icy>()  to "
> > > > "have effect when calling B<pthread_create>(3), the caller must use=
 "
> > > > "B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler a=
ttribute "
> > > > "of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."
> > >=20
> > > I think that text is ok.  Can you please clarify why you think the
> > > - should be replaced by a space?
> >=20
> > Is "inherit scheduler" a name? Then it is ok.
> >=20
> > I assume the reporting translator read it as intrinsic attribute of
> > the schedule, then the space would be correct, in my (non native)
> > humble opintion.
>=20
> Branden, would you mind revising this?  I believe it's correct, but
> just in case.

My copy has the hyphen, and I would retain it, because
"inherit-scheduler" is an attributive phrase modifying the subsequent
noun "attribute".  Except for some set phrases,[1] attribute phrases are
hyphenated.  This one seems to fit with some structurally analogous
phrases.

inherited-scheduler attribute
load-based scheduling
fixed-size buffer
red-headed stepchild
greased-up JavaScript programmer

Regards,
Branden

[1] and probably some other idiomatic exceptions, because English

--gk7oz6jbziormyke
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmc6H14ACgkQ0Z6cfXEm
bc5iKg/+Khu2+i44d3Cbj8tAlPMCcIEFy/UOTFPHEnqNNPragM68tBEc0jsNXH95
IjS11oSbJzaOTX8N9x8r+gqniXEJESHjwJ3qi2cbSfUnUksoW6/0QFwHJimMjWc6
H7W1mBg+H03owYyaeS/LpUUT/F1mzBTVEgC4uk30j/LhvJQ6EW0xgi+u4d9kikzq
zxOUlIkFsXe8zXmfQIZ8+uIYf1ysYeO8DiC8/6JhmlZuRdBzipzZ9i0HVIRmFiy5
5B0vpEMrsZE0YKVshpUllPO1BQ2yajihRkUMx7rDJMbfccfZupBsFkbGg0IBhq/x
/AIL2+7FW0Zvl7r2fPFNJAmcoxpFDJDaK7P4easlXMC0PAqWOrDcOK682cT4EXh3
Sg3A3Hew65zPwPFm1bF1+KyFuavRtgzc4boNZZT45ZaUeEN5lgZcK67pBYehPS7e
HwmYkgvuuU22S4J5Gi/i/7VC84ti7zSu490MsOF3O2qrmQ2c9gdoI1mudcq9g5fq
8O/9BBZYpyKaDvthTm+L4JY9CQXWtm/b2uNTOAYi0jSWCFURwJQ8HA/s714iozNS
bAYNkafBYYbb5taujWgse5XrkOPGgfSuLhYUJx6e2PH11KSdCMgJGN/AfZcWV5l1
3syveHSkAl4CmJppkfvqfKazlIGoKbuU5DoCm4dbXOC4Nx0Uz+E=
=PXWi
-----END PGP SIGNATURE-----

--gk7oz6jbziormyke--

