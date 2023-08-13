Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BFA177A8D9
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 18:07:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232273AbjHMQHS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 12:07:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbjHMQGt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 12:06:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C14435A9
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 09:06:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EFC8360F38
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 16:06:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D972BC433C9;
        Sun, 13 Aug 2023 16:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691942789;
        bh=QbB8R+pv525ZhJkTZTg8v1zJO2t5yfBYNvXxHE+eW9Q=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=V6xMA1lIjpwgtmEjYkGdJL2bUx/hdsOzZ0isTV4e5JNcVvk/+MikH9tc6rv4oeQbN
         /fIltvXnkxXcFAFm3UjLR4pZgzRzmWN6xS9tChF+NXLP44u75UoZepC/E7AJOdLwKA
         5fjv+L8dzck7LorPm5aqxKPyHJOUD7Q505IVPCbbdojDXmkhANGjCabLFU4NYxNy+B
         9ZVuQ857n0i4t24Vm0QJ4Dkn7kluQS8usvQBlHGUOZ9fzzauwbAP5oQ/xpgyzNsdki
         vQUvqDqAPsVxHwdT/E5xRddxMTq0g7jciYDWS2BbKcWHjPNKfAq+f4wwfuy14fLpFB
         asE3Qu0Xe+Dtw==
Message-ID: <60420364-2a68-a6b8-d7ca-7fe6a1384d64@kernel.org>
Date:   Sun, 13 Aug 2023 18:06:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: .sp 1 in strerror.3 (and probably more pages)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
 <20230813152806.sgbftjs6nqgjjcoy@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813152806.sgbftjs6nqgjjcoy@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IxLRPv6vX1f7TqI3Bn5UlAtT"
X-Spam-Status: No, score=-8.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------IxLRPv6vX1f7TqI3Bn5UlAtT
Content-Type: multipart/mixed; boundary="------------YXVOKh2cHmaqJniK2Ncxs4cF";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <60420364-2a68-a6b8-d7ca-7fe6a1384d64@kernel.org>
Subject: Re: .sp 1 in strerror.3 (and probably more pages)
References: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
 <20230813152806.sgbftjs6nqgjjcoy@illithid>
In-Reply-To: <20230813152806.sgbftjs6nqgjjcoy@illithid>

--------------YXVOKh2cHmaqJniK2Ncxs4cF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-13 17:28, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-08-13T17:19:59+0200, Alejandro Colomar wrote:
>> While trying to apply a patch that touches some table, I found an '.sp=

>> 1' after a table.
>>
>> I tried removing it to see what it does, but it seems nothing changed.=

>>
>> However, in the PDF version, there's some change (using .sp 1 produces=

>> a larger space before the next section heading).
>>
>> Should we keep that thing, should we replace it by something else, or
>> should we remove it?
>=20
> I would take it out.

Okay.  But I'd like to understand why Michael used it.  Since we already
have a blank without it, why would have he added it?  Or did 1.22.4 have
a bug that didn't produce that blank?

Here's what Michael's commit says:

    # ".sp 1" =3D=3D> ensure a blank line before the next section heading=


(c466875ecd64 ("Various pages: Improve formatting in ATTRIBUTES"))

>  If you need vertical space after a table, use a
> paragraphing macro.
>=20
> The reason for the difference is this.
>=20
> groff_man(7):
>=20
>    Horizontal and vertical spacing
> [...]
>      Several macros insert vertical space: .SH, .SS, .TP, .P (and its
>      synonyms), .IP, and the deprecated .HP.  The default inter=E2=80=90=
section
>      and inter=E2=80=90paragraph spacing is is 1v for terminal devices =
and 0.4v
>      for typesetting devices.  (The deprecated macro .PD can change thi=
s
>      vertical spacing, but its use is discouraged.)  Between .EX and .E=
E
>      calls, the inter=E2=80=90paragraph spacing is 1v regardless of out=
put
>      device.
>=20
> Does this help?

Yep, it explains the difference, although it doesn't explain why Michael
added it.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------YXVOKh2cHmaqJniK2Ncxs4cF--

--------------IxLRPv6vX1f7TqI3Bn5UlAtT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY/3cACgkQnowa+77/
2zJ9ZQ/8Ci+QSM80rPXFDD5yqx3aWiHEqxw/099Jnpuidwt5mLuAVGJkV3yrnTwk
2Wno09bw8OGh1v+hPoIeE/uVVffvCyNK+MUhpXwuPzum4yv30jag/BbyS3TVwND+
ApWFX1sFBCPteXCoKAfB2oFCLcJsQFcV/B1r21/G/A72CwqMGb7cLK02cg7M8swM
XodunozIy/cqwWq83JPiFwQbAQ+8Nr8MdEK3TvN/oYUdUYXV5C8bdboS2NDpc73H
fMORsPrmTZhdJEJA+zbvrxxEq3MOHSM+uy0n0aQzqe0kT1fKdXtRdtKU0PKoGR89
tsOAEjtxJa1fSMUzWIHjQWUgGvBAAzedQTjn9eirP1mEzsv4j+UIi9V35mvYgLc9
tORqRknfVJOYdBXNKUMVOFY19R/x1O8APxmk+TWApRELr2iowKixcoxZkqgIP9Mj
zL86hSCGJEa0yAEYdK8RbkviWyf4zyqQLLlsPwExlVdU/qu7wBG/jNH73ApvQL5r
dd67shr3/GxzcYloNRAd4he/TaPXmxMVWY09ERVqnYph69y+xfoBHjNnxxuZ+Vfh
4xG/qqjANHrmp0EulCHU3cS5RW+7VZyrmWrVwRSLPjMsEWgO2Bh40gh0vABB8hlU
KO0fsGl8lsJAy5L5ewWhlA2X9lCveEXdRPdB1xshzVVY6GbkjmI=
=cpnP
-----END PGP SIGNATURE-----

--------------IxLRPv6vX1f7TqI3Bn5UlAtT--
