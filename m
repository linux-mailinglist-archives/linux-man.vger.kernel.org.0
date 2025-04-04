Return-Path: <linux-man+bounces-2746-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E280A7C018
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 16:58:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DC033B5C44
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 14:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5707B1F3D58;
	Fri,  4 Apr 2025 14:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZA+2cq0M"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5191F3BB7
	for <linux-man@vger.kernel.org>; Fri,  4 Apr 2025 14:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743778715; cv=none; b=lNzE4bjphm2SgV/SiGnpTm5TPyQBzKQU4aTw7CCRpzTuvnvlsKaqnEYl8Qmn3eVx4T2ZmGaqpjQqL5kExWXet+8ytFZRM7Dzg7VYrH6HvnGBxevXRF/6ReTpoK/5jSBk/ek/B872YIJc8vkqokS2p9BgL0vAKQw0V9htlbXL5BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743778715; c=relaxed/simple;
	bh=nJxRb9Pmloa7LZmeUv8kdjh2tnz6ZQj4IzI1q9vQtR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ow7GHcevAeNZHDuJ+YFMddg9nJQe+gA05rfNbakPkaL+iSvboiA/wdy7Ezh4NXHyyXKWb5KL0WBjC6tfJYMHPZthkhPZpJKQbihqbMnDMw3l2uZgHIIcChd+obcfCirelH9Pl25Sd54Nv+hX3k7VizKUhV6svKIJlfordVahOkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZA+2cq0M; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so3377766a12.2
        for <linux-man@vger.kernel.org>; Fri, 04 Apr 2025 07:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743778711; x=1744383511; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NKyUSqYseFMW7JdF6nb34YcV5BPeoOgDvwTUtXGXt+w=;
        b=ZA+2cq0MzHX83YgSvcfmui/TcZ9ADrTGHQpIYoqzafYezJd+/tk+ZyX5Huft6dYaIj
         3VRso1zBmVl9XA7+WNtQjqeKt+ZymcjCay5zf4+E13qJs9tS814Z+4kfz9jSYsWx8Nm0
         /MSXPQ9F3i2txZMoaL8FOsf4X5lUbpawURO2rxn/b1VBW8qAqOERz4Kp8kir5BCapYfj
         jOrtZBbafnG+nUA1DyORHw9+TzTDrxTClekibTcVCOVU43tSztkDLXuaqLP9zwK4m1Dr
         xpVql6OKAO5G0vmr7g5Qts06QmO+sjdBa7VSjjI+MqkRMIQn19cWBM1pEG0nBq1sjETB
         vzqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743778711; x=1744383511;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NKyUSqYseFMW7JdF6nb34YcV5BPeoOgDvwTUtXGXt+w=;
        b=taX3LjsHJ4A47Lt9hDekDekWkLUfuXunixytfVt1VXbf7XKXFCKF/fJT+zDr0PNq8j
         NjbAET+WHrOXiWROLYVBD80e3Zm/AwIsGqh+XriBQu1jPvbL8rv+Sv08dzq2Yz/ZmAkZ
         cpZj6rEMSdiYB524zHFo5b/aCMjys4GbN7pFQl061AYs1KXFaL7Eemo8Ye3M+zUhf6rZ
         jQUl4SJHbdzAV/sb20RXISYrr84t+apJwzMam0sUroh77GGsa026UYNxU5w63V3KVKlA
         yCXwzCYie4rli8ak8bzlnHdzvtUZeyKv0kf73NJTPeIzkIJN6vzhgY3q0T4o8II3doUk
         Xkzg==
X-Forwarded-Encrypted: i=1; AJvYcCV41yx95GyH5BbCjFYpx+OOsEcaqnTyPOPRtMtRf09IhHUNdRga1VShJAiF1yu3ywtv9h67VlPhkOE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4rzt16/WagFNkLrQvDwhOHhD2Ef/mlD0N1/t+yxTkNiKq/MlW
	tQW5CaLJgwlO0PoT3hTGBlq8LO9Br0NM6x2G4LPaeRXXIUKA7jQ56yw+3+b+XTbLkkyotabjyiV
	h3CSkQE1jWCP3mQe/OvatNKU2C0M=
X-Gm-Gg: ASbGncu++kft2aXBaQOGbq5MpaMwmPW6/EzdhqBqroWSz6KdXYQtyIdxBUgK2awUR8u
	tHEMJsA9wF+sC5glo5466MGVeVBNJ1AUkxHjUTmIPXTUt7dde7wq8gkxxcZT1aF/GvNWINPUsxn
	tlhSe2LBEb6VseupsPYyCJx6e6XOzn0IReSS5u
