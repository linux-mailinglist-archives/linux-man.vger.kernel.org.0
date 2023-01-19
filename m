Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9116743F3
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 22:07:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjASVHv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 16:07:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbjASVHZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 16:07:25 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5A0123D83
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 13:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=IKPNpj4cTcbrMuvT3lV8NznvEBYvFcYI8JY23wOsswc=; b=DK16h8KUewntGBZOJjdXSeO1Ek
        mAQiwGmzWkeP7RXiQj0KSzVRjdsEblyPmRs6Iie/KYJzqp3H0IzSMPB65f1C2nSaapmPI/6sDGfqE
        DLurpRrRzsyHVBtxTgU03G3HRz2QOU4a8gU0dw3MpC7VTllMj5Ij0FK8QHK0Ef8KvoCr8opK109lL
        UMxCBPEZPiT6Jujq5YQz/0acV30VEqYfuj84h3L58BWDYrguw/X3VvXkp3f+5FWcjY1JoIFYYr52T
        7Q6bFYbXF5AYUOxEo7vDe+rGQ1OHNBjxpN9+5xDxK2IYmbY3eJJiEbLe4TAksQvtcwJ5av5/zKIld
        6IhnTL3Q==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pIc1F-00Bxi9-8m; Thu, 19 Jan 2023 21:00:24 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Date:   Thu, 19 Jan 2023 21:00:19 +0000
Message-ID: <3299211.1eNo6cvScQ@portable-bastien>
In-Reply-To: <0fdb2d61-db2d-d85c-35e4-ce32b2f36269@gmail.com>
References: <2889739.XEG2VLDMQ1@portable-bastien> <2860541.uBSZ6KuyZf@portable-bastien>
 <0fdb2d61-db2d-d85c-35e4-ce32b2f36269@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9625237.OO9BoV6Jfm";
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

--nextPart9625237.OO9BoV6Jfm
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Date: Thu, 19 Jan 2023 21:00:02 +0000
Message-ID: <3299211.1eNo6cvScQ@portable-bastien>
In-Reply-To: <0fdb2d61-db2d-d85c-35e4-ce32b2f36269@gmail.com>
MIME-Version: 1.0

Le jeudi 19 janvier 2023, 20:19:31 UTC Alejandro Colomar a =C3=A9crit :
> [CC +=3D Zack, glibc]
>=20
> Hi Bastien, Eric, and Zack,
>=20
> On 1/19/23 20:44, Bastien Roucari=C3=A8s wrote:
> > Le jeudi 19 janvier 2023, 12:42:52 UTC Alejandro Colomar a =C3=A9crit :
> > Hi all,
> > [adding Eric Blake from redhat and if I remember well member of POSIX c=
omitee]
>=20
> Thanks.
>=20
> BTW, your post triggered some changes.  I didn't CC to not be too noisy, =
but=20
> since you seem to be interested in it, here are a few things:
>=20
>=20
> -  Suggest deprecating struct sockaddr_storage to glibc:
>=20
> =20
> <https://inbox.sourceware.org/libc-alpha/0f25d60f-f183-b518-b6c1-6d46aa63=
ee57@gmail.com/T/>

I do not believe it is broken by design. It should be used with care and wa=
rning.=20

BTW if we go to the anonymous union way could we add at the end a _null_res=
erved_field. It will help for unix socket and the infamous sun_path could n=
ot end with null...
May be it is too late from an ABI point of view, but for me the posix contr=
act from an ABI point of view is that I said in the note  sockaddr_storage =
 could grow but not be reduced.

 struct sockaddr_storage {
	union {
 		sa_family_t          ss_family;
 		struct sockaddr      sa;
 		struct sockaddr_in   sin;
 		struct sockaddr_in6  sin6;
 		struct sockaddr_un   sun;
 	};
                       char __reserved_null;
 };

sockaddr_storage will do the right thing for sun_path if we initalize with
stuct sockaddr_storage addr =3D {}

>=20
> -  Which caused Zack to update some old stackoverflow answer :)
>=20
>     <https://stackoverflow.com/a/42190913/6872717>
>=20
> -  He made me realize getnameinfo(3) exists, and so I used in place of a =
similar=20
> function that I had implemented recently:
>=20
>     <https://github.com/shadow-maint/shadow/pull/629>
>=20
> -  And while reading the manual page for getnameinfo(3), I realized it wa=
s=20
> missing some missing _Nullable qualifiers:
>=20
> =20
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D39017f90644141a8bd297c783201e04b238769fb>
>=20
>=20
> BTW, Zack, glibc could add [[nonnull(1)]] for the prototype.  Should I se=
nd a=20
> patch adding it to the header?
>=20
> >=20
> > Eric to be short posix behavior of sockaddr sockaddr_storage is UB
>=20
> Agree.  Almost all uses of struct sockaddr_storage are UB, and those that=
 are=20
