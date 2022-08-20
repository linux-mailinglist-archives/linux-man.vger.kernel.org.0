Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF5E759AB7F
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 07:44:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243044AbiHTFnM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Aug 2022 01:43:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbiHTFnL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Aug 2022 01:43:11 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6789E19A
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 22:43:10 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id u9so6848525oiv.12
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 22:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=4D9/caWCpXPwMuudW2JON1/4OdyqLgAdvc0MaKmFe2w=;
        b=ZVTDYAT4dYYnuVYW6PTfve+rLU2WlhDDpwWyZccmGDp7kRu72W9RAq8NlFaORG4RdX
         jBbdjByDSj12AX4r5y1DJNLXCVgmbtP95D0tqEWgExm7nHE2GQyNwT6cTy8vtepOteKw
         rMVxFl6BgiHPW1VmCLYkT+IsacGE+bKpqg0XB3p/XZGBvFxY9tl3yM+p8YGGaF6cyzx5
         AknXYRGNQjdHzZZ88LtBteQQMT025L1zjPRQY7wllFfxYolHSfpuZBs6WPyiKdBJ9K6E
         YN4o8kNjIZoUMw1J1xYCKHYem9I5GMX5Phkth48vs+pQxE6jlE0LBgQwNSDnTg40Ldyb
         rmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=4D9/caWCpXPwMuudW2JON1/4OdyqLgAdvc0MaKmFe2w=;
        b=nmVMKhBcxaGZnOvXvkTPV4xv1VL3Ew4Ix3c4rG9Ueso49RGc/WbhV247aVyF5wLrAA
         ILBraZgwFN0IRv2JmPr0xXOHwnZVB6SCyV4prW9hEUhMknYjftbymP80mOefOuz0fqDA
         AsFiLswlQk8e80JnjmrwBq2NRaZ+uwHq4D1NerdOaZkNJBB8+7vJSj8Ucu7AUVzOQ26+
         h4TDObs0xBwnCWuy1EkE8g8fQ5ZVgeGxWlgGaWgpCyjknCHHXOB235He0T9X6hxrBNFd
         eV3cRlZNrdBRo2UwmdBAR1tq2aV99/AZ9lD6BfriPtG7SAh3iuZWhLQ3gYE9vSpGb/ge
         X3pA==
X-Gm-Message-State: ACgBeo2s+rZxGC240euNBuHyM0yKg2YBMaABlYHpaZ2iC5oIv475iRjl
        kTzASbKOMTu5Rrz7jcZMbotleBh6VTY=
X-Google-Smtp-Source: AA6agR7FyTd2xgDRDZNXQ6epV2tsAQVgxnh1Z7GEBSBIqBVDuKkWULdECJEU5CoEwZDWL/xIA+iZaQ==
X-Received: by 2002:a05:6808:2009:b0:343:60b:6dec with SMTP id q9-20020a056808200900b00343060b6decmr4867056oiw.1.1660974189687;
        Fri, 19 Aug 2022 22:43:09 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x25-20020a056830245900b00636c6108dfasm1649613otr.28.2022.08.19.22.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 22:43:09 -0700 (PDT)
Date:   Sat, 20 Aug 2022 00:43:06 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Message-ID: <20220820054306.hejc3awpxvoajghf@illithid>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="metaykpjy2cgyr4x"
Content-Disposition: inline
In-Reply-To: <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--metaykpjy2cgyr4x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-08-19T20:03:23+0200, Jakub Wilk wrote:
> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2020-09-30 20:12:
> > +\(bu Do I ever need to use an empty macro argument ("")?
> > +Probably not.
>=20
> FWIW, man-pages(7) says it's OK to use empty string for the 4th
> argument of .TH:
>=20
> "For library calls that are part of glibc or one of the other common
> GNU libraries, just use GNU C Library, GNU, or an empty string."
>=20
> There used to be a lot of such .TH calls; now there's only a few left:

In my opinion it would benefit readers of the Linux man-pages if the
fourth argument to `TH` were what it is in many other man pages: an
identifier for the name and version number of the release originating
them.  In every page it would be clear what version of the man-pages was
being viewed.  Little sophistication would be demanded of the user to
check the Web to determine the relative age of the pages, independently
of the modification date of the particular page.  Such usage would be
congruent with the argument's purpose in AT&T and BSD Unix, where this
datum was "7th Edition", "System III", or "4.2 Berkeley Distribution",
or similar.

Further, as the libc-related man pages in this project expand coverage
to other libcs than GNU's, the alternatives to the empty string
proferred in man-pages(7) seem less and less appropriate.

> $ grep -r '[.]TH .*""' man*/
> man7/posixoptions.7:.TH POSIXOPTIONS 7 2021-08-27 "" "Linux Programmer's =
Manual"
> man7/bpf-helpers.7:.TH BPF-HELPERS 7 "" "" ""
> man8/zdump.8:.TH ZDUMP 8 2020-04-27 "" "Linux System Administration"
> man8/zic.8:.TH ZIC 8 2020-08-13 "" "Linux System Administration"

The replacement fifth arguments above seem pointless, and in the case of
bpf-helpers(7), downright unhelpful.

       .TH title section [footer=E2=80=90middle] [footer=E2=80=90inside] [h=
eader=E2=80=90middle]
[...]
              If section is a simple integer between 1 and 9
              (inclusive), there is no need to specify header=E2=80=90middl=
e;
              an.tmac will supply text for it.

However, I realize that bpf-helpers(7) is generated from another format,
and so code would have to be written to more usefully populate 2 of the
3 blank fields.  (I would leave the third unspecified instead of making
it explicitly empty.)

Regards,
Branden

--metaykpjy2cgyr4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmMAdGIACgkQ0Z6cfXEm
bc4bGBAAjqC3D9Rh29dHWyjHj14ZR/Q/KhYZ3adn/TG4DMomxxyLukPJpvhRhP8w
btJMqIrxcjY0ur5NR/HYqElzf69WQb5o7ZqHZGx9BnPuPnYm80DOXP4C3eP8oUbv
fj6K5Y2yAIT1/TVgZSKsVOCgZ1GLErMKa13aKUcdCaRK/1yCD3WfmgoA8GXBiGQ9
8OisgkyxUAqIqf+Z7lxzu5f703aRyMsAX7m07ixJyzG03V/tkXREfpAEvCt2L0yL
gPQSPBrqxVLNjhFairx0FPU3MzmZ1aAWaR6icqQghuGSEChyuP3NbrI4dLDC4Tps
jdV3OnYE6sNs8Cx6XsTQEVIkCkG0kmh07XMAWb/BaTsvw26hzlfHc2vhNMY1Pwha
MH+OBZVGY+U2TnF8TByqYyCWoStPefUIRRW7FAlzZY4fbACTsMMFOKE/YgeiDvAp
G7AFcae3mNhXzT2lBxwPWd/3YbzcIoVYmm4hk3VQsQl7V2Vve+ITWGvr5SOO8J4v
qMjYh02eByw+TEPbBvJnwRrGo7x9N7Z9y5I3oEwxRAEXYCCg9wcSrTza9WO0qHJe
DGGHQvmoG5tBAdZAVbvXGLQeZkLerObxToqn8nXpvoCywCeVbwjFvV6+ZcbNgLx7
RKmDzwrl9ivdvpjPGf8utN6uRNAyJjheS0hz2WK7OTIACA0yh/s=
=fGAq
-----END PGP SIGNATURE-----

--metaykpjy2cgyr4x--
