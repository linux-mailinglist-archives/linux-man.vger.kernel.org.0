Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2580E67430B
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 20:45:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbjASTpA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 14:45:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229905AbjASTox (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 14:44:53 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60B7750867
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 11:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=D4khmVNxIx+FxGKRgD/FfTyJHOYvSaHRxavmXdYu+A8=; b=V4ombNvNTb45eELammFLOYtgg3
        A5e7AVAtvOjzKtAMa9xfB1VYvi+Sf7SGv6V6wPmEe6+Ei+2LSZavgEcmDwVpJCWYW4i5IGUeiAXtg
        qjfCNr84ieyVu3IpgDQlIeKfoI2UxrPL4BFS+QBwM6BAEUTEhZjKogBEe4y6/il1zwhAxYU/5UCz9
        ZRN5zA0C85wnsdpss3RY3N+E55t9tESWa9N3qDl//iBYnFASu0wWd3I2UHGbfR3tvaQJHJhfy1sYb
        GUFOUUiZLJnf4AcOAIqxR+Zz16/BO8fbHLOVti6L9D9KnhMzmwy43H4j3Gax6InthRKnPY7eeBzik
        D23/Lwjw==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pIaq5-00BusI-8r; Thu, 19 Jan 2023 19:44:46 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>
Subject: Re: Improve getsockname
Date:   Thu, 19 Jan 2023 19:44:42 +0000
Message-ID: <2860541.uBSZ6KuyZf@portable-bastien>
In-Reply-To: <5c06b714-80fb-b2c5-0721-72c19f22819f@gmail.com>
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <5c06b714-80fb-b2c5-0721-72c19f22819f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13954929.F3hruB2oby";
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

--nextPart13954929.F3hruB2oby
Content-Type: multipart/mixed; boundary="nextPart6345122.UytD1JUCkp";
 protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: Improve getsockname
Date: Thu, 19 Jan 2023 19:44:25 +0000
Message-ID: <2860541.uBSZ6KuyZf@portable-bastien>
In-Reply-To: <5c06b714-80fb-b2c5-0721-72c19f22819f@gmail.com>
MIME-Version: 1.0

This is a multi-part message in MIME format.

--nextPart6345122.UytD1JUCkp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Le jeudi 19 janvier 2023, 12:42:52 UTC Alejandro Colomar a =C3=A9crit :
Hi all,
[adding Eric Blake from redhat and if I remember well member of POSIX comit=
ee]

Eric to be short posix behavior of sockaddr sockaddr_storage is UB and exam=
ple supplied are UB. See here:
https://pubs.opengroup.org/onlinepubs/009696699/basedefs/sys/socket.h.html

I think we could save the day by defining struct sockadd_storage using anon=
ymous union (thanks to C11 support),
 but it will leave C++. But how can be done...

> Hi Bastien,
> Hi Bastien,
>=20
> On 1/17/23 11:22, Bastien Roucari=C3=A8s wrote:
> > Hi,
> >=20
> > I have a lot of student that does not use correctly getsockname in case=
 of
> > dual stack.
>=20
> Please show some examples of common mistakes, if you can.
oh the basic one is to pass a sockaddr_in instead of sockaddr_in6... Or to =
pass a sockaddr_in6 and do not think that it could be returned an IPV4 sock=
et or an Unix stream socket.
>=20
> >=20
> > May be this kind of discussion should be factorized in  sockaddr_storag=
e (the
> > historical note particularly).
> >=20
> > i suppose the same should be done for getpeername
> >=20
> > I think a safe programming example may be given that accept a socket as=
 stdin
> > and print information on it. Using socat it could be simple to test.
>=20
> Please provide some if you can.  However, be careful, since it might easi=
ly fall=20
> into Undefined Behavior.

Ok see it attached.
>=20
> > maybe
> > forcing ENOTSUPP if *addr > sizeof(sockadd_storage)
> >=20
> > Regards
> >=20
> > Bastien
>=20
> I'll add some comments to the patch.
>=20
> > From 0afb3ad23f8ea09331f21a377e3ad19c44e4df18 Mon Sep 17 00:00:00 2001
> > From: =3D?UTF-8?q?Bastien=3D20Roucari=3DC3=3DA8s?=3D <rouca@debian.org>
> > Date: Tue, 17 Jan 2023 10:07:43 +0000
> > Subject: [PATCH] Document use of struct sockaddr_storage in getsockname
> >=20
> > Document:
> > - storage requierement
> > - future compatibility
> > ---
> >  man2/getsockname.2 | 56 ++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> >=20
> > diff --git a/man2/getsockname.2 b/man2/getsockname.2
> > index e6e8980c9..5914c9e12 100644
> > --- a/man2/getsockname.2
> > +++ b/man2/getsockname.2
> > @@ -39,6 +39,17 @@ The returned address is truncated if the buffer prov=
ided is too small;
> >  in this case,
> >  .I addrlen
> >  will return a value greater than was supplied to the call.
> > +.PP
> > +For greater portability
> > +.I addr
> > +should point to a structure of type
> > +.I sockaddr_storage.
>=20
> This is not correct.  If the object has a type of 'struct sockaddr_storag=
e',=20
> then it can only be accessed as a 'struct sockaddr_storage'.  Trying to a=
ccess=20
> it as any other structure type would be Undefined Behavior.  The way to d=
o it=20
> conforming to ISO C would be to declare a union which contains all the 's=
truct=20
> sockaddr_*' that are interesting, and access it through the correct union=
=20
> member.  Anything else is on UB land.  The only use of 'struct sockaddr_s=
torage'=20
> that I can think of, is for having a more consistent union size.

Ok I see, Eric could we redefine at posix level the struct sockaddr_storage=
 to be something like, it seems that it is allowed by=20
/*
 *  Following fields are implementation-defined.
 */

union sockaddr_storage {
  sa_family_t     ss_family;
  struct sockaddr sock;
  struct _sockaddr_storage storage;
  struct sockaddr_in in;
  struct sockaddr_in6 in6;
  struct sockaddr_un un;
};
>=20
> > +.I sockaddr_storage
> > +structure is large enough to hold any of the other
> > +.I sockaddr_*
> > +variants and always well aligned. On return, it should be cast to the =
correct
> > +.I sockaddr_*
>=20
> The fact that it is correctly aligned, and a cast will work most of the t=
ime,=20
> isn't enough for strict aliasing rules.  The compiler is free to assume t=
hings,=20
> just by the fact that it's a different type.

Ok any idea for writing this kind of stuff=20
>=20
> Cheers,
>=20
> Alex
>=20
> > +type, according to the current protocol family, given by the member ss=
_family.
> >  .SH RETURN VALUE
> >  On success, zero is returned.
> >  On error, \-1 is returned, and
> > @@ -80,10 +91,55 @@ For background on the
> >  .I socklen_t
> >  type, see
> >  .BR accept (2).
> > +.PP
> > +Security and portability wise, use of
> > +.I struct sockaddr_storage
> > +type as
> > +.I addr
> > +and
> > +.I addrlen
> > +set to
> > +.BI "sizeof(struct sockaddr_storage)"
> > +is strongly encouraged. Particularly this usage avoid bugs in dual sta=
ck IPv4+IPv6 configuration.
> > +.PP
> > +Historical use of
> > +.I addr
> > +requires one to use a structure specific to the protocol family in use,
> > +such as
> > +.I sockaddr_in
> > +(AF_INET or IPv4),
> > +.I sockaddr_in6
> > +(AF_INET6 or IPv6), or
> > +.I sockaddr_un
> > +(AF_UNIX)
> > +cast to a
> > +.I (struct sockaddr *).
> > +The purpose of the
> > +.I struct sockaddr *
> > +type
> > +is purely to allow casting of  domain-specific  socket  address  types=
  to  a
> > +"generic" type, so as to avoid compiler warnings about type mismatches=
 in calls to the sockets API.
> > +Nevertheless,
> > +. I struct sockaddr *
> > +is too small to hold newer protocol address (for instance IPv6) and no=
t always well aligned.
> > +.PP
> > +Even if
> > +.I sockaddr_storage
> > +type is large enough at compilation time to hold any of the
> > +.I sockaddr_*
> > +variants known by the library,
> > +this guarantee will not hold for future. Newer protocol may need an in=
crease of
> > +.I sockaddr_storage
> > +size or alignement requirement, and safe program should always runtime=
 check if returned
> > +.I addr
> > +is smaller or equal to compile time
> > +.BI "sizeof(struct sockaddr_storage)"
> > +size.
> >  .SH SEE ALSO
> >  .BR bind (2),
> >  .BR socket (2),
> >  .BR getifaddrs (3),
> > +.BR sockaddr_storage (3type),
> >  .BR ip (7),
> >  .BR socket (7),
> >  .BR unix (7)
> > --=20
> > 2.39.0
> >=20
>=20
> --=20
> <http://www.alejandro-colomar.es/>
>=20


--nextPart6345122.UytD1JUCkp
Content-Disposition: attachment; filename="testgetsockname.c"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-csrc; charset="unicode-2-0-utf-8";
 name="testgetsockname.c"

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/un.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <stddef.h>

union sockaddr_mayalias {
  sa_family_t     ss_family;
  struct sockaddr sock;
  struct sockaddr_storage storage;
  struct sockaddr_in in;
  struct sockaddr_in6 in6;
  struct sockaddr_un un;
};
  
int main() {
  union sockaddr_mayalias sa = {};
  socklen_t addrlen = sizeof(sa);
  if(getsockname(STDIN_FILENO, &sa.sock, &addrlen) < 0) {
    perror("getsockname");
    return 1;
  }
  if(addrlen >= sizeof(sa)) {
    errno = EPROTONOSUPPORT;
    perror("getsockname return a not supported sock_addr");
    return 1;
  }
  
  switch(sa.ss_family) {
  case(AF_UNSPEC):
    printf("AF_UNSPEC socket\n");
    break;
  case(AF_INET):
    {
      char s[INET_ADDRSTRLEN];
      in_port_t port = ntohs(sa.in.sin_port);
      if (inet_ntop(AF_INET, &(sa.in.sin_addr), s, sizeof(s)) == NULL) {
	perror("inet_ntop");
	return 1;
      }
      printf("AF_INET socket %s:%i\n",s,(int)port);
      break;
    }
  case(AF_INET6):
    {
      char s[INET6_ADDRSTRLEN];
      in_port_t port = ntohs(sa.in6.sin6_port);
      if (inet_ntop(AF_INET6, &(sa.in6.sin6_addr), s, sizeof(s)) == NULL) {
	perror("inet_ntop");
	return 1;
      }
      printf("AF_INET6 socket %s:%i\n",s,(int)port);
      break;
    }
  case(AF_UNIX):
    if(addrlen ==  sizeof(sa_family_t)) {
      printf("AF_UNIX socket anonymous\n");
      break;
    }
    /* abstract */
    if(sa.un.sun_path[0]=='\0') {
      printf("AF_UNIX abstract socket 0x");
      for (int i = 0; i < (addrlen - sizeof(sa_family_t)); ++i)
	printf("%x",sa.un.sun_path[i]);
      printf("\n");
      break;
    }
    /* named */
    printf("AF_UNIX named socket ");
    for (int i=0; i < strnlen(sa.un.sun_path, addrlen - offsetof(struct sockaddr_un, sun_path));++i)
      printf("%c",sa.un.sun_path[i]);
    printf("\n");
    break;
  default:
      errno = EPROTONOSUPPORT;
      perror("socket not supported");
      return 1;
}

    
}

--nextPart6345122.UytD1JUCkp--

--nextPart13954929.F3hruB2oby
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPJnZkACgkQADoaLapB
CF94Zg//XXYha4S46vbTHfoXJHXhEF/DKMfszZdGLPlrkF8WO0y/9pZqnRa7Xja/
sJDYl9AESacAoY7wC8wcH0ACgcAmFkz46mAKpvNhv5/F3BIfhmlrqK0ciyV06VHf
MQiOHIIMYIaMosOcKxdffm7LsApIO3DO3XlkjzuomDn2QyOkq6YuSfuvKI5IEiii
QxwpA3g8b6XGLRYpc1X1MA93v2vYsqYR0lbP7fy07R9Mnf5cxWBYpX6DxosQnv9I
U7kWwKrWXdC0NMB+Nou9bXo9FOReLyodO61rT1dVMjykxF/ktGN/iP77L/RIVMln
KR4NlDai2GGA1ZqmiuSw96McTCdZS715rSGppOt3ZoHD4lKT70bJIcroSZbRg05+
yeM3GYALXe8L3Fi5ZHiNo6uh+Z3Ydxt1oPTGN5oAtFzbqzM7OAc3WPbB43lTpbZw
qYD1GqLqJznxbmhlRpq3pbSEcMDbc0J+kp8WggSSGg4IkR3Sq8IxzzCB/mRZiapx
FuMmacUSkk6mw4PRNd6559GJuqmyBun6PUfc8JO6wMv5XmO6ewegBfS9vtDJgw7k
M61KC9GgQWGxP+OSl+pfn0JrDvh7SOPwRuh7OYYkw4e0MQDYvLIMYDv1NhE5Fmb+
+pA1nTaXyx1yrexerM+YJIKBcADZA3iOWJ+vX5YjhJ+ud7HvIyQ=
=35xm
-----END PGP SIGNATURE-----

--nextPart13954929.F3hruB2oby--

