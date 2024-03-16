Return-Path: <linux-man+bounces-620-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A8D87D785
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 01:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A3E11C2125C
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097FE36C;
	Sat, 16 Mar 2024 00:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm2/PZmY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9813FC2
	for <linux-man@vger.kernel.org>; Sat, 16 Mar 2024 00:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710547956; cv=none; b=I5kb4UuuFD+ax2IogPjJTGtaxCpHlL6h8t02Sk2CE+6WCsUxZ/AKSxd10W6l4lKlXcUYgoDa6sQj+HXH7uIK4LfMkNQxFjqgGxv9fFJo8LDLkSyRRJePElVerXwU7RB7fJRMFjEBA3GE1jnLNwLOhmgB8N4AHlhazpY/IdDHASc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710547956; c=relaxed/simple;
	bh=BB+a8ctLU8qN/TMI0sRx6zLPxtqBZpg9i2/iBWnZ0JA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gSPXGIlb+hGGY+1NNyfM3sKsOMLdlNcFme67yu8oKMbKY0SdqONnl6lidCeDS8t7hi9TjKNNFDyAogHVQRzmYgeZroVp93E2FoikZMHYulMBtPUkWuALojZdgYJXl1y9ny19B+IpzaZXjpajb0fUsaBu7nVn+d5VfDfr75aMsMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm2/PZmY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD095C433F1;
	Sat, 16 Mar 2024 00:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710547956;
	bh=BB+a8ctLU8qN/TMI0sRx6zLPxtqBZpg9i2/iBWnZ0JA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dm2/PZmYaRiN1Ayhu5nQD5MAfZL9OHj4AotNbV3eOEIUKPd4SxGTDmFsfipsKQPr+
	 oU1ITlkYD4w/HIpdEIjP1xpjxTG2l3k9SOCKvMZFhPTGzVh7EF84PJPlTstE2g9UWC
	 bgBpU1uHk5XOHi7dj95cMSP2rkaUIwhF1S6jpD8qo+DBUXSMIqvLPYxvPOprY6lFcc
	 HPss75d5B0GN/hqKG/bzdmqiBOlD2bHDO+Cbj4D45HpE26CtDffpS4Wvyg3fNc+oue
	 p/7zlSRRykAOiHfvuBYEUp5IABxlwKvfXNB5p40jZzxIklwo6CdPm2ECWAj2DB8xUT
	 mEjZCRdLJlAug==
Date: Sat, 16 Mar 2024 01:12:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lili =?utf-8?B?UMO8c3DDtms=?= <poordirtylili@gmail.com>
Cc: linux-man@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: patch - fixing sample program in unix.7
Message-ID: <ZfTj8d0bNFhocFI5@debian>
References: <CALPhBBbmrAMR70WT-JfKoSQVLhfxKv5B68Gyo_4zZRY-7SS0-g@mail.gmail.com>
 <ZeX1JTt2Sxot-JFU@debian>
 <CALPhBBYSEAh2LBSZ0CAs-dwX=i+OBhMAbDxfFJ=T=1rAvnuJvQ@mail.gmail.com>
 <ZehfWUkNWucW0pW4@debian>
 <CALPhBBa47G3H18HeKasT-X6WndOy-1O2n4yR0D-vZALrLzLeQQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VJ8ekWOahVlyyXGO"
Content-Disposition: inline
In-Reply-To: <CALPhBBa47G3H18HeKasT-X6WndOy-1O2n4yR0D-vZALrLzLeQQ@mail.gmail.com>


--VJ8ekWOahVlyyXGO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Mar 2024 01:12:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lili =?utf-8?B?UMO8c3DDtms=?= <poordirtylili@gmail.com>
Cc: linux-man@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: patch - fixing sample program in unix.7

Hi Lili,

On Wed, Mar 06, 2024 at 09:02:47PM +0100, Lili P=C3=BCsp=C3=B6k wrote:
> Hi Alex, I tried to follow your instructions and applied your concept.
> I hope it is ok now.

It is.

> Cheers
> PuLi
>=20
>=20
> From fca55af92ec1993823e70a4460a08197fa8da01a Mon Sep 17 00:00:00 2001
> From: =3D?UTF-8?q?P=3DC3=3DBCsp=3DC3=3DB6k=3D20Lili?=3D <poordirtylili@gm=
ail.com>
> Date: Wed, 6 Mar 2024 20:51:38 +0100
> Subject: [PATCH] [patch] sample program in man7/unix.7
>=20
> Signed-off-by: PuLi <poordirtylili@gmail.com>
> Fixes: 15545eb6d7ae ("unix.7: Add example")
> Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>
>=20
> Client wants to send END while server already closed the connection
> on DOWN, so connection is broken instead of the Result =3D 0 in the
> sample on sending a single DOWN.
> Now, the server disconnects only on first END. After DOWN, all further
> processing of number stops.
> Patch does not handle cases of double END sending, multiple clients
> etc.

