Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 880187DE4D5
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:49:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232244AbjKAQt6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:49:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjKAQt6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:49:58 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 354FA10C
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:49:50 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04BF6C433C8;
        Wed,  1 Nov 2023 16:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698857389;
        bh=k2JdxZzQKjINY8OmqBWCaRXBAoPZdKswrC/dontNZ/E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Alv85CYbwV8pF3fQlTzAi/tjXA0b7s3R+sTe/y8GSkEGAOIfRmRN4n+V/0iboBys7
         tBpbs8ubZcEdr3Z+e7/X85T96R4U7mG9tf3Ob/1w9lRHjOB1KzIhoxnMEGCLLANg3C
         07YJ7tvSGO5JRd0wVbPE9UjoGbsT3kzfNPM7gVWNszAnNiXCZe6C1/hvQxdVzDGuFf
         uyZsTY59IfLz5IeKNC1FtaOFZjMdr4n1C6aWaH4xlgye0Xhpy2xHcFpWthlC67qCf3
         MWMOG9NswBskCblsTMl806/PSYtdbP+X/4NFOpt4E5vHq99dKqD8t43opLEDIriBzL
         PZrhY9qvh1lvg==
Date:   Wed, 1 Nov 2023 17:49:46 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page setlogmask.3
Message-ID: <ZUKBqvbZwTw3MLXL@debian>
References: <ZUJaZBaIF2PjXlQa@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="B/G9/dKVvza39KOn"
Content-Disposition: inline
In-Reply-To: <ZUJaZBaIF2PjXlQa@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--B/G9/dKVvza39KOn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:49:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page setlogmask.3

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    mask =E2=86=92 I<mask>

Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De10fd26189985dfd2f3f8f9d8513d891119edbda>

Thanks,
Alex

>=20
> "The B<setlogmask>()  function sets this logmask for the calling process,=
 and "
> "returns the previous mask.  If the mask argument is 0, the current logma=
sk "
> "is not modified."

--=20
<https://www.alejandro-colomar.es/>

--B/G9/dKVvza39KOn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCgaoACgkQnowa+77/
2zKJYBAAgQR8ZqdrexcvlIB3F5BkKBN4Za49p8kRfTkZlsehrzA/JgOiPXibpHav
brd2VG63CJxNFnfTsIC7R9J2NUBP5/2L/jtchx2jOw3Yia45sqm+ggbBuVxpny2z
yv0D1N1exSCMe686gK0+AkKO85jPeFN//r7GlFUsCQ1cTGGKdOPVS5h0CrLrvU07
8Idcs0292VtcScots0dfgK8UIE0OKKWUmxI8ylytJ+5TmX+bc2fWiAC0/AA6gZa3
yhRLw8gPhkwF8UBWwZzWS4UyT06Rj5LrECjtE+WxSxElRBGyjYwkMfGNCQ96IW8Y
itX8vPdfj31pJFPFXDF6wpEwAk19+kUZlsyuf8bxw2sE0uGSNBKdmES+VchmBvY5
QQkq8rg4W4fLQe46nlu0lMLvKs54naEYSyU5pyny1qFvOJMCjhE6QUZJTnuGOdAR
NK0dfnCWaRRq2fG6fxOdJq69PuKH8Kxz7lmsRQsyJAleK7evrxcxX8Not1R0lU2g
5VkKFDerxxzXLi6VapQUkMBTolaqNU5a0ZrRyo1dmhSW4jnb7ahT8F7bKsbfO7SM
sSRr2Spi23ma6icv8IqRa3yHXSs9C1Da9U70HgLqaTz7kK2O7zm3wz4Rq8WRkcDn
bEciULklJP9Vy8IF5hZx6ozUd/tuiTI5AQ4vA+FvRUp74xn8Mq0=
=Fzps
-----END PGP SIGNATURE-----

--B/G9/dKVvza39KOn--
