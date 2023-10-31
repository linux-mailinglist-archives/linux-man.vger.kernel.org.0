Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4B57DCD21
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 13:45:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344275AbjJaMpI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 08:45:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344246AbjJaMpH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 08:45:07 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EA3BBD
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 05:45:05 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A8E5C433C8;
        Tue, 31 Oct 2023 12:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698756304;
        bh=jqLaYLalq4PnFN12T4Q4bWi8CiDuG/1izzeKW5WzAqc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YGzXR8rgV92fvGsZxxge+7267OxAJgsnGtfjDkkA9hEQ6vE7vpZM6IoqPl4FWIBLX
         Ndko1NtZwwJgXvPOEvY9T9yHMr5xka8N8Rcs7OSlHX0qboJFSBIflXiG8t8Z2TiRV7
         vmlQXsMJsSgg6S8vw8S8/uYLPX1CVYS0PFcpAabxqZwA0unbMeqXH8y8okyxaF4TWE
         /T/TZldC59X8QzENVseFKgMJhyNkWmzTl+poqKJcJhJ2RI8VWocPeBuyVoExMe9ua6
         3+Lkb/XDtXgUqA1CcR1WqXAcVPQz5suPSySJ8TvZv/N9U9mHNVrHB8jd6WQRJkdf3+
         WQJeDlXriRc+A==
Date:   Tue, 31 Oct 2023 13:45:01 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Max Kellermann <max.kellermann@ionos.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does
 not affect SIG_IGN
Message-ID: <ZUD2zazng_Z_p1pf@debian>
References: <ZT_YHozq7Pu_t9Nq@debian>
 <20231030162733.598572-1-max.kellermann@ionos.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="UoqufOAnF1P+gVhs"
Content-Disposition: inline
In-Reply-To: <20231030162733.598572-1-max.kellermann@ionos.com>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--UoqufOAnF1P+gVhs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 13:45:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Max Kellermann <max.kellermann@ionos.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man2/clone.2: clarify that CLONE_CLEAR_SIGHAND does
 not affect SIG_IGN

Hi Max,

On Mon, Oct 30, 2023 at 05:27:33PM +0100, Max Kellermann wrote:
> The old wording was ambiguous, but it is important to know that
> signals that were set to SIG_IGN will not be restored to SIG_DFL.
>=20
> This behavior was documented in the kernel commit that introduced the
> feature:
>=20
>  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Db612e5df4587c934bd056bf05f4a1deca4de4f75
>=20
> Signed-off-by: Max Kellermann <max.kellermann@ionos.com>

Patch applied slightly amended).  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D05e46589ceb7e3ca5925c874adb489e0dde40596>

Cheers,
Alex

> ---
> v1 -> v2: added link to kernel commit
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

--UoqufOAnF1P+gVhs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVA9s0ACgkQnowa+77/
2zKN9g//RyJRTt+WieMzzl+OaqynIB9YusiZgOW+vci91+nawU8cK3ag1miK7WWS
Sfw96zeU02a3h9AWIRM37jI5rSKFFOyc35LLCCOv372bm+mzwcaAfk8eWWIVk8nl
oa7MOjOo8ocYUWTY25J7rH+7DacDSgzsJfEGB9TiH4nRxLotARrf7BIzH8ImN1bi
PKBzqPQFHYiRIgSbU9L8Cr6icfdCEwnVh3fYcTBO1BAdeA5s2m6jVM8DHFLozHVb
KUdmYoO0y96fnqFCjwg/rHh/2xdYQXwp7J67osW/Chlfx07pmwBjnkhP86Iu07Ey
q8OyPNeYlID1yOs7EBjFCg0Dz7iIOznNQVRFyROQ4lSKT4O2LQ8BG3uL44N8WaQs
jw4H59jkUU0yIvzPz93HT5K4JQkTJ98IubaOCsuRkWNPBwQ16iwPyrulaKi7yZxQ
dJNQpk0BF2auzFjyyuaOJfUVitu3oZ+rZZDyv47mmYWA0yUUgsbeggdmSZ/RdjI4
IOzRAJwk8AMojcfQrNGsYXE60ADRHZSSbUSeZiQt6OQYFQ3X7lbXa8+DEfuDD5cG
e1dMeUsxwxkknVlgbGkgqSvfnDXM0yXj71SLnyvCFRfNvJduMmnk+nzVAloLIt96
zJtP5CJVNCFgFiJPrviJ5K3CEdMcNYPw2mXKVODYpxNTBCSpoCM=
=Fotk
-----END PGP SIGNATURE-----

--UoqufOAnF1P+gVhs--
