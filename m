Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44E8B676D73
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 15:12:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbjAVOMc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 09:12:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjAVOMb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 09:12:31 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77578CDC0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 06:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=ixlVGmLuMKU2nwdnSifMXSM3wH7qyX6OsmVPzo31mk8=; b=pFHjcy/kSEurqwv23TSdsX2drW
        goXRRl1/6OSVjnK5wvc0kk4SO0zmwqjXHfbJcsxbRz+wHD9SvsBzfVmrmEiGKigZmKi4V5/HJEwXu
        sZnRjwKielHw7mtJPiIS3tG+yifvrpoXU0UcCtSeqDH+fLgTqxzSTDkYO33sfPgWsWEvyC5BbFeNw
        vvZcGKaFnX1prakTRQcICKS9lGLHM8rjLbdHRRnJEodzIhmznW9xVPinR95vUnKYlxbGxh6PPC7DC
        hmRTi/enrJTGJ/QiWhmXUATTSrJ2nUaZ0KuTkjCVXpHqnsjzD5kYKDpqhE8XLStOJIbXkkh0HWa5R
        8fHy7evw==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pJb4z-00EL6i-GC; Sun, 22 Jan 2023 14:12:18 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org, Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        'linux-man' <linux-man@vger.kernel.org>,
        Eric Blake <eblake@redhat.com>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous union
Date:   Sun, 22 Jan 2023 14:12:15 +0000
Message-ID: <1700067.kFXvDKlZ41@portable-bastien>
In-Reply-To: <c43e0f50-4988-2068-3607-8190747b540f@gmail.com>
References: <20230120134043.10247-1-alx@kernel.org> <2611573.oxQNTHoq5J@portable-bastien>
 <c43e0f50-4988-2068-3607-8190747b540f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart11878771.goHVSYFfhX";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart11878771.goHVSYFfhX
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
Date: Sun, 22 Jan 2023 14:12:00 +0000
Message-ID: <1700067.kFXvDKlZ41@portable-bastien>
In-Reply-To: <c43e0f50-4988-2068-3607-8190747b540f@gmail.com>
MIME-Version: 1.0

Le samedi 21 janvier 2023, 14:30:11 UTC Alejandro Colomar a =C3=A9crit :
> Hi Bastien,
>=20
> On 1/21/23 14:30, Bastien Roucari=C3=A8s wrote:
>=20
> [...]
>=20
> >> Ahh, indeed it seems to be UB.  It's in the same 6.5.2.3/6:  there's a
> >> requirement that the information about the union is kept in the functi=
on in
> >> which it's accessed.
> >>
> >> The standard presents an example, which is a bit ambiguous:
> >>
> >>        The following is not a valid fragment (because the union type i=
s not
> >> visible within function f):
> >>
>=20
> [...]
>=20
> >>
> >> I don't know what's the intention if the union type was global but the=
 variable
> >> `u` was still not seen by f().  But it seems GCC's interpretation is U=
B,
> >> according to the test we just saw.
> >>
> >> The solution that I can see for that is making sockaddr also be a unio=
n.  That
> >> way, the union is kept across all calls (since they all use sockaddr).
> >>
> >> struct sockaddr {
> >> 	union {
> >> 		struct {
> >> 			sa_family_t  sa_family;
> >> 			char         sa_data[14];  // why 14?
> >> 		}
> >> 		struct sockaddr_in   sin;
> >> 		struct sockaddr_in6  sin6;
> >> 		struct sockaddr_un   sun;
> >> 	};
> >> };
> >=20
> > No the solution is to avoid sockaddr and mark as deprecated.
>=20
> Declaring `sockaddr` as deprecated means deprecating also:
>=20
> accept(2)
> accept4(2)
> bind(2)
> connect(2)
> getpeername(2)
> getsockname(2)
> recvfrom(2)
> sendto(2)
> getnameinfo(3)
>=20
> which use the type in their prototype.
>=20
> Also, other types such as `addrinfo`, which contain `sockaddr` would also=
 need=20
> to be deprecated, which would itself require deprecating:

No because this function will take a opaque transparent union pointer. I me=
an only raise=20
a warning when user declare a variable (storage) of struct sockaddr...
>=20
> getaddrinfo(3)
> freeaddrinfo(3)
>=20
> Since addrinfo is itself contained in other structures such as `gaicb`, w=
e would=20
> also need to deprecate those, which would in turn require deprecating mor=
e APIs:
>=20
> getaddrinfo_a(3)
> gai_error(3)
> gai_cancel(3)
>=20
> And maybe I left some.  This feels like nuking the entire networking API,=
 which=20
