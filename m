Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC89B7675FD
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 21:05:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbjG1TFI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 15:05:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbjG1TFH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 15:05:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 586B0E48
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 12:05:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DE803620ED
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 19:05:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 274DAC433C7;
        Fri, 28 Jul 2023 19:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690571103;
        bh=ntIQdrCnIbD1Q2BjzqXcGceXU61IpK9C5rdivcUez1o=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=YAafJ0A0SokG4ZZTE9XkDS1rnLQjUKcWCTgkAAHPIgcJBK1ohQaEKnzcVf58gMyFH
         1fDwrS3Q23tOFzhkMp5DdAOsqQMe7ZmNgMFi2m19C/xnBiklZbMyNnpVdmz1qokwG5
         +r4rxBO0OTcI9Kx5UWXRwq1mE0AYtiHpCsLsn3173Y7OiqDK0IcB0yUZIb9tLCfdSf
         dEuNZDP1P+m5KRupq4zrtXblSHwtCIM+n7Hy8kjUKFMe17xsaFQRFfhhLqHaRfk031
         BCMnv4Zyq4YvMHQBypTAucGJC2aAn5fsJ1sBVswlBsEA8ktKN5iP9gxXB5EgkUJsSP
         avKbIhajsPYMQ==
Message-ID: <dff13ab7-bd33-ce26-792f-956b57924df6@kernel.org>
Date:   Fri, 28 Jul 2023 21:04:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     John Hubbard <jhubbard@nvidia.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        Vahid Noormofidi <vnoormof@nvidia.com>,
        Matthew Wilcox <willy@infradead.org>,
        "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Carsten Grohmann <carstengrohmann@gmx.de>,
        Mike Frysinger <vapier@gentoo.org>
References: <20230719020533.1608867-1-jhubbard@nvidia.com>
 <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
 <bab9c86c-03b4-f766-378c-e391ac99992a@nvidia.com>
 <9d32d536-b30d-f6b8-d9a9-da8d62dc49a9@kernel.org>
Organization: Linux
In-Reply-To: <9d32d536-b30d-f6b8-d9a9-da8d62dc49a9@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yaRyeFq573eVUoScMuxprFYW"
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
--------------yaRyeFq573eVUoScMuxprFYW
Content-Type: multipart/mixed; boundary="------------yzDXKJK0xK7uhm8u0rcamxY4";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: John Hubbard <jhubbard@nvidia.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org, Vahid Noormofidi <vnoormof@nvidia.com>,
 Matthew Wilcox <willy@infradead.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Carsten Grohmann <carstengrohmann@gmx.de>, Mike Frysinger <vapier@gentoo.org>
Message-ID: <dff13ab7-bd33-ce26-792f-956b57924df6@kernel.org>
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
References: <20230719020533.1608867-1-jhubbard@nvidia.com>
 <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
 <bab9c86c-03b4-f766-378c-e391ac99992a@nvidia.com>
 <9d32d536-b30d-f6b8-d9a9-da8d62dc49a9@kernel.org>
In-Reply-To: <9d32d536-b30d-f6b8-d9a9-da8d62dc49a9@kernel.org>

--------------yzDXKJK0xK7uhm8u0rcamxY4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi John,

On 2023-07-20 10:03, Alejandro Colomar wrote:
> Hi John,
>=20
> On 2023-07-19 22:13, John Hubbard wrote:
>> On 7/19/23 12:59, Alejandro Colomar wrote:
>>> On 2023-07-19 04:05, John Hubbard wrote:
>>>> In commit 462a385e9a2 ("tmpfs.5: Document current mount options"), t=
here
>>>> is a reference to CONFIG_TRANSPARENT_HUGE_PAGECACHE. However, that
>>>> option was removed from the kernel via commit 396bcc5299c2 ("mm: rem=
ove
>>>> CONFIG_TRANSPARENT_HUGE_PAGECACHE"), a couple of years later.
>>>>
>>>> The net effect is that CONFIG_TRANSPARENT_HUGEPAGE is now used in al=
l
>>>> the remaining places in the kernel where
>>>> CONFIG_TRANSPARENT_HUGE_PAGECACHE had previously been used.
>>>>
>>>> This has caused some minor confusion at the man page level, though. =
So
>>>> let's fix it by updating the man page to also refer to
>>>> CONFIG_TRANSPARENT_HUGEPAGE.
>>>>
>>>> Reported-by: Vahid Noormofidi <vnoormof@nvidia.com>
>>>> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
>>>> Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
>>>> Cc: Andrew Morton <akpm@linux-foundation.org>
>>>> Cc: Carsten Grohmann <carstengrohmann@gmx.de>
>>>> Cc: Signed-off-by: Mike Frysinger <vapier@gentoo.org>
>>>
>>> Accident here :-)
>>>
>>
>> Yes. :)  Michael Kerrisk, could you change that line for me
>> to just be a Cc, for Mike Frysinger?
>>
>> Or, let me know if you'd prefer a re-send of the patch instead.
>=20
> I can change it.  Don't worry.  I'll review it later.

Patch applied.  Thanks!
I've slightly reworded the commit message:

-  Use tmpfs.5: instead of man5/tmpfs.5:.  We only specify the last
   filename in the path (see the git log).

-  It really wasn't a typo, because the previous text was written in
   a time when that was the correct spelling.  So, instead, I've
   changed it to talk about an update, rather than a typo fix.

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
80e3024bde68ee3fa55cfd87728b81f94ec931df>

Cheers,
Alex

>=20
> Thanks,
> Alex
>=20
>>
>>
>> thanks,
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------yzDXKJK0xK7uhm8u0rcamxY4--

--------------yaRyeFq573eVUoScMuxprFYW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEEVsACgkQnowa+77/
2zJYwRAAqcV2ieXg1wqmf6vDfKaKC4pqsDG6e0B49INxbij3miA7uyyj1941FoxZ
wL5jnw49D2A0Js2ZB2aPicJvxlBSXzBh7QlacxVFYiWgniKYr8Z7EZ+4h52uBRR/
4hb3DlWRFQFI4/XhFL7aZFkkGZaPsmpohox3Ro6gfKCeviVLMb1h3xc6c32Y7Sui
Y399IdF7BC1GPVnQVKPJVhq/4Cm5YN38vj/fV8qq2oCbWXUiZJ6BTH0ngcp1yMk7
0rel/t8VIw54hU77axyuDRMP8MmEc8uRpspBcmrp31hZeJcFqsyUjHT9LZ2A6XkF
4tM7Z5Dk+tdkNp5ScAZuskn4MAGuQz7jku7UGwcmlheaw1y0iL98k+iAmKW5vpLF
nbW4onIcBDC1N9klPW1sQf6PLxYvqSl5CHSnyEh1FdhjhEXYFQewTIeVEfWTRF/C
s/NcpmaLQyup/deyn4pq1t1rpvytCKvrxufV7rvDKqOvx/S4sF6xSuuRso4XSoJY
ruTyY/RoHspDirgN1SFhQnL/CYHM3aRHeaAWvyTiZ444zzbCibEagYO3RanC2s3y
zgad7Xyt4pZ/N9lezqH0P2z2UPSEXAYK8uFSekjhu8oi+eHSlHXYrSu5DEvNxmE0
HRNiMBeczQoaSoTvy4UY/pFIfkTXXFm5DeAPU5/02MuR67ok/BQ=
=s+4E
-----END PGP SIGNATURE-----

--------------yaRyeFq573eVUoScMuxprFYW--
