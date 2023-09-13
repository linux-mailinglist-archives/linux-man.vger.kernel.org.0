Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF1679F58F
	for <lists+linux-man@lfdr.de>; Thu, 14 Sep 2023 01:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233162AbjIMXdJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 19:33:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233157AbjIMXdI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 19:33:08 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95C26F3
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 16:33:04 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4321C433C7;
        Wed, 13 Sep 2023 23:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694647984;
        bh=GneYMWPsmE/B9+Z71eOM9xXgYjZlsHTRogstQgfZtnQ=;
        h=Date:Subject:From:To:References:In-Reply-To:From;
        b=pocK2xob8eFeovlhO3yo52V1gDo2tCxDteW1KoGs7nY1fkqQQTUDMpgaVOkSzLqd8
         uZeU325UnW630BZaJLnmMzuS4Q5eE8fvSD7zf0Ei+1zGsxDN8xSyUEPYBsgCv5drsp
         Y/NegKPKfHNEbuDJoBxR/FnPpTnbc3A/roYDCJA96kC+Zx2e6hXMb3R8zFrCpCQXQ0
         7unqhLGQMFJMHvw0BFQ5g9v7WVMccpL5B2PlI6TgSv+OAWH1v7TFgJkIrZUg95vpCz
         1Sj4Pvi1LqjENza8nWwDsIJB6J25nND+as/DHRP4fNKOcy4w/5sGr7Hz+s9P6OCk3J
         1q7f4i2z9VeTQ==
Message-ID: <dce24a2c-d173-4793-a509-f886c6edd4b4@kernel.org>
Date:   Thu, 14 Sep 2023 01:33:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: 3p page wording
From:   Alejandro Colomar <alx@kernel.org>
To:     enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
References: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
 <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org>
Content-Language: en-US
Organization: Linux
In-Reply-To: <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0mY1Az00gABggTrL5iXoWQBn"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0mY1Az00gABggTrL5iXoWQBn
Content-Type: multipart/mixed; boundary="------------qJ4MF5qm0P36KPhGbq0kgu1q";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Message-ID: <dce24a2c-d173-4793-a509-f886c6edd4b4@kernel.org>
Subject: Re: 3p page wording
References: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
 <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org>
In-Reply-To: <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org>

--------------qJ4MF5qm0P36KPhGbq0kgu1q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-09-13 23:50, Alejandro Colomar wrote:
> Hi enh,
>=20
> On 2023-09-13 21:58, enh wrote:
>> is it a requirement that the 3p pages only contain text that's
>> explicitly in POSIX?
>=20
> Yes, I guess.
>=20
>> the siginfo_t::si_addr description on
>> system_data_types.7 (which is what people see if they `man siginfo_t`)=

>> says "Address of faulting instruction", which isn't true for all
>> signals, and caused enough confusion for the ART maintainers that they=

>> came to me as Android's libc maintainer for an adjudication. meanwhile=

>> the sigaction.2 page says "Memory location which caused fault" which
>> seems much more helpful.
>=20
> siginfo_t(3type), aka system_data_types(7), isn't a POSIX page, so
> we can patch it if you want.
>=20
> I'd also move the types to their own pages and have system_data_types(7=
)
> be a link to intro(3) (until we have an intro(3type)).

I've done this.  Please check if you approve these patches:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dcon=
trib>

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------qJ4MF5qm0P36KPhGbq0kgu1q--

--------------0mY1Az00gABggTrL5iXoWQBn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUCRq0ACgkQnowa+77/
2zLvow//Ztp7sQF3dvMHhgO4zACTCdeicLxvy7FsyOrjt038lvbplDQrm005MdlF
TMv4Fl7viJhv7uXk6h01EwmDzxcHySH4mLosGVIL0V+pZev/q1S0gWarDDjvV+b1
laAR3lVJWHvwtdb5Le8UcnKYitRcRYMu0I2CPO7FyVsj98nlgV4MzMn3LT5QI6FS
vREilNuMgnipx0Tg7OJrKcGL7EbD/40Y4vnunVhBucVfcUoEpdFEkLhw9+Vl1n3w
0IMF47hpY70PxI6eJkwJr+lrPds4d9lddOBrpJd9xJ1OQEiUetF3PpQHnLkX2Qkv
W/ge83Oe1LJs/F3FGc27ySws/JfKupOQhBVgPPwYFWGHkaPc1agVHrStRzD+8IFz
vP1q12zX1U2AiulxWDM4+8thom+OqyCBoUyLpX/Q4nkyrnXC8PB1kRbuVFZga2o5
NEuouyEy9JrYp+b9Br1a0cb4TN/cKOBeLOtPN3JXjDJEAurqfiQ9OrXAzjmDp5xp
heSY9Zy/GMz/h5uVW9SjKCAbB7Zzlj/tRp27sA4s36EJ6FKpLZkL+zSBoJBksr35
++aOhtY5FUZqjp02hZQgfh6o+LujxaTCYEKwDPFlU0/NdsYUBr8qdXbALnUc+a5W
QVPb5HH3aNa05qO344v/uObF2MiVZTeKbLgPahiGltDET5zy9Ws=
=f0BY
-----END PGP SIGNATURE-----

--------------0mY1Az00gABggTrL5iXoWQBn--
