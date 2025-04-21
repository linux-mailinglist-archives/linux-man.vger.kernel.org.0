Return-Path: <linux-man+bounces-2791-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D40F8A95513
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 19:16:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 176CA16CD14
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 17:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3FF19DFA2;
	Mon, 21 Apr 2025 17:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="25UioA/J"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDC8171CD
	for <linux-man@vger.kernel.org>; Mon, 21 Apr 2025 17:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745255801; cv=none; b=uGkEKJErJqAMPhYN76RQIhexsINWTMbv82tWZEHS6owDJae/nd0CsanMsx5KU3+7UaIuxqY7MfmR1qkBhUKNWLlAPXtaadzLGPxFHCi1QOC+j2QOc0IlC9GQc7GJkco1CTjLLok0nZgdWcbRcH1AtpBz24JwTP2TOvlkwNMVUv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745255801; c=relaxed/simple;
	bh=ZFCSLHiDysg927Y/Nr3V/lVaKcJ7uAxp7qwb1bHSUZA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mGRCLZUwmJ6hjNhFy/vg5G/p641juW/kG3fJ+BJanvb9hxxAJXbVlN1qiU42Ojwff/BwuolKImRJEj6eR8TjxHoZlieIhdJWJOF87vEcjMOESDI5KXEdv0/KVS4f6yDbIGKHTEWALYje/b5Y4MuX26SzNpW7lBuzluwEsKnt/gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=25UioA/J; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4769e30af66so1294341cf.1
        for <linux-man@vger.kernel.org>; Mon, 21 Apr 2025 10:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745255798; x=1745860598; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RuURjUDWNXAz9lMXw8+fH47R9FvQohgPWajg37i/laE=;
        b=25UioA/JF//XcrrCf2YEFIbTMNAOw2KZwYl2luCH5vkxjKxcHR5Jm/9gdcE4nI1p68
         0+E3WoCZf7BH8kbW+AaFM2kdfiF6+vlxDVi69voKguVa4TVs9CVLcjadXmZSx2MvaHt5
         weLVhD9tV7SQ7LHKthoscEIAZC4a/6iR54PHmiMaexmhRJXOki5FgjcIsVamA65czAbT
         J/yV/Xpj4m2CckscQU2ExVE4OPfC7jH+oMGEPDRDY7Ov0p/QMVtHC1bLvFwCIuLbcrya
         2V71Sy3P5bBgUKTpZeCIV8FdfYAkZX64BHhUH9gaGkWXUqvHqV9GXywArBtOU68YWCno
         whgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745255798; x=1745860598;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RuURjUDWNXAz9lMXw8+fH47R9FvQohgPWajg37i/laE=;
        b=X2eM/e/GlERv2UrS+wMIWnZGxMHhqfQRkBgOIwSSw8Y6xebJSIAAqNnNzuoOPfP2Ok
         xzTkUGqt9tIkt/h4KHDplVTY4juhTI2OHJ7tSW+tK/wa+NphAFe9p+QaMYnH2pivq2ZZ
         dG2sP9dLQcspv4UY18ZmT7ol35h5W1PNC5orpqn02Ov9OwMaG1RoI+OSnUHQqYqiaxHY
         xb2Iavi/omfclu4kntO6efkpLWWbpXfHocl7RAkLUf4e/0ZyQn2YXTPkyrzucX2Mdkdg
         EnPOmLqaeW8pdhkcoFZzyRYXDMnAevZqSjkVSltRKDRzWsq3YDJqz+QN6AmfzdDFTtuB
         JRcA==
X-Forwarded-Encrypted: i=1; AJvYcCXg9LOjMQM+koIZQ5jY8ljwUWG2qRPxQOlzU229GCv6pNgudFFjbuZMKNsXeQc7ahT/DvFta2V1wKo=@vger.kernel.org
X-Gm-Message-State: AOJu0YwZpSGs3s7VTQTouYjZulrDXwESn3YIHpRsejdJ1q8gxlxwNGGg
	TkU5USapslTnZqQ+9luMW5qDZ/p/uy8cEiO6JLPehACx33Fh0/3455IUuIn+Vp1Oee/3k3xinBg
	WF0LGTqm/jY7NgOoWZ2sghOHSx0TmuMZ3bdOR
