Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4533D7549D4
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 17:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjGOPgS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 11:36:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbjGOPgR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 11:36:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 156EF2D7B
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 08:36:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A639660BB9
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 15:36:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D2C0C433C8;
        Sat, 15 Jul 2023 15:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689435376;
        bh=h0UECnxYiqHygrihTXS7IiJawZHeFMCxrbD7Eufmmf0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=R6b8P775G28sYvanD4o/3Pq5aLXFhGR5GQIXTYiBjyesOmTDvyGoZ/nyPnKX2MWkb
         1c0Q1HzD6I6BcPHiJeuMRfFvGcNfHrGj5vV8H9m2Emm5q+ikBo17Q9efq9YvpdSWf8
         WeGCmW0/N92XAshWdYOPw7dagRh9Oh+5kTQO+sVptwZBeKsHf1y8e0tVsRS59CQCtv
         jF9RMKQLV/AbAdxhE2P7LNkEahIsH+T94Na/J+dx0kTGTQX2IP/soVq96ldj9EjSW6
         DV5cip6JjS5+B7PgoWSyYpKyYiF0sWY5AVD7wKpUaTXI9WP7ctMJDSD58KAbHqjXRF
         lPAn2hXbacwpA==
Message-ID: <363c0f82-969d-1927-1bd5-b664cfc83a87@kernel.org>
Date:   Sat, 15 Jul 2023 17:36:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] recv.2: Document MSG_CMSG_CLOEXEC as returned in
 msg_flags
Content-Language: en-US
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230709213358.389871-1-mattlloydhouse@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230709213358.389871-1-mattlloydhouse@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0Pjm8u8xH2ssqEkHRh7uHi0O"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0Pjm8u8xH2ssqEkHRh7uHi0O
Content-Type: multipart/mixed; boundary="------------J48NEOp1AWitTLIjvCtwZABZ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <363c0f82-969d-1927-1bd5-b664cfc83a87@kernel.org>
Subject: Re: [PATCH] recv.2: Document MSG_CMSG_CLOEXEC as returned in
 msg_flags
References: <20230709213358.389871-1-mattlloydhouse@gmail.com>
In-Reply-To: <20230709213358.389871-1-mattlloydhouse@gmail.com>

--------------J48NEOp1AWitTLIjvCtwZABZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Matthew,

On 2023-07-09 23:33, Matthew House wrote:
> Signed-off-by: Matthew House <mattlloydhouse@gmail.com>
> ---
>  man2/recv.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man2/recv.2 b/man2/recv.2
> index 660c103fb..0d05d68fe 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -412,6 +412,15 @@ is returned to indicate that expedited or out-of-b=
and data was received.
>  .B MSG_ERRQUEUE
>  indicates that no data was received but an extended error from the soc=
ket
>  error queue.
> +.TP
> +.BR MSG_CMSG_CLOEXEC " (since Linux 2.6.23)"
> +.\" commit 4a19542e5f694cd408a32c3d9dc593ba9366e2d7
> +indicates that
> +.B MSG_CMSG_CLOEXEC
> +was specified in
> +the
> +.I flags
> +argument.

You mean in the flags argument of a sendmsg(2) call?
Please specify.

Thanks,
Alex

>  .SH RETURN VALUE
>  These calls return the number of bytes received, or \-1
>  if an error occurred.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------J48NEOp1AWitTLIjvCtwZABZ--

--------------0Pjm8u8xH2ssqEkHRh7uHi0O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyvOAACgkQnowa+77/
2zIN1w//b1c3MYE4YKkJ49oKMR0sUW5y5STfQ0GKdzhrUDMeuU98E4RWn1km/hDR
wl/oIEExP5uYYFpSfQGT7ajS4Mb4FAzznbteow2XTUOOoMJ+tegsZEAYSx8aTHEu
L9LdaoTUitH/qwT6+OFExAwjH2dFlwz0BXNED+uWPgpAzyF0kBbFjJqRnJpDGIjj
iIg5ugktEhUmmCfoxP6+ysXZb58lGaRnFLS0k3tetTQuWyaXbPgrlFTZN6e1UhzN
lPdi2oM9H78AYauKREm8sgCZFkq1pgr4/uOFl55oAL4QpnhGNpGYQ/8eKz/SFp/E
tDWwQEUlqwlv2710qMnun0nZcOmxMAzuViOtKzw+JzSiwPkTv+1AIeQKqJHZYjuV
WstrLDX43t7Hgh0R6g6oAESKV9CisTRSqfluCGd0tll6Dz4eDT/xG0bQ/ac85jqG
JRay0Lg96yYapRCFEaDNMb9RgE7+T5zOEREwE/rjBaRjcwTj2KSS2qIV4Qgy3zO8
unRt998q/2HlXgMPhevSPhMm2MV4RU5Yo8D9n0ARnqfjNQPJIJJfVunMHw+gZOV+
rixdPKpiKZwsUW8CCYRYgf4kOrqULabOQymc6TFMlhlLPs8+7q69QpwYVX3kw3wr
lxzixf98p4seefcLTOftymDlCGutWlBYOIM/7ZZuosHBvlfySmk=
=Ak5j
-----END PGP SIGNATURE-----

--------------0Pjm8u8xH2ssqEkHRh7uHi0O--
