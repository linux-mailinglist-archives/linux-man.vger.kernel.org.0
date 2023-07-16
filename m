Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E65CE754CF2
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 02:55:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229825AbjGPAzs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 20:55:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjGPAzs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 20:55:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46F52271E
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 17:55:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A6D9960B9B
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 00:55:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B1A2C433C8;
        Sun, 16 Jul 2023 00:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689468946;
        bh=F7n0QcBUB+77nVhSpwFUSSZLmHSv4ZqlCXu05UcW/04=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ms4CoWFOQ1fAeFWnhWiL9ltTDm48OxvxO4RJYYRaONlYqc8jIDQJjsUHOUukfQqaU
         FBdKU/kWQkKXKhLJlAHkruGPbyOJbL4ExvsrwJPgHsnAlVIVYM5fizeLiZE9XGWNOV
         8QusKcawrTYc0buvkTLEvOK/LdHbzYhZu2VGRLo1bI/KApr7tuKKl3AjN0zonC7Ro6
         xhDB035TRViwMJaBugV46GamhYr2vehP5IugyxzygQdK+xs+GzOBUqLVlcHaIhL4po
         oGDqzJTo8PYjXCgNuOLTzgulvPGa43n3+6yZF0UWdFiaGK5lHHs8mP4R/snYFXyCuK
         Y7AD2ck+OOwng==
Message-ID: <2ac89a3b-6626-ec3c-de34-8efe976aaac7@kernel.org>
Date:   Sun, 16 Jul 2023 02:55:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3] epoll_create.2: HISTORYise "max_user_instances" EMFILE
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <3f4b7314-71ad-a4e0-0f29-b34114d8b5ed@kernel.org>
 <viuuagw2p3fu33lj4gytcpw2qy6lz7ypunhsxlfbbp75u6ykys@n5nntxb2micu>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <viuuagw2p3fu33lj4gytcpw2qy6lz7ypunhsxlfbbp75u6ykys@n5nntxb2micu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TYHQFYF0vEQZpyxg8rI0hS86"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------TYHQFYF0vEQZpyxg8rI0hS86
Content-Type: multipart/mixed; boundary="------------fjx3iJ0Xzc0VMQWOscRyGESV";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <2ac89a3b-6626-ec3c-de34-8efe976aaac7@kernel.org>
Subject: Re: [PATCH v3] epoll_create.2: HISTORYise "max_user_instances" EMFILE
References: <3f4b7314-71ad-a4e0-0f29-b34114d8b5ed@kernel.org>
 <viuuagw2p3fu33lj4gytcpw2qy6lz7ypunhsxlfbbp75u6ykys@n5nntxb2micu>
In-Reply-To: <viuuagw2p3fu33lj4gytcpw2qy6lz7ypunhsxlfbbp75u6ykys@n5nntxb2micu>

--------------fjx3iJ0Xzc0VMQWOscRyGESV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-15 20:41, =D0=BD=D0=B0=D0=B1 wrote:
> /proc/sys/fs/epoll/max_user_instances hasn't existed since
>   commit 9df04e1f25effde823a600e755b51475d438f56b
>   ("epoll: drop max_user_instances and rely only on max_user_watches")
> from
>   Date:   Thu Jan 29 14:25:26 2009 -0800
> which describes to v2.6.29-rc3-24-g9df04e1f25ef.

Thanks!

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man2/epoll_create.2 | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
>=20
> diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
> index 4d3566a79..7146757d3 100644
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
> +sysctl limited live epolls for each real user ID,

Since sysctl is not an English word, readers might be confused about
what it means.  If you refer to one of the following, please
disambiguate, so that users can read more about it.

$ whatis sysctl
sysctl (2)           - read/write system parameters
sysctl (8)           - configure kernel parameters at runtime

Or you can choose to use English words, if you prefer.

Thanks,
Alex


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


--------------fjx3iJ0Xzc0VMQWOscRyGESV--

--------------TYHQFYF0vEQZpyxg8rI0hS86
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzQA8ACgkQnowa+77/
2zKxXA/9EGrbJwpZKZY9tDoO+oypJ2KANVUedVQNOJrdGyhFd9Oxd0RMmlpEMoZ/
MQLiqsUweJhY/F1fQOIDjpyX0hpyMZ0wPuiEdkiago8T28GHWhUPzQ5QRg3CXjf1
nbdSS+/J4gvIHdReib6opM3HE2xdznfhn1tWdVPaStkJWj3ARtpCkP6uXF0l3CDR
ak4oUB8leUfSVkvjvftlqEXvuZKSyzmhovpGajkafCIJSUtCfZXf7sop4tpghldY
IX/t7DReQLHWnK14EcQdJd2vNHKBYpZG3VYnv5qTMwwSkOJOiPYbLkVsQtSxCFRG
JZRltcVGwhItuRq9UR6BpdZdGfPe50PhgAuzwd4aHT8gCEKVBu5cxuFpTPqSyeG7
6wP4lHnGwrmOzi2RIks8wpgA1arBOpk2Qn2HTNhHN1dsY/ukmVmOrzJOYIlaB1+m
lvZRqgorg2Mfep3JWuKY9O/62dAkY0UsVMKy4YRtXWGDKksgr0i22+UcgkoxnQrE
MSPvjxFRwUFfHz6lm1CLv2ufWDwPKPTyr1m3Suu4e/QQLKuOu4SMpgi31hZQkuag
4SKq7wBa+DLo/iC6b4ud7icKgOz1SFx/lQqSOtUzpMBh7+VIB+vKPxRtr9S/kh4L
7SuxmQvw6d8vLwmIPi6iuogFRMoWX6NA6guP/NBwkJNhkGfTcZc=
=Q48y
-----END PGP SIGNATURE-----

--------------TYHQFYF0vEQZpyxg8rI0hS86--
