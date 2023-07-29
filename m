Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE238767E74
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 13:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbjG2LJO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 07:09:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjG2LJN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 07:09:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 845FE2D40
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 04:09:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1D63360B88
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 11:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2825C433C7;
        Sat, 29 Jul 2023 11:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690628951;
        bh=RV1nIkMl0vukj4gmw9em9wm3OsrPecWsgVe41nGNQ3s=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=ezXqH/aiezn5SshWwEYMafWcOynYeMFTGVKxy9pO1FvkLmlps8gR9EFQ+wZSGSpu5
         745U7ncSs5ItYF0RoKU6qhL/9uXziIPZD2lHnjaKj73bKp5b72mXxr8vRU3Y6jqHa+
         ANBMgfs1fgglZ9WV3NtreoBHDwxyl2EIEaot6C2zSN2DuP6fXDwG57tcj1665AddLT
         ABsVbyZUUZvNN+BSvG4IKvX5A9BojI4+hv3a7xCRPGnvKa97Nsk+KI3P+H7MtbVqod
         KFxc3GUsy8l6nk2uaJ45az71s9siOBiIEMvbLM4UxkREn2jaNg+K9QrbaxCEbFPX8m
         p0e95N2BR3R9Q==
Message-ID: <c805f5d7-6db9-2a94-26f6-e5e4e12bb7b5@kernel.org>
Date:   Sat, 29 Jul 2023 13:09:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] string_copying.7: tfix
To:     Lennart Jablonka <humm@ljabl.com>
References: <ZMQL2bAg5p2no9ir@beryllium>
 <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
 <ZMROl_ZM80HoB9Ss@fluorine.ljabl.com>
Content-Language: en-US
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZMROl_ZM80HoB9Ss@fluorine.ljabl.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nFiMKLlikcUFGUDgmZbY87cQ"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------nFiMKLlikcUFGUDgmZbY87cQ
Content-Type: multipart/mixed; boundary="------------QHlpkOHLLSThgxirvh7SFZ5n";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Lennart Jablonka <humm@ljabl.com>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <c805f5d7-6db9-2a94-26f6-e5e4e12bb7b5@kernel.org>
Subject: Re: [PATCH] string_copying.7: tfix
References: <ZMQL2bAg5p2no9ir@beryllium>
 <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
 <ZMROl_ZM80HoB9Ss@fluorine.ljabl.com>
In-Reply-To: <ZMROl_ZM80HoB9Ss@fluorine.ljabl.com>

--------------QHlpkOHLLSThgxirvh7SFZ5n
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-29 01:26, Lennart Jablonka wrote:

[...]

>>> @@ -444,8 +444,8 @@ is a more useful alternative to this function.
>>>  .\" ----- DESCRIPTION :: Functions :: zustr2ustp(3) ----------------=
----/
>>>  .TP
>>>  .BR zustr2ustp (3)
>>> -This function copies the input character sequence
>>> -contained in a null-padded wixed-width buffer,
>>> +This function copies the input character sequence,
>>
>> I believe the below is like a parenthetical, which is why I put it
>> between commas; isn't it?  Although your version also looks good.
>>
>>> +contained in a null-padded fixed-width buffer,
>>
>> Ok
>>
>>>  into a destination character sequence.
>=20
> The =E2=80=9Ccontained in a null-padded fixed-width buffer=E2=80=9D ind=
eed looks=20
> like a parenthetical (or rather, a non-restrictive participial=20
> clause=E2=80=94the =E2=80=9Ccontained=E2=80=9D is the participle), whic=
h is why it should=20
> be between commas.  You didn=E2=80=99t do quite that:  You put a comma =

> after it, but not before.
>=20
> This case is what I tried to explain:  You set off the =E2=80=9Cinto=20
> a destination character sequence=E2=80=9D prepositional phrase (the =E2=
=80=9Cinto=E2=80=9D=20
> being the preposition) by a comma.  You did not surround the=20
> participial clause by commas.  That=E2=80=99s what I did.

D'oh!  I misread the diff; I thought you were removing the comma
instead of adding it.  I certainly like your addition.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------QHlpkOHLLSThgxirvh7SFZ5n--

--------------nFiMKLlikcUFGUDgmZbY87cQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTE800ACgkQnowa+77/
2zKt/g//YYzmoJ8qP1IN9g5ss+fpt3sGKgHYV+SoVzPkWD/gJ05MfMnVF99k+Ar2
hLABggTGd4nFEeeLXYUPVd6b9Yro54DhrNYuSFrz6TEwwghLq01cEQYo0X3ztr3o
Q3Zo8rX7h1/4FXLpd2wrhfM3QacKepdIkbqRq7v1B2jsLM8+HZ6ulImCI9cGLDoi
Tdc2j95RwcjKupeTvpyzXC+BDHGM1oLpgTf42dYnoJk7anNvbfDMYkgFq2oKEOZb
N+ZWuLGSpeqpI0LzqRm3RnbY5pcFVnhp1iKEQfk/dvPLX02IFKcULE0IIrsp7Yj0
hUVSru5BYQSTo96MF8yGBqVilBg3Ga34taSTKg0miMBL5zCse9dz9aPxVisu+aau
sQNvtwxna8zKjkb1hFO8IBaX00mXjqElxnOvkFobJw53UIuA5hSIFJMoTLax9P35
JGEK2M/hC65Xyqd5crOSFTvnoG8g28cIu7kY6SsxUqM/H5Bu97G9NQMPG31yhZHu
1FTH+ItaDn26a+Es3aAT58Fqp5yE6o9yG1Nb81HytRg4lzk1eS98OpJtCb3sGAWR
fHtQ8L3NApjE6ActieSiANdZ+wcaOAI7oQhb6g6K/YqpdCsy3APs89dXJ/If62al
p2JccGozGFd4Xn1pAbMR66rkbg/RAi8n9OA5ljzo7OZQDADfOkM=
=skml
-----END PGP SIGNATURE-----

--------------nFiMKLlikcUFGUDgmZbY87cQ--
