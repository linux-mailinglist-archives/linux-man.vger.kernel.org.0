Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 822C67548C0
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 15:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbjGON25 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 09:28:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjGON24 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 09:28:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C9393585
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 06:28:54 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0F67660B08
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 13:28:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E456AC433C8;
        Sat, 15 Jul 2023 13:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689427733;
        bh=+hnM6SVhdp2WiTikC7GykvMI6/54I6q1Q/+XVFk8H5c=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=t8gNZGL6N8YuUhNBbQNobCsqtplTYNlnZLqUPVP30tlU5eUTWMuGdz/RQhMTwvSrt
         YQ02aK8yUCKJpRo3H64+p+sjYbWW3lNsQGawfIdYPEaV1FsckTVjabNJl1KM/yRHkr
         QTuKJqNOYN7hvgqILBKX6EnAdsdcJjc/FH/haziiLsYu2FD/8bBEIHqiw2dJirvie5
         DziS4AKjlCpxC2CbbKmDxzwI1vgZ6IbeUMhEVONJf4+7+/1ccUOFlKxkKl8sfU6XAa
         Wc2208k9r0i0NYiPayJksKjMynkcfCLSpBNN3m5CPTHHtTwQaPhd5yRSs86S/jbLdf
         91yD0Y68TU22A==
Message-ID: <3f4b7314-71ad-a4e0-0f29-b34114d8b5ed@kernel.org>
Date:   Sat, 15 Jul 2023 15:28:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] epoll_create.2: HISTORYise "max_user_instances" EMFILE
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <7c0279c1-bbb8-c623-14d2-bb4d25966d28@kernel.org>
 <re4bxpexbszjru6xxofj7p4rxnwjxvta4jdn4fnkg62pvzkbbn@na4zaedzdx77>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <re4bxpexbszjru6xxofj7p4rxnwjxvta4jdn4fnkg62pvzkbbn@na4zaedzdx77>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XdkEoNkHX0R0NhUF2P0dYrcR"
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
--------------XdkEoNkHX0R0NhUF2P0dYrcR
Content-Type: multipart/mixed; boundary="------------lRPP300BD0cc4DzFvVlXWnoC";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <3f4b7314-71ad-a4e0-0f29-b34114d8b5ed@kernel.org>
Subject: Re: [PATCH v2] epoll_create.2: HISTORYise "max_user_instances" EMFILE
References: <7c0279c1-bbb8-c623-14d2-bb4d25966d28@kernel.org>
 <re4bxpexbszjru6xxofj7p4rxnwjxvta4jdn4fnkg62pvzkbbn@na4zaedzdx77>
In-Reply-To: <re4bxpexbszjru6xxofj7p4rxnwjxvta4jdn4fnkg62pvzkbbn@na4zaedzdx77>

--------------lRPP300BD0cc4DzFvVlXWnoC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 2023-07-08 21:56, =D0=BD=D0=B0=D0=B1 wrote:
> /proc/sys/fs/epoll/max_user_instances hasn't existed since 2009.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> I blindly copied the tag and didn't check, but even if I did,
> 'Linux v[0-9]' does return results, so I wouldn't've been dissuaded.

Meh, I still haven't managed to kill those.  Feel free to fix them if
you want, or if you meet them while doing one of your patches.  ;)

>=20
>  man2/epoll_create.2 | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
>=20
> diff --git a/man2/epoll_create.2 b/man2/epoll_create.2
> index 4d3566a79..b51f5051e 100644
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
> @@ -134,6 +126,20 @@ .SH HISTORY
>  in order to ensure backward compatibility when new
>  .B epoll
>  applications are run on older kernels.
> +.PP
> +Prior to Linux 2.6.29,
> +.\" commit 9df04e1f25effde823a600e755b51475d438f56b
> +.\" ("epoll: drop max_user_instances and rely only on max_user_watches=
")
> +.\" Date:   Thu Jan 29 14:25:26 2009 -0800
> +.\" v2.6.29-rc3-24-g9df04e1f25ef

I prefer minimal source code comments.  Please keep only the commit 9f...=
 line.
The rest should go in the commit message.

Thanks,
Alex

> +a
> +.I /proc/sys/fs/epoll/max_user_instances
> +sysctl limited live epolls for each real user ID,
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


--------------lRPP300BD0cc4DzFvVlXWnoC--

--------------XdkEoNkHX0R0NhUF2P0dYrcR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSynwQACgkQnowa+77/
2zIj8BAAjGYo4zeiU1NaWeh0w+IY3LmQo0vhpG53yQ7k+dWXEuR+UFaZAz7Fxanx
sx8AX3gjdzXHHmr7DFne2voCvAGSxBTNymwu4j7MmsideV/dFm4dhngTirSs4Kgw
kLAd9qs5gvIxkOXrgP/G0ZtM8dMTWRqCnse2vIqryGGZKKp/gjI7VIAwXQ5k+ECY
z1rG4M1lYxqTZI4T0makKrxZ5Qj5zZwk5j6X99CvdFJkq/nlG0sb0RBElq7+zhsZ
RtaWK1I/yUJk4WpqyLUnvKFN0F108/QEnqXKMQTDqI6WgNcRjW77yyJhL6BLxBPu
BP67HDyjlZopzE+w1B7jXdZdBS+SlRDoOj4LL9rY9NQEpkx8DWnYECL5PfN2geyC
/za+/PtBQPftZV53nM56Wh/XZwAWgfCXGUgywIFnsc+zeKofvD7IU8yq0/1g+I/T
J/gCGRfv6SXbxFZzW1+abUvSMCIvBb/R+mf3r3iA2ALj7ObE3A4mMDWElqKBDvT5
ZjiD6SQoeAfBrXl1ZeTKwz8GJW6gjb3Wd07TX1eDW5jHW/A/rjEX89zdRR/v6lV0
XFugmlNUfpsJ8u3d9gTlGSkEQURnaR3sLwpmcLV7ZC8V0wTXium1OS/HeFVaaVes
nA1Vbvnvd4mwZwB4xAcOMdxM/rRWGL2eiubWSi6ltl/8w4qjp2I=
=mdIs
-----END PGP SIGNATURE-----

--------------XdkEoNkHX0R0NhUF2P0dYrcR--
