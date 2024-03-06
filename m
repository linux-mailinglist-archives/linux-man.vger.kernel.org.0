Return-Path: <linux-man+bounces-548-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A4D8740FA
	for <lists+linux-man@lfdr.de>; Wed,  6 Mar 2024 21:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 583AFB22DC5
	for <lists+linux-man@lfdr.de>; Wed,  6 Mar 2024 20:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC34140380;
	Wed,  6 Mar 2024 20:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="baqjaQdw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC7F13F45A
	for <linux-man@vger.kernel.org>; Wed,  6 Mar 2024 20:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709755381; cv=none; b=ChQ0pOTwO278E91tds77hUHkREICExzTrAfBbo3eF9AepEFFbvzGHi5VO45nLSsZugiYkLkN6RbK4nFhc32IpevXDGhO1+xx4FuMJV1UnRDCiubtr6ZCLndxaBzh5do/TagAzPNGSKmgiAVV70pizYmJ6ghrOnyOnCfVXY65L3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709755381; c=relaxed/simple;
	bh=2S+siXe+Hl7N2zzsFJwHkf8WaTqk5UK1eg2ciSy+cjg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PG4CI1q/F4xZdh721+Y0Qsp4NTYdUD8fzEdMWkHWB27GntUtOS+gGjk6slPkY6LxlNUKWFFCcsBIeN2Xm6MWtufEcD0sduOabv8IWaFcGoffdLMo44C9++I61ciS8SBMSy57i7g/YT3m3XFRC/9qqNLKtcLcGHYxF7H/NrrE1UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=baqjaQdw; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-42e8e85a969so247651cf.2
        for <linux-man@vger.kernel.org>; Wed, 06 Mar 2024 12:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709755378; x=1710360178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eigXN7LPcKjGDg3Yjfw1Y4fLMBlGsaWx+gzEXQMxQpo=;
        b=baqjaQdwpADl2o91HDWadwI0uM3JJblZyC2tYKyldLcIKEnKUpWx0HaSTqTYxtgQYn
         FB3z7oUgMFz+SQ7djQVCpYpifRGby4AFeuBJMiMsqtQ6ZlbgM24WeS9AuEjr6+ZAEPDK
         Vk7rjHK4zbgoh9qmXHpEUv+uniIUVJvqFyEDwhtyqBSSrOq8pXvt/mu7FIOwQea8n6O4
         l9vRO0Wyvn2NrHk9Qqw0tIwZOR7LtyiuiWDjnI46lLWIVqxE+MB5F/oYMq8cD7zmenfm
         FvDsjYtitu3aSPFwSSigh53R2wHIeJXtmuePdWa2cTzmRhnr9UqJsewcJBBI3J4sRyUn
         XQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709755378; x=1710360178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eigXN7LPcKjGDg3Yjfw1Y4fLMBlGsaWx+gzEXQMxQpo=;
        b=h22UUkeTquLtFN31VJhy9F9fiJanMM3ghKO1fEUpGVQQuT4daGm4PU8a5hvt8aJJXE
         wBdUSF5Ig8M56liQbCigag+pk49Ar0AUey5vEDeb7vucalUfcEffUWSF89EbF/om7zR7
         tjH1/j/re3FEmoQRgFnJ8zDQ9CMvvHzZSFc0VF7GeZdFruN/ZeMVr07AIxFtVSszPMIY
         UDdHxLgx9jSmIuzBhAsgUC+j64xqbZL6DCVHoAOv3S0lEmuP5nYqwbogfn6derhFwjj9
         o0wW7H2BIzotEo403MjCa+7RmzdpgccjYK/NOdTQOq3jo/YB/cEboSeAiXek05m2D1Fy
         W3Rg==
X-Gm-Message-State: AOJu0YyF3vLa8uUgRv2vztU9JTyP6YuMAAVVeCk0dEAmJfVzVejfgnMm
	brmLyT5qQxGRyre7YrwNHxROnA80yFrpdXWD9TiAl8OpytGlbx0uQWoNedSZk89kyQpdFIxkz4t
	rS3xHDVmzhI8tGFnlNJqCALWxu7U=
