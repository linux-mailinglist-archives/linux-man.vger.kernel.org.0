Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54FFF7DE40E
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234050AbjKAPm4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:42:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232759AbjKAPmz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:42:55 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B65AE4
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:42:47 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F4040C433C8;
        Wed,  1 Nov 2023 15:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853366;
        bh=VkC+Yzruhg3Ge0kC7CHJhlWYvfyXLeURvLj+xWsWico=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UrnIUqF2zZoNCCuAVCwJz1XQLKSvIs9XV4YhjUwn9h6HZ48gHwIJXdTqkCC6/3TKX
         ykwz41QKcPd6W4VHfK6YmgII/yrUcIDqGoc4tPzfk4V8dfM58oncNqxzM51ROVE2aw
         F/FaC9WMXUb6KNzqBsxK1OiVNnu6S+8ik+sQTZiHy5+MsruL49MHMPR0LAYZkTgXvo
         4YCqXTBVLNw36TCrjM1hCPVSnhLePGBlzSif6II62cgZFfrf1tBbb/Dthmx9d/rNA+
         4V5W2/tv2jprB+nqQ91Ds8AAWSBoGAa2U7yhj5WGSxwKxeDUNoZhXZfsFjN6/BzcAs
         EX+MFD7uIY7BQ==
Date:   Wed, 1 Nov 2023 16:42:43 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getnetent.3
Message-ID: <ZUJx80zP4Ouvh7i9@debian>
References: <ZUJaYzJ7SNbwDAFr@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="1mkZY3kbWumO5ZVF"
Content-Disposition: inline
In-Reply-To: <ZUJaYzJ7SNbwDAFr@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--1mkZY3kbWumO5ZVF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:42:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getnetent.3

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    NULL-terminated =E2=86=92  NUL-terminated
>=20
> "A NULL-terminated list of alternative names for the network."

Seems invalid.

--=20
<https://www.alejandro-colomar.es/>

--1mkZY3kbWumO5ZVF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcfMACgkQnowa+77/
2zKhDxAAlYp6gb9zl4Bq+mgrgtKok3j+LRYH5+RQNhx/XxQUHlHLfi7gaONOcILz
tfUUO97NLhpfB0f8PYcg2UzLH7Hy5hBVGvFz67uk8KPbzU9b+VRdqdZeFh1yb7Ur
qFAq85ZCvfxC4Pe0sOV+nnFNQouG0E/QsDNXTnQi4q+OugXQIi8aTbVwvK6OBlyj
tZwB2FX27FO4I61VztvcPm6xOmNqMiEYf3s/G9/IOMRH/PlFay4d37OEYYlI5KNk
gafWe6gdmpU0wBkVMq6oc/1tjAx1OFvSMTrD/7F9SSVrgOKTQmAJpWOOoiDF+2KD
u2luxdfUbrw5ClMg9VjCNi3AOGboh+Sf3iwd/yXOedKEGktqGGjik1tWxKLa6fHJ
TZ93RVk9BTu+WTG9m/HPsbOTKaBPUb1V4phfBgf4nxwUsvkGQo/DvL/uoqdNgwzS
wtM/nZVH3MOtF5YT7IalyUGbUZPYaemeFzUweXk3fW7NF9nvkEM8KmEMuuD+PlOS
HPG8fAEKhV+xf4vXN0AniQpNd14VOKGkEAoAAJ6iWJJzsUi+BbLRHSDuyyjnwtXu
HgXLKT5VvvmOPraRaGsGOycwuggTxuTIOe5xo0onlsNBSaq7UTYCQ3KSl+fw4zoF
QEUsdAq0BzFa7fC626G3OHcTMAIraf6RuQS85I5DDydx2IuHRO0=
=1RH3
-----END PGP SIGNATURE-----

--1mkZY3kbWumO5ZVF--
