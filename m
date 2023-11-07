Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 476F57E45CC
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 17:20:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235455AbjKGQUM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 11:20:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235480AbjKGQTs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 11:19:48 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED6B49D7
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 08:14:35 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 123EFC433C8;
        Tue,  7 Nov 2023 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699373675;
        bh=nJOX5HTaFamd3CRpr/ECDRy/VI0hjRJgyPZiyq94iNU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HhYdUBJKzcdv67QKXN9IWgTg4xKuSs9h8vE3+VUJB3zgNWfapzj/xj6h0pvZW+w9x
         xZkhr4Azz7vnMLg5lvq5JP5hjyhWxW6PynPZDOPPh0dCxeJ+6CSJeUjuB9uZs3dANG
         qzb2AUudZgK3Co3lrSIF4xyaoPDdF2m0K3wKx+pDJeInkvs6exnA+E49AdJRl9H2P4
         znV8QxISAuMGdmXltVwAJUTTBS48fdK5+lkZGJrWLZHZu0pY7u0KEt7oqrkxUwX8AS
         3H9IxHj031KjMbzajeiIvcBQWrlaWq3CrBMgkPbsXeJE1wPWKbpe5Lkc3Ea6oVhADy
         k9ggD6rHpE6KQ==
Date:   Tue, 7 Nov 2023 17:17:29 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUpjI1AHNOMOjdFk@devuan>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kZaj6VcyJ9XNQuW4"
Content-Disposition: inline
In-Reply-To: <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kZaj6VcyJ9XNQuW4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 7 Nov 2023 17:17:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Tue, Nov 07, 2023 at 02:19:56PM +0000, Jonny Grant wrote:
>=20
>=20
> On 07/11/2023 13:23, Alejandro Colomar wrote:
> > On Tue, Nov 07, 2023 at 11:52:44AM +0000, Jonny Grant wrote:
> >> We see things differently, I'm on the C standard side on this one. Wou=
ld any information change your mind?
> >=20
> > It's difficult to say, but I doubt it.  But let me ask you something:
> > In what cases would you find strncpy(3) appropriate to use, and why?
> > Maybe if I understand that it helps.
> >=20
> > Kind regards,
> > Alex
>=20
> I don't find strncpy appropriate=20

Would any information change your mind in this regard?

Let me show you some structure to which you should write using strncpy(3):

$ man utmp | sed 's/^           //' | grepc -h utmp
struct utmp {
    short   ut_type;              /* Type of record */
    pid_t   ut_pid;               /* PID of login process */
    char    ut_line[UT_LINESIZE]; /* Device name of tty - "/dev/" */
    char    ut_id[4];             /* Terminal name suffix,
                                     or inittab(5) ID */
    char    ut_user[UT_NAMESIZE]; /* Username */
    char    ut_host[UT_HOSTSIZE]; /* Hostname for remote login, or
                                     kernel version for run-level
                                     messages */
    struct  exit_status ut_exit;  /* Exit status of a process
                                     marked as DEAD_PROCESS; not
                                     used by Linux init(1) */
    /* The ut_session and ut_tv fields must be the same size when
       compiled 32- and 64-bit.  This allows data files and shared
       memory to be shared between 32- and 64-bit applications. */
#if __WORDSIZE =3D=3D 64 && defined __WORDSIZE_COMPAT32
    int32_t ut_session;           /* Session ID (getsid(2)),
                                     used for windowing */
    struct {
        int32_t tv_sec;           /* Seconds */
        int32_t tv_usec;          /* Microseconds */
    } ut_tv;                      /* Time entry was made */
#else
     long   ut_session;           /* Session ID */
     struct timeval ut_tv;        /* Time entry was made */
#endif

    int32_t ut_addr_v6[4];        /* Internet address of remote
                                     host; IPv4 address uses
                                     just ut_addr_v6[0] */
    char __unused[20];            /* Reserved for future use */
};


The fields 'ut_line', 'ut_user', amd 'ut_host' are fixed-width character
array without a terminating NUL.  I wish this API hadn't been designed
this way, and thus that strncpy(3) wouldn't be useful for writing to
these structures, but we got what we got.  strcpy(3) and strlcpy(3) will
both try to write a NUL byte, thus not being able to use the last one
byte.  I would happily waste that last byte, but then if you write
portable shadow utils that are compatible with other software that may
have written those fields previously, you need to be able to support
that last character, and so you need strncpy(3).


>- that's why I proposed a change to clarify the known defect in the man pa=
ge of strncpy that C99 describes. Worth reading my first email if you're un=
clear.

I would love to find this API useless, and in that case, I'd go further
and add [[deprecated]] in the synopsis, and write a heavy statement in a
BUGS section.  But I can't do that while it's still a good function in
some cases (even if those cases are bad design, such as utmp(5)).

On the other hand, utmp(5) has other issues, like Y2038, and AFAIR it's
being deprecated, so maybe we could consider deprecating strncpy(3).

If I see enough proof that all APIs that require this function are
deprecated, I'll happily declare the function deprecated as well.
(in fact I already did some time ago, but then found this use with
utmp(5), which is why I removed the deprecation; see
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man3/st=
rncpy.3?id=3D30d458d1a6261221bad15e58f1862e0dda24f4a0>).

Cheers,
Alex

>=20
> If you doubt the esteemed C standards, I won't add anything further.
> Kind regards Jonny

--=20
<https://www.alejandro-colomar.es/>

--kZaj6VcyJ9XNQuW4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVKYxkACgkQnowa+77/
2zIEWw/8D0e5ly3929pwuY606AGcwa/R2Xg8gPmT8mwUckzvixaOKtzHIbNxLZ9J
DbKso8MjZpZsutC1BRGnAajpOOa4KhkcQ+rIXx2+AvsOSvxJWc6JIDExbGjxm36G
Ytex+gI8L/P6hBP0CfuQOLGezb0GlSyx6h+xK7xoStOoVo45R1wOsYKhnnV1gszm
kr2yCA/pVyebFyTjFAOBmlDw54NO8IemOt3mqpBs2eyXoqADmE9vP1xTVlzXHPrr
92uK+N9Nw2dBAVnDVGcchzfGkF/kdvGm8694pxCuLdPKNooNF/NCa+It9YWlKPkk
7lMTC66VT8A+pJYcbzxISfM2xGXjBJZmykxSrnxH2ATk138zAxX4dsuxRYx6LH20
F1jYCgia5+bUkm/A9AhjGjlJXjA/euosDMgGsf2kSSWFS66EAk5R9p1CKtW72C9N
5gGnHts9/EeGS6JlOr1uTxW9X0LueSYnxzMGcEnkYDa05JdFGQmZOKCgM3GSvYpj
QcAs1B3d+Adk4rTlCSY8jZJB+u4vNlQdWhSemQCcEvrRzAhAzBzO5hciVtMziuwN
a2j67v/HVkAHQAhqq7Qypkw4nRmqcGGJQdPEckOSYPkQznrU7Xle7uALK5h/bfCx
vC55xXANstpxW70Ow1OztkrgmP7/tgGo9LvecUSyJ4i74C1e1RQ=
=76XA
-----END PGP SIGNATURE-----

--kZaj6VcyJ9XNQuW4--