X-Google-Smtp-Source: AGHT+IHwbhbaLL6yS8OUhb1ZEtiMj+spGREwhmbAUkPWfmFjLzRvaQq5RCmjhhaTe59hHMjE0KZf7FKbynMBeh/5b20=
X-Received: by 2002:a05:622a:214:b0:42e:f790:7f71 with SMTP id
 b20-20020a05622a021400b0042ef7907f71mr6877674qtx.59.1709755378466; Wed, 06
 Mar 2024 12:02:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CALPhBBbmrAMR70WT-JfKoSQVLhfxKv5B68Gyo_4zZRY-7SS0-g@mail.gmail.com>
 <ZeX1JTt2Sxot-JFU@debian> <CALPhBBYSEAh2LBSZ0CAs-dwX=i+OBhMAbDxfFJ=T=1rAvnuJvQ@mail.gmail.com>
 <ZehfWUkNWucW0pW4@debian>
In-Reply-To: <ZehfWUkNWucW0pW4@debian>
From: =?UTF-8?B?TGlsaSBQw7xzcMO2aw==?= <poordirtylili@gmail.com>
Date: Wed, 6 Mar 2024 21:02:47 +0100
Message-ID: <CALPhBBa47G3H18HeKasT-X6WndOy-1O2n4yR0D-vZALrLzLeQQ@mail.gmail.com>
Subject: Re: patch - fixing sample program in unix.7
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex, I tried to follow your instructions and applied your concept.
I hope it is ok now.
Cheers
PuLi


From fca55af92ec1993823e70a4460a08197fa8da01a Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?P=3DC3=3DBCsp=3DC3=3DB6k=3D20Lili?=3D <poordirtylili@gmai=
l.com>
Date: Wed, 6 Mar 2024 20:51:38 +0100
Subject: [PATCH] [patch] sample program in man7/unix.7

Signed-off-by: PuLi <poordirtylili@gmail.com>
Fixes: 15545eb6d7ae ("unix.7: Add example")
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>

Client wants to send END while server already closed the connection
on DOWN, so connection is broken instead of the Result =3D 0 in the
sample on sending a single DOWN.
Now, the server disconnects only on first END. After DOWN, all further
processing of number stops.
Patch does not handle cases of double END sending, multiple clients
etc.
---
 man7/unix.7 | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/man7/unix.7 b/man7/unix.7
index cb1dcae45..2dc4f489e 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -1057,12 +1057,16 @@ main(int argc, char *argv[])
 \&
             if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
                 down_flag =3D 1;
-                break;
+                continue;
             }
 \&
             if (!strncmp(buffer, "END", sizeof(buffer))) {
                 break;
             }
+\&
+            if (down_flag) {
+                continue;
+            }
 \&
             /* Add received summand. */
 \&
--=20
2.39.2

