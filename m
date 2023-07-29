Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B05E676817A
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 21:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbjG2TjR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 15:39:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjG2TjQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 15:39:16 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0021E65
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 12:39:14 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3a412653352so2350538b6e.0
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 12:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690659554; x=1691264354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+LGZ0+2JWJAtcw22cdKY5CKJ/G6dfBp1vanNNjOOaBk=;
        b=OH3s4ODydS5f7TbbnUPhZFa1vQXXkypNt7JDa4OuSuLQcJHhALQ82DPhm2G78KlnEw
         dl20HS3Ku7Mz1p7PJ7wvvGi/d96uIPq2jhRPpHMMdRs+tfJk8AIXT/aG9h/KcaQsBxAY
         cD6T29GXfTRDQJcuDwy4dboljkK9fhYg4LLQ3BsiF8xt214L8OF1dVbgW8u87fexajI3
         NoTHn/4P3EhPgcBj4AhUvkBGUhbI1BbNAzn1eKmSv/pS6TLlflyISPX8cLA3hVUgmQpD
         oH7av8T69Dsni/tzybwQQzkG+6LiHuud+kP+pSLNmXPxqKsQSFd1Cx6NeDMygcnIQVFI
         ERmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690659554; x=1691264354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+LGZ0+2JWJAtcw22cdKY5CKJ/G6dfBp1vanNNjOOaBk=;
        b=eK2pbtQ+Utgm1ctI1ACzmrtwguuYFJuKZBjRqvtalV0lZsYsSh2NZok9HKcCn6T44z
         dfSwjx3s4boPfX1XxUZ7qi1E8dyLuIbtfGEkthEIYM9uo8Pfv/27eD4iVDFW/NESXdcg
         nBXVIz8kSPBhP37VzsmBapN7Mf2RBPat2N1037oC+YbS964DeeLkO/HHs5JnEEx1nRq9
         JYuLTFmSHRV3ndH3soqKxQMwMkMm1iF4+Se32A8YWnVpAi5YTar3/S3yd8zs4s3iEX1T
         QrAFpHbsWeIu6X/XpgAeprlwJYL0iJUXQuo6dbOkUzgZ7crp3iKKspJikw1x3V11eD/x
         f0Dw==
X-Gm-Message-State: ABy/qLaZIbb5BNzS+WaQE6loz39Rcn9hjC38WeyrhIvaByMWCR1SjHEa
        g3tEwLwIbAbZzAd+2SVq1yd6lPTQCuIb9Q==
X-Google-Smtp-Source: APBJJlHEYgJqseYkugzEDLme70fQM7ebqqtEKS41QGhCo8XbCJZNwfWUUqT2/hSWnwjkK1FvEOeogA==
X-Received: by 2002:a05:6808:343:b0:3a4:735b:e567 with SMTP id j3-20020a056808034300b003a4735be567mr6328964oie.41.1690659554107;
        Sat, 29 Jul 2023 12:39:14 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w14-20020a056808090e00b003a390ca26aasm2817260oih.5.2023.07.29.12.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 12:39:13 -0700 (PDT)
Date:   Sat, 29 Jul 2023 14:39:12 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Lennart Jablonka <humm@ljabl.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Message-ID: <20230729193912.mzn5h2hjnyxnxkeq@illithid>
References: <ZMQVYtquNN-s0IJr@beryllium>
 <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
 <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
 <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
 <20230729143855.1656509-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ctcq2tsbtvyk56yj"
Content-Disposition: inline
In-Reply-To: <20230729143855.1656509-1-mattlloydhouse@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ctcq2tsbtvyk56yj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Matthew,

At 2023-07-29T10:38:46-0400, Matthew House wrote:
> On Sat, Jul 29, 2023 at 8:29 AM Alejandro Colomar <alx@kernel.org> wrote:
> > I lied.  I should have said that it writes what is safe to write,
> > and then uses a somewhat "safer" version of undefined behavior
> > (compared to other string copying functions).  The standard
> > differentiates "bounded UB", which doesn't perform out-of-bounds
> > stores, from "critical UB", which performs them.  In usual jargon,
> > UB is UB, and there's no mild form of UB; however, the standard
> > prescribes a bounded form of UB.  However, I'm not sure compilers
> > --and specifically GCC-- follow such a prescription of bounded UB,
> > so it's better to consider all UB to be critical UB, just to fall on
> > the safe side.
>=20
> Do you have a source for this? As far as I am aware, the standards
> have always followed the "UB is UB" philosophy, which is why
> standards-oriented people keep trying to reiterate it. I've never
> heard of anything like "bounded UB" vs. "critical UB".

The Ada language standard distinguishes "bounded errors" from "erroneous
execution".

http://www.ada-auth.org/standards/12rm/html/RM-1-1-5.html

I've been after Alex for a while to read more about Ada.  Maybe he has,
and its (usually excellent) approach to attacking problems is seeping
into his consciousness.  ;-)

Nevertheless I would agree that if WG14 refuses to apply such categories
to the C language definition, it's not going to help most users to do so
in man pages.  I suppose the best route for such a distinction to get
into the language is via the GCC and Clang compilers.

Regards,
Branden

--ctcq2tsbtvyk56yj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTFatgACgkQ0Z6cfXEm
bc7/xg//YrtEFAJiDlYk50VLDJt5QKdr4ZSpMskTkfgWkd8Asv25TQTX2baN4Ps2
RU5TgEnAAcKZHbxcLnGnmTBkgRI/Dx5QEqLY3XEg74+H9fYJlvU4w/B3R/yAZ/rg
5u1DpWlganzWTvXAhOoros/oy7cHZNzYin80qd3nEALvOmUvdrr+aaoHY4vyrw05
nNkHSG27eKNdPxiDKKvbCTB2JMU1HFsoyPZIhg2ZAztcuHEbfGSbTJQLRu6HZDCX
yqDac0ba5ExLvg4JFzEamTVQyEL4IELnsc82gkZIZe/I7e+irZ8JI/hVQjbChRiJ
QlXO8M2W5clLs3mC5jcCqwEq8OjNUfgW5YlchiVfISYMu0BYOvLs/qTuyJtVb1lX
cBSZZVevhKY+8ReiDgRMzhmL2nUE9PD3Nj5KAN55hiGFMwRdoT6/J9mN5tqft+0S
mmBSCPMVNGB+qAY1HHDtpajSd/oaPoCVlq+JLSmSA72ar/dRL7YwVmM/+HnDtPEa
hrXUtrtcnVpwScmiuKeH7oSBylYLZ5jW/qfKnPyxmEzZhoQjMI2bjczByhDUaCEL
cAIFRMjaEzzY0fpxNSve66RBu5DJ+gjZxJGHNokBh4JXulAUja8EUzAPXmuIPIXT
H79nAzu+gSMZR46GmT1+mAVkzPHnKyRb55hK9bogDE2fCrACx+A=
=e2xF
-----END PGP SIGNATURE-----

--ctcq2tsbtvyk56yj--
