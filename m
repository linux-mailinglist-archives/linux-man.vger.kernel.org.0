Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18A1C734811
	for <lists+linux-man@lfdr.de>; Sun, 18 Jun 2023 22:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjFRUFL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Jun 2023 16:05:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjFRUFK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Jun 2023 16:05:10 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88DDBE47
        for <linux-man@vger.kernel.org>; Sun, 18 Jun 2023 13:05:09 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f90a1aa204so15889225e9.0
        for <linux-man@vger.kernel.org>; Sun, 18 Jun 2023 13:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687118708; x=1689710708;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IgOO1BnVttniwNYaUge/EOCN7wyn5NOoGfmuOlvsTwA=;
        b=X9xDmmN23Zp5CiuZfKFiB8g1J+NMxc5WLzjtbzxN4uaHqQ1YyCRATlVsgnMVGkpL1g
         ggTJS+yipqAE5/prqbmBoRf/tv2Z4Lhcm9a6x8LumxPaq8qWnvF/Il7NprHE0QH24BJ7
         h9rD+VyUJJRDiWyEvCINKSMSKmRRyuduTkOdqrm6Poij0vR44QXb7gSgoIx3fNRsNE08
         lH5gfR7v/jdGjq6cHqiLdatLOFfNXLzKCRn50QS152CREuNCSuS55SJthlOoopTLpTTl
         oZWaon8ekktBN9IrshuIq2H8MlhF85Qirv9LaC8Ijt+uiQVsBY7THZ/mjURXyKYB2bRy
         xrGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687118708; x=1689710708;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IgOO1BnVttniwNYaUge/EOCN7wyn5NOoGfmuOlvsTwA=;
        b=dXboDLZLmUqF5vTtSwwM4nEU7dPsva6FAOgAyb240tIcOrDWzX5ODKrILX1Cblc/Zy
         dIufwT4citouGDOn6I+T1FiWpA0ysNalGYNEiBFns4LkugABcskgrWiXhFA89dC43vjA
         cDbm7QRcr/16bLApXYe2o6rcRPtRDtPNzwBjIP8/w0Bu9vwrlvixHEJqnq89Br5iHTFd
         snA/L9CZ3keqf1xEVWLTg8rPqhrzEqfKJS9bRr13JFpGY4HfVbtMv0ZgBoeqZE/ST6NA
         AFgQbdsT1g/QsjRhHaPSVwjlS5QUy8gmXzLgGBzPqhnOPpXcRXnbkCFVVtdMXRU3ETNA
         S4tA==
X-Gm-Message-State: AC+VfDzJktinxuyJBhO9a9cr2dalHgHAlvKGwj1jKnueTef14UN/nKMT
        PQmzsiZynCcOmCqPJbFgDTA=
X-Google-Smtp-Source: ACHHUZ79aqPbzOJpE1+12a/HmvIS4eh1cD9Tm0FRGqAtO+GIRuaCMjk4ZYQjoxB/ypGPrnSEXrBpiA==
X-Received: by 2002:a05:600c:281:b0:3f9:960:2bb7 with SMTP id 1-20020a05600c028100b003f909602bb7mr3600404wmk.23.1687118707732;
        Sun, 18 Jun 2023 13:05:07 -0700 (PDT)
Received: from dj3ntoo (220.sub-97-147-16.myvzw.com. [97.147.16.220])
        by smtp.gmail.com with ESMTPSA id f18-20020a1cc912000000b003f5ffba9ae1sm8533108wmb.24.2023.06.18.13.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jun 2023 13:05:07 -0700 (PDT)
Date:   Sun, 18 Jun 2023 15:05:02 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page boot.7
Message-ID: <ZI9jbkdX1cEWEhYd@dj3ntoo>
Mail-Followup-To: Helge Kreutzmann <debian@helgefjell.de>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
 <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
 <20230617111129.GA15264@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="TQ6cpZCEgY3YnC2z"
Content-Disposition: inline
In-Reply-To: <20230617111129.GA15264@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--TQ6cpZCEgY3YnC2z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 17, 2023 at 13:11:29 +0200, Helge Kreutzmann wrote:
> Hello Alejandro,
> On Sun, Mar 12, 2023 at 12:31:37AM +0100, Alejandro Colomar wrote:
> > On 3/11/23 18:13, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    This is true only on x86 and Lilo is probably not much used=
 anymore; also systemd has its own (?) bootloader
>=20
> Lilo has just been removed from Debian, so to my knowledge only Mageia
> ships it.
>=20

FWIW, Gentoo still has LILO in the repos. This doesn't change the fact
that it probably does not see much use anymore. Definitely not enough to
warrant being mentioned as "is often". Maybe a historical note, if
anything.

- Oskari

--TQ6cpZCEgY3YnC2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZI9jaQAKCRCp8he9GGIf
EfOrAP9l2QMuX2jB+DDl43ej9Ff85zlRa9/4Ymur33xL9MGfkQD/dvHkWGqAl4GT
sUa8DiIZFS2paOdL6fCVzz+mxDNSIQo=
=FvcI
-----END PGP SIGNATURE-----

--TQ6cpZCEgY3YnC2z--
