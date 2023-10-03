Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 250DE7B5E27
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 02:24:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbjJCAYu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 20:24:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbjJCAYt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 20:24:49 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00A6CAB
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 17:24:46 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD557C433C7;
        Tue,  3 Oct 2023 00:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696292686;
        bh=cVqiDyolElUqBwZl6TzEVaVIa+nOIMb2mxKeKLsRRBQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uFfPuVjcSzNJWxqbcTCjtzB0v+fZz7AhOAUFlaxbRRz4RkeVstTuZWAec8aKKZyKC
         ngXXL9gI11o1Rnfdu7iSr6qdPBo1wahJzBzZPpfo7a7yQLes9mneXqQiZOysImGxh1
         xahVIAOU4b5zfy7ajzlu05iiT8RvWj5ZzWMux8Z/w9t0H90+/JlD6VXF4zmD9jdubG
         w/eRnMLXyIqTdNofsZ+zBg2WU5PBtppMErX6A+yjklJO5UiY6FaTlvUOFIJA+oE/wk
         ZayWf1Fgkt38HL1It7CHLDfLDkiJiPrl0P+80sVYcrT1OgCPn3yLj7xPJlLkygRkJU
         GMI8iN1wmVCKw==
Date:   Tue, 3 Oct 2023 02:24:43 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/5] smartpqi: add module parameter ctrl_ready_timeout
Message-ID: <ZRtfS8DIxlqNN-XH@debian>
References: <20231002195404.153182-1-don.brace@microchip.com>
 <20231002195404.153182-2-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wnPBqoPrcuhmM6QI"
Content-Disposition: inline
In-Reply-To: <20231002195404.153182-2-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wnPBqoPrcuhmM6QI
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 3 Oct 2023 02:24:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/5] smartpqi: add module parameter ctrl_ready_timeout

Hi Don,

On Mon, Oct 02, 2023 at 02:54:00PM -0500, Don Brace wrote:
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
> index 32f9240e37f2..5ccbbe1c4ef1 100644
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
interrupts for controllers.
>  The managed interrupts feature automatically distributes interrupts
>  to all available CPUs and assigns SMP affinity.
>  The default value is 0 (managed interrupts enabled).
> +.TP
> +.BR ctrl_ready_timeout=3D { 0 | 30-1800 }
> +This option specifies the timeout in seconds for the driver to wait
> +for controller ready. The valid range is 0 or 30-1800. The default value

How about "for the controller to be ready"?

Also, please break lines after period (per "semantic newlines"
guidelines in man-pages(7)).

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


Regarding ranges, please say 0 or [30, 1800], to use standard syntax.

Thanks,
Alex

> +is 0, which causes the driver to use a timeout of 180 seconds.
>  .SH FILES
>  .SS Device nodes
>  Logical drives are accessed via the SCSI disk driver
> --=20
> 2.42.0.296.g493f462273
>=20

--wnPBqoPrcuhmM6QI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUbX0sACgkQnowa+77/
2zIQzQ/6A/O0U3xLNLEHealaskn9Ck7zNtlRAsvLSmQuScEhkrN08PH8WboHdOLA
5kZy+OectfpWECNnWyYTt9InFFKGUnqMglhubY+bWS8ZuhIzerCDRyqR1aD7Rajj
iAWG03LQZZPFfTDIP5lOd02sZip9hi7OYbbI5naCJn2azAF80MkjdLWdwCSdjTIC
LawES5YHiElopldQr3D++oY4h84WZiXLarrX95mewsCSIh0F11i0MxPZ5D71CZx0
KdJXaNzOWqDMLfxE3Mjsp7nZA4952JU/W4MvM2TydSw21oqjWC83pvTH7PPKIwRl
VqYwreMDK728hDBGHX5Q+tMWJ+eHxRYVbbByO+kQ3AQ2or2nRfkuJWQRmuNCLpai
DmS6r/IbUvnzY3zbDorlTNzPNODG+VK0cYzCbecS3J2c+w6Vo+tlotBn68uPliSr
u6Fgem1ZMlOrKYqum5Gyyfgz9jQilBx7y92SbYNsUB3HGS0SkjdvHghjFE+rx5JX
ffiA2nzX/p4F1XSyOhHpu0Wt0qKhqu5fkAxBdQ+FrnTmfyX01Gmnh/n/B7lq22Zl
0cFafR8R+ico1Z+PLfo146ERJiAcmYJJklUDN/Uxq3zWyGQxf5+Ey9hKGkPnVjxd
6IXqaskezOwhle9Qq/8IYHcwG9j1AUBZ0EsdsEtaOsBnk9LFPPI=
=sOaV
-----END PGP SIGNATURE-----

--wnPBqoPrcuhmM6QI--
