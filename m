Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F01877A752
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 17:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbjHMPUB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 11:20:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjHMPUA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 11:20:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E35FEE6A
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 08:20:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6EF8660FA4
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:20:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3107AC433C8;
        Sun, 13 Aug 2023 15:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691940001;
        bh=kUTelKpPks9BjIYRY2mihEcI4szdPG38ISicqBIZbRE=;
        h=Date:To:Cc:From:Subject:From;
        b=hFofeqNPb6vnVYTmmLERzeH60C0vFsxk5y1eIv7Yd+rbr2yChlWSMXv7eEJeQ2rvL
         0V3ULrS9jGZvWj5ezE+NBT+d0vwuK0NMfDQok8m+mjoH2OU3syO7XNKhS4cU1Pflgf
         M3DjNOadQ8LCJBYo+BUEOz4Z1bzWkzwz9AtfMvmDrFsrlUvsRXog1a5w+AhqimdGHa
         NtC3JjhOkfnv74Cy30Obe6GP6gN2/0NkCY4Xp2dfs1cHYCNOYcSg0WkfzCe/tODSAL
         eN/VSgCN2unodYRjEChannQ6h+VOA6VpPOoUJ7MjFoAEGPnejB1f4OmsIYfttlvLAX
         TtL3cGmAGX2uw==
Message-ID: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
Date:   Sun, 13 Aug 2023 17:19:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Subject: .sp 1 in strerror.3 (and probably more pages)
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vk0EPAGLxQEADNoJI1IzAEaF"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vk0EPAGLxQEADNoJI1IzAEaF
Content-Type: multipart/mixed; boundary="------------t1mw9i45mC42HKZZXuRDd0yi";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
Subject: .sp 1 in strerror.3 (and probably more pages)

--------------t1mw9i45mC42HKZZXuRDd0yi
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

While trying to apply a patch that touches some table, I found an '.sp 1'=

after a table.

I tried removing it to see what it does, but it seems nothing changed.

However, in the PDF version, there's some change (using .sp 1 produces
a larger space before the next section heading).

Should we keep that thing, should we replace it by something else, or
should we remove it?

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------t1mw9i45mC42HKZZXuRDd0yi--

--------------vk0EPAGLxQEADNoJI1IzAEaF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY9J8ACgkQnowa+77/
2zLR3g//RWygYH0TIVSJrR6r9E0RGjhbTx+asRjA9P0wnkS+3bSQXt95lIpg/Bc0
S6BEOV+E1KvHFpesf0bQgKwQovUSEyeGclcMfAA9ZeesJBOn+tF1yFnrVdD2IQwr
2siBQUQCrBOXe/osQ7LSMANfnmkUXrKdkR/nFXUzg4cVcBQKaqfpDyUtu3Ua/9UH
1dCVQ175771PImEAmFRPc5SP4VwqSmVd8TnFwqlYyISdIyqmaFhRnPz38jKbmaUA
C8bKC2quL//QiWfo6G3RXXK87JluucoWJyNbgd1t0uqZdL5ZiZ4W0z2ZKXUVTA4O
D0aHNdHvimwSW+oZ9z4IpU3m0Ghgx6xCIGUHbcxx7FWxeYBZkwmpfzWK236u+SWi
XKUWu2tEOgeHGrBNxAkq7RxwoxH9QxRe/T/WE4v0CzzdVXAjX63Qn+qHxwsWHrS6
AN46MYHsQsx/w6p/zhdR+x7VEmJmMENvxAv4DSd16n6suxNpaLaTvMvg2ZSyu4qb
k/yE3bLPjlFy0OLvTpFD6Jup+mH3v0eW2yNqeHjlXB4QBanqHm+Y4exhyQF0lLY/
Qpl32DbC2k7GQpgdxJBG9+jZWaniza4T74P1qbeo6ClNGVbWAlK70Isa6F9NdLJO
NEORwlLuEfAUWbnylrYB9qWxEiwGoxurKbfFX4lvkP7HJjGNQnc=
=DeEg
-----END PGP SIGNATURE-----

--------------vk0EPAGLxQEADNoJI1IzAEaF--
