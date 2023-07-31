Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A511F76A460
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 00:55:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230228AbjGaWz5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 18:55:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230021AbjGaWz5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 18:55:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 124351BD6
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 15:55:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A17BE61337
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 22:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BD77C433C7;
        Mon, 31 Jul 2023 22:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690844155;
        bh=wANXnX4P8r6+xWik+k1vhD9feL1IZUFMpduhc5xPrNc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=DcPzn3PrqepESM9907Ww8AsODL8kIWKFYnbHWS1qDeMYPcZSKwsBeEpe3UBrK5yDi
         JgSPtU+jrLLy9h9NjsFuIA8K70J/zsod5WfGMk/5BghPaFTr0ZsznVbMWqtz1wnJF8
         PVpXGBLrMGtLiL5UQwoTZlWNAS2GnB+duJ66ccsZxjus+kM+d/zzRwuSAqKNm/1Ynp
         oYnx3IqTeqZeKkZBWUu4pPFJZnDSPREjkvCv7mGleUsoStYQW3UJv2lcSKxdj+BXsC
         RWkeHMBDqf28JzhuYvX+pEHqP1WYm+yL9394HF8V9+Loemvo7Xxq639LEjKtRUdk4n
         TQ/zGr8bOZJOQ==
Message-ID: <afd0d893-410c-fe6e-a869-01062e301e10@kernel.org>
Date:   Tue, 1 Aug 2023 00:55:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3] man*/: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230731174836.5e3fxxe6csgitm4s@illithid>
 <45228b33-b6c5-a7c8-e1d3-00cdb18829f7@kernel.org>
 <20230731201934.gjskg73p2k33q52d@illithid>
 <2fe7d79d-9fdb-4a99-1e4e-c7e847ec542b@kernel.org>
 <20230731222327.l2fudhe2athgpddz@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731222327.l2fudhe2athgpddz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xGc00TCnTF6BYRQcjzAkePLb"
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
--------------xGc00TCnTF6BYRQcjzAkePLb
Content-Type: multipart/mixed; boundary="------------hdpyuYrcbC19mUPikLj6aOMo";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <afd0d893-410c-fe6e-a869-01062e301e10@kernel.org>
Subject: Re: [PATCH v3] man*/: srcfix
References: <20230731174836.5e3fxxe6csgitm4s@illithid>
 <45228b33-b6c5-a7c8-e1d3-00cdb18829f7@kernel.org>
 <20230731201934.gjskg73p2k33q52d@illithid>
 <2fe7d79d-9fdb-4a99-1e4e-c7e847ec542b@kernel.org>
 <20230731222327.l2fudhe2athgpddz@illithid>
In-Reply-To: <20230731222327.l2fudhe2athgpddz@illithid>

--------------hdpyuYrcbC19mUPikLj6aOMo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-01 00:23, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-31T22:38:45+0200, Alejandro Colomar wrote:
>> Ahh, I'll tell you my usual routine for reviewing patches, which will
>> probably explain why I didn't notice:
>>
>> I first try to find the signature.  If there's anything not generated =
by
>> git(1) right below the "---" and before the list of files, I read that=

>> first (of course after the Subject) --that's where I would have expect=
ed
>> your comment to go--.
>=20
> I am pretty confused.  That's where I thought I put it.  See screenshot=
=2E

Sorry, I didn't use precise-enough language.

I first try to find the "Signed-off-by".  The "---" (3 dashes) below mark=
s
where the commit message ends, so anything after it --and before the diff=

itself-- is ignored by git(1).

It's more or less the same as putting it in the email signature at the en=
d,
but I don't have to scroll to the very end.

See an example:
<https://lore.kernel.org/linux-man/7c0279c1-bbb8-c623-14d2-bb4d25966d28@k=
ernel.org/T/#mce831a3201a832ba3dc8517b934a42a5a5976e98>

Cheers,
Alex


>=20
>>>>> v3: Resubmitted; no change.  A revision to "MR.sed" handles this
>>>>> case.
>>
>> Okay; your prerogative.  Free Britney!  :-}
>=20
> Always happy to solve with sed what could be done interactively.  :D

Troo.  :D

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------hdpyuYrcbC19mUPikLj6aOMo--

--------------xGc00TCnTF6BYRQcjzAkePLb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTIO/IACgkQnowa+77/
2zKpkw/9EzB77ecW1Tqw5vlxWjTLjCp6Ui/qt9JWL3uOLjYQRV2YCLIe/i00ETZN
Cq9SXhVkdSXUfB7XyCdqxa44LC3NzJ5/AErIJanT4pgk1EFbcOib0BAKOGHsYtn/
9xeUJOJV6Xw2/jQ6/vf4aFP5xGGCO0nArKwV2yqRuyk0tROdGiQ/LinKKF6LVb47
Ex1AaxJyELkSu6cnuLLw2+1dUAsDZaLsLfysRyBa7im81GHcQ75AouSn0Z5OZqbT
NzyKtLyAg615WwV5ZDwg3O7HMSTrtja1wyIB/zN5V54L7Jn4FE2rHqD1jIHaTnlT
6x3PSCRUAUrTXq4uqFiA4gbFhlilb/dQn0LQvg7Y4CXrmQfPTXS90UROukKKPU3Y
fcn/q+LitnHR4dlJCVgXEEelTJ/knG78vwSKgG6JTZ+UMn7jZxthnLwmqnuOjKnD
7AgmCiq4Pdr7JzeYTyDbxdx16z+p6/0D1YGZLzD+Oc3jHJ5/aqK9O9+u66Ucks19
/IluLIvSJFciisYUPSvU/7VuTAeLiix7f9xZO28r58cBpOj8qyP1IGIyt0Yxpqq3
BVV2xyI8glsvp29bZ1OAMnKTG7LRY//Z275y32qMjwwlHCY1BGnJums0SCicKh9M
HZ10WiPKzQ1LubMk95JdeWjDiBsRiQ3RG6y39oAWnrEEpbyb5l4=
=44a1
-----END PGP SIGNATURE-----

--------------xGc00TCnTF6BYRQcjzAkePLb--
