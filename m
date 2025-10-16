Return-Path: <linux-man+bounces-4166-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F5BBE1130
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 02:06:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C643E19C723F
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 00:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F5E3C1F;
	Thu, 16 Oct 2025 00:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FSHll9Te"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034BCDDD2
	for <linux-man@vger.kernel.org>; Thu, 16 Oct 2025 00:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760573203; cv=none; b=CTnfHNGFKvyHcfLlrm+i7P+wEA0wcsCOgeuwXnq+t4Hi9jRd6Q3aN67B8MzK/wLgPfS9Medf38QvedbS3m3n54Hx93wySoVeY5eBEddrBC2j97NGvob2xhOhwuCXPNb8Rq0uOUrgGBMvON8KB0mfBTaTsK3p4aZUB1Ykr9qq3dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760573203; c=relaxed/simple;
	bh=0L47fn3f4xjYW+4X6bPFUBMn2ycq2vn+SjtXuHK6wFE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OQ4gYwA5UIoM26LvJYs3W9ptkaCxGfQy7XtHcg51FwrVNjGvNK7X8o9KRn4HNRSLPIIOwgK9QIo9Rks6QuJlGSJ09BC1j9etpYjI0j9R7hpHXAZ2fOyoRL5zd8WCTcZvz7czYc4RwLAhqF6Idd74Dx+ULe1Uac/W6KpwPcGVXlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FSHll9Te; arc=none smtp.client-ip=74.125.224.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-633be3be1e6so174917d50.1
        for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 17:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760573201; x=1761178001; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YepbH2WoVlikrcu1hs+BLkc9rUuCOiyjqvpK+c1NvSk=;
        b=FSHll9TeyHpUPQu1ti0OCkaRt+fT89ARZOWuvhWXflbszrF+C1Tsqb9/zu3oM8VKFg
         sjkdWHIMgKbPGejGPCkWrJ4Vh645/Rsis4IJ2K2QQrLhtOILmZMZLUNFBrh2Xig01gco
         13XUkZqF0ZgdxF3MvYIPQuf4CldxOA0eoj67zxon4khVWeTlP6m/ucEE1qBexfJq37lY
         pyJT6UfzmMzQhRDlkZ64K6XqnuoWhG0KKGeeA29ylelHSOnh263GP1kX5CuzEfJ0MWNS
         fAAUZhSgXMAwutRPIF3JpuwLs1nNw18GZ2l6pWPWjCfW01LKplQWCCnACxsn74xCQmxF
         iQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760573201; x=1761178001;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YepbH2WoVlikrcu1hs+BLkc9rUuCOiyjqvpK+c1NvSk=;
        b=BSiqC5KGD9E42UjHt+KoiIpqKgsewRTQCQQ6JSGDNrVpRN49Xg+UZIiSFOzHOKkWqR
         fgOCN+FViPQUAF/bjciIElo6G8ppPmNz+MxLVaWCI2RIYnMORPotWFMHOXhAb0J9l4Hz
         ktnydI4VF3QQdqLlF/XNhguFLJp/Gi+hpb0bf1jRUEvB08dxcJhKsjIu8YLhGn413y/W
         10y5o6KS9lYDFKkGHj4GrTkBdreMrsDs4SJbqwX14Kanz9DT4jCFszjQ4TK1Vjc9hF27
         ztn9pBHktL6bjxfOaqAJug0m3XFom3zFRCPxgXQsrlU/GctuD+x/7xqSGf80YorLlkXa
         KaJA==
X-Gm-Message-State: AOJu0YyHfhX0y6ggjPYeencb4vWEX7OL4KbEI5eDsAx50OkDy3D95X8D
	/MXQEpMQFvjr585b+Nu52Feh1vedeNTx/H28XugKiYd1KsEHKF+6dBHPepz4oT03gXmDD+IgV/g
	4aWTf20mrKVoV7xFZtJth7FdtLMPBnhc=
X-Gm-Gg: ASbGncvSF2XUBtpWtytw1bs4cna1N8Hs0KGzHpsbr2vnzx1cCSbztyCbXKhXLEheb4z
	DzvRNNH7CNj2OpD3Fwwpqrk4YkfYadighn6/m1esAZX4iMRLrWGYg1SAVgxbSs50uI55PtU2BmG
	EJ0PE6zzKVaziOENY1YJw4+eyTMbCZXET+H7bMllBox5cIXAfIDKJEquBUaOyAFJbPB7BSwZaMn
	FTDwQAqRhPmHYX0Q9fIs0zZqLcmfJb/tfdBgIM4OQ8ase1dCeMwoCgvQpV7W/bkV1g9Rbc=
X-Google-Smtp-Source: AGHT+IHtxfpyitBuOX9th+Uo1kLQUU4kfFU3wCt9iF+hRmf/IzoItohc/ThPRUR3YhdKW1M8+ZI4fhDzH/ZHwuoTrlk=
X-Received: by 2002:a05:690e:158f:10b0:63c:f5a6:f306 with SMTP id
 956f58d0204a3-63e090f917bmr1114093d50.29.1760573200577; Wed, 15 Oct 2025
 17:06:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
 <20251013191049.193375-2-kolyshkin@gmail.com> <gavot3gmd5kmwzhlyqobzp36qdtqzyt7zaqaw4lnfbfxanm6d5@amvqcybaaqbx>
