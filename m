Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11CF675A896
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 10:04:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjGTIEB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 04:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230269AbjGTIEB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 04:04:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12946213D
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 01:04:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9E4F661912
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 08:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2259C433C7;
        Thu, 20 Jul 2023 08:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689840238;
        bh=SpGVH8w5BTs0905elQ/YzgftW+D7/kKWboSg8/Db4Fw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=FX49dHXi9i9+viwL3wvQg1B67wKuOJz0fk4DwD2VKbCFcaoWtJ3tJe2aYU5EFIBkQ
         fMGg0OC70J/rGxsv+pps8neL32gJnKMJ4LrlpLP9dHmMVTbHeKgpis8o5CBA3C9fQV
         y9eGa9uISLKHEphNS2l6i+vjllMEHEUB6PEZpGJqok7y7Njdv/nREI2f4A5oKqy78k
         b7MdPjTbdGfd6yaO2Hth0SUXC7MFPEVbMlDC1zUvPV9eOluEXlodqRaGQ2gYjyQ+8t
         uVpeUDA6C3/gswYv9jhx22RT1KrNVYc7tGY7wfchU6u5aSJHsekKhwVPRCKM0LLjK6
         fSZNasuq7P03g==
Message-ID: <9d32d536-b30d-f6b8-d9a9-da8d62dc49a9@kernel.org>
Date:   Thu, 20 Jul 2023 10:03:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
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
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <bab9c86c-03b4-f766-378c-e391ac99992a@nvidia.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------L65fpNl4MaZzTJu0h0sssAO6"
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
--------------L65fpNl4MaZzTJu0h0sssAO6
Content-Type: multipart/mixed; boundary="------------KIDgSbrnWqtBQgIZ0xgCa0Tt";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: John Hubbard <jhubbard@nvidia.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org, Vahid Noormofidi <vnoormof@nvidia.com>,
 Matthew Wilcox <willy@infradead.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Carsten Grohmann <carstengrohmann@gmx.de>, Mike Frysinger <vapier@gentoo.org>
Message-ID: <9d32d536-b30d-f6b8-d9a9-da8d62dc49a9@kernel.org>
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
References: <20230719020533.1608867-1-jhubbard@nvidia.com>
 <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
 <bab9c86c-03b4-f766-378c-e391ac99992a@nvidia.com>
In-Reply-To: <bab9c86c-03b4-f766-378c-e391ac99992a@nvidia.com>

--------------KIDgSbrnWqtBQgIZ0xgCa0Tt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi John,

On 2023-07-19 22:13, John Hubbard wrote:
> On 7/19/23 12:59, Alejandro Colomar wrote:
>> On 2023-07-19 04:05, John Hubbard wrote:
>>> In commit 462a385e9a2 ("tmpfs.5: Document current mount options"), th=
ere
>>> is a reference to CONFIG_TRANSPARENT_HUGE_PAGECACHE. However, that
>>> option was removed from the kernel via commit 396bcc5299c2 ("mm: remo=
ve
>>> CONFIG_TRANSPARENT_HUGE_PAGECACHE"), a couple of years later.
>>>
>>> The net effect is that CONFIG_TRANSPARENT_HUGEPAGE is now used in all=

>>> the remaining places in the kernel where
>>> CONFIG_TRANSPARENT_HUGE_PAGECACHE had previously been used.
>>>
>>> This has caused some minor confusion at the man page level, though. S=
o
>>> let's fix it by updating the man page to also refer to
>>> CONFIG_TRANSPARENT_HUGEPAGE.
>>>
>>> Reported-by: Vahid Noormofidi <vnoormof@nvidia.com>
>>> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
>>> Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
>>> Cc: Andrew Morton <akpm@linux-foundation.org>
>>> Cc: Carsten Grohmann <carstengrohmann@gmx.de>
>>> Cc: Signed-off-by: Mike Frysinger <vapier@gentoo.org>
>>
>> Accident here :-)
>>
>=20
> Yes. :)  Michael Kerrisk, could you change that line for me
> to just be a Cc, for Mike Frysinger?
>=20
> Or, let me know if you'd prefer a re-send of the patch instead.

I can change it.  Don't worry.  I'll review it later.

Thanks,
Alex

>=20
>=20
> thanks,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------KIDgSbrnWqtBQgIZ0xgCa0Tt--

--------------L65fpNl4MaZzTJu0h0sssAO6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS46mMACgkQnowa+77/
2zJNAA/+Noq9EQb19G1WCJ2wgpwqNq8788KcTBGTEul1f4CCj1qqoOxeo7A72JCZ
Ar9qtKvkHn259DM323Gn0E0uEMLi9QN7KqP5b9h3ruXIPfwidRdoT56AO8Gtcr3L
LMrgmK2WyIg6M70HnBDDXENcxstxoJZnDWBrdoDHSPVlyIzv/0t6I0a250NiUmid
R+IM9BOp3gy4QSY7ChW3NJlTb39XCYTjd5/T6C4konNdjEL/8PAmiB5Bq/9dyoJw
ErrAJWCNRC9AmdV4j1C6oRpyu0XcOXpkalbVQ73bud5CkKbnkpPpOSG/RizlICtW
91lYJ50gTGRdACFmglKlV/wbzbowh8TDpIbNrge6WlzFbi4+xvulTjGyy2wjYuCs
JLhP3SmJ9RrHRw+bjAZ6e+0j99sb8TAvn8M+OgiJA7ok2+Vg1Zpdxk7wwJ4moDPR
6kGZmQCSkTxXiD2sMD1C7ZCmQfbtrspZPlnNKNy0lCvMZEspsw8aoQAqCASZbfOb
+fDypxAObnGbYKFXL5Bo0KMe/y0AeaxbUOqEWNd98dItdyy+hu3RTlZiTABgHom1
k17dGNNdHb3GaoH3Kp4BDS8wZuJ9vlipgqBG0i9B5z7AzekVHf+4BVJws7TIyAXq
4mZbXJtqoLaXnl9+uuzK2I0+dY8uRBGAemta0bx/vEFh4LUbCd8=
=E/P4
-----END PGP SIGNATURE-----

--------------L65fpNl4MaZzTJu0h0sssAO6--