Patch applied.  Thanks.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4fe1c74b42f99b3682114e1dab1200f6ced6881f>

Have a lovely night!
Alex

> ---
>  man7/unix.7 | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/man7/unix.7 b/man7/unix.7
> index cb1dcae45..2dc4f489e 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -1057,12 +1057,16 @@ main(int argc, char *argv[])
>  \&
>              if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
>                  down_flag =3D 1;
> -                break;
> +                continue;
>              }
>  \&
>              if (!strncmp(buffer, "END", sizeof(buffer))) {
>                  break;
>              }
> +\&
> +            if (down_flag) {
> +                continue;
> +            }
>  \&
>              /* Add received summand. */
>  \&
> --=20
> 2.39.2
>=20
> Alejandro Colomar <alx@kernel.org> ezt =C3=ADrta (id=C5=91pont: 2024. m=
=C3=A1rc. 6.,
> Sze, 13:19):
> >
> > [CC +=3D Heinrich]
> >
> > Hi Lili,
> >
> > On Mon, Mar 04, 2024 at 05:41:17PM +0100, Lili P=C3=BCsp=C3=B6k wrote:
> > > Hi Alejandro,
> > > Thanks for replying.
> > >
> > > The client, after connecting, processes the argv items and sends all
> > > of them, then issues the sending of a final END which, on the server
> > > side, is not expected after DOWN which would halt the reading (In that
> > > case, too, the processing of argv + the END should happen).
> > > After the change,  DOWN does not break the reading, the closing END is
> > > processed and there is no broken connection when client tries to send
> > > END while the server closes after sending the result, which is not
> > > received by the client.
> >
> > Hmmm, now I understand.
> >
> > >
> > > --- without DOWN ----
> > > client         server
> > > argv1..N + END --->
> > > <----- result
> > > <---- connection closed
> > >
> > > -----------problem-----------
> > > argv1...N + DOWN ->
> > > <---- result
> > > END -> ?????
> > > <---- connection closed
> > >
> > > ------- solution:---------
> > > argv1...N + DOWN + END ->
> > > <---- result
> > > <---- connection closed
> >
> > Yep, I can reproduce this problem all the way back to the original
> > implementation of the example programs.  I extracted the original
> > programs with:
> >
> >         $ git show 15545eb6d7:man7/unix.7 | man /dev/stdin | cat
> >
> > And then cut and paste to the C files.
> >
> >         $ cc -Wall -o server server.c
> >         $ cc -Wall -o client client.c
> >         $ ./server &
> >         [1] 94644
> >         $ ./client 3 4
> >         Result =3D 7
> >         $ ./client 11 -5
> >         Result =3D 6
> >         $ ./client DOWN
> >         recv: Connection reset by peer
> >         [1]+  Done                    ./server
> >         $
> >
> > This behavior conflicts with the behavior shown in the manual page,
> > which shows (for the last command):
> >
> >         $ ./client DOWN
> >         Result =3D 0
> >         [1]+  Done                    ./server
> >
> > So it seems like a bug.  Maybe the server program was slow enough when
> > it was implemented in 2016, that the server hadn't closed the socket
> > when the client sent "END", so the client didn't fail to read the
> > result??
> >
> > Anyway, we need to fix it.  Agree.
> >
> > Please add
> >
> >         Fixes: 15545eb6d7ae ("unix.7: Add example")
> >         Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>
> >
> > to the commit message, as well as a small description of the problem.
> >
> > > I hope I did not overlook something.
> >
> > However, I'm not convinced by your patch.  It seems to allow
> >
> >         $ ./client DOWN 4 3
> >
> > which I don't think we want to support.  I think we have two options:
> >
> > -  The client avoids sending "END" after "DOWN" (so DOWN implies END).
> > -  The server only accepts "END" after "DOWN".
> >
> > Does it make sense to you?
> >
> > Have a lovely day!
> > Alex
> >
> > > OK, maybe with a unique message containing only the DOWN from client,
> > > the issue is not visible, because there is no result to return to
> > > client and we don't care it the connection is just broken....
> > >
> > > Cheers
> > > PuLi
> > >
> > > Alejandro Colomar <alx@kernel.org> ezt =C3=ADrta (id=C5=91pont: 2024.=
 m=C3=A1rc. 4., H, 17:22):
