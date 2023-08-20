Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B688F781F5B
	for <lists+linux-man@lfdr.de>; Sun, 20 Aug 2023 20:57:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231640AbjHTS5l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Aug 2023 14:57:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231637AbjHTS5k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Aug 2023 14:57:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD6B26BB
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 11:54:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2072860F7E
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 18:54:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6061C433C8;
        Sun, 20 Aug 2023 18:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692557678;
        bh=S7PfmNs+eqR5mNrSD+b/VAp6dCBSwTXTuYcNbi2aTaY=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=jTU6bxc3vs6Ql2qrDNfa8phAavhH8PuFuEr47JADA/HWxZ07Oj+F15J95csVVSzmJ
         BhbdthBqu4RD27pjqHMzXljajhgPRzmPoOZUpelmARJ1I/uzOEH0dhRx/meAo2WazQ
         DWe6/XcDWLAx16Pqa/L0mKWMsT5Ro67iCL8Q7/hw5hAo7Rsy3CoOj8oTOz3rfYWS9p
         UeAFH4Wg7pPTp0cDk8QVb59iXTFXv51jZczK3FHJuT+8Le5ClmrYSfrkd782xUuLPV
         d9xQf3tvefaDQo8SEhSpuhn3kYdNLYYRsX0HN3Zmd43IbTCCfkikWDrzZbBuAisfkY
         3tMR0uKMIsXlw==
Message-ID: <442e4505-fd08-0e46-8e07-5473835d0d4b@kernel.org>
Date:   Sun, 20 Aug 2023 20:54:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21985157.EfDdHjke4D@pip> <ff61b155-ce0b-6a57-01e2-5d41b902233d@Shaw.ca>
 <2704680.mvXUDI8C0e@pip>
Cc:     Brian.Inglis@shaw.ca
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <2704680.mvXUDI8C0e@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NdBg7hDVBl50107FY6X8sSqC"
X-Spam-Status: No, score=-11.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------NdBg7hDVBl50107FY6X8sSqC
Content-Type: multipart/mixed; boundary="------------msxUqwKRZOB80XvOoYono0Vc";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Cc: Brian.Inglis@shaw.ca
Message-ID: <442e4505-fd08-0e46-8e07-5473835d0d4b@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21985157.EfDdHjke4D@pip> <ff61b155-ce0b-6a57-01e2-5d41b902233d@Shaw.ca>
 <2704680.mvXUDI8C0e@pip>
In-Reply-To: <2704680.mvXUDI8C0e@pip>

--------------msxUqwKRZOB80XvOoYono0Vc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri,

On 2023-08-20 18:48, Deri wrote:
>=20
> Hi Brian,
>=20
> Please can you check if this sort order is acceptable.
>=20
> Cheers=20
>=20
> Deri

Maybe you could call <.../repo-root/scripts/sortman>.  The root of
the repo is known, since it's the first argument to the script.
Is calling a shell script easy from within perl to sort text?

Cheers,
Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------msxUqwKRZOB80XvOoYono0Vc--

--------------NdBg7hDVBl50107FY6X8sSqC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTiYWQACgkQnowa+77/
2zKMvRAAqvw69Dp4ikGYzss0xcEu2a/0GvZ3v1FsMhkmF8+6waoeaAufEUeP0xrE
Df4ji6TPKFwn0qb1gUOUBvUKxPd3FPR126o9RVFjC15x4UbuguY6E/WWhx5PBpb8
fC5q2r43Z4cwqpRfVj+ne/wy8knjmi8+XAO6+K6juhlXf4+3JkKGKOBfPHmHQF2Z
ZXzlxutZGSHR7gMzNoSYsZ4IPTGJOicW65xzmbOEjGSg9WCfKSCAuzQffbmamEH6
JAewxJcAhxtHGuL7Ec1DTMaVr303om+uac/LKGN1X0BaV0LjEg4aJ56r31jh5awW
NDaVcCIX92mOuuFopKlDsDGGV1ROkVzth7cxh8tHCBxKsNr1D2+AxVsvytJLqMCn
lRvPQeYxlP+eU8OIppd/AAUETQwNSoZ0tiqUJr7OvchwdPbz4RgpnTSf9tRHXCV7
Yy74Ehxv+ZiUzaZkWAK4Jwf+rVnhJJvaXLgRXxUXlHFc6yAuGyFiFHplC0fW8vbp
IiXttohheHCQapu32rC9N95hIFYmDT6+MzQ1XgnoBcHTYv0QkTmjf9q2FGHcNv0a
FSCtrtpY8n+q+BVcL7MdlLN6pwTlljY0bCiBUK014O91d82SnmRY4JkPbElr/NM+
0conF7jDRuEtld0ybAxtYEgICgQ82NIMCOfwcYfnWoDvgP+W4zU=
=+yt1
-----END PGP SIGNATURE-----

--------------NdBg7hDVBl50107FY6X8sSqC--
