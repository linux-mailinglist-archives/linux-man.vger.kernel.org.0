Return-Path: <linux-man+bounces-544-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A916B873629
	for <lists+linux-man@lfdr.de>; Wed,  6 Mar 2024 13:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 196F7B20340
	for <lists+linux-man@lfdr.de>; Wed,  6 Mar 2024 12:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB107FBDB;
	Wed,  6 Mar 2024 12:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/Li8XhG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F7A7827F
	for <linux-man@vger.kernel.org>; Wed,  6 Mar 2024 12:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709727581; cv=none; b=TuTduWplxRrSVQUun9Y9buNje2xNvFRZJDMkGJS75Ex6o0maM4FSo/zPfNGJHj/1rMzqjPrLswV5nLe9YzFD1hKr/1cy+PBqhOu7lspBnnTliR7Hqw5RBxoUp2j2tFk1iN3SnJmy1Dv7kiR5kmDPjlsuD4bTDc7GR38RpKY5zPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709727581; c=relaxed/simple;
	bh=bo6B+c7HJu5jkv0FshNdd3U6E0AA9sNt5ZFFDa3rND8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c7CvgVXYm3yFcN5HxpvJ50YaQqK2h8HyEbUf9JWtVsQa9gMxwllMwJ2m9fbSNrhV7XHR3Er9nCOw91C4KE/AGWcU0TgcbIpxCG11Oq1ZbzscUhworX9pke7bdOiqBM1kN/yC0yys1SWKYFdqRwusHOELwJf+s5js6rJQTLuUaSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/Li8XhG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDD9BC433C7;
	Wed,  6 Mar 2024 12:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709727580;
	bh=bo6B+c7HJu5jkv0FshNdd3U6E0AA9sNt5ZFFDa3rND8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r/Li8XhGC9qB8glQoj8Wf0RG4tN4DCEzOlivka5X8fKZHeHfXiYpjfzwj9DIWBaYK
	 94FaDdzaJOtepu5GuNaczKlB7Oet0jJuGKdlspwU9tTYRRWDyMqHGYNTnutsCNg2x3
	 7gmJJthHf/dZV2mZWFbYozkvstb/8sepc7edaDtTXU5sUxPNnNwxsQSIPTAp1dzn4m
	 MbCPWUM24w3b4CHN3yrfunrz0dBTgYbYKokON13/SL4Kdahdc32g5Hco/CPYUF4AIG
	 ddyiMh2/hDYLbwSgzPHr4EUobFG9COfh6FaFVlp9O9Z7zAD9fhadAmAZsxsv0yAGZm
	 fg85ACKuaOrUQ==
Date: Wed, 6 Mar 2024 13:19:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lili =?utf-8?B?UMO8c3DDtms=?= <poordirtylili@gmail.com>
Cc: linux-man@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: patch - fixing sample program in unix.7
Message-ID: <ZehfWUkNWucW0pW4@debian>
References: <CALPhBBbmrAMR70WT-JfKoSQVLhfxKv5B68Gyo_4zZRY-7SS0-g@mail.gmail.com>
 <ZeX1JTt2Sxot-JFU@debian>
 <CALPhBBYSEAh2LBSZ0CAs-dwX=i+OBhMAbDxfFJ=T=1rAvnuJvQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/mHK1R9wF8Gkmdo7"
Content-Disposition: inline
In-Reply-To: <CALPhBBYSEAh2LBSZ0CAs-dwX=i+OBhMAbDxfFJ=T=1rAvnuJvQ@mail.gmail.com>


--/mHK1R9wF8Gkmdo7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Mar 2024 13:19:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lili =?utf-8?B?UMO8c3DDtms=?= <poordirtylili@gmail.com>
Cc: linux-man@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: patch - fixing sample program in unix.7

[CC +=3D Heinrich]

Hi Lili,

On Mon, Mar 04, 2024 at 05:41:17PM +0100, Lili P=C3=BCsp=C3=B6k wrote:
> Hi Alejandro,
> Thanks for replying.
>=20
> The client, after connecting, processes the argv items and sends all
> of them, then issues the sending of a final END which, on the server
> side, is not expected after DOWN which would halt the reading (In that
> case, too, the processing of argv + the END should happen).
> After the change,  DOWN does not break the reading, the closing END is
> processed and there is no broken connection when client tries to send
> END while the server closes after sending the result, which is not
> received by the client.

Hmmm, now I understand.

>=20
> --- without DOWN ----
> client         server
> argv1..N + END --->
> <----- result
> <---- connection closed
>=20
> -----------problem-----------
> argv1...N + DOWN ->
> <---- result
> END -> ?????
> <---- connection closed
>=20
> ------- solution:---------
> argv1...N + DOWN + END ->
> <---- result
> <---- connection closed

Yep, I can reproduce this problem all the way back to the original
implementation of the example programs.  I extracted the original
programs with:

	$ git show 15545eb6d7:man7/unix.7 | man /dev/stdin | cat

And then cut and paste to the C files.

	$ cc -Wall -o server server.c=20
	$ cc -Wall -o client client.c=20
	$ ./server &
	[1] 94644
	$ ./client 3 4
	Result =3D 7
	$ ./client 11 -5
	Result =3D 6
	$ ./client DOWN
	recv: Connection reset by peer
	[1]+  Done                    ./server
	$=20

