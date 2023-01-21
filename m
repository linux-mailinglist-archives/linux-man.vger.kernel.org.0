Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA43967667B
	for <lists+linux-man@lfdr.de>; Sat, 21 Jan 2023 14:31:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbjAUNbJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Jan 2023 08:31:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjAUNbJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Jan 2023 08:31:09 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA81747435
        for <linux-man@vger.kernel.org>; Sat, 21 Jan 2023 05:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=/3ZEY5b3Yh7fd6wcPIhni4cwtMp87Hrjo0J6/+k6muM=; b=H5Gk+tJn+bN/pTqxmQJMdWKhNo
        9SidlUVLQI0Q5jiK10c3MYF8kGZTYz8U1mp4bARvX51o0csv2G6uY+vIQZJM8om9TB+glBqHUagGf
        dKmFl0Rx2QlT+ZrGz7aYXpl5r3zs0L2d4o31BKVln+iA3CLOQozGQHgnyZ7DygMpHRMKfRQeZi+hW
        CPEC8JbbaQvyKVPhBM1H6iY3icjCdXTNmsO6YemNdT3OZu7cGZiqX2344UEMlWNEIktSgM8gipQ/p
        SdubbfYz0AgX7YcM2vURW8qMM2DuMm4JNqAVU9nj1xt9l7I8NZjrKhfu6AoNuGwwEL0i8CY6UPJop
        VI8TUZSA==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pJDxL-00DRsp-55; Sat, 21 Jan 2023 13:30:52 +0000
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
Date:   Sat, 21 Jan 2023 13:30:49 +0000
Message-ID: <2611573.oxQNTHoq5J@portable-bastien>
In-Reply-To: <0eaedb18-54df-9c2d-49ab-397fd6b4f63a@gmail.com>
References: <20230120134043.10247-1-alx@kernel.org>
 <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
 <0eaedb18-54df-9c2d-49ab-397fd6b4f63a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart17815402.U1zkvMzxuu";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart17815402.U1zkvMzxuu
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
Date: Sat, 21 Jan 2023 13:30:34 +0000
Message-ID: <2611573.oxQNTHoq5J@portable-bastien>
In-Reply-To: <0eaedb18-54df-9c2d-49ab-397fd6b4f63a@gmail.com>
MIME-Version: 1.0

Le samedi 21 janvier 2023, 03:17:39 UTC Alejandro Colomar a =C3=A9crit :
> Hi Zack,
>=20
> On 1/21/23 03:38, Alejandro Colomar wrote:
> > Hi Zack,
> >=20
> > On 1/20/23 20:25, Alejandro Colomar wrote:
> >> [CC +=3D GCC]  // pun not intended :P
> >>
> >> Hi Zack,
> >>
> >> On 1/20/23 19:04, Zack Weinberg wrote:
> >>> On Fri, Jan 20, 2023, at 8:40 AM, Alejandro Colomar wrote:
> >>>> The historical design of `sockaddr_storage` makes it impossible to u=
se
> >>>> without breaking strict aliasing rules.  Not only this type is unusa=
ble,
> >>>> but even the use of other `sockaddr_*` structures directly (when the
> >>>> programmer only cares about a single address family) is also incorre=
ct,
> >>>> since at some point the structure will be accessed as a `sockaddr`, =
and
> >>>> that breaks strict aliasing rules too.
> >>>>
> >>>> So, the only way for a programmer to not invoke Undefined Behavior i=
s to
> >>>> declare a union that includes `sockaddr` and any `sockaddr_*` struct=
ures
> >>>> that are of interest, which allows later accessing as either the cor=
rect
> >>>> structure or plain `sockaddr` for the sa_family.
> >>>
> >>> ...
> >>>
> >>>>      struct new_sockaddr_storage  nss;
> >>>>
> >>>>      // ... (initialize oss and nss)
> >>>>
> >>>>      inet_sockaddr2str(&nss.sa);  // correct (and has no casts)
> >>>
> >>> I think we need to move slowly here and be _sure_ that any proposed c=
hange
> >>> does in fact reduce the amount of UB.
> >>
> >> Sure, I'm just sending the patch to polish the idea around some concre=
te code.=20
> >> While I checked that it compiles, I didn't add any tests about it or a=
nything,=20
> >> to see that it's usable (and Joseph's email showed me that it's far fr=
om being=20
> >> finished).  I expect that this'll take some time.
> >>
> >>
> >>>  This construct, in particular, might
> >>> not actually be correct in practice: see https://godbolt.org/z/rn51cr=
acn for
> >>> a case where, if I'm reading it right, the compiler assumes that a wr=
ite
> >>> through a `struct fancy *` cannot alter the values accessible through=
 a
