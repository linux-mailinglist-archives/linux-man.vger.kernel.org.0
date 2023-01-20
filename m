Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BADE7675F15
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 21:47:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbjATUrE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 15:47:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjATUrD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 15:47:03 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6417694C98
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 12:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=kHGH+pZ/T9aySQEVIKrdS0XX8uvW58X2l6sKhuXSoi8=; b=hP3FK3yML73Q/0EJdoTGUtHgBd
        cksA2V54CSqKE5nQR7suAZnbHvHnzJXVizn9VhHaXvCk67fbDXZ4+egebZ7e+7tWzW1rD2zqOXxYI
        L9XQTUJi/Yb5lkaieExZfnK59jomRQo3zU88sjnWJAqQNnFqZqmY1TuC4CB6bHhGCs2PJrpQjKJws
        u9ktaR/YPsFD/EelPAAveVML6MFGQJC/+smpkkXtW7F1+D4Inadi5WiLDMtxffStjOb3rk/FU/N8H
        m/RFG2J6GqgbCW70yJs2DMIQwjU856oLkg4zfJ+MWPfo16JLLSwPZB5x+RwZReCkGgzLYJSu8iuyD
        /0Q26ipA==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pIyHn-00CpiJ-JO; Fri, 20 Jan 2023 20:46:57 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     libc-alpha@sourceware.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, gcc@gcc.gnu.org,
        Joseph Myers <joseph@codesourcery.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous union
Date:   Fri, 20 Jan 2023 20:46:54 +0000
Message-ID: <2885282.DR2gb7e7pQ@portable-bastien>
In-Reply-To: <0646afe5-f726-dd27-9058-17bd042279d5@gmail.com>
References: <20230120134043.10247-1-alx@kernel.org> <5187043.CeDsVVrsAm@portable-bastien>
 <0646afe5-f726-dd27-9058-17bd042279d5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3098344.DmojtE1xIS";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart3098344.DmojtE1xIS
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
Date: Fri, 20 Jan 2023 20:46:39 +0000
Message-ID: <2885282.DR2gb7e7pQ@portable-bastien>
In-Reply-To: <0646afe5-f726-dd27-9058-17bd042279d5@gmail.com>
MIME-Version: 1.0

Le vendredi 20 janvier 2023, 20:38:32 UTC Alejandro Colomar a =C3=A9crit :
> Hi Bastien,
>=20
> On 1/20/23 21:32, Bastien Roucari=C3=A8s wrote:
> [...]
>=20
> >> diff --git a/bits/socket.h b/bits/socket.h
> >> index aac8c49b00..c0c23b4e84 100644
> >> --- a/bits/socket.h
> >> +++ b/bits/socket.h
> >> @@ -168,9 +168,14 @@ struct sockaddr
> >>  =20
> >>   struct sockaddr_storage
> >>     {
> >> -    __SOCKADDR_COMMON (ss_);	/* Address family, etc.  */
> >> -    char __ss_padding[_SS_PADSIZE];
> >> -    __ss_aligntype __ss_align;	/* Force desired alignment.  */
> > no this is not correct you break ABI by reducing size
> >> +    union
> >> +      {
> >> +        __SOCKADDR_COMMON (ss_);	/* Address family, etc.  */
> >> +        struct sockaddr      sa;
> >> +        struct sockaddr_in   sin;
> >> +        struct sockaddr_in6  sin6;
> >> +        struct sockaddr_un   sun;
> >> +      };
> >>     };
> >=20
> > Correct one structure is
> >=20
> > struct __private_sock_storage {
> >      __SOCKADDR_COMMON (ssprivate_);   /* Address family, etc. */
> >      char __ss_padding[_SS_PADSIZE];
> >      __ss_aligntype __ss_align; /* Force desired alignment. */
> > }
>=20
> What is this structure for?  I expect that it's for declaring a wide-enou=
gh and=20
> correctly aligned type, but the union containing all the other types alre=
ady=20
> guarantees a size as wide as any other sockaddr_* and with the widest ali=
gnment.
>=20
> Also, any member that is necessary for superalignment or padding could be=
 added=20
> at the end of sockaddr_storage, after the anon union; you don't need the =
extra=20
> struct, I guess.

No we need it, max of structure is struct sockaddr_un   sun and is size of =
108.
sizeof(sockaddr_storage) is 128...

Did you see the line of the kernel source I send you ? kernel expect size o=
f 109 for un aka we should pad by a nul byte...

I think it is safer in a first step, to keep the old structure... Maybe lat=
er simplify

Did you also see=20
https://github.com/bminor/glibc/blob/master/socket/sys/socket.h#L63

Bastien


>=20
> Right?
>=20
> >=20
> >   struct sockaddr_storage
> >     {
> >         union
> >        {
> >           __SOCKADDR_COMMON (ss_);       /* Address family, etc. */
> >          struct sockaddr      sa;
> >           struct sockaddr_in   sin;
> >          struct sockaddr_in6  sin6;
> >          struct sockaddr_un   sun;
> >          struct __private_sock_storage _private;
> >        };
> > };
> >=20
> > May it could be dropped later using align construct for modern C and pa=
dding
> >=20
>=20
> Cheers,
>=20
> Alex
>=20
> > Bastien
> >>  =20
> >>  =20
> >>
> >=20
>=20
> --=20
> <http://www.alejandro-colomar.es/>
>=20


--nextPart3098344.DmojtE1xIS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPK/a8ACgkQADoaLapB
CF/DZw/9HGHRqm/ww8+qw7PrwhgWXVm3MyXs2oMoQreLQtGAcjmheRc20CGHdZL0
0jlXj+Lukd/WG10F/cZjuwAhlZrpxFf6sS5uv/ulVY7fc/4Vnyv/B61qOVQgGMYo
4MnmIZkbHPZyw2Fwg1hq8MiHI+aBG7GbGgCY+ftl1dUqFoIQ3w5ffcZxV5GrjgMr
Ui3ZiqRaJT4jBdz3izd1fiM32rGlj3AXI7E3/bohXnVwFtwkkyoozRROkte+IBWw
n/U7SN1sD3ZDQ1xuNLAFzctXoK7IvkgMatdWN53HhFOFDMafXsjDeVelFWTO5gDY
/U3SM6hkcTpWH4xC6/wpbx+Wa4WuAHwZcE+bwSLnIyDZ1tHhoZPLFB/8yTzn0RWq
zTyVF0biblxnFCw3wyTyMI8REHURItuSczMAjXRifKbebuAzxk+xMah6uk7YbrX5
5m/3x33jsaDIZe+StSmCjYJeG5ymrzw6k1amHjVPj7C0q8guIk2DB5JvQX1lQ8iv
6HYIQpZKc+xRajQRxk9MeV/UX22Cy7DSsfemjVCTFaWN2p9OJtQ6d+QBmGVmS7R3
/GvU9HQdgRP9dqD8fRUmahAvQtkWU+Md0Q9DYMRw+i1Y+c7erksxwm4iySfPenIk
eFkVK6BocPugWWj69CTOlnr0uHjllP3HC4uJ+FVhujucM8Jd4No=
=M0Fu
-----END PGP SIGNATURE-----

--nextPart3098344.DmojtE1xIS--

