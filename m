Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5768754D09
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 03:37:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbjGPBhO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 21:37:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGPBhN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 21:37:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AA49268F
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 18:37:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D944960C4C
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 01:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7B07C433C8;
        Sun, 16 Jul 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689471429;
        bh=qNwfkPr5CkT/y8SxIy/FIvkhUWpHw//xT4Z5F+RxunA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=l/ROBfanm+f1z21nivMQIqOFKXMuX/ahMXxyDCKze1hD8KRk/O6dHw8HrbYgH8agL
         wRbIJcEEQ+sLXib0/iiPSmLTctPYzheJ4ai4b0PwWsGEuU1hkLyLnQnNrIAZR5hGKw
         jZCGWk6IFl26rBfIjeCroIyAAvHCrHSHiK6YGkg9+00OEvFhDqaZJ6rPnNWNihoL3H
         f+0SIvdKxnwSb+bzSsvmVvI+qOFtF2lnZf/lx/lDgC7KlQH1s8ncb8GTZKLFlPfZY1
         mZRBHNDNrySqp0UCf9nKgZBedWcXh/dRb0rGzqQVaQXFXSwsW4z7GbZc/m2PqDIIRp
         v6zwFjiivtW+w==
Message-ID: <5a875d64-331c-7c83-b6aa-0cf8a2b23a19@kernel.org>
Date:   Sun, 16 Jul 2023 03:37:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] crypt.3: The library is "libcrypt", not "libcrypto"
Content-Language: en-US
To:     Xi Ruoyao <xry111@xry111.site>
Cc:     linux-man@vger.kernel.org
References: <20230715184118.1580451-1-xry111@xry111.site>
 <6d635c03-3e05-a8d6-4578-5704867c6d86@gmail.com>
 <1855d0c68cbae144e6f5613ee4a6f109cd5e3562.camel@xry111.site>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <1855d0c68cbae144e6f5613ee4a6f109cd5e3562.camel@xry111.site>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cn7Pr1P6cO3V3gqc8WLRay6C"
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
--------------cn7Pr1P6cO3V3gqc8WLRay6C
Content-Type: multipart/mixed; boundary="------------TGn5A00u3atPw2E7nQZZLJ8R";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: linux-man@vger.kernel.org
Message-ID: <5a875d64-331c-7c83-b6aa-0cf8a2b23a19@kernel.org>
Subject: Re: [PATCH] crypt.3: The library is "libcrypt", not "libcrypto"
References: <20230715184118.1580451-1-xry111@xry111.site>
 <6d635c03-3e05-a8d6-4578-5704867c6d86@gmail.com>
 <1855d0c68cbae144e6f5613ee4a6f109cd5e3562.camel@xry111.site>
In-Reply-To: <1855d0c68cbae144e6f5613ee4a6f109cd5e3562.camel@xry111.site>

--------------TGn5A00u3atPw2E7nQZZLJ8R
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-16 03:18, Xi Ruoyao wrote:
> On Sun, 2023-07-16 at 02:59 +0200, Alejandro Colomar wrote:
>> Hi Xi!
>>
>> On 2023-07-15 20:41, Xi Ruoyao wrote:
>>> libcrypt is the password hashing library, and libcrypto is a
>>> completely
>>> different library (OpenSSL cryptography library).
>>
>> Thanks!=C2=A0 My mistake.
>>
>>>
>>> Signed-off-by: Xi Ruoyao <xry111@xry111.site>
>>> ---
>>> =C2=A0man3/crypt.3 | 2 +-
>>> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man3/crypt.3 b/man3/crypt.3
>>> index 1f3e4792e..ad14cb4f7 100644
>>> --- a/man3/crypt.3
>>> +++ b/man3/crypt.3
>>> @@ -20,7 +20,7 @@
>>> =C2=A0crypt, crypt_r \- password and data encryption
>>> =C2=A0.SH LIBRARY
>>> =C2=A0Encryption and decryption library
>>
>> Is the above line accurate, or should we improve it?
>=20
> Hmm, I'm not sure.
>=20
> This library is only a password hashing library today (and also in UNIX=

> 6 :), but when it provided encrypt() function (from UNIX 7 to Glibc
> 2.27) it can really do "encryption and decryption" (in a broken way
> though).

Thanks!

I prefer to be on the safe side when it's about crypto stuff.  Calling
it an encryption library when it should be considered as such, and it's
unsafe as such, is hurting our readers.  I prefer to call it "Hashing
library", after your response.  Feel free to send a patch, or tell me
if you're busy and I'll prepare this one.

>=20
> But I guess we can change "password and data encryption" to "password
> hashing", at least.

Agree.  Please send a patch, or ask me to do it myself.

Thanks again!
Alex

>=20
>>> -.RI ( libcrypto ", " \-lcrypto )
>>> +.RI ( libcrypt ", " \-lcrypt )
>>
>> I see that another page probably also needs to be fixed.
>> Would you mind fixing it too,if appropriate, in this patch?
>=20
> Ah indeed, I didn't catch it.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------TGn5A00u3atPw2E7nQZZLJ8R--

--------------cn7Pr1P6cO3V3gqc8WLRay6C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzScIACgkQnowa+77/
2zIrZA//XjKMtfdDqOisYy9TKcSJvHtJV/0lGLy+B3BosofyYOO0U0sropT6McBh
1+UCAeVi/q+PSQFBqAF/1YhV+9gjH4WxRN3ogTbarIhoZZfYEONljRVqVKhcKnFl
T0jSsxgkC6CwHElIVRjiaOOh0UZoiXCDAsl5IMsyS3aQsh3LJJKx8ZTOocy75TMf
LdBgxemWQf0g0QvqB1FPBuaSAErpNWKer777aeRwqufx9OrdYB1ylvlvwqXsU7V5
036yJRDdWh6L2BCR2D2ltHJCLK2LGRlAuDy1L7LRfh7TVvk6LsqGfoXRcdT5+zFt
QEU/WIDYQ+IgkssSG7/DHxm7Gmy/WAHkT5gVzBcGkEqbbABqS7V7cqusyAlOEEO0
5fIpgBaEzNlewRf1kz6aqEtb5QbEq7/+iTH7B9A4zRSi4u3tkIwgRgBrg+4qXrUx
4hz2piU58LkNDVuSWnu0k925gx7m1ihuczoSVWIcs7xmZwpQ7a6ne4M9bI2TiVcx
9HG63yz8vUVfrOVTYUfSGj8RMOGCEZRNLQ/unqF+IUWOhxZRIqnuWC12l6OjyIp0
wKRGNE/hJiH92A9MLtIGaJoKDG0h01wfjkYOMPaJeXFgTWWHXnbQbYTOlsIoSwyQ
2bN4y4l3eRL40YiuNNUsc3Q1j8U+dwI1DVCgWun0WgtP4E9ffOg=
=jzYd
-----END PGP SIGNATURE-----

--------------cn7Pr1P6cO3V3gqc8WLRay6C--