X-Google-Smtp-Source: AGHT+IEbVMf8sUvUPSeB4rf6ivsCbSm+7E20fBgWjSRtN4HIX4Ut4s4QDXHxmDcqdlIVvwCseNdCSNbdwZO6UWVUNUI=
X-Received: by 2002:a05:6402:3549:b0:5de:cbed:c955 with SMTP id
 4fb4d7f45d1cf-5f0b658c7c1mr2673138a12.17.1743778711011; Fri, 04 Apr 2025
 07:58:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250404104723.1709188-1-amir73il@gmail.com> <20250404104723.1709188-2-amir73il@gmail.com>
 <j7tvkh7zng66klagg6zz5sbsvqbmzpcnkub6vcniqrudlzli67@n2xkv4wjvzp5>
In-Reply-To: <j7tvkh7zng66klagg6zz5sbsvqbmzpcnkub6vcniqrudlzli67@n2xkv4wjvzp5>
From: Amir Goldstein <amir73il@gmail.com>
Date: Fri, 4 Apr 2025 16:58:19 +0200
X-Gm-Features: ATxdqUEQbeXPpcQmkdwnjQJTT0S9clX0JW6Ekb9KvVpI26Xv1zBMVqr3GZqEzKU
Message-ID: <CAOQ4uxj0W8KctDedwz+6WDOqvjezh0CbroERk-Cdx-P5zYWnxg@mail.gmail.com>
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 4, 2025 at 4:40=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Amir,
>
> On Fri, Apr 04, 2025 at 12:47:23PM +0200, Amir Goldstein wrote:
> > Used to subscribe for notifications for when mounts
> > are attached/detached from a mount namespace.
> >
> > Reviewed-by: Jan Kara <jack@suse.cz>
> > Reviewed-by: Miklos Szeredi <mszeredi@redhat.com>
> > Reviewed-by: Christian Brauner <brauner@kernel.org>
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> > ---
> >  man/man2/fanotify_init.2 | 20 ++++++++++++++++++
> >  man/man2/fanotify_mark.2 | 37 ++++++++++++++++++++++++++++++++-
> >  man/man7/fanotify.7      | 45 ++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 101 insertions(+), 1 deletion(-)
> >
> > diff --git a/man/man2/fanotify_init.2 b/man/man2/fanotify_init.2
> > index b90e91707..93887b875 100644
> > --- a/man/man2/fanotify_init.2
> > +++ b/man/man2/fanotify_init.2
> > @@ -331,6 +331,26 @@ that the directory entry is referring to.
> >  This is a synonym for
> >  .RB ( FAN_REPORT_DFID_NAME | FAN_REPORT_FID | FAN_REPORT_TARGET_FID ).
> >  .TP
> > +.BR FAN_REPORT_MNT " (since Linux 6.14)"
> > +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> > +This value allows the receipt of events which contain additional infor=
mation
>
> Should we use wording more consistent with other paragraphs introducing
> FAN_REPORT_* flags?

No, I think that is fine as is.

FAN_REPORT_MNT and FAN_REPORT_FID are special because
they "allows the receipt of events..."
You cannot request FAN_MNT_* events if not initializing group with
FAN_REPORT_MNT.
You cannot request FAN_CREATE/RENAME/DELETE if you did
not initialize the group with FAN_REPORT_FID.

Other FAN_REPORT_ flags do not impact the set events that
can be requested but add more info to existing events.
Some add more information (FAN_REPORT_PIDFD),
some replace existing information with other information
(FAN_REPORT_TID) and some change semantics of existing
information fields (FAN_REPORT_FD_ERROR).

This is why I used the phrasing from FAN_REPORT_FID
and why I think this is fine that the phrasing of different
FAN_REPOT_ flags are slightly different.

