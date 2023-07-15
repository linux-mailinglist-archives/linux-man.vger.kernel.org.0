Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 474A9754A30
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbjGOQuY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:50:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGOQuX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:50:23 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEAB72120
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:50:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5DC8760BBD
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 16:50:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25EC1C433C8;
        Sat, 15 Jul 2023 16:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689439821;
        bh=iae6NIxtaJBfwgePhyFijKUiGDp+uZxCMCvEg1+ukmo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YjA7gFb4A8jpFJCyOOXD7QEmK1WEYKWRGEq/SdTxDnDxjpl4cuIBAcgGHHtv7kd6J
         JTDyRH+8kmRrU1lOs9BQv1wfBumDDunhAyyVGbDTDtoMhVmZu/qaqRqFmgkPnY3iiJ
         DMxR0ZPtKWei+S8qYlY0kRXdBr0uE7RdfV6zes4ZaFkLus4Aj4zvCEJsY1Ue3OsvQV
         PcMJrxctDZ9zu7/qTxzeulKp2bVmfUKcFd26ZiSw0KdtCNWFsIQ//I2rw8aBMFH8Vf
         dnB5H1eEjxhM+VbfjmC4Wm+Hc2O3YCMrn9+qj9Gf4NWF0WnDq2L9MXoD7KWg14GdNl
         AjgoB7PGvHbuA==
Message-ID: <c45d6b71-f054-c3df-9a9f-749f30aaabee@kernel.org>
Date:   Sat, 15 Jul 2023 18:50:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] pipe.7: document read()s with O_NONBLOCK
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
 <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>
 <0f1a0d18-d89d-0c1e-229a-a057e5c77b6a@kernel.org>
 <m2nyqfc2mv65iwgugj2zysx7dof6k4nzdvez4luxfk3yzg3x5s@s7mjae7pm2kd>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <m2nyqfc2mv65iwgugj2zysx7dof6k4nzdvez4luxfk3yzg3x5s@s7mjae7pm2kd>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------I4RWvF9OiNGRGFxEI4dcv4Ex"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------I4RWvF9OiNGRGFxEI4dcv4Ex
Content-Type: multipart/mixed; boundary="------------B4aG77TqlHJaSxvJnV5c8U8Q";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <c45d6b71-f054-c3df-9a9f-749f30aaabee@kernel.org>
Subject: Re: [PATCH v2] pipe.7: document read()s with O_NONBLOCK
References: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
 <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>
 <0f1a0d18-d89d-0c1e-229a-a057e5c77b6a@kernel.org>
 <m2nyqfc2mv65iwgugj2zysx7dof6k4nzdvez4luxfk3yzg3x5s@s7mjae7pm2kd>
In-Reply-To: <m2nyqfc2mv65iwgugj2zysx7dof6k4nzdvez4luxfk3yzg3x5s@s7mjae7pm2kd>

--------------B4aG77TqlHJaSxvJnV5c8U8Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-15 18:02, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Sat, Jul 15, 2023 at 05:11:37PM +0200, Alejandro Colomar wrote:
>> On 2023-07-09 21:45, =D0=BD=D0=B0=D0=B1 wrote:
>>> Which don't behave like you may expect them to.
>> What is the way that you expected or might have expected,
>> and how does this differ?  I'm curious.
> By natural extension of either:
> files   (being a  filesystem object), always returning 0 if no data, or=

> sockets (being an IPC mechanism),     always EAGAINing   if no data.
>=20
> The pipe semantics make /sense/ of course, but they aren't
> The First Obvious Thing, because they're unique among the inode types;
> in many ways you can model pipes under this model as being
> files if writers vs sockets if none, but, well.

Ahh, now it makes sense to me :).  I think it would be interesting to
expand the sentence in the commit message to mention the difference
the you showed here.  That might be useful for someone at some point
in time, hopefully.

Cheers,
Alex

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------B4aG77TqlHJaSxvJnV5c8U8Q--

--------------I4RWvF9OiNGRGFxEI4dcv4Ex
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyzksACgkQnowa+77/
2zJF+g//TCw9t92pKeCaVnINdEn3KhZU1ZoRyHQTzUbcpjTFQhAlGrdoOq76Ye6Q
yFFrwRcBYL7TYqASoBgQUbreVIYutghE7w/BnOKeTl6mhqOG07Ikptyf2jOs5PGw
kAviLconRI+3xk7RW3S28iwXLQojemYYJodBJTeukaSpPay9kJVEgIQdWR0oFWCy
zSTD3IgtCTqEFCusTuQUvEtL3gS012yJnDa5GjFjsy1Uu7rXB74U0I5jf/JBxFnq
u7L1Tw3M9wdL7P9TJyCFJKPQUQkMDsSCW3MKiWL+F03oqJTFmXtCMlNHxoqHrO0b
IEd+vkwvyOB3GoI0zaWLWxW8eyyze5eztifn07DrMtAcT+TCbNDPWzz66m1OGGU0
gmpUYzfZXIAF9AbGoev4hIgQIzZKMN8SfRdtZeL+jHVcKxD3ZYtJ5013J0NCTeoS
cJjJQYE9nwYDNO9MHKlx757kBoka6mgtSAE7pY5yPXNbyNVAjZJ50a96lsYPD1kF
DlG9J/n6i4F2kg4QmYbPmdQlMGiXGwTnhvCX91eYZ/ksIABRrsgj1vJBf9y0rN+C
QLYobzUZRhS/QolCUNoDSOetYqODH0t54qGegYYIHCMdxQaOXQLpOy5F1H6MlHGV
Unn2c17LxTXcZLPaA+CmfQlc2xCX5yP2d7ZX7DTqxOGi3lp9rzE=
=4blS
-----END PGP SIGNATURE-----

--------------I4RWvF9OiNGRGFxEI4dcv4Ex--
