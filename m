Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CBF1769434
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 13:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231875AbjGaLGn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 07:06:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231716AbjGaLGm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 07:06:42 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A04D120
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:06:33 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3a5a7ebdd9fso3194634b6e.0
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690801592; x=1691406392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FtUnVtF4Hhcc5Ohoz//mYrs8+TeFvyuEpaA49+XhDDY=;
        b=Rdrx1TrUaweKljSVrVq+473Q0eVtqEQrQbT35p/DgMqQHHZaeIlvtvF19yFc2+DyrV
         mLtwKdQoKsP6qTz/THNADiHQTxEVB22rhwsyhscZkl9lxtkrt2TKXAEWPXX+x5HiVnUh
         T8ktnqJ4D5H2gSiGcLYofVZ1lhYIW0cOF4RBt2M7mmANWUHfTFK62BvURpSkmaates+z
         MfolJV5EGarFWDVtgkMoJLxRu+fAPr5ZiMqViu1R2ncDJ2wGhoVeSgTCJ5nJWrWPnpUF
         1r1EFBYNvRR8ihiMkPw09atpqAmLRfFAlYQBxfVXKDlUGAj/4q3yUXx4upxyirLELnid
         SkYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801592; x=1691406392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FtUnVtF4Hhcc5Ohoz//mYrs8+TeFvyuEpaA49+XhDDY=;
        b=Y/MNjpG5BMwLZrTmEyuD2H/utt019J4cae73DksLaxajbi4vtFojyv3SIjHsDKNdjR
         rzSXWMJornY98DB6ZBUZP1cEYbZ1n18Yg5xNnnQX4K3NhO41kuxcYCWKvLXgdFalSQxo
         am6DduGBhyBiJEayBbylkB7yFfGm0fRrk/EecC96IsPVYgAIGfXNMxj582A+APMMBout
         MwcH/ef/tEf51xvpxZ9vJvV7fyoWsevifLDXp6wL3Eth71CzR6XvCjng9AKtTdmIgOm9
         69UxDEqaan5i9bZ43Wiimb+FEzltrwEe9UBGAFKrIxU08hnTxtoQZuokW0+LZ3/ASqXW
         o4mg==
X-Gm-Message-State: ABy/qLbm/0h1Szg13tB+8un2ukuRUOmryUapSW19Dsu7Dxi6GUOa8YlF
        aZ7sjbDLMYXN8GUAHVS4UMHCrQjQmdc=
X-Google-Smtp-Source: APBJJlHPxOv6boNIEG+YzuBPBBpvBot+AJhDl1/u9ouO6LRAIt7ZBFfbuNPJvdVQ2KMxpKydd1tA+w==
X-Received: by 2002:a05:6808:190f:b0:3a3:91f8:d3da with SMTP id bf15-20020a056808190f00b003a391f8d3damr10888856oib.13.1690801592337;
        Mon, 31 Jul 2023 04:06:32 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u12-20020a056808000c00b0039ee0bd8a11sm3929450oic.42.2023.07.31.04.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:06:31 -0700 (PDT)
Date:   Mon, 31 Jul 2023 06:06:30 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] memcmp.3: Recast security caveat
Message-ID: <20230731110630.e6zmzvskibdbvp6b@illithid>
References: <20230730153137.qgkurw4mudy6etca@illithid>
 <08b04a82-8bd3-07fb-9962-a28354e8de60@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vz2qzqkk3ivsyk2k"
Content-Disposition: inline
In-Reply-To: <08b04a82-8bd3-07fb-9962-a28354e8de60@kernel.org>
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vz2qzqkk3ivsyk2k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-30T19:31:39+0200, Alejandro Colomar wrote:
> On 2023-07-30 17:31, G. Branden Robinson wrote:
> > Use terminology more carefully.
> >=20
> > * Refer to the info sec property of confidentiality instead of saying,
> >   vaguely, "security-critical".
> >     https://informationsecurity.wustl.edu/items/\
> >     confidentiality-integrity-and-availability-the-cia-triad/
> > * Try not to confuse anyone who's studied the analysis of algorithms:
> >   don't say "constant time" when "deterministic time" is meant.  The
> >   time to perform the memory comparison remains linear (O(n)), not
> >   constant (O(1)).
> > * Tighten wording.
>=20
> I prefer 2 spaces between the bullet and the list contents.  See
> man-pages(7).  Anyway, I accepted it this time.  :)

This had me confused for a while, since I had no tagged paragraphs in
the patch.  You must mean in the commit message, too.  I don't think
that's documented...?  I guess it should go in the "CONTRIBUTING" file.

> You need to quote your name with '"' due to the '.'.  I've found
> some software has issues with it.  git-send-email(1) is one of them
> (due to the perl library it uses).

Thanks--I fixed my vi ":ab" command to take care of this.

Regards,
Branden

--vz2qzqkk3ivsyk2k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTHlbYACgkQ0Z6cfXEm
bc4vFQ/6AjPKrU36hp+hA7yU0hO0uUTa6cglZsGlJLaOGM7p5XIuCMdz0hxp0nuX
HPDkGNMUUhD3i8cV+aD9AZr+/h/riJH6ciu2loYQUmXpkyGK2/QE55qhHVDKsmj+
kWjwaWGro6tJyPJINOWqn52TMSrmomaqIawQoYi/sRkPiKWLiRP9qgu6kBiIoxSP
9UiBaPpW58JdyY8KkKuHLY8hk8lJ7vw143tlAmb3invaArIM2rFjSFcAHa4ZALlB
wkp1V1ksyvtXmfaznKR5gNMmDnr2KTFww3TbEvwf7vty6A8S3bZzBRfdMlPwiX06
IXovzoV67OOvAM5Zw53kDz/SartOm7oZfgSv7GaRHX28F63sUHYIcKSEK8Vfn3UE
E01AYMTIbKplp9+0uur4/tpzy6F+cGLHt3mOj3/oURym7lzjgvNmYJz0uywqW6SE
zg/OEvO37YCZ5e/mN8MRKF6Wdl9OxqmPL/xDk1MAe790CMuppElBqQVYcs5oIUrr
4bRjr5a4HXXaF/DXcxJsR4nSpmKQgPPJ51fLOt9N7NJIghT7WDEEmRwIKhv5j4PH
r2o6WFLqGFcS2oNSywqWj34NKvo0bZlo50YLGoSyMIOlKcXaY82pYwNURZu3d7OK
WtXnV9UapJ1hH5vqCROOhoexzAUTLZjUsY06xyy/uCQfe4h+5Qs=
=+7p6
-----END PGP SIGNATURE-----

--vz2qzqkk3ivsyk2k--
