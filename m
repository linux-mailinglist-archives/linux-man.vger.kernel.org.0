Return-Path: <linux-man+bounces-1117-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 392F79040D8
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:06:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3CB41C237B2
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2719D39856;
	Tue, 11 Jun 2024 16:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G5YvBDHF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842012B9DD
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718121996; cv=none; b=sCgSicoloksC7va22vV2ZyxNfVOhfkCxxFEUsKXMIGdQtDok7S30dFK7pSzLRi41JA3sTF+ebAFxnySrvLdNbOa/hGwr5oMNUZIcnl+Mne2tw39OyZrl/jgL7sIMI+mTHfgJVKKw1u8Zul4sJEaeZ1XL5C6arUmqLNISgTSTfww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718121996; c=relaxed/simple;
	bh=yuSlUKEdkUoAtR25Uq+qievCWPr8h2bqSnbClzE+BnY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=olOVPBzSZGLFAX7lQMsxq3ceCJe3t6g50lf5iFS3oGtQVQnz00vKy1AqaG77j0EFCCZk/j0cAthGdsX2pjrs7JOcjlo59NfRuQwTNQvtNCGcmyOrOO46yBG8g3x8pM8YPQFhdTZRM0vYeLsUGXKF3otyzed0kmW1O80fPnl4IdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G5YvBDHF; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-24cbb884377so543211fac.0
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 09:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718121994; x=1718726794; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dAAlFLnGZAB1eg2kDQSwwA/LirG/FgwAc/NNWsgUMS0=;
        b=G5YvBDHFANnfEcbqw1EiB8YnJdbXRnXz26Aa2+/fAeRSPqAmsTt7fc0HtDCU60xJQO
         V2EPtrcqAFrPyOxXMvchgKMIX0AHpru7/3sfZhctvB57lJkrb+31QP+cpAhz8WpOJqGB
         P8fhpvaKRy/tPxkRU/oEMwgF0MgX+6O80qT6t9Xea5w1huwdrUG5Yf4hzduLkRZ+4Fpc
         VuJblJzHdaHGIjHLfJcJtkit+THd8UfdlA63sgjJaB8Ia6SNj+baqLLcB6HhZ0dc5Q8k
         R9AUoMnjvpQK7dZglRF0hM7Q60awcQZ2+Yok2RAC++sVSBEww0CL/ayr2i4mruKIzmak
         f/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718121994; x=1718726794;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dAAlFLnGZAB1eg2kDQSwwA/LirG/FgwAc/NNWsgUMS0=;
        b=SVShWymzHog/7ZwrqSj07FCKorvqexnp5saHIZGGrEq1SyQrhwb1cNL7s8Hvkk0EMd
         PAq0rstTJcaNR9LonK2BodW89j0WwclBasG8ew5v0DzV/4ywD5Px7b6e1+UrFynnEzsp
         1CltChVxOg3jdt/COAHQo8R9g64JMQqeOH2iDO0iJ2dralotcp0cNMup/+QUBdADqkMj
         hRTMOiVnvQQS5pb9csp7kpw2WHiCP2DtNKz6gzpCVOHAca/a/Tr8zLgt63lxUn/ofFIh
         Bi2LDsn0ZdNVdSqFNjoEDV1b5vnAcLFPm8XXCpCp36HhXDZ2Ti4RDUlvAPrViaW9Zi8r
         P8iQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0XWSzatNKZEQAAD51zwomQI95RwxO4Fp8J1vQn3BmPhbPCafv6ycvhwCHSAJQaK4x8viS+PW7/gXCpplXXZATYP6s8e8rk8fE
X-Gm-Message-State: AOJu0YwctN7HSjS5R/6WB5M7Of6PrsbkIG8U+Xbx7+vjSf37760VyA7v
	Tj9bTx8XLX91Y+xWRN568FldrnYqbCrlehdtFc7uugDWpZkmpztG7FKN5w==
X-Google-Smtp-Source: AGHT+IHh/vvbEt6hbWdSXSGhinDRaFpwdqltoYanYVWcCIwfar6CnWQPnqZ93pRH18t+P5VDeZkCzg==
X-Received: by 2002:a05:6871:758c:b0:254:c842:46f0 with SMTP id 586e51a60fabf-254c84256c8mr6401319fac.59.1718121994319;
        Tue, 11 Jun 2024 09:06:34 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-254d8b2b4a7sm868521fac.8.2024.06.11.09.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 09:06:33 -0700 (PDT)
