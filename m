Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 104287E3FEC
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 14:21:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbjKGNVA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 08:21:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233854AbjKGNU6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 08:20:58 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EF499E
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 05:20:56 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 151DEC433C7;
        Tue,  7 Nov 2023 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699363255;
        bh=T8KEbb0nn0nBAzcVEAmQK8Y4RIomoZBzTC17webmpPs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fLe+3mGr9NWGpDC/YSIRTp2SNa9q+U+P2PsFQ6sljo4NcvEApbxhQnDBi963yPheZ
         xWilV8eiAA1LaNALWmJareZB2jXR48dCbdoVdmfZEOHAO37cS7uhwbtKh3E3IGZ8Mc
         CE3rUPy8+IVgrM+DVwpxmOIj2TB/dIWHnwsNhdqX0OMYOnWeLuzD6C1wRIqG1z4jeY
         GnCb9ymkViYsl3qrzmrhemIFHHIN9kV74YVF8YvAZtI7t3T2D3MHsh+58m9hyBUDf2
         6CuJovYPNjVEahfn2jh/hqiqr5LKBs8W7qcSdFzvb7eQw3xfJIxwCWxdvXuXScIVvb
         QlBsKp6pEL0ug==
Date:   Tue, 7 Nov 2023 14:23:58 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUo6btEFD_z_3NcF@devuan>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="74IL1omE+cSos6bj"
Content-Disposition: inline
In-Reply-To: <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--74IL1omE+cSos6bj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 7 Nov 2023 14:23:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Tue, Nov 07, 2023 at 11:52:44AM +0000, Jonny Grant wrote:
> We see things differently, I'm on the C standard side on this one. Would =
any information change your mind?

It's difficult to say, but I doubt it.  But let me ask you something:
In what cases would you find strncpy(3) appropriate to use, and why?
Maybe if I understand that it helps.

Kind regards,
Alex

--=20
<https://www.alejandro-colomar.es/>

--74IL1omE+cSos6bj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVKOm4ACgkQnowa+77/
2zKhoA//QBfOKdN1L26podBAdwIk9VEHl8y4sICUH8FRbtf8Cq/kEuO81/RldBvk
wmJyZg6ci66cJ1uSVjvqRxXzAsOutATJhqd+M36WwuY2bjDLoaqMaQbhgDq9hwRa
2J1QQRF+Pd77l2VVV2HhIbBc1F8n8SnU4sdvEO41/Z65dk7sj2rP4ft+Q1RtzQcU
6fgVciqcUcCAXkhqizoEkLhzWIsfsPVvlpG1yvEBlgLNqKEiVMgFW2+yarKGKgIb
ubn2+6HvnHISlfVVXzpyteYGnDJULa8UmL/6vofOkdzyENDfP6FiJqqr90V+f/Pg
H4fKd5r3C6cQOzIbWUpYlHo3o8t6Q6fHF32aTyC68qTbIvWV1dyeiFvh5VmRcGnA
bqsZUU6P4MYw+AnFbL0a13xftx3WcVXP2Ke2ZBwRq8mYlLZPuAdPkGgrKCtPr6wF
Xp3DgELcD9i2r17RM0M8Bg0go+/qctLUmXijrnY6XIitsaybo+smaeIr/p+B0CZ5
+hCsX8qjJZgAXbyqOqBZ4JiT0a39J8J3G4GtyAjqSk6eUqMW0oww+iQi7evoFu5+
us9hxSSMu2YBlMDKnjQ6fsk4cFwOpL1Mir4y/n+tLNoopcZwr/UAmEbccU9lf7cR
0KY+dVMOkztNzr8Bw1ksz4fgTHElZQL79/SaxIYxeHmlbjBlFkc=
=Jmf8
-----END PGP SIGNATURE-----

--74IL1omE+cSos6bj--
