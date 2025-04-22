Return-Path: <linux-man+bounces-2799-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A256A95CA2
	for <lists+linux-man@lfdr.de>; Tue, 22 Apr 2025 05:58:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 836F21896B96
	for <lists+linux-man@lfdr.de>; Tue, 22 Apr 2025 03:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281CF19F421;
	Tue, 22 Apr 2025 03:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="DqU+K7ny"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AEA1946DF
	for <linux-man@vger.kernel.org>; Tue, 22 Apr 2025 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745294316; cv=none; b=caz6LOrUMg8cuSkRlo815v/wEuMopVMmiwY17vY/kg0FK/aDr9I9Jxu6TwGeJRuAsnzWDweErxbfHpNEqjGefZxBq/ZASAUmPqm05yS7p8dgC4E6Vu7DmnsEvxBdRc6jTJsi4KPRD8rCLzgOlVUJ2/tisGHUBXbcnF5oFj6uQig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745294316; c=relaxed/simple;
	bh=yKRA8ZwqTzTG1B2kWoPv4xIY8kTNcN0dGqSKyOKdIvE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rae9SuulPFf1HsM6fzWJHmC6k1O99tZnlxkAj3LsW3Fhc2GDouhkdWD3Q+sCQQg7yEKCpS85IuZ6fcO2e5jWipTyGGRXSDiUzkJZkbuLOVvYXPngUjvm17PHcjSRgkl/8jtcGMG6rwB6PM82ZYSW5riwtGmKnvY2wVQvU+9mtHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=DqU+K7ny; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4769e30af66so59621cf.1
        for <linux-man@vger.kernel.org>; Mon, 21 Apr 2025 20:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745294313; x=1745899113; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=za4w8R1db1P50GHT4MAtmBfToY4zX6t9W05URRKIDM4=;
        b=DqU+K7nyhjRgWjOlMGd124Eo8QC9G0AdECUmRWJODHAYmiqvmuSxlDXAsjDES88eTR
         hLizXaYEgAzvUJ+zLI7XA5CNaSSz8CQB1yxmwnsn4jry+IBZswbES2s+Zb5cRkK+cy1b
         nIX7isyRgTLkkEAnK/f9DbkbAPJ05CKmaMa+e8kKvOnLVtCAkzKSFoG+PDf8CRaw6VJB
         3EHwewLmNwb2hipJ+INYPbg/VUtPPzlZoH/GGfCT4GdgQJ0U2l0BXPRr3DfWM1h7mLAM
         kO/k05gYzXW7tySkXCcnjLDQ+SIqJBkwDCgx1Cx2wxGbRdHe1dLDtsEQW7OhETHoQlo4
         xB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745294313; x=1745899113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=za4w8R1db1P50GHT4MAtmBfToY4zX6t9W05URRKIDM4=;
        b=GdCS6IBaUXFw71u0A9AQ72JGupTdK5X0KS5TWF7uyuT/2Z1XJzDdLTupjiKc7C2o/V
         1ZiozX41spAFKHwTRF+TCLIark51ZUzi5v/5raz1vd7ccAq43006QUx8rNjxlWdG6cRT
         JvpU0KJ0isjxHvmORtHk1KEAXVLEdLQn+yNDDue7igAjVFOQDVMMxhFbYD4rthF8mCOJ
         Wtnby3nwEyOztokV5R9yOUZz9mPOsRy6CMantVfQbRqA9CfufZQRVaqof8WGIz3/E/8F
         SWxPOM1SklcQSTCCSxBHTcqFYFKONldFJnT/jRIGR4V6YRX79gZ04pm/9RaLCkTFReRO
         5hIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXP3ZSf9647EUDS97R0dqXo4xR0gFVoSJU0usBXT5jM0CLxNzdbbbZkgyrHYS1ia3GviZUAR1uAFfI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0WFcU4xaySKRHo4iCQW5JZ9VZC/uofnX6gyr+NS7IQzcOqT8p
	lAmPhlVP6a8R57u+KP62nRx80TySmExB/8uOWqHvJppKv3Y2WoYY4yLAatAqmT0VJCQfTXkXEz+
	I9nZmVWSdOA6cFR9zlZxiMLmPv2r/3ZoMwBUr
X-Gm-Gg: ASbGncukMByJ1wSFcsxjliGTQhiV37jxjZ0UMIKZiuHkCuYgc3v6eC5VPgKEPv5/m/x
	KU6T5INhAyTeSXGSW6JlbwGDWW23FI2o1E9dCy5HRi6Hhb928t/uT65zquptL1jGJTHgaAVQl3Z
	fg80HrCbf45oX42TgWqhiMhAJjIeBwNTsAUH3INzLI6jevEuzNuEE=
