Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4AFF7DE38F
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:37:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230091AbjKAPJN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:09:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjKAPJM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:09:12 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E947810F
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:09:06 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3C70C433C7;
        Wed,  1 Nov 2023 15:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698851346;
        bh=Qpzpt6vpcsnmmdqtYdsBJPE2+DuqDpfYw9ON1nv+c34=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XZEAlictawTjmb3VpaM5CIrNX04oa104reDqU62c3PnChd+fXEqyzoBDX2ENYmXPg
         DXRFkkoGdYokjqpUkALsfnDOK3RLOcXJME/4I42upHpZaVCP1yWYMobmcW1cOHXL4F
         NBk7+oIWxrGPO2ALmsXWge5L29z57bQR120/Li/k84/H3BAsJjRXzK/cJu8PV8bJMM
         bfC9I7AYq1hhZ0F7GX2RYMkaK50Nl9C4cDr2S7inhgiYV5P/BsZcwsO4GLWuPGM+ui
         AS2VTxIGWTL0cUdlriN++w/CwCm4WHvAfM0dXG3J71goSZOYXzuxnONYR9FOEefzKK
         DedHz41m0RyBQ==
Date:   Wed, 1 Nov 2023 16:09:03 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page connect.2
Message-ID: <ZUJqDwMZc-lt9R6G@debian>
References: <ZUJaYlK5AZeTkC-A@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="s4EmmVZuWo2IN+nr"
Content-Disposition: inline
In-Reply-To: <ZUJaYlK5AZeTkC-A@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--s4EmmVZuWo2IN+nr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:09:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page connect.2

On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    connectB<()> =E2=86=92 B<connect>()

Thanks!  Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D74bbcb7126e0c08e5d313852c26d725a28d0372f>

Cheers,
Alex

>=20
> "POSIX.1-2001, SVr4, 4.4BSD, (connectB<()> first appeared in 4.2BSD)."

--=20
<https://www.alejandro-colomar.es/>

--s4EmmVZuWo2IN+nr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCag8ACgkQnowa+77/
2zJ/RhAAhCX+BTaKrheMyBje5nClzk2Wi6eJEabXPGMi3WG6S12k1Fe+XkBh3vmj
4L0b3M0Vz+/BsMc7zMC1xsN4jWgxTxCQ4D7/hUgVL/rMvJ/vWZrQMs3bCZoNbUKw
h5n3HPZl3JW6umQESn6o877MIGypu56tgFPxa1XPGHvEWbKyWJz6FE1j3qq1TIzS
sh0Z4YJNo8EGDxgKyuWboj/jP+HjwBwWf1ljnsjCg9iNqtFgKFwXflMtXIK+cMtG
L/+qEUtxQBXI724SIeuJ0PoEGGFYhaQJ8LCeq7YsxRKERqfTzLnteE2i95Q956mC
1n/saapWF+hj5EDHSRcUfmwthJscUmo53rRQhNgKiqH1sw979gefnpDOlm0sfCQA
kR2hL/WjpiN4fMAbYPIcL0yZHq62ZXHRiRMpIciGnuCp/QJRhJJBFVrY/uxR63xL
dI0/FrbfJs9z7vu33k6lYMgBQHWguGi4OcaP6emBT2XXTU39G3Wf3lokukWYRrzy
ki/fgaLYzKDkFJi6Efd5n+U75vcO9KS/E/a+lD5KeTH/1BXsrOXL7xlzvxf/WhLG
WnTdGHVQ6To1YgUqL0zfUYJtcY5I+YOIn1pAfMHfL4wDlXJmGWCg9iIbnnB/id/7
PUW3H0h1VDBA4ar+ANWW7rZD3g4dLB6SpKui1d/lftzWZEcQyeg=
=HO7/
-----END PGP SIGNATURE-----

--s4EmmVZuWo2IN+nr--
