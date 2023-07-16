Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C97E9754D2C
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 05:08:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbjGPDIv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 23:08:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229852AbjGPDH7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 23:07:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5719E10D7
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 20:07:57 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B9AC460BF9
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 03:07:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4607BC433C8;
        Sun, 16 Jul 2023 03:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689476876;
        bh=phANgoMNRxxYh1IaXkvVee8hCLyHKB/5XWL2+XoKL3E=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NwqKy6O7I5FlQGfMztQFfQZJ9+mytV1wjh2lhXq66kcZpMN1gczbrsNx/9GZaPk1g
         QCga9s0p9P8TIUFwd66oZLX8PYdNOYcy1IDrGkM18ZN5fn5OVKg1tjgkLGFVMq1hTj
         ohcBCOL+nj0SSO84FADkTwNpBvQtD4djHR0w7Sebzk8xrZ5pf2cwP1mAifIAUOSB+r
         lQQtNNCoAeywVVtxK1VJ4xAa2vWh+/PkxDHjlAGorDZe/bJkLTZ8IzV+Y2jflEIxUM
         YDy/sBP4gcqpo1tdFx8pl5k5nreNOSj9YgjLZgnK+1ELyltGvkUHLQ7OlWQ/NO7xX3
         6bzgYfZMNiq3Q==
Message-ID: <705c8a8e-be97-29e7-da7b-5a0dab0e934c@kernel.org>
Date:   Sun, 16 Jul 2023 05:07:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Rob Linden <rlinden@redhat.com>
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
 <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
 <20230715195934.yigz5fz6ulkxktaa@illithid>
 <567cd883-412f-6b23-92c6-e7ea51fd7ebd@kernel.org>
 <20230716023432.eolrrjeiilr63tb4@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230716023432.eolrrjeiilr63tb4@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IGT38SkAXEG35AelTFMqgSSi"
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
--------------IGT38SkAXEG35AelTFMqgSSi
Content-Type: multipart/mixed; boundary="------------TosQMPR7AmjRNCUGFurLbsTx";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Rob Linden <rlinden@redhat.com>
Message-ID: <705c8a8e-be97-29e7-da7b-5a0dab0e934c@kernel.org>
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
 <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
 <20230715195934.yigz5fz6ulkxktaa@illithid>
 <567cd883-412f-6b23-92c6-e7ea51fd7ebd@kernel.org>
 <20230716023432.eolrrjeiilr63tb4@illithid>
In-Reply-To: <20230716023432.eolrrjeiilr63tb4@illithid>

--------------TosQMPR7AmjRNCUGFurLbsTx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 2023-07-16 04:34, G. Branden Robinson wrote:
[...]

> Because natural language demands a bit of Postel's Law, the foregoing
> are generally understood by English speakers despite their non-standard=

> structure.
>=20
[...]

>> BTW, that's the only case where it says to not use hyphens, and since
>> by being alone it's necessarily not following a noun, I'd say it
>> doesn't fall in this rule, and so a hyphen would be deserved.
>=20
> I'd agree.  I cite authorities only because I cannot expect people to
> take only my word at such things.  My authority as a grammarian is
> limited.  Unlike some, I don't have God and Ayn Rand for parents.

And yet your words make more sense than those of the "authorities".  ;)

>=20
>> I don't see reasons to avoid it in the links above.
>>
>> So, I'm tending to conclude that it's necessary, or at least useful or=

>> tasteful.  Please quote the relevant parts if you disagree.

I should have said, or decree their authority rescinded in our territorie=
s.
They no authority here no mo.  :D

