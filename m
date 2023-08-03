Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 305C476E9FE
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 15:23:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236223AbjHCNXJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 09:23:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236101AbjHCNXD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 09:23:03 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BBADE70
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 06:23:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D4C5C61D80
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 13:23:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5BA3C433C7;
        Thu,  3 Aug 2023 13:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691068980;
        bh=AyUw3rwMoT5YuQiczhC/iyPLkMW0Wvb8RTFlp+mvTIs=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fzDpI5XgdPeVI6lxBNHJXkg4D7a5T2mWcV7WiNM2OPL9NtWbRgiIuKu1QFTgxl9Qj
         quhfA9vA30FMOl6kwkPOS3d8Bygw36H1Zf8OP00/1F+bx49vuJi2Jpsd9WN4KUhdvI
         FsOnQ5xLW14Vg32cnvqIWUig6zMIy3FQQVHtK07Nj91kYcE68HjXcCX/p/P1q/TToI
         rqHwMtOrcrj5O7RmHxmCMmkVsqa5uoy1pMi398p7NkjCTK2armhUrwrBFUrgxGdCyw
         aCWTXdNA73in6+Z7yNJ3M/QjZc1iAcSD71dctfwjmbglPcRt3a5QCsZ2BfH+LdzFEJ
         2J1OtJqThegnw==
Message-ID: <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
Date:   Thu, 3 Aug 2023 15:22:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QZTXuc3UZd3sS8tmbCehcNcZ"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URI_HEX
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------QZTXuc3UZd3sS8tmbCehcNcZ
Content-Type: multipart/mixed; boundary="------------5GvKbdj4V0XE454LzoTvDxrz";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
In-Reply-To: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>

--------------5GvKbdj4V0XE454LzoTvDxrz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2023-08-03 13:52, =D0=BD=D0=B0=D0=B1 wrote:
> POSIX has for a long time implied that directories are fsyncable,
> and since Issue 8 explicitly specifies directory syncing semantics:
>   https://www.austingroupbugs.net/view.php?id=3D672
>=20
> Simultaneously, directories being unopenable for writing is a
> Longest-Standing UNIX Semantic, present in the UNIX Programmer's Manual=

> under directory (V), and has always been enshrined in the standards.
>=20
> Kill the FUD that says that some UNIXes require the fd to be writable:
> they /must not/ and this confuses users:
>   https://101010.pl/@eater@cijber.social/110824211348995583
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man2/fsync.2 | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/man2/fsync.2 b/man2/fsync.2
> index 1043e6a1b..9ced40b28 100644
> --- a/man2/fsync.2
> +++ b/man2/fsync.2
> @@ -155,12 +155,6 @@ .SH VERSIONS
>  .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
>  .\" -1: unavailable, 0: ask using sysconf().
>  .\" glibc defines them to 1.
> -.PP
> -On some UNIX systems (but not Linux),
> -.I fd
> -must be a
> -.I writable
> -file descriptor.

But that's still true.  HP-UX and AIX had that issue.  I'd move
that paragraph to HISTORY, and say "some old UNIX systems".

Cheers,
Alex

>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5GvKbdj4V0XE454LzoTvDxrz--

--------------QZTXuc3UZd3sS8tmbCehcNcZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTLqioACgkQnowa+77/
2zK3NQ//fPPJMvxfZ5iHZ+o3ihnHjFpB6m8yr3uKljRIwA50zlQ2HIuhSS1wmagM
waxFuN04Drp2Go4ZXQdO/dNZDJEDrdHKghjC/jotqlWyuOOaLvTh0LiIkgwSbty2
8RTO0rKckvx9BTgP2xV6cYStsKo/v6awxuKcmnTG8Dkxu/yVc+EaghYEKXZkTVmX
OoY8GIFTq5Id2LrrChS2xna1SWdKv/rfuZAjjZcP58u9S5pLUw6RczK1PZaB7Yd7
3CHKB1dSnCH5mTh8RtjSmn2pudO17jdvbyXonjQyMGg1Sffjrn4K+qD0U/9F/aJW
WJdmCU3nDUlfJbhrNEZBEXR/52+NYsYPM6eQ4dzl4KQ7Jpbg9NEXfZ3pk3GRDpPO
g1T7rBkEiPp2xErVInQw2xL70JZxoI7W/tkiIvmPIaR3RxUDZs+Y1k5eQiD0bONM
HxknIV2zzribF8UZTJaqDBrmapWVS131sG8c8fSxrFdexo7kAloeZuDTPIf5E5pL
D+OvLRbbjJOVrZYNXMoydB2T8ffjkLULvrCmGWiG+qKhweqGUF8qvezzoCV8xyUy
G6/RxX2ziUYYbWSOFl67FW/HR1RlfxUx0DpxHaT0GpUDaIObGaZFWP6MOZ37UkqS
jNU4YRi30tjJg0w2hXnrAU0XBUxVB11FVwUVMd62367IwwNroHE=
=tA9X
-----END PGP SIGNATURE-----

--------------QZTXuc3UZd3sS8tmbCehcNcZ--
