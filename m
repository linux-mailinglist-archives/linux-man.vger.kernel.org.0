Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32955757AE3
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 13:48:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232147AbjGRLsY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Jul 2023 07:48:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232154AbjGRLsV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Jul 2023 07:48:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 433C3EC
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 04:48:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BE147613EF
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 11:48:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7817CC433C7;
        Tue, 18 Jul 2023 11:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689680898;
        bh=sZgMO/NGEfHjUGMVwhpxcmX45HDsWwTQm7oQhzg1qvo=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=SFzO+i8NEy1D6QxcLwruZ/bBs524ZKYpcfnDUFHYNkkBKeMAR3CrXWdoyyswsuyIQ
         60pWm/4A0RhN8K/S+ceRVcIYOPX0u8r8OFd4VVRgvFixx3N5OzlEAk6MN8gKYkq8Q9
         GDRnY5wW8oOkDOucg6Lnp3LZ4h0ZM90C6s/d736blrYeAm1jAy5XUkUAMS6Hu3rhg1
         EY489OCWbXhEUiT4C2QT2CWl701bsVmEWCU4hLOx5uqpYpeJzwipKUw2Uw5yb71HA7
         KFspxkCecl+B4Xa42iUtN1fahxlenusTauhAXwYhfIHUfaUOYlvbdXKk95XioBYDU7
         KhaT491LJAc9A==
Message-ID: <4e770cae-15de-10b2-f1cf-eb2fa8e09419@kernel.org>
Date:   Tue, 18 Jul 2023 13:48:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Tom Schwindl <schwindl@posteo.de>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
 <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
 <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
 <cc5454bd-67f2-e151-345f-cafd62074477@kernel.org>
Organization: Linux
In-Reply-To: <cc5454bd-67f2-e151-345f-cafd62074477@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Wcy2pnpNo6m0xGNLivfITBx3"
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
--------------Wcy2pnpNo6m0xGNLivfITBx3
Content-Type: multipart/mixed; boundary="------------Zons1Opo1wM4uKjvao3lKU0I";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Tom Schwindl <schwindl@posteo.de>, =?UTF-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <4e770cae-15de-10b2-f1cf-eb2fa8e09419@kernel.org>
Subject: Re: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
 <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
 <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
 <cc5454bd-67f2-e151-345f-cafd62074477@kernel.org>
In-Reply-To: <cc5454bd-67f2-e151-345f-cafd62074477@kernel.org>

--------------Zons1Opo1wM4uKjvao3lKU0I
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-18 13:43, Alejandro Colomar wrote:
> Hi Tom, =D0=BD=D0=B0=D0=B1,
>=20
> On 2023-07-05 15:57, Tom Schwindl wrote:
>> On Sat Jun 24, 2023 at 2:39 AM CEST, =D0=BD=D0=B0=D0=B1 wrote:
>>> Quoting myself from #musl:
>>> 01:59:40 hm, I think this was just invented for symmetry with bfree/b=
avail
>>> 02:00:46 FFS has minfree for space but nothing equivalent for inodes
>>> 02:32:31 (this is mirrored in ext4;
>>> 	  a global grep over DragonFlyBSD and the illumos gate
>>> 	  showed just NFSv3 forwarding from the server;
>>> 	  OpenBSD always sets it to the same thing as f_ffree;
>>> 	  oddly, NetBSD /does/ calculate it differently
>>> 	  for LFS and FFS but due to queued writes or
>>> 	  w/e not because of root reservation;
>>> 	  and as expected a lot of "/* what to put in here? */"
>>> 	                       and "// XXX same??")
>>>
>>> Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkz=
ha6hslahv24szs4raroaz@ogivjbfdaqtb/t/#u
>>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
>>> ---
>>>  man3/statvfs.3 | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/man3/statvfs.3 b/man3/statvfs.3
>>> index b1f0e7545..272ee5391 100644
>>> --- a/man3/statvfs.3
>>> +++ b/man3/statvfs.3
>>> @@ -227,6 +227,14 @@ .SH NOTES
>>>  .BR statvfs ()
>>>  with the argument
>>>  .IR path .
>>> +.PP
>>> +Under Linux,
>>> +.I f_favail
>>> +is always the same as
>>> +.IR f_ffree ,
>>> +and there's no way for a file-system to report otherwise.
>>
>> s/file-system/filesystem/ as that's what's used elsewhere.
>>
>>> +This is not an issue, since no filesystems with an i-node
>>> +root reservation exist.
>>
>> s/i-node/inode/ for the same reason.
>=20
> IIRC, I've already written this in the past, but I can't find it.
> I'll write again, just in case.
>=20
> man-pages(7) seems to confirm what Tom says:
>=20
>    Preferred terms
>        The following table lists some preferred terms to  use  in  man
>        pages, mainly to ensure consistency across pages.
>        Term                 Avoid using              Notes
>        =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
>        bit mask             bitmask
>        built=E2=80=90in             builtin
>        Epoch                epoch                    For the UNIX
>                                                      Epoch
>                                                      (00:00:00, 1
>                                                      Jan 1970 UTC)
>        filename             file name
>        filesystem           file system
>        hostname             host name
>        inode                i=E2=80=90node
>=20
> Cheers,
> Alex

Ahh, never mind; I could find now my old mail, which had been responded
with v3, which I have already applied as

c3f43ba17 ("statvfs.3: note f_favail =3D f_ffree on Linux")

Cheers,
Alex

>=20
>>
>>>  .SH STANDARDS
>>>  POSIX.1-2008.
>>>  .SH HISTORY
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Zons1Opo1wM4uKjvao3lKU0I--

--------------Wcy2pnpNo6m0xGNLivfITBx3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS2e/8ACgkQnowa+77/
2zLvvRAAjA8ZW9OJVBpIHxAS24fn3v25j8M0FDIsXDBhanuYbcFJ8i7pyLiSemrL
lbsjAf95UqOUXRqzdobyifIdsF7CciuCxdMhE3eoS/8yiIEcokB39VHqOWZKRfx0
blBDhJS1amhWsDKbXXB4vb644xM2zS2k/dBGcxdkKiwO9ZZW3u1OXcIFAGN6pEXK
uZ8hUUGE9Z+Uc/eqv0sel+u/j6emjGzR52wY5p701cqQc9rFInHC+yeGJ/LfvJWm
GY/o3zFAlpGzxzqSM2L3WRf/9AdUiPjqnFQrlCs41ihK9ZAXiO0QjldzWjNVUPRZ
xZKkBBRaZOsbL8p7CJ0eYbH/V4YD/eJa6enn3tlWrBcEjSByVPtp3X4FO9w61yQa
j2j0NdKrXQRVISK+CBSURrXpdU2V6/bGElYkv4mRTvJuJF67Mcp6/yNyp61yJ4i4
b0rYSEyRKxPy1cXLpqk78q55cOT5CnsE7xNvOs1XoJ7C2vudH/+HbrnxxnBQrGxE
s/IbH60+giW0DAE0FEoIE76tKiKXJBEF+1MxFWiHgAZuRTPR/45QzUCaQdHwGUDS
gsMYRlSNhGdmi3cSkiuogaysc/5NyCfSwZEIGnIMlgEDThNc5sB2/vlJMttwp7eg
tzuLMgxZAxwfsZQEoAAidqJrFLDXReY8tZSiMobaiADZPcLEPbI=
=jCn/
-----END PGP SIGNATURE-----

--------------Wcy2pnpNo6m0xGNLivfITBx3--