> >>> `struct simple *` even though both pointers point into the same union.
> >>> (Test case provided by <https://stackoverflow.com/users/363751/superc=
at>;
> >>
> >=20
> > [...]
> >=20
> > I was wrong in my guess; the correct output is 3/3; I think I had read =
it the=20
> > other way around.  So yes, I believe it's doing what you just wrote the=
re, but=20
> > can't understand why.
> >=20
> > I reduced @supercat's example to a smaller reproducer program (I couldn=
't=20
> > minimize it any more than this; any further simplification removes the =
incorrect=20
> > behavior):
> >=20
> > #include <stdio.h>
> >=20
> > struct a { int y[1];};
> > struct b { int y[1];};
> > union u  { struct a a; struct b b; };
> >=20
> >=20
> > int read_a(struct a *a)
> > {
> >      return a->y[0];
> > }
> >=20
> > void write_b(struct b *b, int j)
> > {
> >      b->y[j] =3D 2;
> > }
> >=20
> > int use_union(union u *u, int j)
> > {
> >      if (u->a.y[0] =3D=3D 0)
> >          write_b(&u->b, j);
> >          //write_b((struct b *)u, j);   // this has the same issue
> >      return read_a(&u->a);
> >      return read_a((struct a *)u);      // this has the same issue
> > }
> >=20
> > int (*volatile vtest)(union u *u, int j) =3D use_union;
> >=20
> > int main(void)
> > {
> >      int       r1, r2;
> >      union u   u;
> >      struct b  b =3D {0};
> >=20
> >      u.b =3D b;
> >      r1 =3D vtest(&u, 0);
> >      r2 =3D u.a.y[0];
> >=20
> >      printf("%d/%d\n", r1, r2);
> > }
>=20
>=20
> Ahh, indeed it seems to be UB.  It's in the same 6.5.2.3/6:  there's a=20
> requirement that the information about the union is kept in the function =
in=20
> which it's accessed.
>=20
> The standard presents an example, which is a bit ambiguous:
>=20
>       The following is not a valid fragment (because the union type is no=
t=20
> visible within function f):
>=20
>            struct t1 { int m; };
>            struct t2 { int m; };
>            int f(struct t1 *p1, struct t2 *p2)
>            {
>                  if (p1->m < 0)
>                          p2->m =3D -p2->m;
>                  return p1->m;
>            }
>            int g()
>            {
>                  union {
>                          struct t1 s1;
>                          struct t2 s2;
>                  } u;
>                  /* ... */
>                  return f(&u.s1, &u.s2);
>            }
>=20
> I don't know what's the intention if the union type was global but the va=
riable=20
> `u` was still not seen by f().  But it seems GCC's interpretation is UB,=
=20
> according to the test we just saw.
>=20
> The solution that I can see for that is making sockaddr also be a union. =
 That=20
> way, the union is kept across all calls (since they all use sockaddr).
>=20
> struct sockaddr {
> 	union {
> 		struct {
> 			sa_family_t  sa_family;
> 			char         sa_data[14];  // why 14?
> 		}
> 		struct sockaddr_in   sin;
> 		struct sockaddr_in6  sin6;
> 		struct sockaddr_un   sun;
> 	};
> };

No the solution is to avoid sockaddr and mark as deprecated. The problem it=
 should be part of union without raising a warning each time we use a safe =
type...

The other solution is to render public  and ABI stable the type here
https://github.com/bminor/glibc/blob/ae612c45efb5e34713859a5facf92368307efb=
6e/socket/sys/socket.h#L78
under for instance sockaddr_ptr and sockaddr_const_ptr

Moreover this are some patch arch by arch
https://sourceware.org/legacy-ml/libc-alpha/2016-02/msg00340.html that shou=
ld be made default=20

Bastien



>=20
> struct sockaddr_storage {
> 	union {
> 		sa_family_t          ss_family;
> 		struct sockaddr      sa;
> 	};
> };
>=20
>=20
> With this, sockaddr_storage becomes useless, but still usable.  New code,=
 could=20
> just use sockaddr and use the internal union members as necessary.  Union=
 info=20
> is kept across all function boundaries.
>=20
> Cheers,
>=20
> Alex
>=20
> --=20
> <http://www.alejandro-colomar.es/>
>=20


--nextPart17815402.U1zkvMzxuu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPL6PoACgkQADoaLapB
CF9ZNQ/9GKm0P7RdzXrXurdp01YSAgL0a862YZ9DnrEiY5FwTJOtwEl319Bfgeze
SNEAPfMJEfE1tDxAP+j6WO0iHHGQZKdD4j5QAopRszE4FNK/CZya9EJlNwxf3TXA
hoB4VNmDkJPcHeff/BU0ZXj5UQY4xJ/QwQd6huX95fhLVXR6a78D2YT7YxrTi+R3
mprVU87fBhc+p9/gF15HzOMzwghO1bRPPMoFYdLfM5h6omifKetzp4LxJDk3m0QN
lCdYRMF2CM9yMQDYBIZsFGP0v37Rx7xyMXpXfie9F6T7ZpAkNxoAwCgORD0pfFDj
2f/Q7ufZVLqD9iqen9uL3jXS2NKrSkjzBk0tx65OoF6YQVVq/aDGGrkpmRMv0V/5
cFJ085UdI75KN+4dBRSC+vrFJLCBSKZN5g7T/xozpTisN1bszLTXlhITbgNFnDY2
6rb2pfw5KvFF7XMAp72Ou2dopDWf3B+IU+QEec85NofuvwoD8enldLTLRV7/ns9k
ECRqBDQiurZ8QHFe0l8KxsixlQ4Npm+DzD57byHgAWIPnSlnH/aRNzeSiVjCViNm
4G9gK3x9dqyAg6NkeIyQMJis/Yf+zsfqnP2O52nZwPIuckBcYZ9VollqHS7sEjR8
5fwxgPQMEtI52esQwXMfI2Yu6YTjHchc+ojhO+pu7mFQv9d8tMc=
=WIsB
-----END PGP SIGNATURE-----

--nextPart17815402.U1zkvMzxuu--

