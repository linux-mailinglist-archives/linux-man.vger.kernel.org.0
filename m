Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1F907549FA
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:02:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbjGOQCz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:02:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230272AbjGOQCy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:02:54 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 292DB2729
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689436967;
        bh=VcHf0A2NYyN4rqGDjnHicfAYVCm/f01VmmPtvmDweG4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=c124Frf/VfCqpnD2mIIHWQULk3kPlX4QOqg8w6wUHXkPi2klVNtSSEsRhD1zsdsCZ
         8SUWVbIcX6NQXNTUAT0EwHnaEGhfNiu+wwryI5/ca+vGe9eL7smJOrVtNv5l9sdCjc
         0qIuAn7QFql6RJsDVBiGy2A8p2G4F6wD4NLNkQDkZD0Pe8Dg+QrkLkzZW8l+VOJink
         c2ONx/t9+Csu01FI8fas1PkrYbVqR8wN/FIOJwzxIAOpnm6P4tpNNbBrD0v8sRv32l
         pVHl6QYHPOQh/8A8InaxDAHE1y8UhfNEcM8408OQcdZMque/Y4pzR7tacmn9antP8A
         NfDMM0BLSsxXw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B8C9424F8;
        Sat, 15 Jul 2023 18:02:47 +0200 (CEST)
Date:   Sat, 15 Jul 2023 18:02:46 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] pipe.7: document read()s with O_NONBLOCK
Message-ID: <m2nyqfc2mv65iwgugj2zysx7dof6k4nzdvez4luxfk3yzg3x5s@s7mjae7pm2kd>
References: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
 <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>
 <0f1a0d18-d89d-0c1e-229a-a057e5c77b6a@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="n7c7h5vxsvpbeqpg"
Content-Disposition: inline
In-Reply-To: <0f1a0d18-d89d-0c1e-229a-a057e5c77b6a@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--n7c7h5vxsvpbeqpg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sat, Jul 15, 2023 at 05:11:37PM +0200, Alejandro Colomar wrote:
> On 2023-07-09 21:45, =D0=BD=D0=B0=D0=B1 wrote:
> > Which don't behave like you may expect them to.
> What is the way that you expected or might have expected,
> and how does this differ?  I'm curious.
By natural extension of either:
files   (being a  filesystem object), always returning 0 if no data, or
sockets (being an IPC mechanism),     always EAGAINing   if no data.

The pipe semantics make /sense/ of course, but they aren't
The First Obvious Thing, because they're unique among the inode types;
in many ways you can model pipes under this model as being
files if writers vs sockets if none, but, well.

Best,

--n7c7h5vxsvpbeqpg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSywyIACgkQvP0LAY0m
WPFX0A/8DucaegecDidZdOGhvYh/JECkPIXe8WO93JkdJo7BaVyBesA8FxyH0TU6
Zi84gPaPvfmt4aXcLpYjbyq2mLmoT0K3ALHevP7zLTkAOprpYvF+Y4IJdMSjVXxp
y5VJHvLj9rl+3rRWTgSOX9LtH5FOnGol1dHXhIcJzY/BJghp9VxSZMH862vQZkD8
DRJBATwa1lpRByVpJFW7O6zS5LxXKV266PQHcnyRzB+aHzTDgW7+jTNv8h7RiXPt
8eEOKCkkWl1IX3WI+Puk3b7on6k0o1yXtpA0btm1dLGNb884cktVNXpKp9rJ0lvt
s49kSPZsZ+H+pmhdeiMQhYkPAU4U0QwLjls78wfGdEG5ZwDEMyYbw+uezkOhf/aJ
gz65zKF/DeU0oX5LixFNc2AoF47DdxsVy4I6fCub2xm54s7oVhvI2jO0rHqV1zbG
oLa1hKC7BhWBVwWma+XQMxInvnH9lH3YonZUDzEkYHp13Dts3SX7UpfZXhOquCSY
P4wiXio2EW2oaF7sPtF7O/2Q/ece6v+h3hQz+AX7WJ7PyWO4MtkeCNcazb+8076h
tFq4Y6MsLY/aas9mScuMaLmlOERi1vTTmgo6ZaBO9rAImZE8VnOCqeNJQQyJKYsS
dhLch1stEVMLbg28A05wj3faKCYDqxT746gTn2m0PeL8cwhaLUs=
=u0Be
-----END PGP SIGNATURE-----

--n7c7h5vxsvpbeqpg--
