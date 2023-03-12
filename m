Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 675A16B633A
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 05:57:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjCLE5k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 23:57:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCLE5j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 23:57:39 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 332FB51F91
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 20:57:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5403E.00000000640D5BC0.000056DC; Sun, 12 Mar 2023 05:57:36 +0100
Date:   Sun, 12 Mar 2023 05:57:36 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page session-keyring.7
Message-ID: <20230312045736.GB7927@Debian-50-lenny-64-minimal>
References: <20230311171356.GA4805@Debian-50-lenny-64-minimal>
 <d0d766d5-2482-9c1a-21f3-5d4dd2a8080e@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-22236-1678597056-0001-2"
Content-Disposition: inline
In-Reply-To: <d0d766d5-2482-9c1a-21f3-5d4dd2a8080e@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-22236-1678597056-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sat, Mar 11, 2023 at 11:24:53PM +0100, Alejandro Colomar wrote:
> On 3/11/23 18:13, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    PAM =E2=86=92 B<PAM>(7)
> >=20
> > "The session keyring is a keyring used to anchor keys on behalf of a "
> > "process.  It is typically created by B<pam_keyinit>(8)  when a user lo=
gs in "
> > "and a link will be added that refers to the B<user-keyring>(7).  Optio=
nally, "
> > "PAM may revoke the session keyring on logout.  (In typical configurati=
ons, "
> > "PAM does do this revocation.)  The session keyring has the name "
> > "(description)  I<_ses>."
>=20
> I think I prefer not doing this change, since we already have a reference
> to PAM(7) in the SEE ALSO section, and it would clutter the description
> to add more formatting to it.  I'm doubting.

Ok.

Just that in HTML view, these are often turned into hyperlinks, thus
people could easily continue reading (like in any HTML article). But I
don't know how many people are actually doing this.

(And of course knowing that PAM(7) even exists in the text is not too
bad, either).

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-22236-1678597056-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmQNW78ACgkQQbqlJmgq
5nD3qw//TG2cyw0cYJXORSxUhksqHQKORMsbqwUZ16Y4ZFjZBQDPnqay4IV4Uf5X
1+P0btn8cC6bIfiE2RDNTmM0sSWjdUjS7JK/+S40I23pe6Hk0kJAgrUSW8cpyG0P
P2lUR/lW+Uo8ehyz4N4QohipeGI9qUvfeHYhrxhHGZkrkkBVOiBQfcqOwn0eRRz2
tDcC7qUTL8CdP6RCcV7zQ+BQp7jqHR27upAvgFj8doZTjvg+i4UABrMRLqYz6bgV
rGQ4TReotnOytyVj8WfYMPQWsp2SApE62/Cefau3+JuwQmkfUa3D9J8fw7324dNW
hN0twaJ+upZtxcHfaQP0IGggoZUWW1oH5xneE8ZdmLuKyzTKKXLDOC/Vnqr2H6xb
oOtU2VbKcdYTBWrJ91WINFrvXykkMMBqMyRbCV85a+CR0ItqmDl5rzPVee/gdRfa
p/3rWQUmMpXIIdu7/iX3N4E1Ma1CxcjqkW6KyMbSIDUgpmAmIzRqlQ37AUS+6+Yb
XBqi8Vw1IJ+8KG+e07tWar46+AcukqbcHdOdVisebO+Xg3YU2nAP56IvkqIxzY+u
Ic7y6TdRF9/TesMoEMwsrjv3Hvr9q1+2Eanp0fgo3xJbnLqVZaYNjDHY3OpWcVEg
MXi3Zie8v1weLmBZJfMQ57LtQghWwrPji624CUo8amTfWDY6drU=
=vg7U
-----END PGP SIGNATURE-----

--=_luckmann.name-22236-1678597056-0001-2--
