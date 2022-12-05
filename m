Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F38E4642E7A
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 18:16:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231678AbiLERQe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 12:16:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231592AbiLERQ3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 12:16:29 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB3F1DF11
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 09:16:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E6207C.00000000638E276A.00001B4D; Mon, 05 Dec 2022 18:16:26 +0100
Date:   Mon, 5 Dec 2022 18:16:26 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page uri.7
Message-ID: <20221205171626.GG5000@Debian-50-lenny-64-minimal>
References: <20221204090719.GA902@Debian-50-lenny-64-minimal>
 <20221205170925.meppalvtfqsoe4vj@jwilk.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-6989-1670260586-0001-2"
Content-Disposition: inline
In-Reply-To: <20221205170925.meppalvtfqsoe4vj@jwilk.net>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-6989-1670260586-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Jakub,
On Mon, Dec 05, 2022 at 06:09:25PM +0100, Jakub Wilk wrote:
> * Helge Kreutzmann <debian@helgefjell.de>, 2022-12-04 10:07:
> > Issue:    Gopher selector string =E2=86=92 Gopher type selector string?
>=20
> No, it's just "selector", not "type selector".
> See RFC 4266, section 2.1.
>=20
> (Can we add that RFC reference to the man page, so that's it's easier to
> find?)

A little bit up in that page it says (several similar times):
msgid "gopher://I<ip_server>/I<gophertype selector>"
                                     ~~~~~~~~~~~~~
Thus I assumed, it should be "gopher type selector" here as well.=20

Looks a little confusing.

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-6989-1670260586-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOOJ2oACgkQQbqlJmgq
5nBxEw/+OklkNJvPph+g6DydtmWvrtJEu5FFF99O/xouNKj99HJ2UmrqAglK39xT
EhsQQZ76FrnQC8/dpg7lk/10fLFHHhkNLvw1Lv315MqzmW98nBhtMgpGjOuJjAkd
Z/ctYx15vTjaJeaQ9Uz7oXQSL+3PwCVTRW+Ej8r/+DNA2K4VN6ASbiIZQadfETA5
7XRVfo0oIc6dNuokG0IDgUtPJNdVXvRGiLwiQhA63o1y0ZQV7wwJbKnJUkajHzwU
3LJk6Bq5Vkb4qwfbECEe8GhE0lIZzsO4qtEaHdup79XkeEBhOnwdXTL5HAcqu4V0
CZ2nGR3YSlG/PagDb+TybVgEpwb8NA0g2ddL797+Vav7K67fx/5dJFUqzaJTBti9
Lv88aKvSYXfO1lEsYAyCL6vTfmgoFbi82Z95uhKdhpzR0svpJqsFltTNLrRKPwNB
p92V1AAoSYg8PKPp4xLSjMIz+eLrxMQDq+tgdID27yGAtWaQzKv+/mjspabPDbly
+6wlx3giztYpoqKYUcqDtzqfVyaKqItmF9oWosSUGMrq3M4dceiGpquInzLGYfoS
cF2/EH+ACpIX30EPvORJBcecLYDveb2p6ZRBhZuUum/0zC0WhsFXx5i3srl94LI6
vLYy6TDTy4PwQeyVBm3ZnqAzezk5W5ih596hE0kzqFojzXR1tPE=
=LSfK
-----END PGP SIGNATURE-----

--=_luckmann.name-6989-1670260586-0001-2--
