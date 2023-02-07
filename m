Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12A8A68E295
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 22:02:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230196AbjBGVC1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 16:02:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbjBGVB5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 16:01:57 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BAD73FF2A
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 13:01:24 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-15fe106c7c7so20634047fac.8
        for <linux-man@vger.kernel.org>; Tue, 07 Feb 2023 13:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/OSINXFyjzq7zTdnTcFzg66/wkOmablN3M8jwitjdZw=;
        b=DFXpVYdtgUbxwoEcm+EOInBZYXpPRJGEmX2m5uRpDccxZrglEk6pnZ9qzE2tk47L8O
         tjXDuLiNME0y9XQzbNOAamfwRbV3SXDwP34TiF0/VUmDSbdGvDkvnN+eqZw+n1O1dQSo
         EYBZEYDtuNIV/LEBKSLyEb0h83Qad0yStMhSV/uvCcvtztqUBiNaVqQVGdu6l65tgMx1
         ViSoj7m30t/JX+0LyIBh3rmAHpU+Subg3mv35bOwr8DlOqiu6TMIrhKkRKszOGy+g6q8
         JEJ5UQCAjxkbsDjEvblljptfPvMW8KTHlVCmAl1ZXDUrmckr/ed9DbLbErPi/RRJk7Jb
         V9UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/OSINXFyjzq7zTdnTcFzg66/wkOmablN3M8jwitjdZw=;
        b=czXzMAN9Wqd1j7V7U+s9R+nj6AKd55JHgHGVxj/URiYZkYWXeGn/2O7B0HKJX2kecy
         KidM/QbbQWAmwBFzknPX+8WsUKWgI1LKJbLVv5oMHVYuqXCvDUullLWopIRwKz2JFmPu
         SnBpNINwfHA+Rr0s85lt7KhqiKoHrpUocLng1VSsRMIf1bc41WQi2S/duMo5RftNfXtU
         bG8zoMxeEe1Cz7jwxabTNzbMyFnL6R8SuIOjHKxNYGUA7psuLoAiEkaeedJ1V1fKHcON
         jYu9EcM6IkjalIubWPPQR96AW+FLitenf+vPCziYWpMAJLqGKrFPLm41kXgijUTSvIlY
         b3Ww==
X-Gm-Message-State: AO0yUKUK6PIW7NKH2exPYHZ1ILFfZtAMWKIxYE1UZWRKKaceVNJ9JoOG
        hoOg6WF1paGJkY6EX3HNfXTVisCaFcI=
X-Google-Smtp-Source: AK7set/aC7xN62nNVvMcvy76VteogRVVBBCJ6PyhcG/dZl1rMmtWvNCTSztyj2QF1Cnhj9L7C3seoA==
X-Received: by 2002:a05:6870:7a3:b0:163:8762:8f88 with SMTP id en35-20020a05687007a300b0016387628f88mr1755398oab.58.1675803678655;
        Tue, 07 Feb 2023 13:01:18 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id ds7-20020a0568705b0700b0016a19e602bbsm4733621oab.15.2023.02.07.13.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 13:01:18 -0800 (PST)
Date:   Tue, 7 Feb 2023 15:01:16 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     platform-testers@gnu.org, groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: verification instructions for groff 1.23.0.rc2
Message-ID: <20230207210116.nqdj5hhdjqbk6gba@illithid>
References: <20230204184818.ich3vavrjsdg7hxd@illithid>
 <20230204222031.yp5sxjbtovcrdzi6@illithid>
 <20230207202646.rrqn2qrlzag4al4k@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="eqw5djuoufxpcri7"
Content-Disposition: inline
In-Reply-To: <20230207202646.rrqn2qrlzag4al4k@jwilk.net>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--eqw5djuoufxpcri7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

At 2023-02-07T21:26:46+0100, Jakub Wilk wrote:
> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-02-04 16:20:
> >      gpg --keyserver pgp.mit.edu --recv-keys \
> >        2D0C08D2B0AD0D3D8626670272D23FBAC99D4E75
>=20
> Beware that this may import unrelated keys to your keyring:
> https://bugs.debian.org/909755

Thanks for the heads-up.  I would point out the follow-up from Werner
Koch upstream.

https://dev.gnupg.org/T3398

I am following the practices of past groff and many other GNU project
release announcements; if there is a superseding recommended best
practice for dissemination of signing keys, that could use greater
socialization among GNU maintainers.

Regards,
Branden

--eqw5djuoufxpcri7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPivBEACgkQ0Z6cfXEm
bc7BqA/9FOjKkBbeT6FB0eInJir6c+X8ZDyYfhfiZtD63t+cmx8sBi1SN6hHQhVU
xTiNUbiLaRFq2G1DofF7H8HB4HjNpsp4vol5rgSY8QMZP1bZpAc8R26sd09rPzaG
UR1uQqaWf2/mIkD/zcUCZ+ONo6IkRV9L3mMeQ5IrjOQ+rtFcogKYIg+w3tAleph0
yGD51xfjlZ7Vo9xRFWsF3DO+owh8q85tbzMGp850fCj9gzoclrtiJDbke6U/2/nF
tKwuX7ea0n4gn0FIbRbfqi43Ad4tpVg7lpM5Cma8lNDVGVYS/KJUoGapFnL6BUWE
9ICD5ZW5DZLQKBtKWEsI3CJ003IIHhZBTfad9Y16n6WVwvPUR8lgGBR368SRjr3w
6GEXaGxfb8fAw5sSpLF6LQphROt2EsL/KT+I59WbGYcucs8lGuPZE96kkB78v+1J
MZnj+qyglEFKbzj/8F/3Ay4e2xiKNQ9pVyu4wx7NfB00VwymO/nopJQsNn2QdYQ7
G7Mbo3Unf2oD6NMHhGhNR9EGlv2o9c9HCtZ5j4N06M+NDED6ccs+1fakykJGkIft
abrOJ4SJZUPac2qvXBlnXoQlIqiWkQOGTRFbmt+26rrtU24Jdbk5QbdkdYWF4LOI
3PoyUH47yhQoPABHKTvO5pa6bUByYaqSm4sJk6kByAMGdtTRzz0=
=PGUs
-----END PGP SIGNATURE-----

--eqw5djuoufxpcri7--
