Return-Path: <linux-man+bounces-3093-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F82CACC9A9
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 16:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8263A7AA4B5
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 14:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF7E239E75;
	Tue,  3 Jun 2025 14:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PUysguNh"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2D915624B
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 14:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748962397; cv=none; b=igYBpnDJeUzz93DO/S4trzp34YbHvn7QW3Ri+A0N2uzFsmoR21DaZH5Ap+kUdrQ+O99mNDgjs3KE+KbQtPDrPvkL0/L/ZAhUk2AClbnw80rYbBwcnTda/fWWYdyQVOSJgeKkJY1aqzkNvfFZOnaV0Y6Yxy3YS9CE07F1CQ/DlQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748962397; c=relaxed/simple;
	bh=efAJOa5aX/HNTsP/81Gy+JH88qQf0EAfUYOo90lPdiA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f8yFWGigAZuY2KBTQPj9h/7RAFWyLjs7kcbEVk99jxFi7OfJQZtE3xPMG18YR5EMcDg+yLlvOK1TjB3pAMeBz9dnrepdxlgZlEQB+UzFztBH7GIxI7jUs6iKuoEzC/DNIWsy7sufqsWVFYMfNwb+PvGbkWHyJu5wLs1apsQdQHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PUysguNh; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748962394;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F7Vuxh0DRgzUgRiRi7LrNtKyDx6uFpmQZNu2tK+V8xo=;
	b=PUysguNhqbADaW4CEE360991vDD1QWOw3ngIYLp/rhqdDBK2M4h8b2BRHbsx7GLDB/+1Ku
	nxz6Bgv4CrjWJXvUll1KAgEiqEl3jY/8dRmuBd9fa1s4Ri3CWjfZl7jLaCX8Egt7KQyNj0
	njLy5KLHvYH2dx6wDuJ/GZhuzPl/c1U=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-494-WWsV4NvuMsGRVFFFDX0fyQ-1; Tue, 03 Jun 2025 10:53:13 -0400
X-MC-Unique: WWsV4NvuMsGRVFFFDX0fyQ-1
X-Mimecast-MFC-AGG-ID: WWsV4NvuMsGRVFFFDX0fyQ_1748962392
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3121cffd7e8so4857845a91.0
        for <linux-man@vger.kernel.org>; Tue, 03 Jun 2025 07:53:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748962392; x=1749567192;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F7Vuxh0DRgzUgRiRi7LrNtKyDx6uFpmQZNu2tK+V8xo=;
        b=dnZAtwldeRlRsdLQ/aMRsi38lbGupMf6txWKmLFU/SD4Jjx+otuDgZMJMHkzvxphLu
         HLmrm4RkJv2C8D0NGPv+8/B9KiYn4afuSGaohEw05T9GBUQ2H93/3VurE2hNUx7X5tyH
         40tNAD7HoowkD4Pqc+WEiUI+2i226aWPAGyum3tCUzMt5qjd5XfMVSpWjqg74jmRnM4G
         P1Hw9LDzJ255NAG5omLefc+q4m6h+jgYgFCAl2IzobOkXth8Jkvezbk6Qkrsr+3mkaPn
         DInfX7ow7gq7hJ4H7Nwu+jMIfpZpudE1sHZRT30Z97DwI0KTaNmYI8SXjdIFr2GxyQlI
         XGdg==
X-Forwarded-Encrypted: i=1; AJvYcCWs/v7PwaNC3YM+uP5aZ32FYLw+fZTcyC50ZlYmr9cL7SBOHxbzCTYr38BB9VJjoQF0N1xMbVHibmw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy98lum9lXw2ByOjCCvGxx4tXnc6gHKcgb8/P+JnCXiQirQF3wi
	ZHOYNo1HfsEBDVbpVsGljQ0vlLWdY9DZ527lQwOWPRujWrT0yUd514qrlHCoSmsBrHEZUZFeEAa
	D2AIyFgbjJ0Lo4rTMmgBiq7I5AaJElfZlzxE0WvFU7RD23ujqyKiOgsy06k/3Lih/aCVd/5YwTK
	9h+IWa2iWkvocrsoypZvkkLaDhujPx+wBR0m/u
X-Gm-Gg: ASbGncuYdUG5nyDkuVImlOr9dExRUsFCj7h01nqYgKtR977i1L8Lpj46A9YTyzfNBJh
	v+iwBnfLhgNfArftGxjr3BKVdEEY7n2H9eNHsYwUjGbwhrsGBS3cWOklq0YVTTP0NDXI=
X-Received: by 2002:a17:90b:1810:b0:312:2bb:aa8c with SMTP id 98e67ed59e1d1-3127c861610mr20042614a91.33.1748962391932;
        Tue, 03 Jun 2025 07:53:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3kXlFJcRiTeBcJ+VH05IilsXZsph9m6V5M9uQSd1ul0bziLhBYDbw7Tg4wTAvYpZPn9d7vKx6FzxWYfBdAKo=
X-Received: by 2002:a17:90b:1810:b0:312:2bb:aa8c with SMTP id
 98e67ed59e1d1-3127c861610mr20042466a91.33.1748962390422; Tue, 03 Jun 2025
 07:53:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq> <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
In-Reply-To: <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
From: Mark Naughton <mnaughto@redhat.com>
Date: Tue, 3 Jun 2025 15:52:59 +0100
X-Gm-Features: AX0GCFtS3oRjoi2flInqpnAsf_qzrLQDgelzo48zK6qDvu_Nk0LYULzaXq-L8Qs
Message-ID: <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
Subject: Re: Forward Deceleration Changes
To: Mark Harris <mark.hsj@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Agreed, Mark.

Mark

On Tue, Jun 3, 2025 at 3:48=E2=80=AFPM Mark Harris <mark.hsj@gmail.com> wro=
te:
>
> > > When I open a man page I want to see "what arguments do I pass and in
> > > what order". With this change you have to parse the prototype for the
> > > semi-colon
> > > to see the start of the args.
> >
> > I tried to use a style that makes the ';' stand out more, by breaking
> > the line after it.  But I agree that the first times you look at it, it
> > can be a bit confusing and hard to distinguish.
>
> The main issue with the forward declaration syntax is that it is easy
> to mistake the forward declarations for arguments, especially when
> just quickly checking the man page to remind yourself which argument
> is first.  If you want to retain this syntax, what might help is to
> remove the bold font style from the forward declarations, or change
> their formatting in some other way to be different than that of the
> arguments.
>
>
>  - Mark
>


