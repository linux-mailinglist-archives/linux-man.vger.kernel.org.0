Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B58F475A91A
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 10:24:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231436AbjGTIY2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 04:24:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbjGTIY1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 04:24:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210592699
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 01:24:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AEDFC618F3
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 08:24:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71D4FC433C7;
        Thu, 20 Jul 2023 08:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689841461;
        bh=iows4MXWlRuB2GnJvoZ0jb21Bey8JNezgWDmdbphY04=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=IyBgtPFB73qaaaRxz+0+Vucp+7+kk5xcHpDWUrPtSdHRAJcWRSIZcI5sEqi1szSp7
         rxn2xvLk/3LH24xi3V9frdgLO/bhP+yqxYMTRrT+zlvmWvothVuLuS3+qFAxt7IMJ9
         D0FlWqb5Bo9u4K3bUA2Hr7STnK0Qyp/xbZqgDwvSRHIYR7gVjFz2aEGbr0BErkEGK6
         PxTagiZ780riFacp91LCNL9fKNJtyCgwL9bJxKycp3PvQIhB4Ao5S8h5X0frpxLDHX
         bWj6/c2s4xMfXtzlDG3dYuCxY2DF29JJYE5HNgQhakxkoyNxLVFD3Jxxw8pUpkZNxx
         tj6csR7AbeWpg==
Message-ID: <b8431b23-4554-6e1b-c3da-817d153e1ca5@kernel.org>
Date:   Thu, 20 Jul 2023 10:24:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] man-pages(7): Add attributive annotation advice
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230719041832.ulsigsjae42rqh3g@illithid>
 <27b46089-2f83-5025-2f3d-50433b76e36b@kernel.org>
 <20230720021311.2wyrt5tlglsxcl3a@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230720021311.2wyrt5tlglsxcl3a@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cHu2c2vMyMvx0QH3SVzFSEim"
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
--------------cHu2c2vMyMvx0QH3SVzFSEim
Content-Type: multipart/mixed; boundary="------------KFQGp0T5ShmYD7txaaV0fOnu";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <b8431b23-4554-6e1b-c3da-817d153e1ca5@kernel.org>
Subject: Re: [PATCH] man-pages(7): Add attributive annotation advice
References: <20230719041832.ulsigsjae42rqh3g@illithid>
 <27b46089-2f83-5025-2f3d-50433b76e36b@kernel.org>
 <20230720021311.2wyrt5tlglsxcl3a@illithid>
In-Reply-To: <20230720021311.2wyrt5tlglsxcl3a@illithid>

--------------KFQGp0T5ShmYD7txaaV0fOnu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-20 04:13, G. Branden Robinson wrote:
> At 2023-07-19T22:01:35+0200, Alejandro Colomar wrote:
>> I'm now doubting the necessity of this patch.  It's like very
>> obvious content when you already know what it talks about, and
>> not very clear until you know what it's talking about.  Maybe
>> following existing practice is just simpler.
>=20
> Okay.  I withdraw it.
>=20
> (Also, waiting to see if my 275 KiB inline patch to "unbracket tables"
> comes through.  How should I get it to this list if it doesn't?)

A gzip works, although in such cases of scripted patches, you can
just send the header of the patch, and maybe the first pages to
allow me to check the results of the script, and then I will
reproduce the patch myself by running the script.

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------KFQGp0T5ShmYD7txaaV0fOnu--

--------------cHu2c2vMyMvx0QH3SVzFSEim
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS47zIACgkQnowa+77/
2zKDKw//Xgy+gJMEII6B8D66kGF6Gpfm5odu85XUA3C/Z1J2EIsaA9GGv18MvJKs
A7LR8vnB2uFGXVFxwkW62WVobuhAwVxTRbN7/d+HMluy1Nmz4G4k6Uw3jvIxkjfp
VJ9mIT+hBV7SYERxiDniKzCPCHgDzMxomB+5QuqRFZZ+WNJ+2X6f+fXbfAZ23TFP
rUhcSnRAswzyt30FxJIoOujJW5vjQzXOlPyGtLswM8jWz5e8qvVR8nRM2MCxjy7F
onvmWdKVN7H+Q8JDgItk3SzJO2zu560Q7b8pB6HpLTlvvk7VGjbJrfjEBG6QUx1P
Om1tcbtTVt01BSJy5lun4bsK+FCCq4xS+805YKUpV83lEWZPXiqo7N6DDkDIaGPd
w+cX3BcGw5ViiQkShsgBoiHPdRr/V8wheOdPxzAkswZcmUJoU6qW/YbMkNP3YNvA
hUCUYw0fbIOFLCjf3HdMra8BE0eyYyVpOvsWGFgiZCxl5YwT60pID53epSk32pS1
64MeR4fW39sRY63MtbXJscWPR+USC0bwAuwB7JkyaXHz9Dbjbe+G2FjRhJnEWSWp
2NUIVRtdRyr2guLqni7yTTkWLNeidVca0ka0HP3zMfWoXuYCL8oK4/qKb+Fqdl64
yvd7mCzL7ML8ZnTj8FXMMYXG6hB0n+FpansZUdNzj6QBMDHG3F4=
=xZFj
-----END PGP SIGNATURE-----

--------------cHu2c2vMyMvx0QH3SVzFSEim--