Date: Tue, 11 Jun 2024 11:06:32 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <20240611160632.q5c7pdo55kvgmt7d@illithid>
References: <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
 <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>
 <20240611123950.qmc6m2rlrlst5cfg@illithid>
 <6ghtfloubcjb3x43e2kxdmeqgbajgllfzmk2vhwy7bfzs5cbge@vq54kljkn6sp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mnynrv7tg6habldf"
Content-Disposition: inline
In-Reply-To: <6ghtfloubcjb3x43e2kxdmeqgbajgllfzmk2vhwy7bfzs5cbge@vq54kljkn6sp>


--mnynrv7tg6habldf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-06-11T16:34:54+0200, Alejandro Colomar wrote:
> I see:
>=20
> NOTES
>      For details of the STHYI instruction, see the documentation page.
>=20
> In xfce4-terminal(1), that's an underdotted hyperlink.  In xterm(1), I
> see the same, but it's not underdotted, and seems not clickable.

Ahhh, I reckon you have OSC 8 hyperlinks turned on.  This defaulted off
in stock groff 1.23.0, but some distributors may have turned it on.
(Which is fine--that's what man.local is there for.)

groff_man(7) (from my working copy):
     -rU0     Disable generation of URI hyperlinks in output drivers
              capable of them, making the arguments to MT and UR calls
              visible as formatted text.  grohtml(1), gropdf(1), and
              grotty(1) enable hyperlinks by default (the last only if
              not in legacy output mode).

So, for you, GNU troff is not complaining about being unable to adjust
MC 900 Foot URL for formatting...because it's _not trying to format it_.

> Why am I unable to see the explicit URI?  That seems the reason why
> I can't reproduce the warning.

With register `U` set to a true value, GNU troff assumes your output
device is capable of making a hyperlink clickable.  It can't otherwise
know.  (Well, it knows that some devices have no such capability.[1])

> I don't like breaking URIs.  I'll accept the warning and add it as an
> XFAIL.  However, I'd like to be able to reproduce it.  :|

Try running groff with `-rU0` (or `-r U=3D0`).  That should turn it up.

Regards,
Branden

[1] Two things I'd like to see:

    A.  ...an extended ("user") capability enabling terminfo
    applications to query a terminal (emulator) whether it supports OSC
    8 sequences so that it can then do the right thing.  See
    user_caps(5).

    B.  ...xterm(1) support for OSC 8 hyperlinks only as far as marking
    them and giving you a menu option to copy the link to the clipboard
    (or the primary selection buffer).[2]  Thomas Dickey has been pretty
    skeptical of OSC 8, and I don't blame him for not wanting to get
    into the URL management business--it presses people's security
    buttons.  I am hoping my suggestion is a Solomonic one.

[2] So you'd probably have to middle-click while hovering over the link
    text.  Even if implemented, I'm sure that this would be yet another
    feature gated behind an X resource and command-line option.  ;-)

--mnynrv7tg6habldf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZodf8ACgkQ0Z6cfXEm
bc5XQg//Qp53AmoHwdLUo4DwfFZD5Bj8enUjQZukA59oLPJrbUlWxDLSEJ9/fL4P
FuiaW2nOjd4CAV79pqthrTeds96omosP3f1fR5HYJILdmF0mpZhlt/U6HwpYKAbJ
Ln15lsjiEz20u+P29wNA6ORfKyrY32kacwq7DllzA1YFcKvRx4JzIEYHIl4y0aPk
KmNwnte93cZZCvPUUERet8fWkNSVBB9TP2wCfSttq1k5yNShEnMUiwOi6I7eQAjg
myR5y7cng1lXp4bE8P+f0MNrSm+Uvu8kQviZAalpxId8XunE8ywrLd/tm38jzl6R
B3o+a1RAM/+vXLrQvlV5CNkQ+bC/9v5CqgakiAAdih0fZHJVDphF5uPgcD0BtY1G
UWuFKPByn3mo03Wlrj3kYeOLiP513EC/VvimVBzvoNua4Kr1l2CsC6LItcrOIYpD
nfOD7Ageby9yLK4Dch8jiuVDjpiJ9ofzYkBn2JlI/ELJQpbM4/+mx88KHFPfYM9T
yH8gNlB5RSCUd/RoJaascYsALQA9oBeuVTODIrDnSUrHSimkzrdzyHxIhdasCD1O
yARtXCu3ey7vUmNTLK2/we1Cnks5LgcrGg7542eP6SPVxgepopULIH087FeXkg/i
oxLJxnaD9V/gbFW1zpIYwKTiGaLqugJA6jr6Kam/XepMHiayy60=
=2oks
-----END PGP SIGNATURE-----

--mnynrv7tg6habldf--