Alejandro Colomar <alx@kernel.org> ezt =C3=ADrta (id=C5=91pont: 2024. m=C3=
=A1rc. 6.,
Sze, 13:19):
>
> [CC +=3D Heinrich]
>
> Hi Lili,
>
> On Mon, Mar 04, 2024 at 05:41:17PM +0100, Lili P=C3=BCsp=C3=B6k wrote:
> > Hi Alejandro,
> > Thanks for replying.
> >
> > The client, after connecting, processes the argv items and sends all
> > of them, then issues the sending of a final END which, on the server
> > side, is not expected after DOWN which would halt the reading (In that
> > case, too, the processing of argv + the END should happen).
> > After the change,  DOWN does not break the reading, the closing END is
> > processed and there is no broken connection when client tries to send
> > END while the server closes after sending the result, which is not
> > received by the client.
>
> Hmmm, now I understand.
>
> >
> > --- without DOWN ----
> > client         server
> > argv1..N + END --->
> > <----- result
> > <---- connection closed
> >
> > -----------problem-----------
> > argv1...N + DOWN ->
> > <---- result
> > END -> ?????
> > <---- connection closed
> >
> > ------- solution:---------
> > argv1...N + DOWN + END ->
> > <---- result
> > <---- connection closed
>
> Yep, I can reproduce this problem all the way back to the original
> implementation of the example programs.  I extracted the original
> programs with:
>
>         $ git show 15545eb6d7:man7/unix.7 | man /dev/stdin | cat
>
> And then cut and paste to the C files.
>
>         $ cc -Wall -o server server.c
>         $ cc -Wall -o client client.c
>         $ ./server &
>         [1] 94644
>         $ ./client 3 4
>         Result =3D 7
>         $ ./client 11 -5
>         Result =3D 6
>         $ ./client DOWN
>         recv: Connection reset by peer
>         [1]+  Done                    ./server
>         $
>
> This behavior conflicts with the behavior shown in the manual page,
> which shows (for the last command):
>
>         $ ./client DOWN
>         Result =3D 0
>         [1]+  Done                    ./server
>
> So it seems like a bug.  Maybe the server program was slow enough when
> it was implemented in 2016, that the server hadn't closed the socket
> when the client sent "END", so the client didn't fail to read the
> result??
>
> Anyway, we need to fix it.  Agree.
>
> Please add
>
>         Fixes: 15545eb6d7ae ("unix.7: Add example")
>         Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>
>
> to the commit message, as well as a small description of the problem.
>
> > I hope I did not overlook something.
>
> However, I'm not convinced by your patch.  It seems to allow
>
>         $ ./client DOWN 4 3
>
> which I don't think we want to support.  I think we have two options:
>
> -  The client avoids sending "END" after "DOWN" (so DOWN implies END).
> -  The server only accepts "END" after "DOWN".
>
> Does it make sense to you?
>
> Have a lovely day!
> Alex
>
> > OK, maybe with a unique message containing only the DOWN from client,
> > the issue is not visible, because there is no result to return to
> > client and we don't care it the connection is just broken....
> >
> > Cheers
> > PuLi
> >
> > Alejandro Colomar <alx@kernel.org> ezt =C3=ADrta (id=C5=91pont: 2024. m=
=C3=A1rc. 4., H, 17:22):
> > >
> > > Hi Lili,
> > >
> > > > Subject: Re: patch - fixing sample program in unix.7
> > >
> > > On Sun, Mar 03, 2024 at 08:27:17PM +0100, Lili P=C3=BCsp=C3=B6k wrote=
:
> > > > diff --git a/man7/unix.7 b/man7/unix.7
> > >
> > > Please add some commit message.  I don't understand what this patch
> > > does.  How is it broken, and how does it fix it?
> > >
> > > > index cb1dcae45..7fb41af99 100644
> > > > --- a/man7/unix.7
> > > > +++ b/man7/unix.7
> > > > @@ -1057,7 +1057,7 @@ main(int argc, char *argv[])
> > > > \&
> > > >             if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
> > > >                 down_flag =3D 1;
> > > > -                break;
> > > > +                continue;
> > >
> > > DOWN is used to stop the server.  How would 'continue' help?
> > >
> > >
> > >         $ MANWIDTH=3D66 man unix | grep -C2 DOWN
> > >              tegers.  The client prints the sum and exits.   The  ser=
ver
> > >              waits  for the next client to connect.  To stop the serv=
er,
> > >              the client is called with the command=E2=80=90line argum=
ent "DOWN".
> > >
> > >              The following output was recorded while running the  ser=
ver
> > >              in the background and repeatedly executing the client.  =
Ex=E2=80=90
> > >              ecution  of  the  server  program ends when it receives =
the
> > >              "DOWN" command.
> > >
> > >            Example output
> > >         --
> > >                  $ ./client 11 -5
> > >                  Result =3D 6
> > >                  $ ./client DOWN
> > >                  Result =3D 0
> > >                  [1]+  Done                    ./server
> > >         --
> > >                          /* Handle commands. */
> > >
> > >                          if (!strncmp(buffer, "DOWN", sizeof(buffer))=
) {
> > >                              down_flag =3D 1;
> > >                              break;
> > >         --
> > >                      close(data_socket);
> > >
> > >                      /* Quit on DOWN command. */
> > >
> > >                      if (down_flag) {
> > >
> > > Have a lovely day,
> > > Alex
> > >
> > >
> > > >             }
> > > > \&
> > > >             if (!strncmp(buffer, "END", sizeof(buffer))) {
> > > >
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
> > > Looking for a remote C programming job at the moment.
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

