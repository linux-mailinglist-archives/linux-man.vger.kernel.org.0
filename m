Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB1BD758724
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 23:28:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbjGRV2m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Jul 2023 17:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjGRV2m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Jul 2023 17:28:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03569198C
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 14:28:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7D19360F16
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 21:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 449AEC433C7;
        Tue, 18 Jul 2023 21:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689715719;
        bh=WZZG2WQDQ9yy+yaEXwBbAF73xQF3Rcd4GZmBI/mnINw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=AlaRL09pTEFQObcu7sQGoZ6g42nd7BVbjWWVef02YTq8/VvMNlakVHM3Jlm0hAw+S
         3iHtWmxO/td+wYwClocL6SUzx2R3bgW1Hb3ceuNVggFWI4LgtIrT1ofFumFid0WIq0
         6+29MGaoftRCyc+g56YLF3sHXFD5QyLP20hUtEmhLtvveoNiM8VZJsbP53c2mwouIM
         H/sn+rZqYrmKKGtZzSpwsiBMTnCZOtkxZXh8lPIz/jgeZ5yGskqMUaxuVfs9nK3b5+
         CaV2g3fSGZ6i71oQFHi5bgJdQpF0nxpNwJw4/gb1utQM0/6N4W8lEeTmvkJN8EngYe
         ui3rmq/UBGYuQ==
Message-ID: <72dd4baf-43d2-d9e5-cb5c-04b663fe8964@kernel.org>
Date:   Tue, 18 Jul 2023 23:28:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v6] grantpt.3: no-op on modern glibc and other UNIXes,
 HISTORYise
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
 <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>
 <a36f5f50-b81f-4d1e-b2b3-f6237da94d0b@kernel.org>
 <dfrwqbbrhrfwnvkwtbmuyv4qhyt3mvaufgybke5v5nd56jzgro@z3rj7jjrzbht>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <dfrwqbbrhrfwnvkwtbmuyv4qhyt3mvaufgybke5v5nd56jzgro@z3rj7jjrzbht>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------r5ReI9LzSaOa9QHMrrbQPWCZ"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------r5ReI9LzSaOa9QHMrrbQPWCZ
Content-Type: multipart/mixed; boundary="------------S6X05q2frRoukfiMaAYCJyrh";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <72dd4baf-43d2-d9e5-cb5c-04b663fe8964@kernel.org>
Subject: Re: [PATCH v6] grantpt.3: no-op on modern glibc and other UNIXes,
 HISTORYise
References: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
 <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>
 <a36f5f50-b81f-4d1e-b2b3-f6237da94d0b@kernel.org>
 <dfrwqbbrhrfwnvkwtbmuyv4qhyt3mvaufgybke5v5nd56jzgro@z3rj7jjrzbht>
In-Reply-To: <dfrwqbbrhrfwnvkwtbmuyv4qhyt3mvaufgybke5v5nd56jzgro@z3rj7jjrzbht>

--------------S6X05q2frRoukfiMaAYCJyrh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-18 17:07, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Jul 18, 2023 at 01:42:08PM +0200, Alejandro Colomar wrote:
>> On 2023-07-18 01:31, =D0=BD=D0=B0=D0=B1 wrote:
>>> Also, administriva-wise, git pull tells me
>>>   [PATCH 1/2] statfs.2: unshade as deprecated, but direct to statvfs(=
3)
>>> with msgid
>>>   <b4b871ffdf8f764ffd6c25039f3944b08748bd3e.1687553930.git.nabijaczle=
weli@nabijaczleweli.xyz>
>>> is the last outstanding patch I have rn, sans this one.
>> I was waiting for you to send an v2 with the fs and inode corrections
>> suggested by Tom Schwindl.  Is that correct?
> You applied 2/2 but I got no responses for 1/2.
> Scissoring a rebased 1/2 below.
>=20
> Update-wise: musl@ told me they basically agree and will apply it
> when glibc does, and I got the glibc first round of reviews and the
> hurd half stamped, but it's now entered the "resend every week to
> no response" stage that all glibc patches go through.
>=20
> When those land I'll probably re-shade the declarations, turn the
> paragraph into "use the standard statvfs(3) interface instead, but
> see VERSIONS if using f_type" and extract the magicks to, like,
> fs-magic(7) or whatever.

Ok.  Thanks!

>=20
> Best,
> -- >8 --
> Date: Fri, 23 Jun 2023 22:49:22 +0200
> Subject: [PATCH v2 1/2] statfs.2: Unshade as deprecated, but direct to =
statvfs(3)
>=20
> Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzha=
6hslahv24szs4raroaz@ogivjbfdaqtb/t/#u
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.

Cheers,
Alex

> ---
>  man2/statfs.2 | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/statfs.2 b/man2/statfs.2
> index 0496ab6c9..307a29b3a 100644
> --- a/man2/statfs.2
> +++ b/man2/statfs.2
> @@ -15,9 +15,15 @@ .SH SYNOPSIS
>  .nf
>  .BR "#include <sys/vfs.h>    " "/* or <sys/statfs.h> */"
>  .PP
> -.BI "[[deprecated]] int statfs(const char *" path ", struct statfs *" =
buf );
> -.BI "[[deprecated]] int fstatfs(int " fd ", struct statfs *" buf );
> +.BI "int statfs(const char *" path ", struct statfs *" buf );
> +.BI "int fstatfs(int " fd ", struct statfs *" buf );
>  .fi
> +.PP
> +Unless you need the
> +.I f_type
> +field, you should use the standard
> +.BR statvfs (3)
> +interface instead.
>  .SH DESCRIPTION
>  The
>  .BR statfs ()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------S6X05q2frRoukfiMaAYCJyrh--

--------------r5ReI9LzSaOa9QHMrrbQPWCZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS3BAQACgkQnowa+77/
2zLQrhAAkg8+E2uHwvRHNsSFjsfL5Evfqs6VeuQXw0OydG0tDxLSHtSfNqvlrl59
fzMfah93i+12UjMabjXHS5eqauBRCJFHyEb81cKwaCkVHooc3yX9hO8pVSYy1Gq7
fYiLNnKnqtIa8BREUEEgT+Gws4T82PEzTdb+KBxRefOfeLDQ/Xa28XwKZczmvN6u
4agYmpL6OMEe7TqhP1938xW3TKYM/9CZC2AzYeAYtEfDM2OU4fQpzbHvrCIStsdt
nZ8cUZWJ3FEKvDct1M9DuBtEOn3z0E+NHek2HtmlfIZF9HsVDaBMOAoX7jFS0xCQ
tTJ35hwGflC4DR01UDjOl7rn6RoNCUmJ/+ODReXgobn2LQuloDG3bt6YNEw3o2W1
duxH7iG5/qaxeQKrqaln9Cpost4VuwrtQJTzK4aJB7lKjiSdXH5vlIxJePLJC3Bd
9ldw8O2J1JkzPEs9uxahIzYNwian50+Kkt2XNF/m0BhJqk/XrR0Cdw5IoyORkgIl
qaxzgexG0ECr2EnBqA27kcRUWLsSJcqJqcFIoz1SKWagYCVzNzO6xD5SMusgUBDH
KK8XPN2LcsOvYEdOPQTe/HESpDGIPXQ6f9lbAZnPcqMJWq+vbnsJTf6gQvESCS7N
7jIvoAnrZKFkC7iPdnE/mvHstthsgFXpsdKY7o0DY6TbLbfjji4=
=2ViR
-----END PGP SIGNATURE-----

--------------r5ReI9LzSaOa9QHMrrbQPWCZ--
