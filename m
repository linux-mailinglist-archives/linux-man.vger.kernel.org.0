Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49BC0754A24
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:41:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbjGOQlY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGOQlX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:41:23 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E690AE43
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:41:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7C0CB60AB6
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 16:41:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59455C433C8;
        Sat, 15 Jul 2023 16:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689439281;
        bh=wFukTayTTU6sD07oafAoXyxxDAqiIAwm7rHiMZMFWVE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YG5HUvQRJQSS1uh6XMRIrRL3t/FO/yUDAfUHGgbSFt3wqe9EScTPjikw1IQ2RQyRv
         3PAzstYRt+mbEciJeweSRHPvayqbdXVataTh5Y08lDYSYWxCkIG4xfvkUAjgdixbx6
         05BQE/AUCKf9tB54LvlsoD+g97pSgjDwoMLSPDfS0Y/8edOtAG8kYN48RYJAKnvmq6
         b66ISVMW9oBKJxC+FBxnld2EwC/eA0Da2FEDrD1U6O6Ev4N0ObgibSM6zgEa5N50Qt
         y+sJi3HXDqApz5mRzq3k0Emu/PI121wU+Bk3iZ8XYrF441Sz5Ph2ihy+Kph4vdKHnw
         uAVTixHTgfZTg==
Message-ID: <2a862e16-908d-b6d6-5cb3-a601b9966702@kernel.org>
Date:   Sat, 15 Jul 2023 18:41:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] socket.7: tfix
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230714040812.6384-1-ebiggers@kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230714040812.6384-1-ebiggers@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jEceKrroKrZUa08ZanF2vDab"
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
--------------jEceKrroKrZUa08ZanF2vDab
Content-Type: multipart/mixed; boundary="------------phh2AwYnrgUO3HGoohqy5jCa";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Eric Biggers <ebiggers@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <2a862e16-908d-b6d6-5cb3-a601b9966702@kernel.org>
Subject: Re: [PATCH] socket.7: tfix
References: <20230714040812.6384-1-ebiggers@kernel.org>
In-Reply-To: <20230714040812.6384-1-ebiggers@kernel.org>

--------------phh2AwYnrgUO3HGoohqy5jCa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 2023-07-14 06:08, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
>=20
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Patch applied.  Thanks!

Alex

> ---
>  man7/socket.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man7/socket.7 b/man7/socket.7
> index 59a7a3f49..985f52e55 100644
> --- a/man7/socket.7
> +++ b/man7/socket.7
> @@ -539,7 +539,7 @@ flows are received.
>  It allows each worker thread to be associated with
>  a NIC HW receive queue and service all the connection
>  requests received on that RX queue.
> -This mapping between a app thread and
> +This mapping between an app thread and
>  a HW NIC queue streamlines the
>  flow of data from the NIC to the application.
>  .TP

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------phh2AwYnrgUO3HGoohqy5jCa--

--------------jEceKrroKrZUa08ZanF2vDab
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyzC8ACgkQnowa+77/
2zKqUg/+JhaC4PciJVoPi/seH8DAcHIDM9YxasYWUzJY/zsnWnILW9f7ndz+5yBw
KB7y81S/OZW8WsGV8n2IMKMtLo9MNM2YTZ9iG3/BTkkYQF9G5a7gh7/VgbhL7LwM
w40suMNEmqt4nc7Q3wbS2zIryYe5bE7w6i/JtKHFhpNPy2+oXyMTCN6C/qoI6Vde
v3SlXZjDBqb5Q+JmsKQFNqm5FXrUEEunzG++qgCu9bgR6iJ1Lx2lNI0O3KjlDMbG
Kqj7041ud2IBqJmLBDezUBUT8HBH4y48EcYF5LtW8Xo8nEi4QaznQxitTjiTrKRd
y2LYOpOuY7TvHrfJessLyMIoPZNMwUklAW0YKtjO1TYRXUxL13pHTAtXK4DbgNNw
ECZPFILXuoiKzbV4+UV096vhUk7zmc/Bhdg7ZPdmDFTv1n4B4DJr0xRVnGrMP003
QzqSVa9VI9n1CT23+yG7SVQAruZuQVT/60fLoCeiFLzye0KE8oYJUD0jzL6jUZpL
lLNvxdGuakjUSgp0GxIvXh8Gze09RrBosHnLTGPbPPxvJX7lLImVxllQHyoO1/yz
1B0tjrad1MBa2FASHV61gD/DBt8z4fcTARv/YvLg68/t6lpgiWec6AXMKx8su/1Z
jJoVVwNoEJRmiump+VnG+zw9QJwcaCRu/ed83XTQGDP4I46k2y0=
=uAKo
-----END PGP SIGNATURE-----

--------------jEceKrroKrZUa08ZanF2vDab--
