Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28A7D7695B8
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 14:11:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231839AbjGaMLg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 08:11:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232281AbjGaMLf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 08:11:35 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E2FC1730
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 05:11:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 24C0161015
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 12:11:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD584C433C7;
        Mon, 31 Jul 2023 12:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690805481;
        bh=22XdWnt3hAZlOrSTR4uHvNueZsyxO70OV2JilJ38uVQ=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=e3uycgPVz8BnhaN6njeIju9VPf1BvteTYq2D7ZwrG2KTEP03+gvqwgfkepsZuUJsn
         JNJlNQqXAXrm/aJvbJZzVwsXG+oEUyDN8XH4nVDGSgiTeul0GzZx1FhuBTjTNp9tb0
         Gu+XiZ4bzJn6crYdG5UC/8PAHyZLyaIEyhd/oyzxdCgYeTROz3EogAdm94w6P+t/aF
         ZBAPuU+DIM34+1cdWR25Xda3xb5tT/1qyZMmnMQZnohwF5DAkPb18D1OMOnDCFIgmv
         KEra81K9j4U1r4/+A0hiWE34ZD62z5iF5N7zGqM/pjUAAv1EN0yiqksjG5gvq37QCY
         KvcvqJbsEDecQ==
Message-ID: <54df4eb0-040d-7dca-828b-20e3f2c6dd68@kernel.org>
Date:   Mon, 31 Jul 2023 14:11:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 9/9] man*/: ffix (migrate to `MR`)
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730200445.5ai65ekheopcvicx@illithid>
 <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
 <20230731114737.nubrsfjelxrnt3ap@illithid>
 <5e7a7695-4e2d-328e-31a7-79702d312eec@kernel.org>
Organization: Linux
In-Reply-To: <5e7a7695-4e2d-328e-31a7-79702d312eec@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0h7Fvx0d3xbV6FUP8ecWbog0"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0h7Fvx0d3xbV6FUP8ecWbog0
Content-Type: multipart/mixed; boundary="------------XzsuzAEIahpUwII7z49SVeuQ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <54df4eb0-040d-7dca-828b-20e3f2c6dd68@kernel.org>
Subject: Re: [PATCH 9/9] man*/: ffix (migrate to `MR`)
References: <20230730200445.5ai65ekheopcvicx@illithid>
 <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
 <20230731114737.nubrsfjelxrnt3ap@illithid>
 <5e7a7695-4e2d-328e-31a7-79702d312eec@kernel.org>
In-Reply-To: <5e7a7695-4e2d-328e-31a7-79702d312eec@kernel.org>

--------------XzsuzAEIahpUwII7z49SVeuQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-31 14:09, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On 2023-07-31 13:47, G. Branden Robinson wrote:
>> Hi Alex,
>>
>> At 2023-07-30T22:45:14+0200, Alejandro Colomar wrote:
>>> I couldn't apply this patch.  See the error below.
>>
>> I can't account for this.  I use GMail for my outbound SMTP, and vger =
is
>> notoriously irritable about attachments--so even when not smacking dow=
n
>> a huge attachment for going to a mailing list, kernel.org might take a=

>> dark view of such things in emails to its domain even when privately
>> addressed.  Or maybe the two sites have implementation glitches that
>> work in negative synergy.
>=20
> No problem.  Just resend without the complete diff.

Ahh, sorry, I see you didn't send the diff.  Of course I couldn't apply
it!  I tried to apply the patch as a normal one from the inline email!
I didn't see there was an attachment.

So, please send a new patch set with anything I'm missing, resending all
this, and I'll be more careful to see if some patches are too huge and
have an attachment.

Cheers,
Alex

>=20
>>
>>> Other than that, I've applied the rest of the patch set: patches in
>>> the range [1, 8] are applied.  Thanks for all your work!
>>
>> Thank _you_!  We're almost there...
>=20
> :-)
>=20
> Cheers,
> Alex
>=20
>>
>> Regards,
>> Branden
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------XzsuzAEIahpUwII7z49SVeuQ--

--------------0h7Fvx0d3xbV6FUP8ecWbog0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTHpOcACgkQnowa+77/
2zJxKw/+JO8zstaLiBNbUOYSYxyKNjyOfIAdDtH3LeR4FWliidnRYHaCzoIROhzB
iJSaF/ivk18uPPtOYKxOW43jN0cStbeqUYudkz3FVj8WCQrvK47SnVD4Khti6fpR
FcUzi2PkBNh5R+i1vgdfI5dNAk6DCLqUJIx0xMyPudD8J7F2OtcApr2rZlnn28/n
N/gRmwRawH5hGZBgsdsnLaGbudIvJWL08cykrZq7eJjTI9AUn/9m8QsRjFxyS62U
ApVk7zlkK09V2NxHwiJgiScocywHA/0TyjbUSjVfCQQFkg+7pKxTimo38jTBYlSS
ijylySiZ2kBnDhhzQsAm+W79egshQPTiL5p5rJB92D+MfhS/uEjoso787BB5ImCJ
XBMYFvD510xc4mQKiR8tbZ/yK4rYLF8/ScTPhzMdYhsiWB+W90uCnVJ2jYGnku5L
RnskX5l7Zi+1PDndcXpChD+FhHDFTT9a6cQWdM4rvFlUGQeqtyp1axA8IW+ytwI3
krx8ifujjS0hBK2qUyA6zN59SAfOhuJESUpFWnnSYPCEWAKsSoMgUBQmfy7V7+ZX
LBgv3hfPuGgOB5M9767wVBzoqeJM/eHcAPe9FByb3l+TERhfCZjBXyONOjVv+w1r
/KemvjlWhpxUvpPey5FXfIVYeCFh72V/UxLpTBCA0oD92q44VSo=
=E5CG
-----END PGP SIGNATURE-----

--------------0h7Fvx0d3xbV6FUP8ecWbog0--