X-Gm-Gg: ASbGncsIhnckXA3/tHNjlbkMcuB2zD9fjl5dBWKeehA+kT+++kT/acn4/fR6XemI2ty
	C6eheV1l6cyvFO37PT/gR9uqIa/3OHEeqlzrR/FHKEv18UyVKFf9XJ2FOK1yuDkUT9xi53xH/ZN
	1lvb7pIaimG9eHVaW9ZDj2
X-Google-Smtp-Source: AGHT+IEe07pf382BuG5t+h0cxkhNonB9S2hb+4NBUwiHHOIgvisi/X1Rvk0m70CnMe3Yxh9IFdbEwfSfBL+DkDE8WEU=
X-Received: by 2002:ac8:5901:0:b0:467:84a1:df08 with SMTP id
 d75a77b69052e-47aecc928f3mr9502881cf.23.1745255797522; Mon, 21 Apr 2025
 10:16:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206103702.3873743-1-surenb@google.com> <20231206103702.3873743-3-surenb@google.com>
 <8bcb7e5f-3c05-4d92-98f7-b62afa17e2fb@lucifer.local> <rns3bplwlxhdkueowpehtrej6avjbmh6mauwl33pfvr4qptmlg@swctg52xpyya>
In-Reply-To: <rns3bplwlxhdkueowpehtrej6avjbmh6mauwl33pfvr4qptmlg@swctg52xpyya>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 21 Apr 2025 10:16:26 -0700
X-Gm-Features: ATxdqUH-V1xozHecneL38ihhUBup30dXmnQSZc7psqoLu7St8-YIj64ka4pAWwg
Message-ID: <CAJuCfpFjx2NB8X8zVSGyrcaOfwMApZRfGfuia3ERBKj0XaPgaw@mail.gmail.com>
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

On Sat, Apr 19, 2025 at 12:26=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Lorenzo, Suren, Andrea,
>
> On Sat, Apr 19, 2025 at 07:57:36PM +0100, Lorenzo Stoakes wrote:
> > +cc Alejandro
>
> Thanks!
>
> > On Wed, Dec 06, 2023 at 02:36:56AM -0800, Suren Baghdasaryan wrote:
> > > From: Andrea Arcangeli <aarcange@redhat.com>
> > >
> > > Implement the uABI of UFFDIO_MOVE ioctl.
>
> [...]
>
> > >
> > > [1] https://lore.kernel.org/all/1425575884-2574-1-git-send-email-aarc=
ange@redhat.com/
> > > [2] https://lore.kernel.org/linux-mm/CA+EESO4uO84SSnBhArH4HvLNhaUQ5nZ=
KNKXqxRCyjniNVjp0Aw@mail.gmail.com/
> > >
> > > Update for the ioctl_userfaultfd(2)  manpage:
> >
> > Sorry to resurrect an old thread but... I don't think this update was e=
ver
> > propagated anywhere?
> >
> > If you did send separately to man-pages list or whatnot maybe worth nud=
ging
> > again?
> >
> > I don't see anything at [0].

Thanks for bringing it up! This must have slipped from my attention.

> >
> > [0]: https://man7.org/linux/man-pages/man2/ioctl_userfaultfd.2.html
> >
> > Thanks!
> >
> > >
> > >    UFFDIO_MOVE
> > >        (Since Linux xxx)  Move a continuous memory chunk into the
>
> Nope, it seems this was never sent to linux-man@.
> <https://lore.kernel.org/linux-man/?q=3DUFFDIO_MOVE>:

Sorry for missing that part.

>
>         [No results found]
>
> Please re-send including linux-man@ in CC, as specified in
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING>

Thanks for the reference. Will post the documentation update later today.
Thanks,
Suren.

>
>
> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