X-Google-Smtp-Source: AGHT+IFAQcMpksnOj6/LnVgDGD6JBzpXjxag/1e/85G4VIYTdvOtZFPDNyNK6UlAnIZAd4e91YTRU2x31r5jjnrdFuU=
X-Received: by 2002:a05:622a:198f:b0:476:f1a6:d8e8 with SMTP id
 d75a77b69052e-47aecc701e8mr15481851cf.11.1745294313032; Mon, 21 Apr 2025
 20:58:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206103702.3873743-1-surenb@google.com> <20231206103702.3873743-3-surenb@google.com>
 <8bcb7e5f-3c05-4d92-98f7-b62afa17e2fb@lucifer.local> <rns3bplwlxhdkueowpehtrej6avjbmh6mauwl33pfvr4qptmlg@swctg52xpyya>
 <CAJuCfpFjx2NB8X8zVSGyrcaOfwMApZRfGfuia3ERBKj0XaPgaw@mail.gmail.com>
In-Reply-To: <CAJuCfpFjx2NB8X8zVSGyrcaOfwMApZRfGfuia3ERBKj0XaPgaw@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 21 Apr 2025 20:58:22 -0700
X-Gm-Features: ATxdqUGzQHMqMLsQ2-GAAF2yokj3Za5US38h-1Y3L1CGlUceuA7t_asl_5wY1T0
Message-ID: <CAJuCfpHpdAn6yNVq1HXqO0qspj6DLb4qa_QufT+Z9RLTTa-N9Q@mail.gmail.com>
Subject: Re: [PATCH v6 2/5] userfaultfd: UFFDIO_MOVE uABI
To: Alejandro Colomar <alx@kernel.org>
Cc: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, aarcange@redhat.com, 
	linux-man@vger.kernel.org, akpm@linux-foundation.org, viro@zeniv.linux.org.uk, 
	brauner@kernel.org, shuah@kernel.org, lokeshgidra@google.com, 
	peterx@redhat.com, david@redhat.com, ryan.roberts@arm.com, hughd@google.com, 
	mhocko@suse.com, axelrasmussen@google.com, rppt@kernel.org, 
	willy@infradead.org, Liam.Howlett@oracle.com, jannh@google.com, 
	zhangpeng362@huawei.com, bgeffon@google.com, kaleshsingh@google.com, 
	ngeoffray@google.com, jdduke@google.com, linux-mm@kvack.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 21, 2025 at 10:16=E2=80=AFAM Suren Baghdasaryan <surenb@google.=
com> wrote:
>
> On Sat, Apr 19, 2025 at 12:26=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> >
> > Hi Lorenzo, Suren, Andrea,
> >
> > On Sat, Apr 19, 2025 at 07:57:36PM +0100, Lorenzo Stoakes wrote:
> > > +cc Alejandro
> >
> > Thanks!
> >
> > > On Wed, Dec 06, 2023 at 02:36:56AM -0800, Suren Baghdasaryan wrote:
> > > > From: Andrea Arcangeli <aarcange@redhat.com>
> > > >
> > > > Implement the uABI of UFFDIO_MOVE ioctl.
> >
> > [...]
> >
> > > >
> > > > [1] https://lore.kernel.org/all/1425575884-2574-1-git-send-email-aa=
rcange@redhat.com/
> > > > [2] https://lore.kernel.org/linux-mm/CA+EESO4uO84SSnBhArH4HvLNhaUQ5=
nZKNKXqxRCyjniNVjp0Aw@mail.gmail.com/
> > > >
> > > > Update for the ioctl_userfaultfd(2)  manpage:
> > >
> > > Sorry to resurrect an old thread but... I don't think this update was=
 ever
> > > propagated anywhere?
> > >
> > > If you did send separately to man-pages list or whatnot maybe worth n=
udging
> > > again?
> > >
> > > I don't see anything at [0].
>
> Thanks for bringing it up! This must have slipped from my attention.
>
> > >
> > > [0]: https://man7.org/linux/man-pages/man2/ioctl_userfaultfd.2.html
> > >
> > > Thanks!
> > >
> > > >
> > > >    UFFDIO_MOVE
> > > >        (Since Linux xxx)  Move a continuous memory chunk into the
> >
> > Nope, it seems this was never sent to linux-man@.
> > <https://lore.kernel.org/linux-man/?q=3DUFFDIO_MOVE>:
>
> Sorry for missing that part.
>
> >
> >         [No results found]
> >
> > Please re-send including linux-man@ in CC, as specified in
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING>
>
> Thanks for the reference. Will post the documentation update later today.

Was planning to post today but I'm a bit rusty with the syntax. Will
try to send it out tomorrow after verifying the results.

> Thanks,
> Suren.
>
> >
> >
> > Have a lovely night!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>

