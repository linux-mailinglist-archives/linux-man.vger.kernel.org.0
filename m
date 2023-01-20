Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F018675EF0
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 21:32:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjATUcu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 15:32:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbjATUct (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 15:32:49 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 541597B2C6
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 12:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=PxhzH31Jxs4M17fmI1NLLTYjO7YVybvR9p7Dv3zSFZE=; b=EY0Exy6dRlhpN7P5mkQm/Kke8c
        703FuZWcDFGEHaeIn/Pfly7M2XBUDq/VM/foA6oelnbxVeJys5EIDhv2AbroNclPEccalxMsrhr+S
        X/DY+lQBuq6eYZqckX7ohseqC/pVwQ82L6Njg0vxGGrXu1myjo6Y4LOdNQTb1ja7ugKAT/PjPLIK2
        FbMdgps5Q1Cc63EcuGVCn27us9Bkh+bv8+8/TCrBOMwUCehnRobgZvJlaUFwDXkVlytyVE8zTHk1p
        tcTrdxIe4cri8BQi2SYZx/ADT66FaQBd/CGAB4vu2PYvaTnZACHloj1/jHRKCc9UFa9Fbcx0wmqLo
        7fmDzDKA==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pIy3x-00CpAa-OO; Fri, 20 Jan 2023 20:32:40 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     libc-alpha@sourceware.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous union
Date:   Fri, 20 Jan 2023 20:32:35 +0000
Message-ID: <5187043.CeDsVVrsAm@portable-bastien>
In-Reply-To: <20230120134043.10247-1-alx@kernel.org>
References: <20230120134043.10247-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart186031032.WOa8GQoU81";
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

--nextPart186031032.WOa8GQoU81
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
Date: Fri, 20 Jan 2023 20:32:19 +0000
Message-ID: <5187043.CeDsVVrsAm@portable-bastien>
In-Reply-To: <20230120134043.10247-1-alx@kernel.org>
References: <20230120134043.10247-1-alx@kernel.org>
MIME-Version: 1.0

Le vendredi 20 janvier 2023, 13:40:44 UTC Alejandro Colomar a =C3=A9crit :
> The historical design of `sockaddr_storage` makes it impossible to use
> without breaking strict aliasing rules.  Not only this type is unusable,
> but even the use of other `sockaddr_*` structures directly (when the
> programmer only cares about a single address family) is also incorrect,
> since at some point the structure will be accessed as a `sockaddr`, and
> that breaks strict aliasing rules too.
>=20
> So, the only way for a programmer to not invoke Undefined Behavior is to
> declare a union that includes `sockaddr` and any `sockaddr_*` structures
> that are of interest, which allows later accessing as either the correct
> structure or plain `sockaddr` for the sa_family.
>=20
> This patch fixes sockaddr_storage to remove UB on its uses and make it
> that structure that everybody should be using.  It also allows removing
> many casts in code that needs to pass a sockaddr as a side effect.
>=20
> The following is an example of how this improves both existing code and
> new code:
>=20
> void
> foo(foo)
> {
>     struct old_sockaddr_storage  oss;
>     struct new_sockaddr_storage  nss;
>=20
>     // ... (initialize oss and nss)
>=20
>     inet_sockaddr2str(&nss.sa);  // correct (and has no casts)
>     inet_sockaddr2str((struct sockaddr *)&oss);  // UB
>     inet_sockaddr2str((struct sockaddr *)&nss);  // correct
> }
>=20
> /* This function is correct, as far as the accessed object has the
>  * type we're using.  That's only possible through a `union`, since
>  * we're accessing it with 2 different types: `sockaddr` for the
>  * `sa_family` and then the appropriate subtype for the address
>  * itself.
>  */
> const char *
> inet_sockaddr2str(const struct sockaddr *sa)
> {
>     struct sockaddr_in   *sin;
>     struct sockaddr_in6  *sin6;
>=20
>     static char          buf[MAXHOSTNAMELEN];
>=20
>     switch (sa->sa_family) {
>     case AF_INET:
>         sin =3D (struct sockaddr_in *) sa;
>         inet_ntop(AF_INET, &sin->sin_addr, buf, NITEMS(buf));
>         return buf;
>     case AF_INET6:
>         sin6 =3D (struct sockaddr_in6 *) sa;
>         inet_ntop(AF_INET6, &sin6->sin6_addr, buf, NITEMS(buf));
>         return buf;
>     default:
>         errno =3D EAFNOSUPPORT;
>         return NULL;
>     }
> }
>=20
> While it's not necessary to do the same for `sockaddr`, it might still
> be interesting to so, since it will allow removing many casts in the
> implementation of many libc functions.
>=20
> Link: <https://lore.kernel.org/linux-man/2860541.uBSZ6KuyZf@portable-bast=
ien/T/>
> Link: <https://inbox.sourceware.org/libc-alpha/0f25d60f-f183-b518-b6c1-6d=
46aa63ee57@gmail.com/T/>
> Link: <https://stackoverflow.com/a/42190913/6872717>
> Link: <https://software.codidact.com/posts/287748>
> Cc: Bastien Roucari=C3=A8s <rouca@debian.org>
> Cc: Eric Blake <eblake@redhat.com>
> Cc: Zack Weinberg <zack@owlfolio.org>
> Cc: Stefan Puiu <stefan.puiu@gmail.com>
> Cc: Igor Sysoev <igor@sysoev.ru>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>=20
> v2:
>=20
> -  Fix incorrect cast in commit message.
>=20
>  bits/socket.h | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>=20
> diff --git a/bits/socket.h b/bits/socket.h
> index aac8c49b00..c0c23b4e84 100644
> --- a/bits/socket.h
> +++ b/bits/socket.h
> @@ -168,9 +168,14 @@ struct sockaddr
> =20
>  struct sockaddr_storage
>    {
> -    __SOCKADDR_COMMON (ss_);	/* Address family, etc.  */
> -    char __ss_padding[_SS_PADSIZE];
> -    __ss_aligntype __ss_align;	/* Force desired alignment.  */
no this is not correct you break ABI by reducing size
> +    union
> +      {
> +        __SOCKADDR_COMMON (ss_);	/* Address family, etc.  */
> +        struct sockaddr      sa;
> +        struct sockaddr_in   sin;
> +        struct sockaddr_in6  sin6;
> +        struct sockaddr_un   sun;
> +      };
>    };

Correct one structure is

struct __private_sock_storage {
    __SOCKADDR_COMMON (ssprivate_);   /* Address family, etc. */
    char __ss_padding[_SS_PADSIZE];
    __ss_aligntype __ss_align; /* Force desired alignment. */
}

 struct sockaddr_storage
   {
       union
      {
         __SOCKADDR_COMMON (ss_);       /* Address family, etc. */
        struct sockaddr      sa;
         struct sockaddr_in   sin;
        struct sockaddr_in6  sin6;
        struct sockaddr_un   sun;
        struct __private_sock_storage _private;
      };
};

May it could be dropped later using align construct for modern C and padding

Bastien
> =20
> =20
>=20


--nextPart186031032.WOa8GQoU81
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPK+lMACgkQADoaLapB
CF8UUw//Y4VclRvJFzkHmlvomVae5N6+YzL91/8DGt+aMS2CFHpxBuwKHy3f5OBN
buiPtIKKcVA5RPmIcmEhOokBVN/2pgWRD3fxCRl+yYfOGKTqafWxrfwBIHIOwQia
1rWuI9kvEi5guKa2swSI2a82X6ooluAqBxjl5oDcZUK3Mk3g7jKqzGWsd0tqbB9h
vDOEpEZJRF9Hz+9C5YFipyYyRNkiZ6k2MbtJbjmx3FVyOt2JHZlbucOTCGNXU6n6
c4tNkfFV9TXjhFZpKWyTHxeoollHnYsZvARSjHZ/KghT14rISrrAta0EhCn7kCoS
NwhgWwrJWNyNZTC5qIxJA4E09KpLPhoW+aCM76Oiwx+XDUmkRXsUKsJtgbR+GSsK
99dBRUBvMTu6gD981SfpzzV9UsCKO8UgD6AGokOOMV3T6iYAjHzQC7SpFLyUToYJ
hiSVeJ5ZvzJPwkxQh3pORqipcveVlTg8eT+nAPHK40A1+QScfLnrn/I78neBFO9H
2QaKzs+vUpp/1FJBlJKlHZ9z8kvdcFbbxqOABMADJdMDF7SL84pBL9UGeMcSLKnl
sFF7PCDg1F8gHYQHoypLIgqDtTV08igGj6e4/RdI0xcgmuR1cnU8s76q5pbL4lbi
cijcwxMt82GZSzmucxagqQSahsKWnz1cidkQGGQ8Vr/B37oA8lY=
=pOR5
-----END PGP SIGNATURE-----

--nextPart186031032.WOa8GQoU81--

