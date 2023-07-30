Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA1C67685E5
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 16:05:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbjG3OFq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 10:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjG3OFq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 10:05:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEE05189
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 07:05:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8C32160C78
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 14:05:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11262C433C8;
        Sun, 30 Jul 2023 14:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690725943;
        bh=HYQvJqye9/syjBmZ8xgaUkLgR5kuMR0Pwp4hMb2BZV8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=BB/zvmfWvx4bJjhPjNVjC2Sr+LtQp/yfmj5bRx2jDvykIgy5bOpMH1za5ALHiPbNm
         Vh/OSk8yYvWpW41EpjWLlnPZf6Yn0g2bPgPYJGZ0crNM4i+iUYnItCl5z5m9KdwNAd
         C86iMlv6gSm8gXIa7gtb635mthiDQwGqL5eGNDIWgHtTLfJfX9aQBVCu/EfEWNNke+
         GssF4SNOwSh+05f0+bKdrc0pC6ST7LcUdT10UZbXS7Ax0Hd2KeckA/WZEMhf1ax8r/
         dTZ6d/pCkEhMdUV+KSe2D0g/N7nbpgCqv/IAmaxp41Kzomjy+9/wnYqV5LCczeEL/a
         dnpmkVle1VQpw==
Message-ID: <2d4237a3-7e17-bfb8-8098-535d63b56a86@kernel.org>
Date:   Sun, 30 Jul 2023 16:05:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Lennart Jablonka <humm@ljabl.com>, linux-man@vger.kernel.org,
        Matthew House <mattlloydhouse@gmail.com>
References: <ZMQVYtquNN-s0IJr@beryllium>
 <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
 <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
 <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
 <20230729143855.1656509-1-mattlloydhouse@gmail.com>
 <20230729193912.mzn5h2hjnyxnxkeq@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230729193912.mzn5h2hjnyxnxkeq@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TRpg0J03Axokdwt3PnHIzHsM"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------TRpg0J03Axokdwt3PnHIzHsM
Content-Type: multipart/mixed; boundary="------------shGLf9DulOqTKZiaRIU0Vyzj";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Lennart Jablonka <humm@ljabl.com>, linux-man@vger.kernel.org,
 Matthew House <mattlloydhouse@gmail.com>
Message-ID: <2d4237a3-7e17-bfb8-8098-535d63b56a86@kernel.org>
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
References: <ZMQVYtquNN-s0IJr@beryllium>
 <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
 <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
 <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
 <20230729143855.1656509-1-mattlloydhouse@gmail.com>
 <20230729193912.mzn5h2hjnyxnxkeq@illithid>
In-Reply-To: <20230729193912.mzn5h2hjnyxnxkeq@illithid>

--------------shGLf9DulOqTKZiaRIU0Vyzj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-29 21:39, G. Branden Robinson wrote:
> Hi Matthew,
>=20
> At 2023-07-29T10:38:46-0400, Matthew House wrote:
>> On Sat, Jul 29, 2023 at 8:29 AM Alejandro Colomar <alx@kernel.org> wro=
te:
>>> I lied.  I should have said that it writes what is safe to write,
>>> and then uses a somewhat "safer" version of undefined behavior
>>> (compared to other string copying functions).  The standard
>>> differentiates "bounded UB", which doesn't perform out-of-bounds
>>> stores, from "critical UB", which performs them.  In usual jargon,
>>> UB is UB, and there's no mild form of UB; however, the standard
>>> prescribes a bounded form of UB.  However, I'm not sure compilers
>>> --and specifically GCC-- follow such a prescription of bounded UB,
>>> so it's better to consider all UB to be critical UB, just to fall on
>>> the safe side.
>>
>> Do you have a source for this? As far as I am aware, the standards
>> have always followed the "UB is UB" philosophy, which is why
>> standards-oriented people keep trying to reiterate it. I've never
>> heard of anything like "bounded UB" vs. "critical UB".
>=20
> The Ada language standard distinguishes "bounded errors" from "erroneou=
s
> execution".
>=20
> http://www.ada-auth.org/standards/12rm/html/RM-1-1-5.html
>=20
> I've been after Alex for a while to read more about Ada.  Maybe he has,=

> and its (usually excellent) approach to attacking problems is seeping
> into his consciousness.  ;-)

It is an excellent approach.

In this case, while I read some of that, I didn't read the errors part.
I found those definition of UB by chance, while trying to explain to a
coworker of mine that some code similar to the following one is not
safe at all:

```c
end =3D p + size;
p +=3D snprintf(p, size, "a very long string that is truncated");

if (p > end)
	p =3D end;
```

I didn't succeed.  He still believes that to be fine.  :/

Cheers,
Alex

>=20
> Nevertheless I would agree that if WG14 refuses to apply such categorie=
s
> to the C language definition, it's not going to help most users to do s=
o
> in man pages.  I suppose the best route for such a distinction to get
> into the language is via the GCC and Clang compilers.
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------shGLf9DulOqTKZiaRIU0Vyzj--

--------------TRpg0J03Axokdwt3PnHIzHsM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGbi4ACgkQnowa+77/
2zIzdw//fR5QFfqgdzsuYR9XfZ5J3K/QDSLNz5u+aZJ+17z9YKzP7KYuXaBoUi+l
ZG/usOrIe5LBb47vMhEHKY0LNNJb9es1/F9Z/eM0OqUfABoQ1OVd0F5oqF8zkBqM
syg2/2pWe7mgTxRi6+o3rpTdrodeF0FstHoFo6u2g2pi0WnZVJlmwVGunHWfWqe3
lJcXNUqdNQRUWzCy1Di+jFe50vslFW3o3OGhOJGX/Q+PYd1vq7xGU++8MmjSEP1S
7Sx6LqWn1cOLQ0ARzVI5KKNrO9kx3B0WgQulScxpMQKHIILQMfjh/EUcOk+SYxDR
Vbz4ppsb/KzAo4KGL8MyhCjrpjm1q5eHtXdFX+4SyVFxDlbEDLe2gnJ3znArGx1o
WaKbZ0c8bYO1yDq4tiEcuedUk68/TOZTRZpRJ7YBimtyq+Xnn25iWt3lu0a8Ndhf
vozdI0epS2UQGKIFg71CW1ejxiX0iGrJruA9cHdc/dJZE9eowmXb4xOPyLScvHbi
cugG3ybjpnOcTkshSumeUIui742qVHAe6wqZqeGU+8b+c3/s1IbLeRA/gw9KNk65
xnAUVNncAelu0vEv+2M9Qonj/4o4+kuaIde9Evc0rC5SVTGO7KeB2gK7R1VLISay
dDMLuKiQ8Uq/WsrlTN4NRZKa4x/T7WgRyEJfGZoVD8vz+/+xrx4=
=oGWu
-----END PGP SIGNATURE-----

--------------TRpg0J03Axokdwt3PnHIzHsM--
