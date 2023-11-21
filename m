Return-Path: <linux-man+bounces-130-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A31B7F2FF6
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 14:57:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BED71C21A15
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 13:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26915482F7;
	Tue, 21 Nov 2023 13:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dmtpVk0Q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE949B
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 05:57:17 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1cf6bdf8274so7386715ad.1
        for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 05:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700575037; x=1701179837; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U1ybgs75vr4bIrSDGJR6m2sAvKoZm+Vg/TlZtkk0fDM=;
        b=dmtpVk0QhrEqjNYXGkcPz6ySlm3vs1HqtNYhnwkLPfpHeoAJ9jeaqck6tsmtrJm5t0
         jhhAuf7zDjx5+cHFIj3gSVY46/1CIaugAkbKOwESrAodE8tMrC5N6QJuurVD/IK5OuEd
         gj/rTHsNTBX3fbRkV/AbUsrcOnXhP2w5SqYcznQtQdnUkdKK+c39NlHHwFTeOKvK8aJa
         B9ZnD4Xsbpq3uV+ji7pqn2Oiw1ihkBhjmfWimJIbHWw/1400y45iObjxwl54vJWWV4D9
         /+xBTUASMQUP0faMeVUwKVQgJvYRuenvsq77jiHY+e074zPg+M7EWAmghDsnvF10/fYS
         PzvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700575037; x=1701179837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U1ybgs75vr4bIrSDGJR6m2sAvKoZm+Vg/TlZtkk0fDM=;
        b=NvoFPhVVsvr+0PPMEZqo0UFHNz4I8BfvTc1EknLdX5ta6Ntb5T5isG8wHx67BV01Ym
         q1U2D7mz8kvl1USwsn9Tb9WKEF+zfVrk8nRaYrCCy536TcdZrs3Jg7ERkcMVNS9If0X3
         gSLqk+eykPEnm14swu+w+aTa097DZBvQFSQe68+vxW2Hogj7yX0AgVWLv6OEAsmxtzkJ
         XT9fY+c/e9YOxDyThQ9zE93CSvlmZmp6qmm+mcAcCAUCUZGnRI9yfjoAI37BhYjampb9
         mil2uc/qF3tPXdQuI6kPfRIWABLTPeMlKHwS2mXXgNO/JTdSaVkrxb4DdlTY+wynGzVf
         lTpQ==
X-Gm-Message-State: AOJu0Yw/3Cfn/Va2CrAKBqB4i2fnsxS4zlKohAIxDtm+eDuDuuBZOvSl
	SncQydHxU9yg/j4ft9O/S8s=
X-Google-Smtp-Source: AGHT+IFVeOGBV//IjROPwQ/GEK0PcDQU7NwS5aIT17aqaKJEUQgrhg2l3Ops4o9Ewe4DlpMmkG4zUg==
X-Received: by 2002:a17:902:b7c6:b0:1cf:689e:583f with SMTP id v6-20020a170902b7c600b001cf689e583fmr3407965plz.27.1700575036678;
        Tue, 21 Nov 2023 05:57:16 -0800 (PST)
Received: from archie.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id b15-20020a170902d50f00b001ca4c20003dsm2517426plg.69.2023.11.21.05.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 05:57:16 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id ACFCA10207143; Tue, 21 Nov 2023 20:57:12 +0700 (WIB)
Date: Tue, 21 Nov 2023 20:57:12 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seamus de Mora <seamusdemora@gmail.com>,
	Linux Manual Pages <linux-man@vger.kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount
Message-ID: <ZVy3OB9dNW-gX972@archie.me>
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan>
 <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
 <ZVxSrmdVkalf3FL9@archie.me>
 <ZVyBmFI_TvmJkaN1@devuan>
 <ZVyXdZ0MYBFyr1xG@archie.me>
 <ZVyn1bGkfq5SjAQ0@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1iVQ2g1oKnVIk7IW"
Content-Disposition: inline
In-Reply-To: <ZVyn1bGkfq5SjAQ0@devuan>


--1iVQ2g1oKnVIk7IW
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 21, 2023 at 01:51:25PM +0100, Alejandro Colomar wrote:
> Hi Bagas,
>=20
> On Tue, Nov 21, 2023 at 06:41:41PM +0700, Bagas Sanjaya wrote:
> > > > On Mon, Nov 20, 2023 at 05:44:40PM -0600, Seamus de Mora wrote:
> > > > > Uh, OK... stupid question first: Where is ./CONTRIBUTING?
> > > >=20
> > > > It is in man-pages.git tree [1].
> > > >=20
> > > > Thanks.
> > > >=20
> > > > [1]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tr=
ee/CONTRIBUTING
> > >=20
> > > Yes, it is in the root of the source code repository.  Since you sent
> > > the mail to the correct addresses (alx@ and linux-man@), I assumed you
> > > had read at least the head(1) of that file, since it's the only place=
 I
> > > know that documents that.  I'm now curious: how did you know the
> > > addresses to write to?
> >=20
> > Observing the mailing list [2] AND read that file in man-page.git tree.
> > For the kernel proper, I always look in MAINTAINERS.
>=20
> Ah, no, I was asking that to Seamus.  :)

Oops, I thought you were addressing to me. Thanks anyway.

--=20
An old man doll... just what I always wanted! - Clara

--1iVQ2g1oKnVIk7IW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZVy3NQAKCRD2uYlJVVFO
o4cMAP9S06zx7uI8hZslC+9hdrwIfIJHUtpgTTSj8N2KAu6GUAD+JgEloAFPiio/
xxYbJanKA2jKqOHuWDH3y0EVBwvmXAM=
=zH2h
-----END PGP SIGNATURE-----

--1iVQ2g1oKnVIk7IW--

