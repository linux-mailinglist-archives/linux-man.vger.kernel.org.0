Return-Path: <linux-man+bounces-3277-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D29B08A8C
	for <lists+linux-man@lfdr.de>; Thu, 17 Jul 2025 12:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25E521C230EA
	for <lists+linux-man@lfdr.de>; Thu, 17 Jul 2025 10:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019C228A3F5;
	Thu, 17 Jul 2025 10:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mFwzMZfI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD50299954
	for <linux-man@vger.kernel.org>; Thu, 17 Jul 2025 10:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752748222; cv=none; b=aK3yBYgjXYCMnwLNu9YYL48HLcX+ONLhr2nOd5keztw+tdTI903xL01fRA3TG2vCsF5bcSbqdYuTRJCkoULj9OrtHR8S3iIZsLo3HXODCnqEXUoTifsyok6u0eBxoEnsfwtSwOLgA00fHEilGIa4F3NksICEha8wF4aVOGcUzMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752748222; c=relaxed/simple;
	bh=CbY4Lj1PomIedPhABJklvBe2891H/Nv7tNXrk71uw90=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iVsTPFPPPWHihoJV8ZJBeIhvzEl/ziYuMhP1+JQlDcstghPd+nT5SGjM3fYwZHkSbEZeRjtdUN2kOCLdMuQ+/2wwSwRwGDw7/b1yZF7v2ZNU2O0ijTpPMwHEL8Hj371MBqDczgzpJWe0ZxTvlgu85tw5Z6qtk6LAggB6ob1Ije8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mFwzMZfI; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b31e076f714so1366687a12.0
        for <linux-man@vger.kernel.org>; Thu, 17 Jul 2025 03:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752748219; x=1753353019; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jy0PkwxroDoJ2pRNjuRgvxP8UvydvSoP2Ew2XEydRCM=;
        b=mFwzMZfI3YfzIME1imiMjUmY3rgmO+QTsRBxVAFNvojkP5xtRx+7DDpPhZQsdXNwXV
         QmcdWHJiALZb0kMuSxeKzHkUm7R/AbcmHhmWG0i0NhNK9pEwDXds+boy45QG9Z6asg08
         vAq0ZmIQ7Hv8CT5lOsaPqx50/wr5VPRNLlhJCmcLlfbKN6SEMYlo8jQcXY4bhGVeXiKQ
         y6wsvDW/c0Cn27tZODadGAF739AUsW649W2aZkqOTa+Vu6t6VoshPjoToWF5/Sz0/fPi
         HigIalg0cJjr0voDSVWwqReO2nJeYF9EZJz5mVzzJijlj1K6s2V0ROdcUlgvLtoPk43P
         WchQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752748219; x=1753353019;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jy0PkwxroDoJ2pRNjuRgvxP8UvydvSoP2Ew2XEydRCM=;
        b=NRi3Ya90XnPPROaRnImOFuCfstV3WWLRBopzlrs73FHIkyoFSL5Ptp/PZQ+YZKDDe4
         VzbLSwEmGHXpa5hVmKywwzyzqBCcOV4MIiqH0z9Uc3HNibYXhPmkeE+QkFAqUT9lv5T6
         xkAY1A08puf5vDYvHHbe8mmz0+S+y6+y5+9b27E+EpeH3dff04HBxVXsH6PdlfWqblJZ
         5NBHHTy9E+MUWChVW1NW9YixLetGfdyUekqZ3IgWnLYy+/AbZFkEtY0G0vXFk0EaQ+jp
         cxos0sgo+QeCfKvWVkVuOunbjvgsIyMCgluNJrx98vL335Ud7LPNICWSSpg2r8Luzo9u
         P/0g==
X-Forwarded-Encrypted: i=1; AJvYcCV4eavXsB5Npd+OGqFUR4F7pyn2kXyRe3/FjKhvZdux4FPmovQXLMF+AbxO7S+noUB+ExNe/ZVc4/s=@vger.kernel.org
X-Gm-Message-State: AOJu0YybbERMrJfi/6xbboEVZUT7gM1BN9ZOkNnXHtHMC4n0ZMUp6GaD
	iBZDrmTYCZ/XL8FrTZg1k/dEPvHYU8A/o3KfmMXp4g9VkVKNF8agMMPKOyDTfdxmrYWfuE0/Zna
	fkHtTtdiHJ7QFqvmqVULLl5nsYVgf4LE=
X-Gm-Gg: ASbGnctXsFa8BSaWYLvD0rS/l2UThE1W6judgtZaqTAratNELCYuoQ2l4hxK3Mo8gYD
	h+iNZTer2IMACtIkqSAL3i32Yj0W4xZGzbG6RYkfZwLYwVKV6by8w8Gc7helZJwuArfS3l4Mqpc
	BJQsBDQnitniMQnR1JuivFFWpN/0SHenX8EX4/2X3V72nVUNNlu1hyGFxcrdpaOsTQNev7Svnl+
	R/GWEh/Q08CyHuVTZU=
X-Google-Smtp-Source: AGHT+IFeAJx4BlRNXyyl0LbHai9qKnQ0tp4p41RG2OorPPZrA096nUZx2HFlGgC08Gg0c5kwRPruIWGju7nzr35RfSA=
X-Received: by 2002:a17:90b:3d81:b0:312:e73e:cded with SMTP id
 98e67ed59e1d1-31caea21526mr3975524a91.16.1752748219291; Thu, 17 Jul 2025
 03:30:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com> <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
In-Reply-To: <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Thu, 17 Jul 2025 12:30:02 +0200
X-Gm-Features: Ac12FXx_VtlvcVGII2D1DYoPzU4KCNjnjvueqHvcLGcRqXZeXmbXxTVXkW9-8Rs
Message-ID: <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
Subject: Re: drop ia64 from man pages?
To: "Carlos O'Donell" <carlos@redhat.com>
Cc: enh <enh@google.com>, Alejandro Colomar <alx@kernel.org>, 
	linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 16, 2025 at 7:43=E2=80=AFPM Carlos O'Donell <carlos@redhat.com>=
 wrote:
>
> On 7/16/25 12:30 PM, enh wrote:
> > i didn't look at the other pages, but quite a lot on the clone(2) page
> > is actually about what glibc does ... but glibc already removed all
> > this stuff. so it should probably not be more than what we have for,
> > say, m68k which is just "read your kernel/libc source for more"?
> >
> > a corollary to "museum hardware should run museum software" might be
> > "...and use museum documentation" :-)
>
> Agreed.
>
> There is a balance here between documentation that covers a reasonable
> number of use cases, documentation that is easy to maintain, and
> documentation that is easy to read (without superfluous information,
> either too new or too old).
>
> It has been about 1.5 years since IA64 started being dropped, and I
> don't see any reason to keep very specific documentation about it
> around except as smaller interesting historical notes.

Depends on whether man pages limit themselves to reflecting only the
"current" version (whatever this is, as man-pages is not part of
either linux or glibc source tree), or strive to provide actual useful
reference for users of systems that may have different variants and
versions of the kernel and libc.  If it is the latter, outright
removal (instead of keeping all the pertinent information in the
history section) is pretty short-sighted.

> --
> Cheers,
> Carlos.
>
>


--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

