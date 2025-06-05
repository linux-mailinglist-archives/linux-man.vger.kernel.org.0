Return-Path: <linux-man+bounces-3105-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4D7ACEFB1
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 14:56:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A9C01897A8E
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 12:56:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFF62066CF;
	Thu,  5 Jun 2025 12:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="f8W6JazU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6331853
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 12:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749128189; cv=none; b=Qet7tMsVEcmL5m7zAIEigyhq29HwabPI9V8I4LwovVgpd55PsDQwkq+hNs9h5DhoHrYCAHWo2nrBhNtvhlt+2ijkEeUfsWIxBgl+/zCBtVmbNjFVwu7ksg0JPicjqBu0MTKCn3SdkF5uctB6DGTFgxb+WLCUbiQPNrcXtyUWX7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749128189; c=relaxed/simple;
	bh=+JsvbfXgMSe9zY/scf9yuXqB4k1dqdscaIeRDlTUZKQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P0py8S9oSMzvyUjsDDFyaG9YVbxf1V7OXOvyH03imH//mOu45kt2AL66K7IJIouIp3XIOVlDy27cDgbSLdyUNcuddwTmk+WyImW9SoRi46z2S3tY4XhdFzs9A/l5XQzOCwVH2O4ihQt5Yraa9rv8PKjj7B09uwh7ohjg38BC528=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=f8W6JazU; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7080dd5fe92so9002917b3.3
        for <linux-man@vger.kernel.org>; Thu, 05 Jun 2025 05:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1749128186; x=1749732986; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fihl4G9i8CwCIAa7IYlPLpRqRX6wOA0kDh7yPMDqnMA=;
        b=f8W6JazUFX/L3PEAOeoX+TmHWcQhnFBDGISM9SWxIB63OqtZ2qM9HJttLId4BICeJf
         TDzSy/k9kV7iv4r65vqgEMKkMJDStSblO8cKZTHFIZfd667TE4c9wRGEuOO6bp2pDrpj
         DHGZm4E5BWxEYl0oz/mv5Er61XP7EJwf+YgkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749128186; x=1749732986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fihl4G9i8CwCIAa7IYlPLpRqRX6wOA0kDh7yPMDqnMA=;
        b=YAhLqxJbo7eZVxdjOaaIrjTPvfaZ90VsEBC8FMhbGcqpVHf1uBaxDsQx0qauvtQJjW
         aR7ZSqz7h62qNLHvk1dr2ShR1kC7EAUr4z9zNQ7nEeNVgxu31JFt9ylLG1zwCuVlg6Tq
         bSrQ4KnCOzouphQXEEAIg0eKEFJ9xvzKw9B6Pin3a565mvsOfyncdUuVWNLPwnwwp+1l
         kRZH2sxFCGfRDn3YHYYM4BltDjlW6e43CWirFhV8efQTDgt+CfWdHGvwvmiIzrvnWwLY
         /3P0GKHSQ0RnQt2hQ2Hr6xHKFJ8wOHKzuhEH6HrgbTm98t2CYAMS8EpxUU3st6kUxZPb
         Ireg==
X-Forwarded-Encrypted: i=1; AJvYcCUwmuadbY7JsBV0OULT/9XtCyzdjaat7zPWWodgrqGQrt+Yv+EypySzdM3LIhNnRMG3f7LQgQrIvaU=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz60Cnn+RwqBmo2nb5/e8R5bSdbyzA6RBX7+IR67Ozj7c4sw7wX
	PpAethzTkMzHATHnuxs9u13mNg0qol1bQkNwq5Rhe6eghXcgOL6rJcbjV+zdMuxwI3DSqZZE+tS
	eFlWeihutdN9QyDUoUTRz5FpE1K5eIOIe06oH8r9wSg==
X-Gm-Gg: ASbGncshVDr8gSaW3VzYnCFPiDkuSHr2Pm4D7IDxTcVgfiaVg1/gOM44r0uTmvUltwZ
	STRP1SLEYxKsPUhHYFewGLee9SFmZJotPozr+F9PIqxHYvfQeuzdvEpd7Ov3HMbdy9/nPxAXtSo
	cNeLwBaPlkYwOVWmYqZZ8xu9Y5N6xq9iFdcA5+Vn4PbT8QZRaAlJixHiDrMmE4Nis=
X-Google-Smtp-Source: AGHT+IHqjPxMW77E8asKhY5mJFAL/eobox/W6z3Vkj3fT1bDBMS1mDRDaTUaagG+g8z0TJ/7RRDRSiJOmdp0FLPo1qA=
X-Received: by 2002:a05:690c:dc8:b0:70d:f237:6a5a with SMTP id
 00721157ae682-710d99fd4f8mr84036997b3.8.1749128186396; Thu, 05 Jun 2025
 05:56:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <bug-220118-11311@https.bugzilla.kernel.org/> <3b0a1af1121f498b816715bc4ce04170@bfs.de>
 <rry23vclpqpekjoffa2frotdoi7h6cftrb6mfgjiim53y2hido@qhgxipwqqbi4>
 <0b18cb6e571d4ac28b8e38a1bf40db02@bfs.de> <uxkrzr4wrrj66jamcu5iy4u6nszsah6k5znxqsixjwzxhm3iaz@tmu5aq5kgear>
