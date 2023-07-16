Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8515754CFF
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 03:11:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbjGPBLW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 21:11:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjGPBLV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 21:11:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BDB1271E
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 18:11:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E8A4C60C47
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 01:11:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96DD2C433C7;
        Sun, 16 Jul 2023 01:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689469879;
        bh=pKlfltiV4EVlMpvkM/XLIbnRM4bsODQWBsVUEtduUrY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=VE0aJE+Ppo9kiWqda+M40nV0VvK4mRFx6nQ+247NpMjEpau4Pm5E1NjJjDNCmirJp
         vdlfCjsXXU+VOd+ApNGLoZdBLmO8Kr31t53FXNAhoOph8TitkylHR2CATnXiqIoaBS
         /LVenrkwqr9tctuE+SPXAIyT1Cm+ZmgrsNCJ6jRbWFojvzL5QIB8gK0aA4ndWDh9mN
         N8KbyO549kiGAlv+W8YTvGxu4K/UYQ2eg+UnvdHs0fXBGTVcJDsCKc33n/AEaV2XN2
         wBedYLJBb+XvQjxumd12G+QNmLQeBt7bv/iGku17bqQoy0AhuIq99E7rwJ0sA8VB1M
         aehJTOB2NbtaQ==
Message-ID: <091cb110-4579-b8f6-6860-60f07ad8c2bf@kernel.org>
Date:   Sun, 16 Jul 2023 03:11:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: SPDX license review requests
Content-Language: en-US
To:     Joey Schulze <joey@infodrom.org>,
        J Lovejoy <opensource@jilayne.com>
Cc:     linux-man@vger.kernel.org
References: <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
 <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
 <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
 <ZKnDqEF+RFVUyW+Y@finlandia.home.infodrom.org>
 <abcc8ad5-8d4e-ce7c-d7d2-1d5ad599c4a8@kernel.org>
 <ZLLtxEUlQzc60X3f@finlandia.home.infodrom.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZLLtxEUlQzc60X3f@finlandia.home.infodrom.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yrzn8ituWBVKkp3atATrPVrj"
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
--------------yrzn8ituWBVKkp3atATrPVrj
Content-Type: multipart/mixed; boundary="------------ldKc6g3o0S49KygnUICt0Q58";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Joey Schulze <joey@infodrom.org>, J Lovejoy <opensource@jilayne.com>
Cc: linux-man@vger.kernel.org
Message-ID: <091cb110-4579-b8f6-6860-60f07ad8c2bf@kernel.org>
Subject: Re: SPDX license review requests
References: <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
 <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
 <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
 <ZKnDqEF+RFVUyW+Y@finlandia.home.infodrom.org>
 <abcc8ad5-8d4e-ce7c-d7d2-1d5ad599c4a8@kernel.org>
 <ZLLtxEUlQzc60X3f@finlandia.home.infodrom.org>
In-Reply-To: <ZLLtxEUlQzc60X3f@finlandia.home.infodrom.org>

--------------ldKc6g3o0S49KygnUICt0Q58
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-15 21:04, Joey Schulze wrote:
> Hi Alex!
>=20
> Alejandro Colomar wrote:
>> We're using SPDX now, so it will be more like this:
>>
>> .\" Copyright (c) 2001 Martin Schulze <joey@infodrom.org>
>> .\"
>> .\" SPDX-License-Identifier: GPL-2.0-or-later
>> .\"
>>
>>
>> I guess that's good to you, right?
>=20
> This is fine with me.

Great!  I applied that.  So, Jilayne, it seems we got rid of LDPv1 in
the project.  All of our licenses are nice to Fedora now.  I think you
didn't add an identifier for LDPv1, did you?  If you didn't, there's
no need anymore.

Cheers,
Alex

>=20
> Regards
>=20
> 	Joey
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------ldKc6g3o0S49KygnUICt0Q58--

--------------yrzn8ituWBVKkp3atATrPVrj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzQ7QACgkQnowa+77/
2zJu0A//ZEUeRCdrXzAo2pLJlitSg4lLFYP4sz/yAbPLMrp4SHr8XoncS/Ay7I10
4hcKRD/2ya9evCqMoSqRfLblmavHvJ8tv3NYLMkEQx+ze4vmIUznwJG7eb1mLsbq
mBiMHct+O3G0hfTzUb9vflpY9twO7U3DYjDqAwdlKPt3P23CvNBF/5626hPVPgL/
qh/xXW2ojDPCk9Qhp3/xrO2UFxn1R3vYpTFYA1iUDCCs34mHP1vGAGhkHPb+gjkA
kPTiVwjo1XFG47oAjDGByyyW4vTFnEEBLFqPzoSeBBniz/cD3VbsXJhkoSywAXtF
rF/wwcso2zi78eJCMv5g/CfCdlEOz/DWb5HIHrukNfE9wZfO9ewSIQDfptq3DDbQ
xagMstL1Iwer2wDUxntqslOCeAk1qwqECJplglQB83nJiVhqdNAu2rFoCP3qpqCY
HhC8RDfz4nbKY5z3obRbRLxQIjvtsA3Hgxg/72bF783SPRBx3w7zxWaNlh7m1s9/
In9LRlnkDLQAwUPV5K3Ruh9w9GMNbn4f30Eq+iGQpqZKgEDG5sFlmcRRj194cjHz
lRU0TzqvI5oEiEIZOmoL8NwKaLVKQ7QxtS1MP0M4iLAElVzMbHev0oBNXBhTwDEo
OVrXnvByOfZP4AXdUzAX0wUpHOFVNfpLaRIK8tMIlpVk6v7vK/4=
=fPa0
-----END PGP SIGNATURE-----

--------------yrzn8ituWBVKkp3atATrPVrj--
