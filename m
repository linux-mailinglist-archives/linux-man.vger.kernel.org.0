Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A62907DBB14
	for <lists+linux-man@lfdr.de>; Mon, 30 Oct 2023 14:47:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbjJ3Nrw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Oct 2023 09:47:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbjJ3Nrv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Oct 2023 09:47:51 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F4E797
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 06:47:49 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A8EC433C7;
        Mon, 30 Oct 2023 13:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698673669;
        bh=SQYCljyuuB0VfyY9WiEwu4ce/Gq+5y3kQcFyuC3HmRs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WyfQwAoi1amAduB6n2qn+cb443Y+J6+pwRwsOK1Wto2RhwmiSPaN27hx1rM6EvblF
         KZWQhtFwU1HKtMDkeIzakKyLSvw79IAuAkvHifM6ugkGynTZVDqbnQRVnPU1D6LhcO
         vWfkSiaFHlLyNcZrM3KpgtumE87EnnbH1qK/G2YM/30ctHt2fZeNUwTedYemzN7xO2
         H+hAJQOpEYSxF80v4RitRftkYJYXdlz8v3GIv/S9oBHygH6uStCWx9bqjErKKRVzk3
         HwfOoNOveV3swnmQ0Wdb44pKmJHeTW4CIy0+KX0+zYgBMP4rwsS4uryzLiZfOqeCap
         aiTnxRTEPou8Q==
Date:   Mon, 30 Oct 2023 14:47:46 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Max Kellermann <max.kellermann@ionos.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does not
 affect SIG_IGN
Message-ID: <ZT-0Aip9lh1ZoywW@debian>
References: <20231030125835.568711-1-max.kellermann@ionos.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="GsM49e12y3pv2qxN"
Content-Disposition: inline
In-Reply-To: <20231030125835.568711-1-max.kellermann@ionos.com>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--GsM49e12y3pv2qxN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 30 Oct 2023 14:47:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Max Kellermann <max.kellermann@ionos.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does not
 affect SIG_IGN

Hello Max,

On Mon, Oct 30, 2023 at 01:58:35PM +0100, Max Kellermann wrote:
> The old wording was ambiguous, but it is important to know that
> signals that were set to SIG_IGN will not be restored to SIG_DFL.
>=20
> Signed-off-by: Max Kellermann <max.kellermann@ionos.com>

Would you mind sending an example program that proves this?

Thanks,
Alex

> ---
>  man2/clone.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/clone.2 b/man2/clone.2
> index 4a75b557b..deb4bdb5b 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -455,7 +455,8 @@ flag is also employed.)
>  By default, signal dispositions in the child thread are the same as
>  in the parent.
>  If this flag is specified,
> -then all signals that are handled in the parent
> +then all signals that are handled in the parent (and not set to
> +.BR SIG_IGN )
>  are reset to their default dispositions
>  .RB ( SIG_DFL )
>  in the child.
> --=20
> 2.39.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--GsM49e12y3pv2qxN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU/tAIACgkQnowa+77/
2zL63Q//QsLYOunIusNIxXSbGVMleGpWGlUV2H+usDLF5LoZ9FtMCcDRhZDWLTaE
ek3YAQ+SRP/wrHEOLnQb060CZcTIEF096K1T3DOMSq4Bwx7lQBB5GDIKxHNvY+Lk
7uOjhh4nuwqYbmN68u5wHaLzJ+m0WG1i3+piI8GlbSP1Dz+d3c8ohHhEaas1Ex6Z
pNrw3xPAIOyPRwJVVnf5LxsjDayn5eTV42JvIbKOPVGUZ8BYAnwBQsMbi+wo7rUj
ijhtWQjj/JmLsF1X1i944Cou6lqyqhAW9ebXml8IvHGI8A0/5B/BBkQ/pMf3KcaW
lHuwMZ9YrmZy/FXIvPBx9xNvz6qOx9nH8TwKS8Cgft7qCpjIFWQeE2xTxiiMIxIi
cJ7dh3qp210FQajBNBfBTGvujrW792FeXFCvwSSt0ITM+GD16JcCOyM8lU6TGYe8
ll9WMOjPvu6T+zZDwanbDBqu6Yknz9TiIWzDd7+sAy8DwQO0AWkzETk9gbHLC2I7
ZECh8ORwZLVoI8ZzmMqRNnSlYZIIRZE3i7PCQuySXurdwSO8KhHaIUFVzlLhCqHF
fTuqpUKcSXx3L1bz0ZaJwaRF/hWv5u3s0o4BfNp3Kjb7j1Bl1/g5JaYMFuUeX0+A
hGcPhKOtYI3/wU6HsLO33p27YHXtgoy8rO3qPYB1r8DY7QGfMXo=
=KeMl
-----END PGP SIGNATURE-----

--GsM49e12y3pv2qxN--