> not UB, are error prone.  stockaddr_storage is bad.
>=20
> > and example supplied are UB. See here:
> > https://pubs.opengroup.org/onlinepubs/009696699/basedefs/sys/socket.h.h=
tml
>=20
> I don't see any usage examples there.  Only a definition.  The definition=
 isn't=20
> bad in itself; it's just that it's unusable.
>=20
> BTW, now we need to check all the man pages that refer to that structure =
and fix=20
> them to not promote UB.
>=20
> >=20
> > I think we could save the day by defining struct sockadd_storage using =
anonymous union (thanks to C11 support),
> >   but it will leave C++. But how can be done...

Ok c++17 allow anonymous union so it is fixable....


> >=20
> >> Hi Bastien,
> >> Hi Bastien,
> >>
> >> On 1/17/23 11:22, Bastien Roucari=C3=A8s wrote:
> >>> Hi,
> >>>
> >>> I have a lot of student that does not use correctly getsockname in ca=
se of
> >>> dual stack.
> >>
> >> Please show some examples of common mistakes, if you can.
> > oh the basic one is to pass a sockaddr_in instead of sockaddr_in6... Or=
 to pass a sockaddr_in6 and do not think that it could be returned an IPV4 =
socket or an Unix stream socket.
>=20
> Understood.
>=20
> >>
> >>>
> >>> May be this kind of discussion should be factorized in  sockaddr_stor=
age (the
> >>> historical note particularly).
> >>>
> >>> i suppose the same should be done for getpeername
> >>>
> >>> I think a safe programming example may be given that accept a socket =
as stdin
> >>> and print information on it. Using socat it could be simple to test.
> >>
> >> Please provide some if you can.  However, be careful, since it might e=
asily fall
> >> into Undefined Behavior.
> >=20
> > Ok see it attached.
>=20
> Thanks.
>=20
> >>
> >>> maybe
> >>> forcing ENOTSUPP if *addr > sizeof(sockadd_storage)
> >>>
> >>> Regards
> >>>
> >>> Bastien
> >>
> >> I'll add some comments to the patch.
> >>
> >>>  From 0afb3ad23f8ea09331f21a377e3ad19c44e4df18 Mon Sep 17 00:00:00 20=
01
> >>> From: =3D?UTF-8?q?Bastien=3D20Roucari=3DC3=3DA8s?=3D <rouca@debian.or=
g>
> >>> Date: Tue, 17 Jan 2023 10:07:43 +0000
> >>> Subject: [PATCH] Document use of struct sockaddr_storage in getsockna=
me
> >>>
> >>> Document:
> >>> - storage requierement
> >>> - future compatibility
> >>> ---
> >>>   man2/getsockname.2 | 56 +++++++++++++++++++++++++++++++++++++++++++=
+++
> >>>   1 file changed, 56 insertions(+)
> >>>
> >>> diff --git a/man2/getsockname.2 b/man2/getsockname.2
> >>> index e6e8980c9..5914c9e12 100644
> >>> --- a/man2/getsockname.2
> >>> +++ b/man2/getsockname.2
> >>> @@ -39,6 +39,17 @@ The returned address is truncated if the buffer pr=
ovided is too small;
> >>>   in this case,
> >>>   .I addrlen
> >>>   will return a value greater than was supplied to the call.
> >>> +.PP
> >>> +For greater portability
> >>> +.I addr
> >>> +should point to a structure of type
> >>> +.I sockaddr_storage.
> >>
> >> This is not correct.  If the object has a type of 'struct sockaddr_sto=
rage',
> >> then it can only be accessed as a 'struct sockaddr_storage'.  Trying t=
o access
> >> it as any other structure type would be Undefined Behavior.  The way t=
o do it
> >> conforming to ISO C would be to declare a union which contains all the=
 'struct
