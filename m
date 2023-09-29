Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7AEE7B3CE4
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjI2XHb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjI2XHb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:07:31 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79D6DD
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:07:29 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73342C433C8;
        Fri, 29 Sep 2023 23:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696028849;
        bh=qs2Bi7dzJf1Z84PIB5O9/xd6ialZXqYfm33sSxCS92M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cay/0ZBAWSwnQZdUH6sSCxgkWvWTDrXnLg8z1mljTiEFudSMfXaNLpQp+tRikqZM8
         FdCSO3VWuf9LG9Gw5bNuD/zrqctGwJx5MzIAXd6a3NeYMrH3K0sEUfS4rOMvvXa5kl
         56NjlXGxf5hQMRHkETqwC+6lA0m1YVzMXfDFEAwAldGtrvt5927QJNoxfwvtOzknpj
         SZZFcChprETwjXSQ07/ym28rAkKebWadthKa0ePu+kI7Fz1na1zt1gv09JjYRpG6/F
         5NmxxEnwBsY7vzaLclBAYjwRNzQL7CC97Dt/j79tFtyX+D0adE/7IGM84kMKwA6sPA
         JZzNydcr2H3Vg==
Date:   Sat, 30 Sep 2023 01:07:26 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 04/10] smartpqi: add module parameter
 ctrl_ready_timeout
Message-ID: <axwssorupkp6fv3b7zqgjyd243exvhlw7rle2ftyy43jxhm4yf@woxzbz4hm766>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-5-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sqpos3xv3idyml4m"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-5-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sqpos3xv3idyml4m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 04/10] smartpqi: add module parameter
 ctrl_ready_timeout
MIME-Version: 1.0

Hi Don,

On Tue, Sep 26, 2023 at 02:11:59PM -0500, Don Brace wrote:
> Allow user to change the length of time that the driver
> will wait for the controller to become ready.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 613ef330aef1..f04472836210 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -17,6 +17,7 @@ smartpqi \- Microchip Smart Storage SCSI driver
>  .RB [ expose_ld_first=3D { 0 | 1 }]
>  .RB [ hide_vsep=3D { 0 | 1 }]
>  .RB [ disable_managed_interrupts=3D { 0 | 1 }]
> +.RB [ ctrl_ready_timeout=3D { 0 | 30-1800 }]
>  .YS
>  .SH DESCRIPTION
>  .B smartpqi
> @@ -107,6 +108,11 @@ Disables driver utilization of Linux kernel managed =
interrupts for
>  controllers. The managed interrupts feature automatically distributes
>  interrupts to all available CPUs and assigns SMP affinity.
>  The default value is 0 (managed interrupts enabled).
> +.TP
> +.BR ctrl_ready_timeout=3D { 0 | 30-1800 }
> +This option specifies the timeout in seconds for the driver to wait
> +for controller ready. The valid range is 0 or 30-1800. The default value

Please use semantic newlines.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.


Please send updated patches, rebased to the master branch.

Thanks,
Alex

> +is 0, which causes the driver to use a timeout of 180 seconds.
>  .SH FILES
>  .SS Device nodes
>  Logical drives are accessed via the SCSI disk driver
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--sqpos3xv3idyml4m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXWK0ACgkQnowa+77/
2zL5TxAAlYmM8kd8tA+GMi+ZEnrLuftrPokG+yknf1dXJH8QHOj9gIJwsSYpPwsN
G2yN6Pw7Kkpulan78Ge6HZP/cUIDaOxTdsr/2JDGZpAZmhM0L9GWEK6q6t4vd10z
Js24EHXBd3Q8NHlk3VlRphSCT0EJAOX2dtmulRcjJT+PeeJXjCA2O11jm7aYCSeE
Z3JwytoHsr6vLihLEPYEHeft7JGwCOsD5Bdy9ssNme65EYxqv6yzV1U5GTuSvfB9
fR+JuXD4LDeslYS9cgYhzUuEF3HQu4M0hDSSlQWm4qd1g3EbTvNxDqKV4dYO51Of
SULsKP7YrMycEBv8XGcBo8LXpkYKL4bP0dW9/Q2mvwLSg5p07QDXeCsUaHRW32nC
fy65wSf9DG6KfLigp58Sp4yh0IvdbnJurjE5hnyQ6BR2hC0PuzQcsG4BZPypnBAA
eSDs+IQ0JCHqjGO0AmHSZEKWz6JFrAKDsQwHVSX0ipAnkZK7pCohdaKejsAESvNL
UUUzQKQzfaHI61+PjN54qQ5NNTUtxbYwBXmQURxgs2Q3xOo9GmB32E08t+n9jVRo
xUe3nqsj7C1tuSFmx0xcW+TJeFAdSLpiCNP7wuUXTtSDCZpIeEWANF/H+6+95HiF
xLP3blnEWrax/bxqY5/nNEAQuiB8eXrA4AJRfeCqjqjtoLmefuw=
=0uSx
-----END PGP SIGNATURE-----

--sqpos3xv3idyml4m--