>=20
> Recalling the case at issue:
>=20
> .BR MSG_ERRQUEUE " (" recvmsg "() only; since Linux 2.2)"
>=20
> I would find the addition of a hyphen before "only" to be superfluous.
> As I said before, it disambiguates nothing.  Further, if any of these
> annotations ever has to be compounded, as in a man page that documents
> several functions but requires annotation only for a subset of them, th=
e
> use of hyphens as you intend is liable to add clutter.
>=20
> .BR MSG_BAZQUEUE " (" foomsg "()-, " barmsg "()-only; since Linux 7.99)=
"
>=20
> Consider also the possibility that you may want to invert set
> membership; perhaps 6 out of 7 functions in a page accept a certain
> parameter.
>=20
> .BR MSG_BAZQUEUE " (not " quxmsg "(); since Linux 7.99)"
>=20
> There is no correct place for a hyphen here.

Yeah, a hyphen is better omitted for your reasons.

---  Mr. Sed project:

>=20
> Will do.  I've gotten sidetracked by the great automated "Mr. Sed"[1]
> project, which turns out to have some prerequisites if I am to
> demonstrate no changes in formatted text as I intend.
>=20
> Early findings:
>=20
> 1.  I think I have raised warnings to this list before about
>     manipulating adjustment and hyphenation outside of table regions
>     with `ad` and `hy` requests; the Linux man-pages do so
>     systematically around hundreds of tables, attempting (but failing)
>     to (reliably) "reset" them after tables, often with miserable
>     results.  Fixing this is a separate, prior sed(1) project.

Great.

>=20
> 2.  An ".sp 1" hack, also after tables, to work around a groff
>     pre-1.23.0 bug is also not necessary and the time to sweep it away
>     is near.

While it may not be necessary, I'm all-in for killing such a workaround
ASAP, to avoid contributors from imitating it.

Cheers,
Alex

>  I may not _have_ to do this one to satisfy "Mr. Sed",
>     though.  I will keep you advised.
>=20
> Regards,
> Branden
>=20
> [1] the rewrite of man page cross references to use the new groff 1.23.=
0
>     `MR` macro, a feature I have written about on this list before and
>     which is covered in the release announcement sent here earlier this=

>     month by Bertrand Garrigues

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------TosQMPR7AmjRNCUGFurLbsTx--

--------------IGT38SkAXEG35AelTFMqgSSi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzXwEACgkQnowa+77/
2zKRUw//cgvLVDdie85bmpv3fUu1SoXBVWqAcQbAg1mdw+flylMWquOafj34CFBa
8IrfTyd+wddrVQxPVyRIcLs6+Uu/wIccZYWbVdYNnIaR/Mw+aWyao4Uw0ei2kZLN
q0lcF2F+ofU+n+258UuCaeiRDji1zmqqMC4M9Fb9kRJdfVlFzwSi/rTNLeBS7BM0
AZhbIFYCrubzSjqRry4yII0ki5aL/iaTtoUdfhpRFZe/FGaOWm7OimPUVVqoXJZR
mEOqDy40RtDJlPOw0E9QUATarf9ErXv8T9w+iOrqc6OLfofVZsm+TrS+sBx3zTCO
ULXNnRxe8TWPLPGjLnHJ+3ObiAd2pIhfXwLCN7Sh7LYauof7HIeeg2AGKnDy7f/u
U//yWYHaElatPgNjW9UStY1LLBE1MSu4VbHd289RtIGtobLZFwY4dk71rq15CcuM
BNQM8rOvyYbWbVtssemw5y7IDQJPyDJ9o24mV9YxDxxLEkvWE0LvQu8ryr2h8AZe
pOD9Cm5W2P03DTTTb5XEhhmwBG047/RJzXq3Ig5zWqWcjrk6L0A4JeAedSdk5sXV
GMhNqgR9wU84gHCMcYwIr6zFgOBIRXQb7L+VSXtny5hsIsJOHZO4K847QaOA21w3
vpgTP5X/rbaICb1GlQdmdL8D2sYMEf/IO+0kVl4GAWKvxLeZav8=
=H+dR
-----END PGP SIGNATURE-----

--------------IGT38SkAXEG35AelTFMqgSSi--
