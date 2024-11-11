Return-Path: <linux-man+bounces-1889-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3A89C382F
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 07:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C15F1C211B6
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 06:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA5E147C86;
	Mon, 11 Nov 2024 06:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lMuS33Y4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51DB2914
	for <linux-man@vger.kernel.org>; Mon, 11 Nov 2024 06:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731305220; cv=none; b=fIN8y5u5/sH8EJUEHXfWQCupBAJcwRABXEQL/WPoJ0mAbfubwIe74sjhNy4InX10/J9v3oW3okvkijMTRh0hp5vLnywCSI4VcBofYU9N16IXl7EaZhS3pV4j1blGF6YZeGp+WI0B58j0L2FWyW2/XXddmoYYATzUYPzjN2pwUZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731305220; c=relaxed/simple;
	bh=aY7dMJv9aFhocCzW74H5fLG6H13kBkoeiaSr0XByDW4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dELDN0WDBx1HpGYEXSthf9R6p1PFU43rchcch3pxp7eICunyCA7MHtGV9mTmtQAp+VLDYI5QHdqzx5RRWHaU8Iaucq1N0JYE4GiJCI0E5cfq7AlTU9qJlMI+ZD7rUyD20ByeNw1z24Mi6t9YaI6LSCogydlL/Q/wqJb5H+bOL28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lMuS33Y4; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6e35bf59cf6so45821447b3.0
        for <linux-man@vger.kernel.org>; Sun, 10 Nov 2024 22:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731305218; x=1731910018; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eYYV70I84VmRcC/ZWwmeP9+Rs2FjOoXBP5o29M8JL38=;
        b=lMuS33Y4GbxHUtmHw4hlz+NrL2ej9i1a2mXqwSbfOuGwNQHipMU7p+rq2iGq8mwmiV
         oe4MZkhLmdSFQoYdKV6gHzK4sJS7zAHYFShnoyhv4WFAsG1/bl7yunuWplspP12CBXlc
         ART+KOylUsHgZEqWs71uGCtYdn2gEa/2HTF/wiTubxMRr0JsL5xZhQbaTukfdvHdtXeA
         FAWHmFOgAFVHAKNgaL+cs6UvUN8n87RSdu///W5aPmn2SH0Vi6Yf+aUeGkj+63iJjQVI
         nvGQb1IVEaMEa3rAcCrPlIy0zu+tdZLf11f78ZBgR3LHCTQSUlJ2UR9gdKwwwXFIiBiv
         nbBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731305218; x=1731910018;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eYYV70I84VmRcC/ZWwmeP9+Rs2FjOoXBP5o29M8JL38=;
        b=J3nkFFHs9LIfyO/TjHuZK9/4ZEZOO+V2IRNSaS5dLzjk0ZQpCNnQgrOC9ccFLWNGvR
         FVK5E44zRRmXuVWdL3fU/5mHo1jqP/DBngJqI173mU9POzYvQTRH2414vZk5MCVrUYel
         l676w1FvrMXwBB+7sHviOcsXdCKtulLIn3wG/2tF0yZxadXtsSNCi5+fHHmfVFzACNWp
         tXHbPwcjvfEv3vaFNTDBgIapuERSkGT4mMPSo1jdDtcp9gwq3dj10xSRLBBLCMTjbo60
         V/+noXKUiLHRymvA46lRiXlxe3afxDW4NKKC7GFWPwcb3nVMbA26aZsfF82zqjaGM+5y
         swRw==
X-Gm-Message-State: AOJu0YxDUn7LYGeGLDAj05ch/V9y/AnYXSZr3zMJnrhVuRdXoN5Dqkob
	qJjBETxavSki6Yi+Z0mOHxilPXbIAJyw9bDPgJ7TpW1VTt2PQ01ax4MdIqk5CaqfhKHMPjHyEMi
	ArpokSUhp41+zjsOICFAf4gdmvY0=
X-Google-Smtp-Source: AGHT+IEx+DZw4OY9IIe8gWZby86kBPVR0D6iaWllmMXQSbKIuscAcbrZSCySBgqJKlCVvWzdjLNBBbf0s5lJkBdAYy0=
X-Received: by 2002:a05:690c:39f:b0:6e3:ceb:9e49 with SMTP id
 00721157ae682-6eadc18ed23mr90116667b3.16.1731305217847; Sun, 10 Nov 2024
 22:06:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241105041700.1386571-1-alexhenrie24@gmail.com> <fqpd2bawfx7grb7mt5jcskvkht7ntnm3mmgvskwziav4remdmj@rkshuokqjupa>
In-Reply-To: <fqpd2bawfx7grb7mt5jcskvkht7ntnm3mmgvskwziav4remdmj@rkshuokqjupa>
From: Alex Henrie <alexhenrie24@gmail.com>
Date: Sun, 10 Nov 2024 23:07:48 -0700
Message-ID: <CAMMLpeTC-27K0i_Nd-7Rk+25QZzcEJPxGHay5M7Skm-kp2QsWQ@mail.gmail.com>
Subject: Re: [PATCH] mremap.2: Update information about MREMAP_DONTUNMAP restrictions
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, bgeffon@google.com, linux-mm@kvack.org, 
	branden@debian.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 5, 2024 at 4:50=E2=80=AFAM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Alex,

Bon dia Alejandro, =C3=A9s un plaer parlar amb tu de nou!

> On Mon, Nov 04, 2024 at 09:16:41PM GMT, Alex Henrie wrote:

> > diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
> > index 53e0bcf2d..b99ab9492 100644
> > --- a/man/man2/mremap.2
> > +++ b/man/man2/mremap.2
> > @@ -106,7 +106,13 @@ remaps a mapping to a new address but does not unm=
ap the mapping at
> >  .IP
> >  The
> >  .B MREMAP_DONTUNMAP
> > -flag can be used only with private anonymous mappings
> > +flag can only be used with mappings that are not
>
> I find the position of "only" a bit inconsistent here.  It probably
> would be more appropriate right before "with".  (I'm wondering if I put
> "probably" in the right place too... :)

It probably is slightly more clear to say "can be used only with..."
instead of "can only be used with...". I'll make that change in v2.

> > +.BR VM_DONTEXPAND
>
> Please use .B, not .BR.  You'll find that BR causes a warning in that
> file, if you run `make build-all`:
>
>         $ make build-all -j24 -k
>         TROFF           .tmp/man/man2/mremap.2.cat.set
>         an.tmac:.tmp/man/man2/mremap.2:42: style: .BR expects at least 2 =
arguments, got 1
>         make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/=
mk/build/catman/troff.mk:65: .tmp/man/man2/mremap.2.cat.set] Error 1
>         make: *** Deleting file '.tmp/man/man2/mremap.2.cat.set'
>         make: Target 'build-all' not remade because of errors.
>
> (You'll need to run a sufficiently recent system that includes
>  groff-1.23.0, such as Debian Sid.)

Will do, thanks for the tip.

-Alex

