Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3BC277D059
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 18:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237421AbjHOQrN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 12:47:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238560AbjHOQqp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 12:46:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0FC11B2
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 09:46:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5268D63DF4
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 16:46:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B22C433C7;
        Tue, 15 Aug 2023 16:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692118003;
        bh=qB4CBs35nn8qly7pS9kCq7LFRUXRxuyjdtqtIegip3w=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=XmUH6YxQJY1oQGJLEY0eU/wDMOfeSqQeQLjS3QHykCa4PiVVE4oAdq35DN/6UNVOZ
         elGla7sVJAgCt8ejEhljh3RCcZV1FvbZRzEIQ3KgPqDu6b2hIM8wt9B/1RreAMpZsJ
         nE308SycNyA4cNCRlK3xIoaptD3KZj45ewnGPEPIrH3v1vwT0qtStfoIQAOG7RAKeA
         IRAEBuCojSr2eRvOqS8avhltut2hdUndpVThUS/ssahvPOOWf7vsJQzfO36Iktm6eW
         1dLtRiispmhKgnjzmA3oMpVaT1Mh+sCmYzoBCNDfY3pNxXRj1Zy4pwFOELBPsLT7B/
         VZY0l9LtNLIoA==
Message-ID: <b12f1545-8611-4996-d790-1269174b6d10@kernel.org>
Date:   Tue, 15 Aug 2023 18:46:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: proc(5)'s sashimi
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc:     g.branden.robinson@gmail.com, xxc3ncoredxx@gmail.com
References: <ZNrsvD9KCmaBEYnO@dj3ntoo>
 <e891a3d6-56e0-78e1-9c60-2dac400995bd@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <e891a3d6-56e0-78e1-9c60-2dac400995bd@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yFRm6yh12oDBtdw2xyq08ti3"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yFRm6yh12oDBtdw2xyq08ti3
Content-Type: multipart/mixed; boundary="------------0J9SshxX0wHAVaM0qNW8tCBf";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: g.branden.robinson@gmail.com, xxc3ncoredxx@gmail.com
Message-ID: <b12f1545-8611-4996-d790-1269174b6d10@kernel.org>
Subject: Re: proc(5)'s sashimi
References: <ZNrsvD9KCmaBEYnO@dj3ntoo>
 <e891a3d6-56e0-78e1-9c60-2dac400995bd@Shaw.ca>
In-Reply-To: <e891a3d6-56e0-78e1-9c60-2dac400995bd@Shaw.ca>

--------------0J9SshxX0wHAVaM0qNW8tCBf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-15 16:26, Brian Inglis wrote:
> Hi Alex,
>=20
> ++ About time.
>=20
> Instead of the meta path component <pid> in the name, you could use the=
 actual=20
> path component "self", with a standard note that it may be substituted =
by the=20
> pid of any process (to whose metadata you have access).

I considered that, but I think it's better to use the placeholder.  self =
is just
a special case.  Also, there's /proc/tid/ too, so it seems more consisten=
t to
use pid.

Cheers,
Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------0J9SshxX0wHAVaM0qNW8tCBf--

--------------yFRm6yh12oDBtdw2xyq08ti3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTbq/AACgkQnowa+77/
2zJXlg//dtc7Urn69paLtTRuxefWdqyEsOlndLfikxDTFMd35aK+3oJDb2vPKa18
8S8m+r0O/RtGVT+8oz4o/mpghXOS9gVDmH2Hj+RiyRjHhlk6WKWKDuj4rNglbzh9
Yzqrc5MUmqBi7jqyWgzt00UgENqRXF0SWBr4daKXV5ZY+Rp/NZEWAua/dAvUPlY5
EtDDyQCrDHFnjrlLKHo5qDQhjmEbcS3jyJLW/l2G0gREoT6s+HWlImBxpW8FDg7l
4raZki/7tkCuVKAbH7CyeI7WHZRbNR9MIHdfvnnCcGM0Q+Fr/gvuLLuufguLKcXQ
mxkGRYcWKqKQrhKrqAhPelvEOdaBudArEZXbkFurs7xifn6nCpkiv2IOjbehJLjC
rVd6VbO7K2Qq+IZgAWgnGI7MUPymau0ihZmQNzK09XaFJT6pa4ybRE9BwY3N3A9j
Z8u+fqeklvQDGtWh05eN51snJWwPVPuMcgJNxTeUd/X57DR8OpttoELhmbv7jfpo
yIoJUWeqywfXehuV9Rv+00cXVe4nKsboTje/Xq7Kr3YM/pCxhQmrNvgIlzKEoSrn
TsH8oH9Wr/Eoos6sV0XxFP+vsH2E/qSWFLjv+AX3J/k7LBr+/0dI9rb5pvYjMwHr
3G2AphW7sa9YNygmzn6e9OB5Re2eQvr5zuPk04qQT/HH22JK/kU=
=Vx0u
-----END PGP SIGNATURE-----

--------------yFRm6yh12oDBtdw2xyq08ti3--
