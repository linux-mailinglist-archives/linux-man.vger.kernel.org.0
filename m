Return-Path: <linux-man+bounces-1346-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 424BC928EE6
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 23:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9AC01B225A4
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 21:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7088144D00;
	Fri,  5 Jul 2024 21:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FEBYmuW7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DB613A26F
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 21:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720215607; cv=none; b=LN9TVpRwJA4jIiGCmlFLT5mO7gHuV5rQff+x5B3ZMhW+7QCBg5b/xsDbjfcpN8wjlXxIYEmeQDvcD/iQQ2z41Q3Zw1UNH8CoRomZsjm2k5KYsfIJ+6oJxoR84/CQOfWLAkJPXwXfxqd/xrFfDyvm0Bs26xKcTdb+D+RwHVqSGuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720215607; c=relaxed/simple;
	bh=HGO3/bzUZXzEK4VEe+mjo8xF6UX5wDNcD+VuqFUXJ9s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N2cZ8bL815ta1EAJFSTdETBVHf+f8LralXy+xMe0mdHSyFjgijhwDPbUST//XhliKUdkAcD1brEeWFXuaXKYcYWhdxWa4+Xs7HONWRFdVFeiPNK3zmRrgZtSGxfK4UWUmvzfps/zcI9BDZr+yefR/LweU48p0AcfLnI0IRFkhHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FEBYmuW7; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52e9b9fb3dcso2415166e87.1
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 14:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720215604; x=1720820404; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DpycvgsGK1xbnsHf+jTveVdwWjRhoTODJDVggSmt5CA=;
        b=FEBYmuW7CbvbmEUrKm2M6DPg6K3MmDNZ4GeA8Tn6wJO6X96/x+GsPU5zPLiNhPQBMS
         zKY86hpaOOKEoME4gVFrqUluCOY+3xT2dd74nKeMb4nTPay52ktDYWLg4khREx/hYbl7
         XIJ9vOFuFonDF2TDdo/4R1Kc0HRPi/f2Za3oO/8riKb4mb6fflDHZXj5pbjeSz5ecKb8
         vc4YExGvVyF/FUzF8SKx7bNf67M4DfKZs1GZpiWbaC81atU+4FveWLMyOxjZgKtmm46h
         UmzUT9ylHtRjSEfIZSNVoRRGnV47f8fwoC4/GKnCIh1v9hPopD6rSVqkPBBolsptqBGH
         75bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720215604; x=1720820404;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DpycvgsGK1xbnsHf+jTveVdwWjRhoTODJDVggSmt5CA=;
        b=bt+KHS7NgU7WLQ4qMnD3HVPhWXp9Fc0WqqHT9uVNoqDbdVux2Cload71kiceiMyNcC
         npaFXyBIp+zy+rgReuFWN5K916o6KpbAwL6rUndcL6/lHXSPoyQuiOVVW2T8JYR9uEW3
         0sbM4TvY3nfVNtCARyYmyH+8B/qsOTREMjS3CTaqoVgvMSaZMSlhGwHCiXdpUxOV+76y
         JchKHY6O1Vq0TLCls6zCg5a4kVC0tIUZVHpiAYHaPkHTfXgm0Il0h4AfGxpcJmQXbjze
         xnsu5upbu4xE+oHcr9heMGS6+t296aKYhp4m+vLKWqFe2u/pMMFralHB2mlzZnASXRap
         9Mkg==
X-Forwarded-Encrypted: i=1; AJvYcCU7T353KU6iVDAXBTgtxhgNHGRV3LOdOz9zSKHVIXu/YSpjd4we2piSAlqeJ7/27WFRzJyWiReEiWgUMbRLO5sRlhM3gad3dH8C
X-Gm-Message-State: AOJu0YzT8RszEoOK5Nb3fETPC0NH0Lt9enwot5muXUOKUsF8vF7dlITN
	5RM/2uFIc9lmTnJ9FW22dxVUEZX86DhdisRx7/iXo2PRnVFKITqubeUrXB6fiO7mYjqdWM76kjH
	677JM26AMMVjK7BF5FXY7Mcm2+2I=
X-Google-Smtp-Source: AGHT+IEdqbg0uypeY5fXoDr+KElWL8cSK1pvOYQ3X2aygoXVvZi8M31+DN50gZ32fj6wPAw+AWBeJhB6GJh8boLn0hI=
X-Received: by 2002:a19:4355:0:b0:52e:9b87:233c with SMTP id
 2adb3069b0e04-52ea063ee82mr3748977e87.36.1720215603751; Fri, 05 Jul 2024
 14:40:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de> <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de> <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de> <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
In-Reply-To: <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Fri, 5 Jul 2024 22:39:52 +0100
Message-ID: <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like functions
To: Alejandro Colomar <alx@kernel.org>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 5 Jul 2024 at 21:55, Alejandro Colomar <alx@kernel.org> wrote:
>
> On Fri, Jul 05, 2024 at 09:28:46PM GMT, Jonathan Wakely wrote:
> > > If we marked endptr as "write_only" (which it might already
> > > be) then a future warning mechanism for -Wrestrict could
> > > ignore the content of *endptr.
> >
> >
> > That seems more useful. Add semantic information instead of taking it
> > away. If the concern is a hypothetical future compiler warning that
> > would give false positives for perfectly valid uses of strtol, then
> > the problem is the compiler warning, not strtol. If additional
> > information can be added to avoid the false positives (and also
> > possibly optimize the code better), then that wouldn't require a
> > change to the standard motivated by a hypothetical compiler warning.
>
> Let me be a little bit sarcastic.
>
> If so, let's take down -Wrestrict at all, because it triggers false
> positives at the same rate.  How is it even in -Wall and not just
> -Wextra?
>
> Here's a false positive:
>
>         $ cat d.c
>         int is_same_pointer(const char *restrict ca, char *restrict a)
>         {
>                 return ca =3D=3D a;

This is a strawman argument, because all your example functions have
been pretty useless and/or not good uses of restrict.

Yes, if you put restrict on functions where you don't ever access any
objects through the pointers, the restrict qualifiers are misleading
and so compilers might give bad warnings for your bad API.

>         }
>
>         int main(void)
>         {
>                 char x =3D 3;
>                 char *xp =3D &x;
>                 is_same_pointer(xp, xp);
>         }
>         $ cc -Wall d.c
>         d.c: In function =E2=80=98main=E2=80=99:
>         d.c:10:9: warning: passing argument 2 to =E2=80=98restrict=E2=80=
=99-qualified parameter aliases with argument 1 [-Wrestrict]
>            10 |         d(xp, xp);
>               |         ^~~~~~~~~~~~~~~
>
> It's impossible to know if a use of restrict causes UB without reading
> both the source code of the caller and the callee, so except for
> -fanalyzer, it's impossible to diagnose something with certainty.
>
> So, it's certainly not something we want in -Wall.
>
> Or should I remove the 'restrict' qualifier from that function, loosing
> "precious" semantic information, just because the compiler doesn't like
> it?
>
> Cheers,
> Alex
>
>
> --
> <https://www.alejandro-colomar.es/>

