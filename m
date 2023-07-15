Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 637C97548C2
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 15:32:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbjGONcK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 09:32:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjGONcJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 09:32:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF716132
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 06:32:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 48D3E60B08
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 13:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E71F9C433C8;
        Sat, 15 Jul 2023 13:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689427927;
        bh=IvgkBNEm0BuKZBShKNTLfCRlK0EpDqd1pRpPeWn1jwI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=dnnHXv1q03q8P7u9J9b74QioBf7hyB/ERck29fP3vccnVu7qDSRqGJrV/UlDKOD29
         XuA7OxLi2+QmD5CgfWgfM+93THNDgfEmS6NfywfZTTHvXwx5RYEC5jNDWszKTmWhfl
         xofpRVTYZoQ1APd36uxqdYUF+UDYXkcB9/P70KwCAVu4QY9spP2HisRfhR5RBjYdw7
         y+GUjSu8HDXUqlgF+Oc7TNhDmeI+TcyCfXgjot/uwmowvYGliZCqU5XPkZm8hSul3P
         7JcfvsZeZD0ZFTTfMAjldoCzd9HOzCCYZF+DfCB2zWkOt+bvn0K/uj1SF6wkirAs6j
         usBIIPMMKQHqQ==
Message-ID: <232d8f2c-6a4f-de01-7fc8-739da2b71964@kernel.org>
Date:   Sat, 15 Jul 2023 15:32:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3] grantpt.3: no-op on modern glibc and other UNIXes
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <885059d5-7b95-8468-01a3-0264e0da1288@kernel.org>
 <iv3vxr6twi4wuw44yxomgtuez43o7kqsy4w4fl2lmajzyc2xpa@by52b2pyhttr>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <iv3vxr6twi4wuw44yxomgtuez43o7kqsy4w4fl2lmajzyc2xpa@by52b2pyhttr>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AD10w9LyFhSRKRJ6TAUHNrAp"
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
--------------AD10w9LyFhSRKRJ6TAUHNrAp
Content-Type: multipart/mixed; boundary="------------XuSlElqS97zaEaqvLGFaE0Hj";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <232d8f2c-6a4f-de01-7fc8-739da2b71964@kernel.org>
Subject: Re: [PATCH v3] grantpt.3: no-op on modern glibc and other UNIXes
References: <885059d5-7b95-8468-01a3-0264e0da1288@kernel.org>
 <iv3vxr6twi4wuw44yxomgtuez43o7kqsy4w4fl2lmajzyc2xpa@by52b2pyhttr>
In-Reply-To: <iv3vxr6twi4wuw44yxomgtuez43o7kqsy4w4fl2lmajzyc2xpa@by52b2pyhttr>

--------------XuSlElqS97zaEaqvLGFaE0Hj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-08 21:59, =D0=BD=D0=B0=D0=B1 wrote:
> FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open,

I guess you meant open(2).  Please be more precise about it.

> and grantpt() is a no-op (that checks whether the fd is a pty, except o=
n
> musl).
>=20
> The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commi=
t
>  facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
>   Driven Device Naming"), which kills pt_chmod, notes that it's been
>     6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem).

I can't parse the indentation of this paragraph.  How does it work?

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
> Trivia, but rephrased slightly to make it more obvious.

Thanks,
Alex

>=20
>  man3/grantpt.3 | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/man3/grantpt.3 b/man3/grantpt.3
> index a19172a3e..e3d4e4aaa 100644
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
> +glibc on Linux before 2.33 could do so as well,
> +in order to support configurations with only BSD pseudoterminals;
> +this support has been removed.
> +On modern systems this is either a no-op\[em]with
> +permissions configured on pty allocation,
> +as is the case on Linux\[em]or an
> +.BR ioctl (2).
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------XuSlElqS97zaEaqvLGFaE0Hj--

--------------AD10w9LyFhSRKRJ6TAUHNrAp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyn9UACgkQnowa+77/
2zJN7Q//UioIun7eAsgP6bpzm1wvv74x+LZTiX+zDTJ7Xn4yVIuy50ARj9OVQM/6
A0QUENk7vVtGU7UgsQTOYWjADFtS7uRoTGKQ0vcWGaXLqGtEmmW9FEF7JQL6YU9I
Y0lM6lT54E73RdPqqPLv/TGUf2j9CZ63vDhZBXq8NPejDuX4xlGBwlYrTg3CALEW
VtEgBAzlYfZipCzqHHeiQYPYtGpSMVa/qrNF8aU0M7k2EaW2jZPflYiNNrutW/M8
/5DaJALIKNQcqm7HBcVrlPB1Uki3er7TuriX+8BhuPALj2ft7V5XYQ6EbP1KXsJg
RKinbllSm9D8kLp2c8miCVRXEGBQS7LqwzghnCjVdpV2mUS9sH677l5Z6wmU6u+M
SCWCCb7p5jhfGfIlW4mzd3vzjJE4UGi2gjz66Qj/rM90KN0yuWJ0xE5/p9MWB8Yw
hUDX+1BwH5J15sOSofaVklPiML6Y7CBj1SzO7QTbnEs4Pd6x6NYhQ3GTf5kn6ZKg
8v5rZMjjTfr4c6OlyQwH9lbWc437jj39V8fWRRpm3wiYTamoCKOLfmpV5fgE2XMr
qtijqHYOwIy6q+K04Ivxf0mPz4uzAlC/dqPsa6NKqFX7Nl+dlWRyPw+rxwplg6zO
OIXHfDNjolI6gyWBxh5lLUZZrXV1y1Ti8mWM5RmcwWd1qruHAog=
=rXnh
-----END PGP SIGNATURE-----

--------------AD10w9LyFhSRKRJ6TAUHNrAp--
