Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02EC97695A5
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 14:09:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231903AbjGaMJL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 08:09:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230198AbjGaMJK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 08:09:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B9BB10DE
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 05:09:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A3FC5610A2
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 12:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 726BEC433CC;
        Mon, 31 Jul 2023 12:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690805348;
        bh=q+TzdmEvM8LnKfkFEiQFIrJjezR1Y9yKrNr0I6AnSFo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=T5U4ex5hIBCzaH27QXLsq3gOvFI5I0p33Iaqv7GEkX6EAqTU47h9rgSPH1icfGw2b
         Wj5HACsVVdp2KzeNJR8jUXNAAqpw57VDJlXXJjhSV6tb0Yf1xkXrh2RoQbD/DFmmm5
         qOpSk1R0cTX/BoJXmH/Hj8d5hMHMY4jeSI5EXxxT8bcpfBLTcFzZw2329UsC4AQWok
         0kDRhL0yYKfpFBSYXl1mCI4djigwDKqh/F3E+lYqeTPZCvcUTbSgcuXqLZhTkYmaem
         g68ZHQcX8jpVsCGThyQbSAdNAz17S2yYLZIbET6nSKim1K/8syd2gWz6ACPe+00tCU
         KgVsMDZOQOX6Q==
Message-ID: <5e7a7695-4e2d-328e-31a7-79702d312eec@kernel.org>
Date:   Mon, 31 Jul 2023 14:09:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 9/9] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730200445.5ai65ekheopcvicx@illithid>
 <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
 <20230731114737.nubrsfjelxrnt3ap@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731114737.nubrsfjelxrnt3ap@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------J0D5c2RA6FdPhHI0uP3Ts74b"
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
--------------J0D5c2RA6FdPhHI0uP3Ts74b
Content-Type: multipart/mixed; boundary="------------KJfhT0Cb4O71Emul4W2xDahJ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <5e7a7695-4e2d-328e-31a7-79702d312eec@kernel.org>
Subject: Re: [PATCH 9/9] man*/: ffix (migrate to `MR`)
References: <20230730200445.5ai65ekheopcvicx@illithid>
 <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
 <20230731114737.nubrsfjelxrnt3ap@illithid>
In-Reply-To: <20230731114737.nubrsfjelxrnt3ap@illithid>

--------------KJfhT0Cb4O71Emul4W2xDahJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-31 13:47, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-30T22:45:14+0200, Alejandro Colomar wrote:
>> I couldn't apply this patch.  See the error below.
>=20
> I can't account for this.  I use GMail for my outbound SMTP, and vger i=
s
> notoriously irritable about attachments--so even when not smacking down=

> a huge attachment for going to a mailing list, kernel.org might take a
> dark view of such things in emails to its domain even when privately
> addressed.  Or maybe the two sites have implementation glitches that
> work in negative synergy.

No problem.  Just resend without the complete diff.

>=20
>> Other than that, I've applied the rest of the patch set: patches in
>> the range [1, 8] are applied.  Thanks for all your work!
>=20
> Thank _you_!  We're almost there...

:-)

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------KJfhT0Cb4O71Emul4W2xDahJ--

--------------J0D5c2RA6FdPhHI0uP3Ts74b
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTHpGEACgkQnowa+77/
2zKaMg/9G1ku59vcF3wCc3BIsi9PeEJ6sKPsvsy1VM3SzPKsPwQamtQaAL9VL/rA
UTFJayuKXez4Vz+9LfJVVTZUwnrJGWB48Rx9xKRQFpt0qZH65qWCKbx4DOMExJ1X
ybfSgeoSBcVXkw5Ll3WYlN4/gAafuSMiEiOth+I/1Xp1yw0BLNgQKVB4DtAVJWp8
YlYfMSiJEzcBegPNeqrefJLDmXJrlo28+m57q74CdaBIPIcfVTCLyfai30CX7uai
nx6ncJezOjg7/+xm6Pv1nd5ZXcG6znzGoc+ZcpvAJzrEQCy23R/WYkjG04EQZhop
ijB3dg2aov8DVE+P87KRuOOHWxwfQhcnLEAHF4k3VIyFyzei+5Hk+rPyKjfsG3ie
oD84z+yiAgOq0FJ7B9meRiIirSLlcs8oOAPD/7D90lN2h5a44q6GWbhYSgqf2dIZ
6QT2ml/vetQcd60vh75dIBr8ZOkDSzU06iv1O3ESEUomWYMWFRZCNyklqLDBehY9
5zYCLRgVysXfForimc1MUSYykPx10l8/ID6g79hPTA7KmSZBwON1IOyH2BMP1BLk
r2HbYONJA9uL6/ikJem7iM+8dpfznjmZpIBFR9Y7ry/iRGl4S/owz2qa5Dq6KYw+
TCfImUOqYBrf/vl5SRXBoIhKWvDnYRhhVpG/qB/F8IgW7NuI+1s=
=NV1X
-----END PGP SIGNATURE-----

--------------J0D5c2RA6FdPhHI0uP3Ts74b--
