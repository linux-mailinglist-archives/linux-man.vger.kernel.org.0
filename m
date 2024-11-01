Return-Path: <linux-man+bounces-1815-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 915A89B974A
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 19:19:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5043A281C0C
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 18:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAC31CDFD8;
	Fri,  1 Nov 2024 18:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RI6YeC0F"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379B31AB523
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 18:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730485174; cv=none; b=U1I1gYaCnkBfvhxQJq7NouYKOmUgtk2epioKVA2aPySbmYgZS/EqSB8+qkqtHmSEgPaKphT299yl3gX+8sMtiE5cEVlVnfQFmx1j+sy01KAKC5/r50jIuFx/krYwQzUzQgQTsRvsyC6na7rUgEUA88ig94MTIxv0KVivz9sBcuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730485174; c=relaxed/simple;
	bh=e/JuFjLxAkY9/2840JwIFVwiYSAtqEb7V4148Hvo2as=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QHO3X9Q7yNiJ4DZqXZ60aqQY9Fg1TrFJiAqx9MIZXNTw0aDoNAaFKgyCRobfdNP58tD5reFBOTmwTl0kSn44wxjpI+OXUL76dPpzEmjqXsrAQ4oGF3gLlHz6iUPpVwBsOIfM9NETCSRaLp5V6oRHarjmNdBbYzoYV/dekTorPGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RI6YeC0F; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-460969c49f2so41671cf.0
        for <linux-man@vger.kernel.org>; Fri, 01 Nov 2024 11:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730485170; x=1731089970; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qgLXiMi+J/NggzUVpUpWAWf65WUGcPu7JpIAGtH2HNQ=;
        b=RI6YeC0F4iMm6UearPpmK5yftZr0jZfE+cP0k45ImLIRf9/LDr4Mqj/GnXQV0myLqN
         nfCUmc8h7QdewGO6Zl5badmKbWgs/CvvWa0vb2m1fnZ8lz5BNHVTRBxI+xrpjT2yxCdC
         Sa+PtgXz7fM3UQlBuoG1XnMBsdaiUAHR67LiSnEws2K/90HtnytV8zqwMhzDVa/HdMdi
         XO4+yo/IFIlj8KEjU5bI9cOO1k/RrR6LGDWvwrodNFHvRB/6Kg/MiDZPo9Bj5rg1Bkv4
         /HN23XggNhWxhi8b8XC6j+AN03M/GjBtL1ilhuSxDU94Ne1BwAFKYgCcQkeBXPIJUVfa
         W1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730485170; x=1731089970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qgLXiMi+J/NggzUVpUpWAWf65WUGcPu7JpIAGtH2HNQ=;
        b=Y+1QAqxDuJ8DpQkOGY0OXS0C7Xv02jcJb3r1bwjqZPBkbgDZknQBFp3jpCM0GhgIaI
         C/P9eNR0+B+h7nmWC3YhkwInlVk882nW6iOQHgpet6a2ibNd6uM6Hz1vUREhI2HQ5Qc0
         lbMWMiptmXJqya5lPSX9wgb+YaxB1QCyALIPfeVxt0kDMNRVhF6Urho62tgocozHUlqc
         x5sIPzkKG0DTXZIZDhT4m3f2koTCrVvxRqfVmBiTDnU80ETrN72oxCRAHOfVBdi7jNQj
         RHAnBnejo/0vgZZrL6iH3lLzGZtnwog4BFz3nurU/ErIz+SzMQoaa0BO69Z3BOKm9LO8
         l8qQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSV4+CxrGJ3uXC/hMnuD8HmFg4goRA1WSYYZ87RjQ+iA11EXa7n05vBYjhzrIzspa1hNeVN+7iVsk=@vger.kernel.org
X-Gm-Message-State: AOJu0YwycjyUgvGrZC1o2hdI/UfgdUHuAszH8HJ8jZY/STyYJ40O+T4e
	ASqa3TexpTN4pZu9LEsKUukOMI1cK0Mn4NR1OiD138/+8RM+z21gh+nXq6Oypg9XYTeVFkF9CE/
	4hrZVE4r0GULuGyNF0jjqSNlzJPkZC9gktNfZ
X-Gm-Gg: ASbGnctcteGFlDrZ2MrPD9Q9iJ9Suxw0w8nxj3WpdVD3JgBxyfiTkJQgiKdg/BG7ejy
	XhOWkR7KlyvPI8x9vFDh8u4Zx7vhp4N1p
X-Google-Smtp-Source: AGHT+IG0Gl6acjuLtCR71sVFFcnhFR0iLK3dlvBmCqJ96g8N7a0fo0kc0B9rcLPxt1c8RC8oB6pYjnPbwvn9UeWu/NA=
X-Received: by 2002:a05:622a:1ba4:b0:461:4150:b833 with SMTP id
 d75a77b69052e-462c5fe1ce9mr232521cf.22.1730485169937; Fri, 01 Nov 2024
 11:19:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241015211719.1152862-1-irogers@google.com> <20241101132437.ahn7xdgvmqamatce@devuan>