> I don't see happening soon.
>=20
>=20
> Otherwise, we need to come up with a solution that keeps these APIs compa=
tible=20
> with whatever new type we suggest using.  Changing them to use `void*` in=
stead=20
> of `sockaddr*` would be possible, but would decrease type safety consider=
ably,=20
> so there should be a good reason for that.
>=20
> Suggesting to use always `sockaddr_storage` but using `sockaddr` in the f=
unction=20
> parameters keeps the current not-so-nice casting issues, which are not Un=
defined=20
> Behavior per se, but not ideal either (in fact, I don't think `void*` is =
much=20
> worse than code full of casts).  And it would also be error-prone, since =
users=20
> could get the idea that `sockaddr` can be used safely, since it's what ge=
ts=20
> passed as the parameter.
>=20
> > The problem it should be part of union without raising a warning each t=
ime we use a safe type...
>=20
> I don't understand this; please detail.

the transparent union will include sockaddr, thus even if we use it correct=
ly raise a warning...
>=20
> >=20
> > The other solution is to render public  and ABI stable the type here
> > https://github.com/bminor/glibc/blob/ae612c45efb5e34713859a5facf9236830=
7efb6e/socket/sys/socket.h#L78
> > under for instance sockaddr_ptr and sockaddr_const_ptr
>=20
> [[gnu::transparent_union]] (used in that link) seems like a "the design o=
f this=20
> interface is bad, sorry, this workaround will just make it work".  I gues=
s it=20
> just works, and probably it's the reason that so much undefined behavior =
hasn't=20
> exploded so far.  However, if we can solve this using core language featu=
res,=20
> I'd go that way.

It solve the problems and could be used without the  [[gnu::transparent_uni=
on]], c++17 support transparent union.

The transparent union should also include pointer to sockaddr_storage and b=
luetooth socket.

Bastien
>=20
> >=20
> > Moreover this are some patch arch by arch
> > https://sourceware.org/legacy-ml/libc-alpha/2016-02/msg00340.html that =
should be made default
> >=20
> > Bastien
> >=20
> >=20
> >=20
> >>
> >> struct sockaddr_storage {
> >> 	union {
> >> 		sa_family_t          ss_family;
> >> 		struct sockaddr      sa;
> >> 	};
> >> };
>=20
> Hmm, this isn't still perfect.  Since the APIs get the sockaddr, this uni=
on=20
> information would be lost.  `sockaddr` needs to be the type that is decla=
red.=20
> `sockaddr_storage` should just die; there's no way to make it compatible =
with=20
> APIs getting a `sockaddr`.  The attribute `transparent_union` is the only=
 way to=20
> use is safely.
>=20
> Cheers,
>=20
> Alex
>=20
> >>
> >>
> >> With this, sockaddr_storage becomes useless, but still usable.  New co=
de, could
> >> just use sockaddr and use the internal union members as necessary.  Un=
ion info
> >> is kept across all function boundaries.
>=20
> --=20
> <http://www.alejandro-colomar.es/>
>=20


--nextPart11878771.goHVSYFfhX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPNRDAACgkQADoaLapB
CF+5bA//ZuSbiMiHgmg2AOJQlFO6NEFUq2Wb29+MOoeGMABW/BwBZh7+dRL/x9FB
+OYWt96aOyQJ1FOwDan8YgAehInvAM/8XogQAMJ0ZzGPatkklJPiFZJkKq8Sj1Ny
2XsiyKHjqanrqGYPqwNhTOVsNoYKpgdNmCyDdm470xfRfCBAqXjt0PcQPgs+UpEZ
xn1ZfC6ld4Ge3vEYN16aWgNDT+RbNfKep3e1LJb+DTIwBN/c2jVXNCBfI+L0eMpr
KTdYY+FwpFjbZjGQR/WvEuiJ4E2CsVrG/oQAi4IcW4QXj25gFjmbQKo+98Dy5Zp0
aXUIJ76FHL5bWwt6gyN03SN8qyEzd5XtYV+CKca9OUSOkKr3jAL1Z0tAJx5+DgmZ
igz/ke/PpL/4wLhXjTUcngEnjXnV29ogCcKqq9mv2FIkBirOAgbRHXlZVs295RDQ
88aZYLfyBqPqpsK/VTwS27FxlP9/hdTTtgN2Ctnpmnu6GYZJRuWa/SH7a2TITg7g
ohn5zh6/kgwPcQFLy3DcHK0BRDE3iuytLVb80vuVYgnnxpOMd4uxlv3h0u/62693
O8QEhKd2M/9BfvRFlCu9iu2hb9fRc1FrBan3oK/yBTLdcyIhpuf3hrfRp7QKMCqM
ZGVBzeoMiu/++QWaAWMvFM9o4Gc2k5pHv1dkChrEutZcy6UjPRA=
=yABu
-----END PGP SIGNATURE-----

--nextPart11878771.goHVSYFfhX--