> > > >
> > > > Hi Lili,
> > > >
> > > > > Subject: Re: patch - fixing sample program in unix.7
> > > >
> > > > On Sun, Mar 03, 2024 at 08:27:17PM +0100, Lili P=C3=BCsp=C3=B6k wro=
te:
> > > > > diff --git a/man7/unix.7 b/man7/unix.7
> > > >
> > > > Please add some commit message.  I don't understand what this patch
> > > > does.  How is it broken, and how does it fix it?
> > > >
> > > > > index cb1dcae45..7fb41af99 100644
> > > > > --- a/man7/unix.7
> > > > > +++ b/man7/unix.7
> > > > > @@ -1057,7 +1057,7 @@ main(int argc, char *argv[])
> > > > > \&
> > > > >             if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
> > > > >                 down_flag =3D 1;
> > > > > -                break;
> > > > > +                continue;
> > > >
> > > > DOWN is used to stop the server.  How would 'continue' help?
> > > >
> > > >
> > > >         $ MANWIDTH=3D66 man unix | grep -C2 DOWN
> > > >              tegers.  The client prints the sum and exits.   The  s=
erver
> > > >              waits  for the next client to connect.  To stop the se=
rver,
> > > >              the client is called with the command=E2=80=90line arg=
ument "DOWN".
> > > >
> > > >              The following output was recorded while running the  s=
erver
> > > >              in the background and repeatedly executing the client.=
  Ex=E2=80=90
> > > >              ecution  of  the  server  program ends when it receive=
s the
> > > >              "DOWN" command.
> > > >
> > > >            Example output
> > > >         --
> > > >                  $ ./client 11 -5
> > > >                  Result =3D 6
> > > >                  $ ./client DOWN
> > > >                  Result =3D 0
> > > >                  [1]+  Done                    ./server
> > > >         --
> > > >                          /* Handle commands. */
> > > >
> > > >                          if (!strncmp(buffer, "DOWN", sizeof(buffer=
))) {
> > > >                              down_flag =3D 1;
> > > >                              break;
> > > >         --
> > > >                      close(data_socket);
> > > >
> > > >                      /* Quit on DOWN command. */
> > > >
> > > >                      if (down_flag) {
> > > >
> > > > Have a lovely day,
> > > > Alex
> > > >
> > > >
> > > > >             }
> > > > > \&
> > > > >             if (!strncmp(buffer, "END", sizeof(buffer))) {
> > > > >
> > > >
> > > > --
> > > > <https://www.alejandro-colomar.es/>
> > > > Looking for a remote C programming job at the moment.
> >
> > --
> > <https://www.alejandro-colomar.es/>
> > Looking for a remote C programming job at the moment.

--=20
<https://www.alejandro-colomar.es/>

--VJ8ekWOahVlyyXGO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX04/EACgkQnowa+77/
2zITEw//bA/zY8hElRR2TVobt+bBLCoSIIIpo0aUeYXMc3DYUf1I0H5ZFRq8C7mg
x+yE21jKNCWlXWTGZAZ/LE5dudm5HtSROJoQduV2Vh6eUZMz8nAaDHUJpBIcXjaD
JqgtLWuEGEXX7EQV6VvGw+kqjPNcHCT7kNdwTJGx1xFS5C/lN4nOD7bO7XNzOdts
sGGXb9tYZn4FS473hPvW0WUv+DSxgln/4K6narYz6sHiFVdOGqy78qMf+TStI0ya
rVMEatMf1EvbEuv6cs2GTLC9184g34NXxAgFLiLLPbhGkLjtMNc/W8UZ0U5lI5N2
p3PcU19YNsOU9FHJVdcl6I+LNcTerebVqOQZJYeuuGiQZrBzKg/WwTjQfT6+EUOo
x2chBm+PTkLLzIyf5IPmOn1kNr/ZyP9uhNcVXmLhSAJJGyQE4w9cJTqz8pkNe3U6
xj9VNaMxCEkmwK9UiCOF85wCaI4oxbNMbEAYjI8NDp68KZascKfyZGzwlvEl3uRz
BgMSR/yFIkFgH66Le5K+ja14AX6+r4greA633Cc0PdmNQxySSsyVM+e40Jtp+s+o
FOicIkhYb7K21oZFpm5WY3EK2K6F9ep/Oe7fo8kU+Ab9TgD32R/JSigNkUmX2lFp
OUsFtMQkJSWbG7nE/IQTa2d8+N8xw03XG3Be0xjV05aqSbrY/mU=
=+/nS
-----END PGP SIGNATURE-----

--VJ8ekWOahVlyyXGO--

