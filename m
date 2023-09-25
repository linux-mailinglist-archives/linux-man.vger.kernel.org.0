Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54D267AE190
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 00:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjIYWMb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 18:12:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbjIYWMa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 18:12:30 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BB7A116
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 15:12:24 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14783C433C7;
        Mon, 25 Sep 2023 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695679943;
        bh=lIJAk9/W/mX+fNFMSYJXGfs1PnmE2D/JQOfGdHD0JSE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pOIqUOr4Q7y5drpbbexghy9k6B7xzoIOTZx2CJIPqp7SZKfdgGMtTYr9ipe3I2g5k
         mjrccFwJr6aUdL8lxK9FVYXlxF+jBleOFKl1cEdoxId1ExyurhNAnFSgEqYgPeuamR
         bkAiDPNCzu2JLQDz69hgTY1YsK06w9j4E/6mpwqNy28C1DbS6tS5gZKpMNBOce8qMZ
         cRpQsnE9iriYwDT+de5tYFrj0vunekYZ4RsOGEUCyrUCU+dwcue1UbCutV1hEIG+MO
         YtUJLqhnspaR2kryDOOGAOfqmIylb17Abf0J0OFpAlCDpcTNbab1Aj62easpD1Dd1E
         gDLbj2G2iq/qQ==
Date:   Tue, 26 Sep 2023 00:12:20 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "J.H. van de Water" <henri.van.de.water@xs4all.nl>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] select.2: blocks on the read end (if the write end of
 the fifo has never been opened).
Message-ID: <mlbvydqe5dm5yfabvxf5z572y3z7cxjf3j43fwo5pt4xktihqb@yuf63qhlqdur>
References: <20221122153027.10943-1-henri.van.de.water@xs4all.nl>
 <20221122183220.2460-1-henri.van.de.water@xs4all.nl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kpwvofuh452shhb5"
Content-Disposition: inline
In-Reply-To: <20221122183220.2460-1-henri.van.de.water@xs4all.nl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kpwvofuh452shhb5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] select.2: blocks on the read end (if the write end of
 the fifo has never been opened).
MIME-Version: 1.0

Hi,

On Tue, Nov 22, 2022 at 07:32:20PM +0100, J.H. van de Water wrote:
> Clarify that select(2) will block on the read end of a pipe/fifo, if the
> write end of the pipe/fifo has never been opened before, unlike read(2).
>=20
> Signed-off-by: J.H. vd Water <henri.van.de.water@xs4all.nl>

I just saw this mail in my inbox; sorry for the delay!

> ---
>  man2/select.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man2/select.2 b/man2/select.2
> index 199522a01..673d626a9 100644
> --- a/man2/select.2
> +++ b/man2/select.2
> @@ -77,6 +77,15 @@ perform a corresponding I/O operation (e.g.,
>  or a sufficiently small
>  .BR write (2))
>  without blocking.
> +.PP
> +However, note that
> +.BR select ()
> +will block on the read end of a pipe/fifo, if the write end of
> +the pipe/fifo has never been opened before, unlike
> +.BR read (2).
> +(read(2) will always return with zero if the write end of
> +the pipe/fifo is closed - see pipe(7) where the text starts with

read(2) and pipe(7) above should be marked up as man page references.

Thanks,
Alex

> +I/O on pipes and FIFOs).
>  .\"
>  .SS fd_set
>  A structure type that can represent a set of file descriptors.
> --=20
> 2.38.1
>=20

--kpwvofuh452shhb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSBcQACgkQnowa+77/
2zIcig//bXpmx8tsU+VIYIPWwiaOwkdaR4ch6uEALkHPrEXq1AT8a2aVJ4MyWu34
tqKZZSxpD5LxeeW+bOQ6cZS2HobLvhtkXPXM9lbo6rPxbtFUuyVm9V9DHuB2izNg
MqlPbIambQHX3Ba4IlhaZDBYkqHpvqrinrvBSUtPdEuy31MwsaJnKjVVmxW//GON
5pR9KI1agcFlusi5EkI9ME5lXIhheSIAUeTgBKEUr7qhr+i0osObWsH7gxAE0ix/
d905J1/KgqfjIATbb7ILZG9eDvrTDXJl7iQ6tdQYaaaDgdpktRe9JX1s5WsxVJlM
xdanwCnKowDYQ8M90+HgYddxI63rR6EaTsKDnFzo3QI18skrZextIKD4b2Rel5Vn
+zXX8vhUmqdrqFE186Og/DGi4kxNZY173ndvqf/OKDRDWeaC56KWaBODN/S/36ZR
sPKUfCUzzDCPdfCHCifQszExJ6gkKK4qoA8zs8SHdf4iEMCeP+bPNbKTeqgr6q5f
P7hKJu2ri+WIrTm2qctoLctdJ1l2FdHhdsKHp5Z0OCW/HFZgZhLUDwAOaHquSeGw
+rvDF9lebGBe/YF98lYt19UL95RQRbEK6gawhQOz/55dDtEaVAkRub6a3OpRIzyg
ZhdwAsv0rNEDETRRm932PB6jlra4L2X1+hs01xaHIdtgoZkPv5U=
=5DSm
-----END PGP SIGNATURE-----

--kpwvofuh452shhb5--
