Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A81C6EA925
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:34:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230088AbjDULeK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:34:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230144AbjDULeJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:34:09 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F0BD5AD34
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:34:08 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3AAD667CE;
        Fri, 21 Apr 2023 13:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682076848;
        bh=5+TL5lBrLz0BNl8MbePuhHpH6RNz3rilLZ2B1k+epvo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hasuqW4TTvpsEO8N0G+rvUPOPRL3gZ6kWu9ONTDf/+3BXf+YLx4Z2nERysItTzEy9
         8djFnJjAY5PRSaln8k/PtVrUuTSmjUpEtPCvuAo1o9CaIvEopLMfz9JiztKiXWboYZ
         OqkVCl5w6gjIz+hUGwiVZMPaxRX8jkluy5gAa26dvkdEgMeq/dxfdnPOgqNoQdCl2N
         AeQ/CwjGN98GM6OwC7Zp4bjgkQbk6OHs3Zjd1+k0K3trRV4QM6TKsYHQY3sCVdR/pp
         y0i4waO+xJJ9W6P042re/VRe7P6LyHUN8gOv8EnmDHj/fQTM65h50pr6aI4zoUkn7x
         u8pEe4nmx9ulA==
Date:   Fri, 21 Apr 2023 13:34:07 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Message-ID: <qczn5qtfnn5girkwm7peng6lg6arcgm4xxd5jgfryuhwgspeaw@nkdqyubmztzp>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nwsirlbzdu65or2l"
Content-Disposition: inline
In-Reply-To: <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nwsirlbzdu65or2l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 21, 2023 at 12:19:57PM +0200, Jakub Wilk wrote:
> * =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>, 2023-04-21 04:1=
6:
> > /etc/bash.bashrc: line 7: PS1: unbound variable
> How come? bash is not supposed to read bashrc if the shell is
> non-interactive (unless you instruct it otherwise).
No clue, surprised me as well, esp. since I didn't see any funny bash
flags to force interactivity. Should be protected against -u regardless.

> > Makefile:SHELL :=3D /usr/bin/env bash -Eeuo pipefail
> Unrelated, but what is /usr/bin/env for?
Oddly, SHELL look-up appears to only be defined for DOS:
  https://www.gnu.org/software/make/manual/html_node/Choosing-the-Shell.html

Best,

--nwsirlbzdu65or2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRCdK4ACgkQvP0LAY0m
WPF3qhAAm9GEcFFi7eTvLMzPdQTWnA/Kwm4sKGG7WYU+VUDHI0q08dK8rejTXvTs
jiGtZiLHDaQozXchGhdBBkSJST8Y9odmxofKGn0fULniyC5ZZ3JLgSGhsSpBNRBY
LrPEkEMSbbCGpRCCaW9kIbkcE1j3jKIWR3mWsDxBHFjDNJzm3h2P1kOopQDirOl9
87Z7X66lF4zUPsOiR80z+nDqWIY6afqTWMKE9h3e3ZihXTj3JzEF7Og+ixUXQ71d
V1cVqg+hhuXOFTb/0GExLLm3yB4YLgWhimbew4U9pAhCZfPVDg4S2bVcYnjxBTkQ
z1aIc75Eip/hVVE3B3ZOuZ7SmPvUIeUFtTOB/TyUPa6+Zm7kQdjxatcE+oBUFMy0
70tat5Y1pwPnDBGUiCa19uSryxC69d/J5r8LYxdO1dns9gff4Tb4+1HI/CWFpfee
Hax/6JMYxdd3UbEc3kNpKmDnktqiW4k76/yW4hk3FhfkHxoPRd56ONHNJkWcRvR6
55Li/ZbthbHt80YdzO0vh7B3FTDeXAGP/11aMWs4EvFYJppQY291kvaDADRDzwcg
nznZlWe/FXAtWTHeIsjcSKz+V0OgW2Ru/ROHUUYfg3tnct16VQJabTAmiupAF3ZI
Eb/FpYwh9K18pDqg88fR7Vmj9RIYASicOKZK1Us2I1Y7Vti3XiI=
=1d9Y
-----END PGP SIGNATURE-----

--nwsirlbzdu65or2l--