In-Reply-To: <20241101132437.ahn7xdgvmqamatce@devuan>
From: Ian Rogers <irogers@google.com>
Date: Fri, 1 Nov 2024 11:19:18 -0700
Message-ID: <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the page
To: Alejandro Colomar <alx@kernel.org>
Cc: "G . Branden Robinson" <g.branden.robinson@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 1, 2024 at 6:24=E2=80=AFAM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> On Tue, Oct 15, 2024 at 02:17:17PM -0700, Ian Rogers wrote:
> > When /proc/pid/fdinfo was part of proc.5 man page the indentation made
> > sense. As a standalone man page the indentation doesn't need to be so
> > far over to the right. Remove the initial tagged pragraph and move the
> > styling to the initial summary description.
> >
> > Suggested-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  man/man5/proc_pid_fdinfo.5 | 66 ++++++++++++++++++--------------------
> >  1 file changed, 32 insertions(+), 34 deletions(-)
> >
> > diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
> > index 1e23bbe02..8678caf4a 100644
> > --- a/man/man5/proc_pid_fdinfo.5
> > +++ b/man/man5/proc_pid_fdinfo.5
> > @@ -6,20 +6,19 @@
> >  .\"
> >  .TH proc_pid_fdinfo 5 (date) "Linux man-pages (unreleased)"
> >  .SH NAME
> > -/proc/pid/fdinfo/ \- information about file descriptors
> > +.IR /proc/ pid /fdinfo " \- information about file descriptors"
>
> I wouldn't add formatting here for now.  That's something I prefer to be
> cautious about, and if we do it, we should do it in a separate commit.

I'll move it to a separate patch. Is the caution due to a lack of test
infrastructure? That could be something to get resolved, perhaps
through Google summer-of-code and the like.

> >  .SH DESCRIPTION
> > -.TP
> > -.IR /proc/ pid /fdinfo/ " (since Linux 2.6.22)"
> > -This is a subdirectory containing one entry for each file which the
> > -process has open, named by its file descriptor.
> > -The files in this directory are readable only by the owner of the proc=
ess.
> > -The contents of each file can be read to obtain information
> > -about the corresponding file descriptor.
> > -The content depends on the type of file referred to by the
> > -corresponding file descriptor.
> > -.IP
> > +Since Linux 2.6.22,
>
> You could move this information to a HISTORY section.

Sure, tbh I'm not sure anybody cares about this information and it
could be as well to delete it. Sorry people running 17 year old
kernels. For now I'll try to leave it unchanged.

> > +this subdirectory contains one entry for each file that process
> > +.I pid
> > +has open, named by its file descriptor.  The files in this directory
>
> Please don't reflow existing text.  Please read about semantic newlines
> in man-pages(7):
>
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>      In  the  source of a manual page, new sentences should be started
>      on new lines, long sentences should be split into lines at clause
>      breaks (commas, semicolons, colons, and so on), and long  clauses
>      should be split at phrase boundaries.  This convention, sometimes
>      known  as  "semantic newlines", makes it easier to see the effect
>      of patches, which often operate at the level of  individual  sen=E2=
=80=90
>      tences, clauses, or phrases.

I'll update for v3 but I'm reminded of `git diff --word-diff=3Dcolor` so
perhaps this recommendation is outdated.

Thanks,
Ian