In-Reply-To: <gavot3gmd5kmwzhlyqobzp36qdtqzyt7zaqaw4lnfbfxanm6d5@amvqcybaaqbx>
From: Kirill Kolyshkin <kolyshkin@gmail.com>
Date: Wed, 15 Oct 2025 17:06:29 -0700
X-Gm-Features: AS18NWAzoAo_JvZ5Lz_5h5FefRPpqdIfct0cRYZXJZhYV-54mY6yChb-nQ_wlzY
Message-ID: <CAGmPdrxdwVSkUh1xWnp1bbtirnJSZTiVCOCn43iMn_AKgsForg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 15, 2025 at 2:16=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Kir,
>
> On Mon, Oct 13, 2025 at 12:10:48PM -0700, Kir Kolyshkin wrote:
> > PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).
> >
> > Add a TODO to describe the nuances of using poll/epoll/select
> > with a pidfd referring to a process vs a thread.
> >
> > [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit/?id=3D64bef697d33b
> >
> > Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> > ---
>
> As far as I can see, the only change in v3 compared to v2 is that the
> commit message is smaller now.  Is that correct?

Not quite; I have answered to your earlier concern, let me quote it here:

> >  The
> >  .BR pidfd_open ()
> >  system call creates a file descriptor that refers to
> > -the process whose PID is specified in
> > +the task whose PID is specified in
>
> Should this say TID (thread ID)?  Or is it correct as PID?  I don't know
> which is appropriate here.

So I removed the PID and TID usage:

> > -the process whose PID is specified in
> > +the task referenced by

In my opinion, as the function is named pidfd_open, it's hard to remove
the term PID entirely, but in some cases we can rephrase the text to
not use it. This is what v3 does.

I'm not entirely against using the term TID, but here it may result in
even more confusion.

> Have a lovely night!
> Alex
>
> >  man/man2/pidfd_open.2 | 35 +++++++++++++++++++++++++++++------
> >  1 file changed, 29 insertions(+), 6 deletions(-)
> >
> > diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
> > index 3c7c568c2..60cac6fdd 100644
> > --- a/man/man2/pidfd_open.2
> > +++ b/man/man2/pidfd_open.2
> > @@ -4,7 +4,7 @@
> >  .\"
> >  .TH pidfd_open 2 (date) "Linux man-pages (unreleased)"
> >  .SH NAME
> > -pidfd_open \- obtain a file descriptor that refers to a process
> > +pidfd_open \- obtain a file descriptor that refers to a task
> >  .SH LIBRARY
> >  Standard C library
> >  .RI ( libc ,\~ \-lc )
> > @@ -25,24 +25,32 @@ .SH DESCRIPTION
> >  The
> >  .BR pidfd_open ()
> >  system call creates a file descriptor that refers to
> > -the process whose PID is specified in
> > +the task referenced by
> >  .IR pid .
> >  The file descriptor is returned as the function result;
> >  the close-on-exec flag is set on the file descriptor.
> >  .P
> >  The
> >  .I flags
> > -argument either has the value 0, or contains the following flag:
> > +argument either has the value 0, or contains the following flags:
> >  .TP
> >  .BR PIDFD_NONBLOCK " (since Linux 5.10)"
> >  .\" commit 4da9af0014b51c8b015ed8c622440ef28912efe6
> >  Return a nonblocking file descriptor.
> > -If the process referred to by the file descriptor has not yet terminat=
ed,
> > +If the task referred to by the file descriptor has not yet terminated,
> >  then an attempt to wait on the file descriptor using
> >  .BR waitid (2)
> >  will immediately return the error
> >  .B EAGAIN
> >  rather than blocking.
> > +.TP
> > +.BR PIDFD_THREAD " (since Linux 6.9)"
> > +.\" commit 64bef697d33b75fc06c5789b3f8108680271529f
> > +Create a file descriptor that refers to a specific thread, rather than=
 a process
> > +(thread-group leader). If this flag is not set,
> > +.I pid
> > +must refer to a process.
> > +.P
> >  .SH RETURN VALUE
> >  On success,
> >  .BR pidfd_open ()
> > @@ -155,13 +163,28 @@ .SS Use cases for PID file descriptors
> >  .BR select (2),
> >  and
> >  .BR epoll (7).
> > -When the process that it refers to terminates,
> > -these interfaces indicate the file descriptor as readable.
> > +When the task that it refers to terminates and becomes a zombie,
> > +these interfaces indicate the file descriptor as readable
> > +.RB ( EPOLLIN ).
> > +When the task is reaped, these interfaces produce a hangup event
> > +.\" commit 43f0df54c96f
> > +.RB ( EPOLLHUP ).
> >  Note, however, that in the current implementation,
> >  nothing can be read from the file descriptor
> >  .RB ( read (2)
> >  on the file descriptor fails with the error
> >  .BR EINVAL ).
> > +The polling behavior depends on whether
> > +.B PIDFD_THREAD
> > +flag was used when obtaining the file descriptor:
> > +.RS
> > +.IP \[bu] 3
> > +With \fBPIDFD_THREAD\fR, the file descriptor becomes readable when the=
 task
> > +exits and becomes a zombie, even if the thread-group is not empty.
> > +.IP \[bu] 3
> > +Without \fBPIDFD_THREAD\fR, the file descriptor becomes readable only =
when
> > +the last thread in the thread group exits.
> > +.RE
> >  .IP \[bu]
> >  If the PID file descriptor refers to a child of the calling process,
> >  then it can be waited on using
> > --
> > 2.51.0
> >
>
> --
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).

