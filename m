Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1D2C1B858E
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2020 12:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726035AbgDYKPx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Apr 2020 06:15:53 -0400
Received: from luckmann.name ([213.239.213.133]:34541 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726046AbgDYKPx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Apr 2020 06:15:53 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5602F.000000005EA40DD7.00005BD9; Sat, 25 Apr 2020 12:15:51 +0200
Date:   Sat, 25 Apr 2020 12:15:51 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Re: Errors in man pages, here: st(4): Content
Message-ID: <20200425101551.GA22709@Debian-50-lenny-64-minimal>
References: <20200419064827.GA32117@Debian-50-lenny-64-minimal>
 <dd5fdce8-8329-5951-43da-34aeafae542f@gmail.com>
 <4A645675-6A27-4CC9-B8A8-EB7644DEC710@kolumbus.fi>
 <CAKgNAkgrAUWJyjtv8Q=Pwwa_=QThTaQGz4v_W46+5gD7QEHEJA@mail.gmail.com>
 <168DA6F5-D54B-48E4-A8E1-3FF081ABE6BC@kolumbus.fi>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-23513-1587809751-0001-2"
Content-Disposition: inline
In-Reply-To: <168DA6F5-D54B-48E4-A8E1-3FF081ABE6BC@kolumbus.fi>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-23513-1587809751-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Kai,
On Mon, Apr 20, 2020 at 09:51:11PM +0300, "Kai M=C3=A4kisara (Kolumbus)" wr=
ote:
> > On 20. Apr 2020, at 21.29, Michael Kerrisk (man-pages) <mtk.manpages@gm=
ail.com> wrote:
> > On Mon, 20 Apr 2020 at 17:51, "Kai M=C3=A4kisara (Kolumbus)"
> > <kai.makisara@kolumbus.fi> wrote:
> >>> On 20. Apr 2020, at 11.13, Michael Kerrisk (man-pages) <mtk.manpages@=
gmail.com> wrote:
> >>>=20
> >>> [CC +=3D Kai]
> >>>=20
> >>> (Kai, I got a pile of queries from a downstream translation project)
> >>>=20
> >>> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> >>>> Dear manpages maintainers.
> >>>>=20
> >> ...
> >>>> We cannot understand the last sentence. What is "forward spacing"?
> >>>>=20
> >>>> "This option causes the B<MTEOM> operation to be sent directly to th=
e drive, "
> >>>> "potentially speeding up the operation but causing the driver to los=
e track "
> >>>> "of the current file number normally returned by the B<MTIOCGET> req=
uest.  If "
> >>>> "B<MT_ST_FAST_EOM> is false, the driver will respond to an B<MTEOM> =
request "
> >>>> "by forward spacing over files."
> >>>=20
> >>> Perhaps Kai can help. I do not have a good explanation.
> >>>=20
> >> Spacing in tape terminology means going to the next file (or record or=
 set mark).
> >> The drives usually support a command to go to the end of the tape. The
> >> drawback is that no information is obtained about the number of files =
skipped.
> >> If the driver spaces forward over files one by one, it can count how m=
any
> >> files have been skipped.
> >>=20
> >> This is the technical description. But the text also says what is the =
consequence
> >> for a user that does not care about technology. Spacing is mentions al=
so
> >> earlier in the text.
> >=20
> > So, no text changes needed here, right?
> >=20
> I don=E2=80=99t think changes are needed. But the discussion in my other =
answer applies
> also here.

Thanks for the explanation. I added a note in the translation file,
updated the translation accordingly and put the current translator in
charge in CC so he is aware of this discussion.

So for my side this issue can be closed.

Greetings

          Helge

P.S. For this issue I tried to search for the term "space over" but
     did not find the right pages, including Wikipedia (but I might
     have missed the right search keys).

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-23513-1587809751-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6kDdQACgkQQbqlJmgq
5nB4Kw/8CbzeTZWOr+2cdiT8QvCwhpS7Sw/EUNw+5FOXUQRZwQWK/EKyb1bfD7Md
qxxAf9JoGpI/eI/ndAlq2Y26TXsS6M36gtuv2e3EDxTPzFyBeQSDANiOMDaI6NuX
21K8docB2pddGMyT45sMjuYpei4zQT9R6Cb5H31YK05m1LMYzQw4Xq5ZTX3xAQct
LW2LN/+bwIHs5tpqe4ygq+Pany59e0rpp7Qeez3sw45CJ6pzRy/NgTxAGf8nHy1n
Nuk5kVGmA0YMxWtZ+tBg3pLZeixVDI65hDQ0OQUBnL06KAk1e2N2rUTKgBDQrUMX
hvRrehzIU8Z6jlRzFT9serLTtjUR9BrZ86lbVlFrsZ3WD9dF0oAPnbyReo/OkQxs
njTR6yP9IPUkTtrE62a7ptneZ5lOLXHceDCPUrd/Xcx7z/zH3KB7FWfz8WgBY5+a
CV6ioPFaKfifC4cn0TAbG2MdZmlpXok3GB3LSoatFRdRVizwUtVoCo5Ug9R8uOUB
B7ZZ8D7+vJtMAJnfRGUndnCf78FotC9jtgc+wV5BNjaIk6osInZ6OOj5/2LxfSDe
qXQ3PMbLDD0wkrWxtvKRz6IEWBxkv92se8t/PI2UjO0pLuZab/fyflWkpKzan0Nm
p/hFTlFM8wCmUwExC85GKdxwtZEsr0sBGhC3Nfoquex/w8ZGhIQ=
=TI21
-----END PGP SIGNATURE-----

--=_luckmann.name-23513-1587809751-0001-2--