> >> sockaddr_*' that are interesting, and access it through the correct un=
ion
> >> member.  Anything else is on UB land.  The only use of 'struct sockadd=
r_storage'
> >> that I can think of, is for having a more consistent union size.
> >=20
> > Ok I see, Eric could we redefine at posix level the struct sockaddr_sto=
rage to be something like, it seems that it is allowed by
> > /*
> >   *  Following fields are implementation-defined.
> >   */
> >=20
> > union sockaddr_storage {
> >    sa_family_t     ss_family;
> >    struct sockaddr sock;
> >    struct _sockaddr_storage storage;
> >    struct sockaddr_in in;
> >    struct sockaddr_in6 in6;
> >    struct sockaddr_un un;
> > };
>=20
> Hmmm, interesting.  We can't do that, because this would be a breaking ch=
ange to=20
> source code.  We can't change from `struct sockaddr_storage` to `union=20
> sockaddr_storage`.  However, this suggestion, combined with the idea of u=
sing an=20
> anonymous union, can be made to work as something that is compatible with=
 the=20
> current sockaddr_storage:
>=20
> struct sockaddr_storage {
> 	union {
> 		sa_family_t          ss_family;
> 		struct sockaddr      sa;
> 		struct sockaddr_in   sin;
> 		struct sockaddr_in6  sin6;
> 		struct sockaddr_un   sun;
> 	};
> };


Yes if as I said if we could add a __null_reserved field it will help for u=
n...

>=20
> This is compatible:
>=20
> -  It had at least the `ss_family` field.  It's still there, at the same =
binary=20
> location.
> -  It has a size at least as large as any other sockaddr_* structure, and=
 a=20
> suitable alignment.
> -  Old code still works with it just fine.
> -  New code will be able to avoid UB, and all casts, just by accessing th=
e right=20
> structure element.
> -  It's trivial to test at configure time if the implementation provides =
this=20
> new definition of the structure.

I agree I could even add a macro for autoconf-archive (I am upstream) and p=
ost a patch for gnulib.

> >>
> >>> +.I sockaddr_storage
> >>> +structure is large enough to hold any of the other
> >>> +.I sockaddr_*
> >>> +variants and always well aligned. On return, it should be cast to th=
e correct
> >>> +.I sockaddr_*
> >>
> >> The fact that it is correctly aligned, and a cast will work most of th=
e time,
> >> isn't enough for strict aliasing rules.  The compiler is free to assum=
e things,
> >> just by the fact that it's a different type.
> >=20
> > Ok any idea for writing this kind of stuff
>=20
> I'm thinking about writing something to several pages; will keep you all =
updated=20
> on important changes to the pages.

Please exchange with me... It is really a pitffall for my student, so I cou=
ld help here.

Bastien
>=20
>=20
> Cheers,
>=20
> Alex
>=20
> --=20
> <http://www.alejandro-colomar.es/>
>=20


--nextPart9625237.OO9BoV6Jfm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPJr1MACgkQADoaLapB
CF9wtQ//ZRrg3fq4hr+Y+XPFzLmZo6/4N6U5kvJppRqCACpwRsHDbhRP6d2Gj7rH
R0PGG91TQeckH383Lw5WaEzY7D+yyM+eMzYla7TZrKBazTG6jLrb+pv1o1ndw/Tn
wyUNZOh/S5x4Z5T/J0oV8/N3Fkm5L3DPrMrHdkHcZTDxV1AHY4PJsBGOWOPyzWSB
wagVwdsuSgYWp0fNozPaH8Khm07cWkEvKsG4Y+u4nCwqz6qt11tBtTuyRFqlz1+O
fLu5fSZiRM28ePpDUywvDfl+QzWn3JsW1KkAi5c8XlFiABYOtHrhRiHlB3oWYHjq
QvLJxCkcwIPTpmW020uY6wMfYPlAFbpFprV2kgs+AM9y0Isdnp+q6odSxm3BxImJ
n9secyeoA/8U9ZDgLQXlIVcmE+YM3hEzpjSQ+lTcbnSE7SY5gTKaufpUKmjvg/Jf
nxoj+DjyuLyQNc00Bqd7Te/lBdCIGh30p5yCC004wt53/aRcMMEyCTezWTHE/kch
Fx8aSHAKsn/qi+Iv6qPg661KNXZM/+itvf4kiA8or1pY2yq1GzeINJ0HzTsN0c7m
E1+/4Kz/lqp4vBBehgQnIFr28FHpBcishvPR7PqpeAbT7Am+pIt02xqfa0gx7BXZ
NGe5lgqGEs2FVIg/KqnVhhylGYcRiBtdtBbOOlyqbvrJStvL+0E=
=Y7yx
-----END PGP SIGNATURE-----

--nextPart9625237.OO9BoV6Jfm--