This behavior conflicts with the behavior shown in the manual page,
which shows (for the last command):

	$ ./client DOWN
	Result =3D 0
	[1]+  Done                    ./server

So it seems like a bug.  Maybe the server program was slow enough when
it was implemented in 2016, that the server hadn't closed the socket
when the client sent "END", so the client didn't fail to read the
result??

Anyway, we need to fix it.  Agree.

Please add

	Fixes: 15545eb6d7ae ("unix.7: Add example")
	Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>

to the commit message, as well as a small description of the problem.

> I hope I did not overlook something.

However, I'm not convinced by your patch.  It seems to allow

	$ ./client DOWN 4 3

which I don't think we want to support.  I think we have two options:

-  The client avoids sending "END" after "DOWN" (so DOWN implies END).
-  The server only accepts "END" after "DOWN".

Does it make sense to you?

Have a lovely day!
Alex

> OK, maybe with a unique message containing only the DOWN from client,
> the issue is not visible, because there is no result to return to
> client and we don't care it the connection is just broken....
>=20
> Cheers
> PuLi
>=20
> Alejandro Colomar <alx@kernel.org> ezt =C3=ADrta (id=C5=91pont: 2024. m=
=C3=A1rc. 4., H, 17:22):
> >
> > Hi Lili,
> >
> > > Subject: Re: patch - fixing sample program in unix.7
> >
> > On Sun, Mar 03, 2024 at 08:27:17PM +0100, Lili P=C3=BCsp=C3=B6k wrote:
> > > diff --git a/man7/unix.7 b/man7/unix.7
> >
> > Please add some commit message.  I don't understand what this patch
> > does.  How is it broken, and how does it fix it?
> >
> > > index cb1dcae45..7fb41af99 100644
> > > --- a/man7/unix.7
> > > +++ b/man7/unix.7
> > > @@ -1057,7 +1057,7 @@ main(int argc, char *argv[])
> > > \&
> > >             if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
> > >                 down_flag =3D 1;
> > > -                break;
> > > +                continue;
> >
> > DOWN is used to stop the server.  How would 'continue' help?
> >
> >
> >         $ MANWIDTH=3D66 man unix | grep -C2 DOWN
> >              tegers.  The client prints the sum and exits.   The  server
> >              waits  for the next client to connect.  To stop the server,
> >              the client is called with the command=E2=80=90line argumen=
t "DOWN".
> >
> >              The following output was recorded while running the  server
> >              in the background and repeatedly executing the client.  Ex=
=E2=80=90
> >              ecution  of  the  server  program ends when it receives the
> >              "DOWN" command.
> >
> >            Example output
> >         --
> >                  $ ./client 11 -5
> >                  Result =3D 6
> >                  $ ./client DOWN
> >                  Result =3D 0
> >                  [1]+  Done                    ./server
> >         --
> >                          /* Handle commands. */
> >
> >                          if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
> >                              down_flag =3D 1;
> >                              break;
> >         --
> >                      close(data_socket);
> >
> >                      /* Quit on DOWN command. */
> >
> >                      if (down_flag) {
> >
> > Have a lovely day,
> > Alex
> >
> >
> > >             }
> > > \&
> > >             if (!strncmp(buffer, "END", sizeof(buffer))) {
> > >
> >
> > --
> > <https://www.alejandro-colomar.es/>
> > Looking for a remote C programming job at the moment.

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--/mHK1R9wF8Gkmdo7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXoX1kACgkQnowa+77/
2zIWVhAAhLJ6aaGjWpUduGLzrC3h4Z26yFytVb/+sy8m/uWpHTusHpq6K8XAh/Uv
bLD4Bxv5Ncvb9fmr95reOAScH4gSdIa7tDA+qeDLBzMtrNdR9SdKqJjhWzPipK6n
DqNwkGoPlcPefeSV6cIKbAzHFhcCEYzmppfGP9QjGDDuYd6mVhaqeo2xeJxAyjBJ
HH9wuRVqXPiS8CfDNwYW/CLgnKSyprW53LAswv3fYIhmS7CKKx19/RVEr2xdjrbf
lFpPPf0AHq6n53v54hz+OndDl1Y0/1jfbgqjsvNdjgLYz7kY0v62bYqVk6Wo5DDX
MOkOza+NbsEKi/oTvaJjtgtxxjAMnD5KAgWu6mRv/RBzWTDNGQ9BfajlnPVyLGtr
NP4XwFpAcHklOeDMaEwDSOqA5CZkRtXto9InPfXJon5FGLqul9CXrhiTJygeqlYO
NEm8DpeGQG3HmdcH3ujJZkYnXGYKEuyw8YRAHis6buXWAa+Jo6kL6kI7QOybHtsO
PfPCfprULzhUAYD4jGAfPYUzrRX7QvTOcnScHMH4FqZeKenAa7u0E1bsomg5r6Kc
gjYmVkPoa6WTX/7uXKY3jiEFA6Vfgx5AUR6j9JG9Hlfr1vfCYFX4yMiPQZq3J5YC
/QWped4MhmQvSdG4ePrk/d2NQyujvfid+QsDxLlUpIgpUkxebTU=
=oKhU
-----END PGP SIGNATURE-----

--/mHK1R9wF8Gkmdo7--

