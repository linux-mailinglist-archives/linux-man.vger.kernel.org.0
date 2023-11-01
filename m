Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3000D7DE405
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233227AbjKAPjX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:39:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232094AbjKAPjX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:39:23 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7ABADA
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:39:17 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF46C433C8;
        Wed,  1 Nov 2023 15:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853157;
        bh=7b3g47r+C5AfSqK2jCRl4HA6zcYL7g7NUNVvmvcbxzw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SzLhqsBVz4DlLx+S5vDGMlePluvXV2DJVuflKwuVOi+IqjTpT4VSHp3mT0auWGLGA
         CvTLQJ5QY+gGTIV+4L3FG0cbJgjEMbV4xLCRUReV+2A4kX9cblvwpnMUIBNdOz2cHE
         dZurCkej1BdgeaqubV4fUiHQ+p3ijymBn4JtgXtr/KfABn6ZQ1G20mU7bxq+ygsRcy
         6BDQaO0Oqo/FspfSMdiCwgRPGyFPXposukaI0nQEBzg9zQsuUfmKQFYow/y3vSaSdI
         E6Xl5AF+G0kOrdOdqkclbHv5bYn8g0/8bPMQZqR+K1iaN6FGlmqRxp53eqUgZkM+Li
         WYm2sk0JlSOAQ==
Date:   Wed, 1 Nov 2023 16:39:14 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getgrnam.3
Message-ID: <ZUJxIvhR1j6EiK7B@debian>
References: <ZUJaYw-XkZtNyClq@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="r2i646HWWiBtdetJ"
Content-Disposition: inline
In-Reply-To: <ZUJaYw-XkZtNyClq@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--r2i646HWWiBtdetJ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:39:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getgrnam.3

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    NULL-terminated =E2=86=92  NUL-terminated

This one is also invalid.

Cheers,
Alex

>=20
> "struct group {\n"
> "    char   *gr_name;        /* group name */\n"
> "    char   *gr_passwd;      /* group password */\n"
> "    gid_t   gr_gid;         /* group ID */\n"
> "    char  **gr_mem;         /* NULL-terminated array of pointers\n"
> "                               to names of group members */\n"
> "};\n"

--=20
<https://www.alejandro-colomar.es/>

--r2i646HWWiBtdetJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcSIACgkQnowa+77/
2zJTVQ/+L3Dm3upCrifnCCqWISXXVBY+/JcDDyGoZtMypEhr22uVovCcoFeqMEpN
dqpFpDAINmzB5GyNV86RtzGjFPbt/ELmltBUx66BWF1qWOQZ+oSshdzT0638IM87
QzbWGhq+9KH4OmSXWp4gzUPOq0jrmqGCjK6coASJnqLRbaXqRO/wDa4/bOaEbx2g
Rt4blXnWkeMaCPnZjK75GIjoL+8EEzebOGnSqoXi8Y98n0QfQ0xq0+5XOgK3pJSq
0Ggc+S6QKWo4LYhw7iESXk+x/sFBx1XiKUnNTbULP6Zvo20+xfjqx9CcIin/6tiO
dcQdxztEiuLqJvKTX2HsAEee8v7ElzVgdb/QD40g+Ol2wTtssePmsxMAJP+alNmy
w3oXNqI9ZTlceaWm6OQy//C5pMRqNyNfKx37/VjZ5CV3uGvWinHx+o8RENmWByqc
0KLf/seNHKnpFqOQYZPGmA1/IBooCwrS/lnYlBhGBq78okGR4Tr/j1o7KHDpw0MO
XYPSU0ztMeWr9FKfHzqms3hf4nJvqeQjoTlhokockLCEXUeIint43gDBPnpSiuo+
KVdmxsdWf/WnjYF/sEPes0UrzsUYTfWnl1kUtA9qsPbkdychaFwdhZoqpd5AUNFJ
rfsyAZyhV0vBiucArASnsJS6Yl4A//Te4OpwFwgQdXnZm5mFOOQ=
=ZYlw
-----END PGP SIGNATURE-----

--r2i646HWWiBtdetJ--
