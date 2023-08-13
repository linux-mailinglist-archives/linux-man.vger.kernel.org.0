Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14A8577A6FE
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 16:37:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbjHMOho (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 10:37:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbjHMOhm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 10:37:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E9CE65
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:37:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C0F34627E8
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:37:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BF9BC433C8;
        Sun, 13 Aug 2023 14:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691937464;
        bh=RtkGJmWzvjLTifTi+sJfRyqAbyyn6TeMGTXIHX0KFP0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SexLfjVp6PZasiP4Shy0+h2vPqmsQY+kNM8juKExlZycqBas1fGbaVLCWzBdIi9NB
         Bn1q0G0SLN4CT4Uo0O2C6WASOXIFpBDorIv5okg3J8nZQgoZgmsK4lz7Ry9PCkxNrG
         NDYcujR+vFMPK+HEELCDW68KWmXaIF08pnFwiGQUyc/CoKNOuSGB7pLx3kPVuEx1Ff
         r9ws3YNLv+up5lwM+HUGwJGa5Re48Wu1TP65B3CCEMhLKPp6uuTznXPVUUZnVA8MZR
         hjVx9o6thwMm7aofJb4qoMvxIgsixHpGZaKbSp5X75oPXkrDKG3q47mpPpVuq5Dyz5
         n8zwIkioZ8rzQ==
Message-ID: <a6c3bc1b-8f28-5491-7fee-0684eac3e063@kernel.org>
Date:   Sun, 13 Aug 2023 16:37:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3] clone.2: Fix erroneous statement about
 CLONE_NEWPID|CLONE_PARENT
Content-Language: en-US
To:     "Serge E. Hallyn" <serge@hallyn.com>,
        Sargun Dhillon <sargun@sargun.me>
Cc:     linux-man@vger.kernel.org, John Watts <contact@jookia.org>
References: <20230810022603.947583-1-sargun@sargun.me>
 <20230813135525.37196-1-alx@kernel.org>
 <20230813143610.GA1148742@mail.hallyn.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813143610.GA1148742@mail.hallyn.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0HnvJx11FlAOsEpnjZQ5KUKM"
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
--------------0HnvJx11FlAOsEpnjZQ5KUKM
Content-Type: multipart/mixed; boundary="------------36mnwZy9vyrQS7TvALVhbi0M";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>, Sargun Dhillon <sargun@sargun.me>
Cc: linux-man@vger.kernel.org, John Watts <contact@jookia.org>
Message-ID: <a6c3bc1b-8f28-5491-7fee-0684eac3e063@kernel.org>
Subject: Re: [PATCH v3] clone.2: Fix erroneous statement about
 CLONE_NEWPID|CLONE_PARENT
References: <20230810022603.947583-1-sargun@sargun.me>
 <20230813135525.37196-1-alx@kernel.org>
 <20230813143610.GA1148742@mail.hallyn.com>
In-Reply-To: <20230813143610.GA1148742@mail.hallyn.com>

--------------36mnwZy9vyrQS7TvALVhbi0M
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sargun, Serge,

On 2023-08-13 16:36, Serge E. Hallyn wrote:
>> Cowritten-by: Sargun Dhillon <sargun@sargun.me>

Sargun, would you please sign the patch?

>> Cc: Serge Hallyn <serge@hallyn.com>
>=20
> Reviewed-by: Serge Hallyn <serge@hallyn.com>

Thanks!

Cheers,
Alex

>=20
>> Cc: John Watts <contact@jookia.org>
>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>> ---
--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------36mnwZy9vyrQS7TvALVhbi0M--

--------------0HnvJx11FlAOsEpnjZQ5KUKM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY6rUACgkQnowa+77/
2zJCcRAAlUz1rpkK1l+X/rxeYj0o3g6fQUhZAJYJ8hXDLH7cdNWiKhutmkup+xXy
VCz3/bT0CoaogVqoU0O8n6FcunF7Zfm+2ZFRd1QAouu2DBR5Rk0qzUwOzKElpm00
yg/MUP8mhBUmCAHO/V/3KFQbrtspGsLq0UOjAJbYskxaue/t/9e+ZHKoTqA+xpUF
bx5nVBc1pi9tg+39tM7vnhSC52wkHyuLcrwBmg1a3WJWPAwnaweJiAoJgPBmxzTV
8HUEutzXwm+V6XbfLtE+x0vb83W5pgXp9RJcOSCV1++X7SVh/USHQ5EEbfj0NHod
r0vJNenaqF4UO/TEBOXp0RzW+Un6HX8QgYPjI5JSZO1b2dsXwmgSwth3OeAZuLLl
BQwtScGP5cd/3VA5PP91fTCJnmj0j6a/MFsXOerjRkvCLBi5mc7/gJrXHdWWA0yz
inucvF4DmoPquknjMgc1nVOdMBD9XeD5UyvaYQe+pHWzJNw7QcmpojfzxXnzxntL
AFsLtbVsEky8+7mVS0XmsZs8+JYYGJTZX75E8+gLFy6/BxUl8I7eCo2HQHvFQYEv
TvC8aEVEB+lTdwBL3nYG8mEg2Frccxdg3JpqfSM9qIdEpwr6ZvoUrCn/QVzuz/Hd
0dWj1QsA2rrR302V6hXimk328aHCXnLeLpN2Zrd3i15m30wKLLo=
=1ZsF
-----END PGP SIGNATURE-----

--------------0HnvJx11FlAOsEpnjZQ5KUKM--
