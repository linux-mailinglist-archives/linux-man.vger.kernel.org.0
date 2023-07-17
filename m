Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 384BA75704A
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 01:14:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbjGQXOI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jul 2023 19:14:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbjGQXOH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Jul 2023 19:14:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19CF38E
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 16:14:03 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AB4F4612BB
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 23:14:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B5EDC433C8;
        Mon, 17 Jul 2023 23:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689635642;
        bh=oW8y4FD4MvBJ8wxUcyD2SaZtBs5uXWtVmQ4YBAneBvI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=tnCh7xAyzoH7webWAi+dfESWZaOmCcQ7KUeYa94YqJbNOGzxBtteqdJDlAn11E631
         isPtIbsHEEzsDrwoswBWrbJFltH99jRtCoOUpZ6ZrM4YqDosRhzkHtwP56Jve+4//J
         YFWpo9JWQTLrkAs2bbrLXeV/Yt8AE+SqxN5odKud+qImUGXsTgtnX79rpSQnWvDCp5
         kdtX5WQ34cLwrd4BfhvJzFOWZ5NfE+w1LsHwBDkPnFQSXnW9vgWhRiTIZvlLs8nR0B
         aOIDew6BqIs+kGyMWqLDRPWUzID/8KOiHM22OTXUmbOKv0BQUdSk423QuYNbenSCPz
         M2JsEOAxfogWg==
Message-ID: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
Date:   Tue, 18 Jul 2023 01:13:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
 <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cCNpcn0x0hjlKfioBVZTx08J"
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
--------------cCNpcn0x0hjlKfioBVZTx08J
Content-Type: multipart/mixed; boundary="------------uZuHfHrOS034G5hJGfxvAzlw";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
Subject: Re: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
 <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
In-Reply-To: <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>

--------------uZuHfHrOS034G5hJGfxvAzlw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-16 13:55, =D0=BD=D0=B0=D0=B1 wrote:
> FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open(2)=
,
> and grantpt(3) is a no-op (that checks whether the fd is a pty, except =
on
> musl).
>=20
> The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commi=
t
>  facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
>   Driven Device Naming"), which kills pt_chmod, notes that it's been
>  "6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem").
>=20
> glibc 2.33 completely kills BSD PTY support on Linux
> (Debian hasn't configured with them on any architecture since 2007:
>    https://bugs.debian.org/338404
>  and even earlier on some arches; they're really just trivia under
>  Linux =E2=80=92 this may be better served stuffed into HISTORY as an e=
xplainer
>  for the SIGCHLD thing, since regardless of the "version", the behaviou=
r
>  is well-defined and consistent).
>=20
> Cc: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> I read it but didn't really understand what you were saying, since
> you're on record as a text=E2=80=92text=E2=80=92text liker.
> You can trivially continue the lines with \c like the below, but
>   "no-op, with permissions ... on Linux, or an ioctl(2)."
> would probably also work just as well,
> and I leave that to your editorial sensibilities.
>=20
>  man3/grantpt.3 | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/man3/grantpt.3 b/man3/grantpt.3
> index a19172a3e..363a7aebd 100644
> --- a/man3/grantpt.3
> +++ b/man3/grantpt.3
> @@ -84,17 +84,15 @@ .SH ATTRIBUTES
>  .ad
>  .sp 1
>  .SH VERSIONS
> -Many systems implement this function via a set-user-ID helper binary
> +Historical systems implemented this function via a set-user-ID helper =
binary
>  called "pt_chown".
> -On Linux systems with a devpts filesystem (present since Linux 2.2),
> -the kernel normally sets the correct ownership and permissions
> -for the pseudoterminal slave when the master is opened
> -.RB ( posix_openpt (3)),
> -so that nothing must be done by
> -.BR grantpt ().
> -Thus, no such helper binary is required
> -(and indeed it is configured to be absent during the
> -glibc build that is typical on many systems).
> +glibc on Linux before glibc 2.33 could do so as well,
> +in order to support configurations with only BSD pseudoterminals;
> +this support has been removed.
> +On modern systems this is either a no-op\c
> +\[em]with permissions configured on pty allotion, as is the case on Li=
nux\[em]\c
> +or an
> +.BR ioctl (2).

I'm thinking that this paragraph deserves to be HISTORYzised, doesn't it?=


>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------uZuHfHrOS034G5hJGfxvAzlw--

--------------cCNpcn0x0hjlKfioBVZTx08J
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS1yzcACgkQnowa+77/
2zLiXxAAiX6uK0y9ACIjFehjegvWGajEM/RiV4LoE82/LsP3UhaQBeR/tsCT6v1Z
qTwWQysQhB92I+qbWaP08mnm7EeSErHzBKSoB49lCqI9Q3nJ8OJZDmMRWkwYt7rv
3dM85H4PDz+cMcq4cG90crcUPg19XcX2a89h55tfB1YVyjQrVi5BZyyg7UaWX3kf
RzX9MqNapQjfOP2/prqoOrh11nAkaQyNH28/naQDtMMC0uZdNxZ6/pjXGY5Z9gV9
EFaKu9zFoIo2GCDnKKIUIDTQGxsRvpECng7fk++x8Lahzc8HANlBftst03lURKBr
+5DY4Wn5sDsU0amWLbtnOKgLh0YbEZSWWOjMbPf/6RrBF8s7HGozqkh35LsKVXiR
Nrhoo02vgpN/GNqfgSDuCTPCA3EnwsgHaESaMUbgyqzPUe0AmYg93rpINyTVm4D+
gwwXxm8gnpslZi9/6D3sLkNN+N9/JR8OE7MGSqBjgFHbk4Y6LWtq+GQzZVfOlMHb
+3mM/+lRK8gXbJC5SZLTkR7oesosrWkJg/Ualr766pOlEDGUebuJ+RShowDAbq2M
fn1MX++E5RMc8MK56ZfvUx/fDeJ29DvrwNxGDQWkeddkTMGU3orn4t48F7D1SjyH
IQT/FFuVuIJKkxscoXz5941DwJStBg9yRXhDFTq1Om4YUURE2zs=
=HUDa
-----END PGP SIGNATURE-----

--------------cCNpcn0x0hjlKfioBVZTx08J--