>
>         $ grep -n -B1 -A3 '^\.BR FAN_REPORT_.*since' man/man2/fanotify_in=
it.2
>         134-.TP
>         135:.BR FAN_REPORT_TID " (since Linux 4.20)"
>         136-.\" commit d0a6a87e40da49cfc7954c491d3065a25a641b29
>         137-Report thread ID (TID) instead of process ID (PID)
>         138-in the
>         --
>         160-.TP
>         161:.BR FAN_REPORT_FID " (since Linux 5.1)"
>         162-.\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
>         163-This value allows the receipt of events which contain additio=
nal information
>         164-about the underlying filesystem object correlated to an event=
.
>         --
>         201-.TP
>         202:.BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
>         203-.\" commit 83b7a59896dd24015a34b7f00027f0ff3747972f
>         204-Events for fanotify groups initialized with this flag will co=
ntain
>         205-(see exceptions below) additional information about a directo=
ry object
>         --
>         234-.TP
>         235:.BR FAN_REPORT_NAME " (since Linux 5.9)"
>         236-.\" commit 929943b38daf817f2e6d303ea04401651fc3bc05
>         237-Events for fanotify groups initialized with this flag will co=
ntain additional
>         238-information about the name of the directory entry correlated =
to an event.
>         --
>         298-.TP
>         299:.BR FAN_REPORT_TARGET_FID " (since Linux 5.17, 5.15.154, and =
5.10.220)"
>         300-.\" commit d61fd650e9d206a71fda789f02a1ced4b19944c4
>         301-Events for fanotify groups initialized with this flag
>         302-will contain additional information about the child
>         --
>         333-.TP
>         334:.BR FAN_REPORT_MNT " (since Linux 6.14)"
>         335-.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
>         336-This value allows the receipt of events which contain additio=
nal information
>         337-about the underlying mount correlated to an event.
>         --
>         353-.TP
>         354:.BR FAN_REPORT_PIDFD " (since Linux 5.15 and 5.10.220)"
>         355-.\" commit af579beb666aefb17e9a335c12c788c92932baf1
>         356-Events for fanotify groups initialized with this flag will co=
ntain
>         357-an additional information record alongside the generic
>         --
>         388-.TP
>         389:.BR FAN_REPORT_FD_ERROR " (since Linux 6.13 and 6.12.4 and 6.=
6.66)"
>         390-.\" commit 522249f05c5551aec9ec0ba9b6438f1ec19c138d
>         391-Events for fanotify groups initialized with this flag may con=
tain
>         392-an error code that explains the reason for failure to open a =
file descriptor.
>
> > +about the underlying mount correlated to an event.
> > +An additional record of type
> > +.B FAN_EVENT_INFO_TYPE_MNT
> > +encapsulates the information about the mount and is included alongside=
 the
> > +generic event metadata structure.
> > +The use of
> > +.BR FAN_CLASS_CONTENT ,
> > +.BR FAN_CLASS_PRE_CONTENT,
>
> Missing space.
>
> > +or any of the
> > +.B FAN_REPORT_DFID_NAME_TARGET
> > +flags along with this flag is not permitted
> > +and will result in the error
> > +.BR EINVAL .
> > +See
> > +.BR fanotify (7)
> > +for additional details.
> > +.TP
> >  .BR FAN_REPORT_PIDFD " (since Linux 5.15 and 5.10.220)"
> >  .\" commit af579beb666aefb17e9a335c12c788c92932baf1
> >  Events for fanotify groups initialized with this flag will contain
> > diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> > index a6d80ad68..2c9d6e9b9 100644
> > --- a/man/man2/fanotify_mark.2
> > +++ b/man/man2/fanotify_mark.2
> > @@ -67,7 +67,8 @@ contains
> >  all marks for filesystems are removed from the group.
> >  Otherwise, all marks for directories and files are removed.
> >  No flag other than, and at most one of, the flags
> > -.B FAN_MARK_MOUNT
> > +.BR FAN_MARK_MNTNS ,
> > +.BR FAN_MARK_MOUNT ,
> >  or
> >  .B FAN_MARK_FILESYSTEM
> >  can be used in conjunction with
> > @@ -99,6 +100,20 @@ If the filesystem object to be marked is not a dire=
ctory, the error
> >  .B ENOTDIR
> >  shall be raised.
> >  .TP
> > +.BR FAN_MARK_MNTNS " (since Linux 6.14)"
> > +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> > +Mark the mount namespace specified by
> > +.IR pathname .
> > +If the
> > +.I pathname
> > +is not a path that represents a mount namespace (e.g.
> > +.IR /proc/ pid /ns/mnt ),
> > +the call fails with the error
> > +.BR EINVAL .
> > +An fanotify group that was initialized with flag
> > +.B FAN_REPORT_MNT
> > +is required.
> > +.TP
> >  .B FAN_MARK_MOUNT
> >  Mark the mount specified by
> >  .IR path .
> > @@ -395,6 +410,26 @@ Create an event when a marked file or directory it=
self has been moved.
> >  An fanotify group that identifies filesystem objects by file handles
> >  is required.
> >  .TP
> > +.B FAN_MNT_ATTACH
> > +.TQ
> > +.BR FAN_MNT_DETACH " (both since Linux 6.14)"
> > +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> > +Create an event when a mount was attached to or detached from a marked=
 mount namespace, respectively.
>
> Lines should be shorter than 80 columns.
>

Sorry.
Could you fix that on commit?

Thanks,
Amir.

