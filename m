Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5982754F1D
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 16:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjGPOw5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 10:52:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbjGPOw4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 10:52:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F1FD1B8
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 07:52:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D991960C44
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 14:52:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C39F7C433C7;
        Sun, 16 Jul 2023 14:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689519170;
        bh=X+rDB7eTWsnxeZ2dL0HW/8MpeABHAGV05LZf7dykrn8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=duW5qXhfqyq6fkA8e2zQzD/n9RQJqTqpo3b5LQuE3p5AduQlSo3t/9UTZMoDSmtEJ
         HHvRgaZ6dl1/9hNmBm8j1lQISQRQOuNl1ZxHe/ymH7pjx0y3/SZcd2wxjZaeUxsNib
         5CPWBZhdAJ9oSArwzGoh6WLGbCXyLavVvgUnSoESE4DsaJxsu8klBLMnhJBkMgNQSj
         q3BKd+c8fUjOmyhPxywHnuzJqF+QFOZ1z+2yscfMFWVQh1+5lHfq+42vvnhkYtalJP
         Hr/9IHSI1KL+rK95GtsIYtq85KYYkHUDkbkurDjRW38VGiB2bTqT6drfFmDAu/4BMj
         WD2Jak40qdtdA==
Message-ID: <51d82441-3c8d-93b2-2db3-566c09173d1d@kernel.org>
Date:   Sun, 16 Jul 2023 16:52:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4] epoll_create.2: HISTORYise "max_user_instances" EMFILE
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <2ac89a3b-6626-ec3c-de34-8efe976aaac7@kernel.org>
 <eeb222b6mvgjgush7rmu4uqn4h4tgr2lwodklz2inhicazfrch@mvjqzfksoayp>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <eeb222b6mvgjgush7rmu4uqn4h4tgr2lwodklz2inhicazfrch@mvjqzfksoayp>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7rltWA7ElkJGZzJX1fUZxkpe"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7rltWA7ElkJGZzJX1fUZxkpe
Content-Type: multipart/mixed; boundary="------------pIVt8tmb7uKCmFbOo80FvPti";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <51d82441-3c8d-93b2-2db3-566c09173d1d@kernel.org>
Subject: Re: [PATCH v4] epoll_create.2: HISTORYise "max_user_instances" EMFILE
References: <2ac89a3b-6626-ec3c-de34-8efe976aaac7@kernel.org>
 <eeb222b6mvgjgush7rmu4uqn4h4tgr2lwodklz2inhicazfrch@mvjqzfksoayp>
In-Reply-To: <eeb222b6mvgjgush7rmu4uqn4h4tgr2lwodklz2inhicazfrch@mvjqzfksoayp>

--------------pIVt8tmb7uKCmFbOo80FvPti
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-16 13:45, =D0=BD=D0=B0=D0=B1 wrote:
> /proc/sys/fs/epoll/max_user_instances hasn't existed since
>   commit 9df04e1f25effde823a600e755b51475d438f56b
>   ("epoll: drop max_user_instances and rely only on max_user_watches")
> from
>   Date:   Thu Jan 29 14:25:26 2009 -0800
> which describes to v2.6.29-rc3-24-g9df04e1f25ef.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> The sysctl(2) path would be "fs.epoll.m_u_i" so "kernel parameter" it i=
s
> since we spec the filesystem-domain path.

Hi,

Patch applied.  Thanks!

>=20
>  man2/epoll_create.2 | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
>=20
> diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
> index 4d3566a79..2a21bbf8b 100644
> --- a/man2/epoll_create.2
> +++ b/man2/epoll_create.2
> @@ -83,14 +83,6 @@ .SH ERRORS
>  .IR flags .
>  .TP
>  .B EMFILE
> -The per-user limit on the number of epoll instances imposed by
> -.I /proc/sys/fs/epoll/max_user_instances
> -was encountered.
> -See
> -.BR epoll (7)
> -for further details.
> -.TP
> -.B EMFILE
>  The per-process limit on the number of open file descriptors has been =
reached.
>  .TP
>  .B ENFILE
> @@ -134,6 +126,17 @@ .SH HISTORY
>  in order to ensure backward compatibility when new
>  .B epoll
>  applications are run on older kernels.
> +.PP
> +Prior to Linux 2.6.29,
> +.\" commit 9df04e1f25effde823a600e755b51475d438f56b
> +a
> +.I /proc/sys/fs/epoll/max_user_instances
> +kernel parameter limited live epolls for each real user ID,
> +and caused
> +.BR epoll_create ()
> +to fail with
> +.B EMFILE
> +on overrun.
>  .SH SEE ALSO
>  .BR close (2),
>  .BR epoll_ctl (2),

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------pIVt8tmb7uKCmFbOo80FvPti--

--------------7rltWA7ElkJGZzJX1fUZxkpe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS0BD8ACgkQnowa+77/
2zLKoA/+L+Tq4/6O7IMZOdQhxvshhXHH4KzU2YF0gcZLzmzygYcPmahjSf9SEYFa
nSBpPi7aMivYjDTIBOH1s8n2T5xSIaejG/P3bfQpe3u9m4D7nEnJLggd6LiyfCTM
We1/Pp3cQ+7Oi3opYRp/BvN+rCzbNDPrCXAMihno9aDsL2yCL1Q7/TXuFaH2/SDk
m42z0GdB8HptT2UC6l6JRHQskR9cUnJQ1Yhe3nJtshAg9bK8CDCaJ8nSnVkvXCG+
4S2GaMDt/BaLwYuZfG5VQDfYhyv2xbZMntv5w0ayEUfzwoxq4U+lBMTchw9MVIWr
vk6z+rUjIFUSzc3CIKGZgNlAGWDLIVTb6sxNhAqOLE7/w96bYVXOLrWD0lwaLsaq
OGHrBW/oRQBTP3u/84w3eNXvnAJ+5w68C3gn2MVRTVwsQ/v1E8er+jfAl4EFWnO5
QEeGtZRqGMJJ+KVwCbVKOxtF5ZbVdv1+RtCN7e0d0Lj50dkF1yUAdijv7FK5lrws
eqi+DIRaxPOViptt6rr0mp+I+oWgQwLBlcP01M0b2Nf1xGK/lblDuwclrjOeT+i8
A4n/PW6GCV16smidaH7pYTR7UnplBWjaoIKJUreCS71yVAGQBpSvrhcTLbFw+LgR
KAUCM04rSO3FuIQsz7pK2atwtpsj207mo7Ih5OBPWvt2yO52bbw=
=F3Tq
-----END PGP SIGNATURE-----

--------------7rltWA7ElkJGZzJX1fUZxkpe--
