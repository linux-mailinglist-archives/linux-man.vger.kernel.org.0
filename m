Return-Path: <linux-man+bounces-1335-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0552D928DDF
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 21:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEA3D1C2273A
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 19:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6C08175563;
	Fri,  5 Jul 2024 19:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m2R+7PcI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061ED405F8
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 19:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720208310; cv=none; b=i65WKQ+GZouXeja6MPIcxzr1haMLq1deCQI8eZiXMcSG4WQ7suQmoJbTo7rTF5y/LIwfXmz/QZRI8AV8pi5Zsnz2cG9Dez3KVDslkII8Wzi3BxsgAW6Tir/Mt4Bq4jfCUyUxoPcAwKng7DGaMTDskUK6/OJdOOosDy0Xt9uBrI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720208310; c=relaxed/simple;
	bh=REV231PMc34qWPK0Lb2FUUAGKoGzUwFHXZbmHCL4eBg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ToAHLZfwmcJ/1MlQlUIWqsa74ptrcaxe2LoNxHXqKC3O356XbRZT8YFQm3GNfTugJm0kwI4lqFhwuLdQNoa8p1ZjptQwNbz7FcUUPYT7JonnKDaDZChdQvQWMIBx8snMzdgRhhzUilxR6qBduqF/EzUQLvzV+1PzcK/B9Z/7Ogo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m2R+7PcI; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52e99060b41so2031676e87.2
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 12:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720208307; x=1720813107; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/lmnDgdHChV08kfafm4bNAQuH3nsEsZZRQJDM58RIDk=;
        b=m2R+7PcIyHn8btsZ0TNTN++EFV04w3i+N/jnIQHx+ftM9kw+TKklmddHCy227nN2js
         CzJYbyuItpsQnNoFz4bDdrHRlvcZFnGYGMfw3aEuu39RXJtZJt1ogyGioku03iG0rsqT
         GBKgVFutpfQ69kD/bzFYsAt7sQisDVnb4XqbbjMeKKy6y+myXnQGec05pp/EZRxmXaSI
         zV2pFE8rPyBTRulTy4vQ77T6HL9G5RnD0nRUqxI4MVdan+VNPrsRBvCtYVRnqJD2z3VX
         3zQZxmRH8ZyGTMg44vQlfRAiCKITmXqEr4ZtUqqQosYtLi7LWl2abHNyx8Wuif+fPCG1
         YHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720208307; x=1720813107;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/lmnDgdHChV08kfafm4bNAQuH3nsEsZZRQJDM58RIDk=;
        b=WDVaYbkPG3vYVqnta5ZHWfLKYP3MzLqzbsq6vrkcCnUf2Y3FOzM8NH4dEJ0l65vHPj
         9oKetLSi52ilzmcrxbU38Cf8ulQbSfO0cA2K3K1Gjr2er3hUIK3EJt3HNMeKHc3SnBYp
         YlV7bMSt+VfhvcjWQUHUatDY/IGGBkqn55ikvg0hugECppXUiHs6HwVNPT/sc/pG8xyZ
         iRtiXPvb9ipFBRHYka+FwwjPU8dHbfc5HcAUggejlOBHU7CPMUxC/bKI57hZj/w/HFEU
         8g/q++yNSUO/J3eA2/yhuHZHWx1giqHRE6gg53tfpoNkRcS0iVEyDKJ7+6wXS1VqKHdu
         kZeg==
X-Forwarded-Encrypted: i=1; AJvYcCW2t/A8ga1WHWIZZ3YeQ7WZ7jgwOqAXLjVYnYLIfNDZqfzwgPj3GZSR66D/hdqXbZv8vsOUfHGwWYNqvBnPGb5sTq/QTHROHUpk
X-Gm-Message-State: AOJu0Yw8CmWQ94RB6zhd0YaCNeoUXmfXbOyfKt8nCP+GMvMOXpugyk+F
	NU0Icf9agjvLPP9hdBfx2g21wskJqJvYZcBr+z69OJwsgTnMm8bDmT5zjfkDXAPSZoD04erjBh0
	dRVAy1p1Jbr5bcUxAfuRsmFEmuOo=
X-Google-Smtp-Source: AGHT+IE/x8A2BcvklIH5FGy1Bp3ROMNUKK8TWmwaba0CoPiqvnJ/sLtbz7EhoPsFdIdaRR9FT6JhW0UZcsV+mTW6B2M=
X-Received: by 2002:ac2:5507:0:b0:52d:6663:5cbe with SMTP id
 2adb3069b0e04-52ea061af02mr3070544e87.12.1720208306839; Fri, 05 Jul 2024
 12:38:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240705130249.14116-2-alx@kernel.org> <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de> <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de> <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de> <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
In-Reply-To: <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Fri, 5 Jul 2024 20:38:15 +0100
Message-ID: <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like functions
To: Alejandro Colomar <alx@kernel.org>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Jul 2024 at 20:28, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi,
>
> On Fri, Jul 05, 2024 at 06:30:50PM GMT, Martin Uecker wrote:
> > Am Freitag, dem 05.07.2024 um 17:24 +0100 schrieb Jonathan Wakely:
> > > On Fri, 5 Jul 2024 at 17:02, Xi Ruoyao via Gcc <gcc@gcc.gnu.org> wrote:
> > > >
> > > > On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> > > > > At least, I hope there's consensus that while current GCC doesn't warn
> > > > > about this, ideally it should, which means it should warn for valid uses
> > > > > of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> > > > > POSIX, and glibc.
> > > >
> > > > It **shouldn't**.  strtol will only violate restrict if it's wrongly
> > > > implemented, or something dumb is done like "strtol((const char*) &p,
> > > > &p, 0)".
> > > >
> > > > See my previous reply.
>
> That's not right.  See my reply to yours, Xi.  The restrict in
>
>         char **endptr
>
> already prevents calls such as strtol(x, x, 0).

That seems to contradict footnote 153 in C23.