In-Reply-To: <uxkrzr4wrrj66jamcu5iy4u6nszsah6k5znxqsixjwzxhm3iaz@tmu5aq5kgear>
From: Christopher Hoy Poy <choypoy@linuxfoundation.org>
Date: Thu, 5 Jun 2025 20:56:15 +0800
X-Gm-Features: AX0GCFtG53yasTHWYHkXGrM_s1hEbYPG9ZX8lJy4eOSY05M1vfwPg0j6vpCPk64
Message-ID: <CAKkv+gxk19HV=DHKXcjqZ7w3=Zzsi70Uka4agbwW4kDM+FH5Jg@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IEFXOiBBVzogW0J1ZyAyMjAxMThdIE5ldzogTOG6rXAgdOG7qWM=?=
To: Alejandro Colomar <alx@kernel.org>
Cc: Walter Harms <wharms@bfs.de>, "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, helpdesk@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 5, 2025 at 4:12=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> [CC +=3D helpdesk@]
>
> Hi Walter,
>
> On Thu, Jun 05, 2025 at 07:36:40AM +0000, Walter Harms wrote:
> > Even if this is spam, the message is confusing. It that case it should =
read "removed" "banned" or you name it.
> >
> > NTL i tried bug 220119 with the same result.
> >
> >  For now i would say it is not possible to read a bug/msg without a log=
in.
>
> I guess you can contact <helpdesk@kernel.org> for reporting a bug.  I've
> CCed them already, so they can comment.  I'm not involved in bugzilla
> management, so I don't know what has happened and if there's any better
> way of handling this.
>
>
> Have a lovely day!
> Alex
>
> > ________________________________________
> > Von: Alejandro Colomar <alx@kernel.org>
> > Gesendet: Mittwoch, 28. Mai 2025 11:55:49
> > An: Walter Harms
> > Cc: linux-man@vger.kernel.org; bugzilla-daemon@kernel.org
> > Betreff: Re: AW: [Bug 220118] New: L=E1=BA=ADp t=E1=BB=A9c
> >
> > Hi Walter,
> >
> > On Wed, May 28, 2025 at 08:52:19AM +0000, Walter Harms wrote:
> > > Hi,
> > > i was curiousabout that bug and got an Access Denied just reading the=
 page.
> > > Is is possible to get info without having a login ?
> > >
> > > full msg here:
> > > "You are not authorized to access bug #220118. To see this bug, you m=
ust first log in to an account with the appropriate permissions. "
> >
> > It was spam, so I guess the admins made it hidden.  When I log in, I se=
e
> >
> >         You are not authorized to access bug #220118.
> >
> >
> > Have a lovely day!
> > Alex
> >
> > > ________________________________________
> > > Von: bugzilla-daemon@kernel.org <bugzilla-daemon@kernel.org>
> > > Gesendet: Mittwoch, 14. Mai 2025 05:15:56
> > > An: linux-man@vger.kernel.org
> > > Betreff: [Bug 220118] New: L=E1=BA=ADp t=E1=BB=A9c
> > >
> > > https://bugzilla.kernel.org/show_bug.cgi?id=3D220118
> > >
> > >             Bug ID: 220118
> > >            Summary: L=E1=BA=ADp t=E1=BB=A9c
> > >            Product: Documentation
> > >            Version: unspecified
> > >           Hardware: Intel
> > >                 OS: Linux
> > >             Status: NEW
> > >           Severity: normal
> > >           Priority: P3
> > >          Component: man-pages
> > >           Assignee: documentation_man-pages@kernel-bugs.osdl.org
> > >           Reporter: tracpham2210@gmail.com
> > >         Regression: No
> > >
> > > L=E1=BB=97i g=C3=AC =C4=91=C3=B3
> > >
> > > --
> > > You may reply to this email to add a comment.
> > >
> > > You are receiving this mail because:
> > > You are watching the assignee of the bug.
> >
> > --
> > <https://www.alejandro-colomar.es/>
>
> --
> <https://www.alejandro-colomar.es/>



Hi,

The issue is with some anti-bot / anti-spam measures we had to
implement (it was taking bugzilla offline), and later versions of
firefox appear to identify their OS as "Windows NT". I am currently
working on this issue and hope to have a workaround in place soon - as
part of an upgrade process for bugzilla.kernel.org in general. Thank
you for your patience in this process.

cheers
--=20
Chris Hoy Poy
Systems Operations Engineer
IT Core Projects
The Linux Foundation