> Have a lovely day!
> Alex
>
> > +are readable only by the owner of the process.  The contents of each
> > +file can be read to obtain information about the corresponding file
> > +descriptor.  The content depends on the type of file referred to by
> > +the corresponding file descriptor.
> > +.P
> >  For regular files and directories, we see something like:
> > -.IP
> > +.P
> >  .in +4n
> >  .EX
> >  .RB "$" " cat /proc/12015/fdinfo/4"
> > @@ -28,7 +27,7 @@ flags:  01002002
> >  mnt_id: 21
> >  .EE
> >  .in
> > -.IP
> > +.P
> >  The fields are as follows:
> >  .RS
> >  .TP
> > @@ -51,7 +50,6 @@ this field incorrectly displayed the setting of
> >  at the time the file was opened,
> >  rather than the current setting of the close-on-exec flag.
> >  .TP
> > -.I
> >  .I mnt_id
> >  This field, present since Linux 3.15,
> >  .\" commit 49d063cb353265c3af701bab215ac438ca7df36d
> > @@ -59,13 +57,13 @@ is the ID of the mount containing this file.
> >  See the description of
> >  .IR /proc/ pid /mountinfo .
> >  .RE
> > -.IP
> > +.P
> >  For eventfd file descriptors (see
> >  .BR eventfd (2)),
> >  we see (since Linux 3.8)
> >  .\" commit cbac5542d48127b546a23d816380a7926eee1c25
> >  the following fields:
> > -.IP
> > +.P
> >  .in +4n
> >  .EX
> >  pos: 0
> > @@ -74,16 +72,16 @@ mnt_id:   10
> >  eventfd\-count:               40
> >  .EE
> >  .in
> > -.IP
> > +.P
> >  .I eventfd\-count
> >  is the current value of the eventfd counter, in hexadecimal.
> > -.IP
> > +.P
> >  For epoll file descriptors (see
> >  .BR epoll (7)),
> >  we see (since Linux 3.8)
> >  .\" commit 138d22b58696c506799f8de759804083ff9effae
> >  the following fields:
> > -.IP
> > +.P
> >  .in +4n
> >  .EX
> >  pos: 0
> > @@ -93,7 +91,7 @@ tfd:        9 events:       19 data: 74253d2500000009
> >  tfd:        7 events:       19 data: 74253d2500000007
> >  .EE
> >  .in
> > -.IP
> > +.P
> >  Each of the lines beginning
> >  .I tfd
> >  describes one of the file descriptors being monitored via
> > @@ -110,13 +108,13 @@ descriptor.
> >  The
> >  .I data
> >  field is the data value associated with this file descriptor.
> > -.IP
> > +.P
> >  For signalfd file descriptors (see
> >  .BR signalfd (2)),
> >  we see (since Linux 3.8)
> >  .\" commit 138d22b58696c506799f8de759804083ff9effae
> >  the following fields:
> > -.IP
> > +.P
> >  .in +4n
> >  .EX
> >  pos: 0
> > @@ -125,7 +123,7 @@ mnt_id:   10
> >  sigmask:     0000000000000006
> >  .EE
> >  .in
> > -.IP
> > +.P
> >  .I sigmask
> >  is the hexadecimal mask of signals that are accepted via this
> >  signalfd file descriptor.
> > @@ -135,12 +133,12 @@ and
> >  .BR SIGQUIT ;
> >  see
> >  .BR signal (7).)
> > -.IP
> > +.P
> >  For inotify file descriptors (see
> >  .BR inotify (7)),
> >  we see (since Linux 3.8)
> >  the following fields:
> > -.IP
> > +.P
> >  .in +4n
> >  .EX
> >  pos: 0
> > @@ -150,7 +148,7 @@ inotify wd:2 ino:7ef82a sdev:800001 mask:800afff ig=
nored_mask:0 fhandle\-bytes:8
> >  inotify wd:1 ino:192627 sdev:800001 mask:800afff ignored_mask:0 fhandl=
e\-bytes:8 fhandle\-type:1 f_handle:27261900802dfd73
> >  .EE
> >  .in
> > -.IP
> > +.P
> >  Each of the lines beginning with "inotify" displays information about
> >  one file or directory that is being monitored.
> >  The fields in this line are as follows:
> > @@ -168,19 +166,19 @@ The ID of the device where the target file reside=
s (in hexadecimal).
> >  .I mask
> >  The mask of events being monitored for the target file (in hexadecimal=
).
> >  .RE
> > -.IP
> > +.P
> >  If the kernel was built with exportfs support, the path to the target
> >  file is exposed as a file handle, via three hexadecimal fields:
> >  .IR fhandle\-bytes ,
> >  .IR fhandle\-type ,
> >  and
> >  .IR f_handle .
> > -.IP
> > +.P
> >  For fanotify file descriptors (see
> >  .BR fanotify (7)),
> >  we see (since Linux 3.8)
> >  the following fields:
> > -.IP
> > +.P
> >  .in +4n
> >  .EX
> >  pos: 0
> > @@ -190,7 +188,7 @@ fanotify flags:0 event\-flags:88002
> >  fanotify ino:19264f sdev:800001 mflags:0 mask:1 ignored_mask:0 fhandle=
\-bytes:8 fhandle\-type:1 f_handle:4f261900a82dfd73
> >  .EE
> >  .in
> > -.IP
> > +.P
> >  The fourth line displays information defined when the fanotify group
> >  was created via
> >  .BR fanotify_init (2):
> > @@ -210,7 +208,7 @@ argument given to
> >  .BR fanotify_init (2)
> >  (expressed in hexadecimal).
> >  .RE
> > -.IP
> > +.P
> >  Each additional line shown in the file contains information
> >  about one of the marks in the fanotify group.
> >  Most of these fields are as for inotify, except:
> > @@ -228,16 +226,16 @@ The events mask for this mark
> >  The mask of events that are ignored for this mark
> >  (expressed in hexadecimal).
> >  .RE
> > -.IP
> > +.P
> >  For details on these fields, see
> >  .BR fanotify_mark (2).
> > -.IP
> > +.P
> >  For timerfd file descriptors (see
> >  .BR timerfd (2)),
> >  we see (since Linux 3.17)
> >  .\" commit af9c4957cf212ad9cf0bee34c95cb11de5426e85
> >  the following fields:
> > -.IP
> > +.P
> >  .in +4n
> >  .EX
> >  pos:    0
> > --
> > 2.47.0.rc1.288.g06298d1525-goog
> >
>
> --
> <https://www.alejandro-colomar.es/>

