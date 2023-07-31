Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81CD3769546
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 13:54:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231934AbjGaLyC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 07:54:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbjGaLyB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 07:54:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACAE31A1
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:54:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3F11661085
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 11:54:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 200DDC433C8;
        Mon, 31 Jul 2023 11:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690804439;
        bh=7nonagOxvF4KnnAUNNnQmL6GhPhDe2IQkoab3MUSgX8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fcid3fv/0+QEBtBsC74bt1gcVPsQhBcLrT5AyRER/ZvjkNWLKoOmK1oCPIqeALJKv
         n91wREcZWlYzTZWE0tetFkYyFBYfQ4x93/GdOQ0KuHQlPx9r4Urk1bu40DukM0BhiE
         rH21Ieh6mifdGpwqJ3x71B+Xig8tf3G0VoOTLQRfuYuN2Wxv6VWuAwuZJO98T9Qqw/
         JbWmcvU8URA3zJc1EwHexV8e+zYCrvmV4ReP0GuBvoG2jys8jtD7pnJWrX0mxLq16x
         qNZ02AmIAE3QcNPVlKpo4t8/IRIFzON6nHDf6UDCKfA9UtaGRcictotWG28iLKv4lq
         j1GBRom1k/xVA==
Message-ID: <1ba61d3b-d5b8-c7ef-9535-b349b501710c@kernel.org>
Date:   Mon, 31 Jul 2023 13:53:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] memcmp.3: Recast security caveat
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730153137.qgkurw4mudy6etca@illithid>
 <08b04a82-8bd3-07fb-9962-a28354e8de60@kernel.org>
 <20230731110630.e6zmzvskibdbvp6b@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731110630.e6zmzvskibdbvp6b@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------12Aa0tapSMuHbOf8L0miJ2Z1"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------12Aa0tapSMuHbOf8L0miJ2Z1
Content-Type: multipart/mixed; boundary="------------EVpWzX0UHIU2SfrAbNmsa6kq";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <1ba61d3b-d5b8-c7ef-9535-b349b501710c@kernel.org>
Subject: Re: [PATCH v2] memcmp.3: Recast security caveat
References: <20230730153137.qgkurw4mudy6etca@illithid>
 <08b04a82-8bd3-07fb-9962-a28354e8de60@kernel.org>
 <20230731110630.e6zmzvskibdbvp6b@illithid>
In-Reply-To: <20230731110630.e6zmzvskibdbvp6b@illithid>

--------------EVpWzX0UHIU2SfrAbNmsa6kq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-31 13:06, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-30T19:31:39+0200, Alejandro Colomar wrote:
>> On 2023-07-30 17:31, G. Branden Robinson wrote:
>>> Use terminology more carefully.
>>>
>>> * Refer to the info sec property of confidentiality instead of saying=
,
>>>   vaguely, "security-critical".
>>>     https://informationsecurity.wustl.edu/items/\
>>>     confidentiality-integrity-and-availability-the-cia-triad/
>>> * Try not to confuse anyone who's studied the analysis of algorithms:=

>>>   don't say "constant time" when "deterministic time" is meant.  The
>>>   time to perform the memory comparison remains linear (O(n)), not
>>>   constant (O(1)).
>>> * Tighten wording.
>>
>> I prefer 2 spaces between the bullet and the list contents.  See
>> man-pages(7).  Anyway, I accepted it this time.  :)
>=20
> This had me confused for a while, since I had no tagged paragraphs in
> the patch.  You must mean in the commit message, too.

Yup; sorry; I did mean the commit message, yes.

>  I don't think
> that's documented...?  I guess it should go in the "CONTRIBUTING" file.=


I didn't document it in CONTRIBUTING, because usually I don't receive
bulleted lists in commit messages.  Only you and Paul Eggert seem to
send of those (no problem with that, though; they are fine).

The only documentation is in man-pages(7), since man(7) source is the
only place where they are commonly used in the project:

   Lists
       There are different kinds of lists:

       [...]

       Bullet lists
              Elements are preceded by bullet symbols  (\[bu]).   Any=E2=80=
=90
              thing  that  doesn=E2=80=99t fit elsewhere is usually cover=
ed by
              this type of list.

       [...]

       There should always be exactly 2 spaces between the list symbol
       and the elements.  This doesn=E2=80=99t apply to  "tagged  paragra=
phs",
       which use the default indentation rules.


>=20
>> You need to quote your name with '"' due to the '.'.  I've found
>> some software has issues with it.  git-send-email(1) is one of them
>> (due to the perl library it uses).
>=20
> Thanks--I fixed my vi ":ab" command to take care of this.

Nice; I didn't know of :ab :)

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------EVpWzX0UHIU2SfrAbNmsa6kq--

--------------12Aa0tapSMuHbOf8L0miJ2Z1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTHoM4ACgkQnowa+77/
2zLSbg/7BuYQ/gElGiJryegrvheM08KYXm++APHAMV5zqs5ZbvpL+rHp+/fzqtLU
U4Pl6RFObFvwOHn9mgK7Wy1uJ7gUnamuLC8tFn+x2W+Agz7WBeQwTWbvU4Um6Qg3
zZvUr+CeVSt3qiqymU3C5RIDSN7T0IC1nwjKRqpJZt0WW/1JY0WTJW54MPW/fqxT
YzD9fl4jss6TDWEVtZlB4UOGn0YGUCbs1+Avghw947O3F89UJjALBvJEz1sS1CDC
JlASX1dLmKzJsCtBxu74rLqoLw+OHkzmDcouUbeRxTqrE6YDbcNbrmoSGcECBLGw
kEK/YFciVphWtpzqSlWGZ+dm4cvwWWujpCc8xi/k2f1qBg3KxA2hyghag6iGggz0
fzDh+dRT9iu06WiTQKP+cGqgC9HT9JatlEa6MOeVPHDZLUkdZdeKOAzED9HMQ4Cg
wK2p5yfl/F8jhpZnp8rKJMGjdi9AtDc3V1aVSrCx4TEVgXuLQ0hR8LrYVVG/Tu1T
pbIcxxS8bnu0CRR3BE2rmt8SxRPtcQp0oF3N/gOUjEvlqhyspBHkHGlYFzrjEYFQ
EfFFc6TOFY57iqlJQcZDXM4F+yRdEFf2ovgI/TiCjrW9GjVEhEeU+bFfW6Fgx+r+
Q3UcAUockS+yMWeaJxhh0QHJlotZmCRak/M6VWk1wvOG64+gul0=
=ptKB
-----END PGP SIGNATURE-----

--------------12Aa0tapSMuHbOf8L0miJ2Z1--
