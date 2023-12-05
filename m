Return-Path: <linux-man+bounces-211-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DDB8049EF
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 07:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9ABC52812AE
	for <lists+linux-man@lfdr.de>; Tue,  5 Dec 2023 06:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75145DDD5;
	Tue,  5 Dec 2023 06:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="aacF8aFw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com [IPv6:2607:f8b0:4864:20::1149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E559C3
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 22:20:42 -0800 (PST)
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-5d9c036769cso3467347b3.2
        for <linux-man@vger.kernel.org>; Mon, 04 Dec 2023 22:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701757242; x=1702362042; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdZ/j8h6od4q+WAzsVFRhsaGt4R+fFHPKbIXD80QOoc=;
        b=aacF8aFwU2MXvjksTOXTNsqAyZdYuOh/zTaHo9Qif6F34lJEG9ksjYoGm/4qFYrAwE
         dq6DanJZxIFg+lfYMJ68MIs3TkXyL9098S/OPO1vQk/DfQH3+uPozblg4vquB5TAaGfz
         +ZW4X3KNvYacU/JIB0q2jb9S7+ReK7Io9l0qDB0Qw2rpPnoKwZULoE2XRLbFSOvwV2BO
         Iy9guUHEohATOS2THMoeR4OYyC9T5dc1ntjQZT6QQH2vXKEco4gmPBrgDqRL0hjOwLgy
         wGxPL8hvpxqGggpochFvRNqlExWePEALZy/dlKjwmKGiXP2NkC/xCVjKtwkPRAr3apQy
         4Gxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701757242; x=1702362042;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bdZ/j8h6od4q+WAzsVFRhsaGt4R+fFHPKbIXD80QOoc=;
        b=YGAk5uO2vHNHDKfT52xgQBzz3EzgE9pCKzLtIs7dGWHUgT7RCtm5oF+IMt7TY3R6hO
         WrasxmGIOkbL47/hUfOeiVle0ua95MnmDwX690Ml+p+g5J1D1uPV/oksavdg+kM+Xz1P
         zbM/Bde6deOj9TadMO6tkaO0ZId0A7d1Hj+wt0xHvlZYWu2enMqiIQ9bQqWKdiFwFoHy
         882LrXcdgK/XFBG3sSXpirhTeIw8ixTuuiwknMLgXU+XifAUJiHTR+ATInkFbZv29XVV
         ib8QwSyyK7skIQWuag1/oPTBe522kz28dz/vvk54tQxjSgr60K8kLPlvA0EmG6DucqZi
         kQXQ==
X-Gm-Message-State: AOJu0YzAeCPku+RqjR6CgYisZomwiQLeCgMeP0NDfgZAwU2vv7L4lAFP
	ykVi1hZDHpn0+o0si7fdZ3f9doLSif8=
X-Google-Smtp-Source: AGHT+IH3wWuuBccN9vNlqUhtcfNYbwOU0X3LcoL4B5d813KH/mDu0s50IXJ2UVPxMGmIEIzTLh7QprFHmYU=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:6d92:e2ac:d558:ed1a])
 (user=gnoack job=sendgmr) by 2002:a0d:e693:0:b0:5d9:4242:8d2e with SMTP id
 p141-20020a0de693000000b005d942428d2emr64657ywe.10.1701757241797; Mon, 04 Dec
 2023 22:20:41 -0800 (PST)
Date: Tue, 5 Dec 2023 07:20:34 +0100
In-Reply-To: <2023120253-handed-protector-fc81@gregkh>
Message-Id: <ZW7BMi0ujYeNvCnY@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20231201122645.3237941-1-gnoack@google.com> <ZWnYCcuJql0Pm4Yr@debian>
 <2023120253-handed-protector-fc81@gregkh>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)
From: "=?iso-8859-1?Q?G=FCnther?= Noack" <gnoack@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alejandro Colomar <alx@kernel.org>, Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org, 
	"Hanno =?iso-8859-1?Q?B=F6ck?=" <hanno@hboeck.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

On Sat, Dec 02, 2023 at 12:14:06AM +0100, Greg Kroah-Hartman wrote:
> On Fri, Dec 01, 2023 at 01:56:41PM +0100, Alejandro Colomar wrote:
> > On Fri, Dec 01, 2023 at 01:26:45PM +0100, G=C3=BCnther Noack wrote:
> > > Since Linux commit 8d1b43f6a6df7bce ("tty: Restrict access to TIOCLIN=
UX'
> > > copy-and-paste subcommands"), the TIOCL_SETSEL, TIOCL_PASTESEL and
> > > TIOCL_SELLOADLUT subcommands require CAP_SYS_ADMIN.
> > >=20
> > > Cc: Hanno B=C3=B6ck <hanno@hboeck.de>
> > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> > > ---
> > >  man2/ioctl_console.2 | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >=20
> > > diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
> > > index 684b4d013..abc50b786 100644
> > > --- a/man2/ioctl_console.2
> > > +++ b/man2/ioctl_console.2
> > > @@ -715,12 +715,20 @@ is 0 for character-by-character selection,
> > >  or 2 for line-by-line selection.
> > >  The indicated screen characters are highlighted and saved
> > >  in a kernel buffer.
> > > +.IP
> > > +Since Linux 6.7, using this subcode requires the
> >=20
> > Are these requirements expected to be backported to stable kernels?
>=20
> I don't think so, do you think they should be?

Agreed, I think they don't need immediate backports either.

=E2=80=94G=C3=BCnther

