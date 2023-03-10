Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E07A6B35CF
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 06:01:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjCJFB2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 00:01:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbjCJFBS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 00:01:18 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63DB5E91AA
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 21:00:59 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id a25so15956448edb.0
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 21:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678424458;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3fuyRwW6ibmNl4+H1XNvhy3OSYWxBKoyiRJ3oH305Y4=;
        b=Y+O4iGg4P1p6d8w3DFBi+08X2hp9kmK589J5JRPF8j2fDMSYNES7y5auzstyGdd8Yu
         QKTQ/Mb1ZhDK2oTOADbR+OKPo2t8miGFmjI6d3mnpOPW8y2eqbm2Yrn3CnTgrjUG1MDT
         qkgDTgsBsjFiqcPXAphGtY2r+Osrzx5gMg2jAaAEolTuUuMP9Gf0hpwqu2v32g4rElud
         MAC4/hw8yrFkZqDFAUwKGmwF2c9p+tJ+R6JNVVvmlISi0phqwGUmUBYlR4IGNIHRju8j
         exnfA3anEV7k5TXpFi/CZpHzg3IGqJPsesNs70I8o2PgmIVvWUM4t3PBqSxcgrewp2mQ
         L75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678424458;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3fuyRwW6ibmNl4+H1XNvhy3OSYWxBKoyiRJ3oH305Y4=;
        b=x4g5LnGY4RqCXl3Z+U5qKfBRtO9qG2u44WAcRZURjCadzUmgg8CBa2Dk/A8hsDjXUj
         k4WomJs99ti0dK01osvNp8eO6TEW63PPK6t0vK9iNdkIPCVcwvpj/bE/Q2rHyCTd+kZy
         +NnAc3DSyJm+wzHvKdPMLJUTzZUjkFGNTosgSF0gYavjsfqnO1KySQD4J1gFGeCaVJPS
         1pZNkmKFMxt5jzHHaxQX7x+O50IjODDNXT7/zOktPxxtT70rhxB4zkMh4TdzyuH28+uf
         0A7HSnN6qcy5JXNupJggYoVeXDDf2q9h+sjISAHu3CvlI/Vo677QD1lRA4xDa4L+V8qb
         vHuw==
X-Gm-Message-State: AO0yUKUCE+DSD/a6jLSQHEMt/AumMfzapR85uO/GEXfLRZbvdSX01a/H
        sUjbtt5dVrfh1eWAvxHYXbEFNPtvSGUBFg==
X-Google-Smtp-Source: AK7set+7Xjxsjz/57EvCP/B7Ox3hbTgzAPRIEp1XIfqJMc8wZpbO+GAjuEsU20kxgLE17y5sNr4Ikw==
X-Received: by 2002:a17:907:6d08:b0:887:dea8:b029 with SMTP id sa8-20020a1709076d0800b00887dea8b029mr28478220ejc.1.1678424457778;
        Thu, 09 Mar 2023 21:00:57 -0800 (PST)
Received: from dj3ntoo (222.sub-72-110-0.myvzw.com. [72.110.0.222])
        by smtp.gmail.com with ESMTPSA id qc18-20020a170906d8b200b008d9c518a318sm450920ejb.142.2023.03.09.21.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 21:00:57 -0800 (PST)
Date:   Thu, 9 Mar 2023 23:00:50 -0600
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
Subject: Re: Revert "Many Pages: Remove references to C89"
Message-ID: <ZAq5gg+aQB5TrDQ3@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Matt Jolly <Matt.Jolly@footclan.ninja>, linux-man@vger.kernel.org
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="YRaap5gSZz1axInL"
Content-Disposition: inline
In-Reply-To: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--YRaap5gSZz1axInL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 10, 2023 at 03:22:12 +0100, Alejandro Colomar wrote:
> Hi Matt,
>=20
> On 3/10/23 02:51, Matt Jolly wrote:
> > Hi All
> >=20
> > I hope this email finds you well. I am writing to raise an issue that h=
as been causing inconvenience
> > for me (and potentially others). The recent removal of C89 information =
=66rom man pages
> > (72b349dd8c209d7375d4d4f76e2315943d654ee9) has put me in a difficult si=
tuation.
> > As I continue to work on code that adheres to the C89 style, such as cU=
RL, I am unable to quickly
> > determine if a particular function can be used or if it was introduced =
in a later standard like C99.
> > This slows down my workflow and hampers my productivity.
> >=20
> > Therefore, I kindly request that we revert the changes made in the "Man=
y pages: Remove references to C89" patch.
> > Furthermore, I urge everyone to recognize the importance of this inform=
ation and ensure it is not removed from man pages in the future.
>=20
> The main problem was that the existing info about C89 was not consistent.
> Some pages declared APIs being standard since C89, while others didn't.
> Incorrect info isn't much better than no info.
>=20

This is something that can (and should) be fixed then, instead of
blindly dropping all references to C89, no?

> I'm curious about cURL's real need for C89.  I see that cURL uses GNU
> extensions (-std=3Dgnu89), which actually pulls most of C99[1] (I think
> it pulls the entire C library, and most of the core language).
>=20
> Virtually all (even MS, which has always been the last in this)
> systems support C99; why would you consciously avoid it?  Is there
> any system that doesn't yet support it?  Which are the C libraries
> that you need to support that don't provide C99 functions by default
> (or at all)?
>=20
> I'd like to really understand the need for C89 in 2023.
>=20

Some projects might like C89 and there's not much that can be done on
that front without the maintainers having a change of heart...

Personally, I see this more as an issue of manpages inappropriately
editorializing. Mentioning in DESCRIPTION of gets(3) to "Never use this
function" is perfectly fine. In fact, I applaud that it's emphasized
before even getting into what the function does. What is not fine, on
the other hand, is saying that it's in C99 and POSIX.1-2001 but giving
the impression that it's all of a sudden _not_ in C89 anymore.

=46rom the original commit message:

> Let's move forward, so readers get the intended notice that C89 is not a
> useful version of C.

This is incorrect. I can write useful code, even in C89.

More importantly, I find it to be an inappropriate attitude for a manual
to take. The STANDARDS section should not be the place for opinions,
rather facts about when something was standardized. If this is not the
case then perhaps it should be renamed to something else. "STANDARDS
EXCEPT ONES WE DON'T LIKE" comes to mind.

- Oskari

--YRaap5gSZz1axInL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZAq5fgAKCRCp8he9GGIf
EcGhAQCZ9EXATHz4bURW4kS2monZnTZbDssmDxYhpiqP8cCKLwEAh0f6UWX0gmhg
PaDqMXWatUIsf8LeTeGsB+cCKmiNzgM=
=jymL
-----END PGP SIGNATURE-----

--YRaap5gSZz1axInL--
