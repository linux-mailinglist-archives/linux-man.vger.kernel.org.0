Return-Path: <linux-man+bounces-1338-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B514C928DF4
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 21:52:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BB671F2203B
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 19:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10F112FF96;
	Fri,  5 Jul 2024 19:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g4xtiXM1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6934813E024
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 19:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720209166; cv=none; b=lKNZCRX0J/yqP9sXCGJuQ+ChHORkUDgokbbGsGSAUjUUUSvn/muY9mqDSf9R9GWAatZfeW/kuh6ukzjlX2FZeDv/+uq0NSayXxx5oi4+/gDWEG747s1Q9w2hGQm4vlzTVpiXZfu6IpmT08Rjy2RlE88vMFnnFg/ojiajT+2A2hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720209166; c=relaxed/simple;
	bh=QKU8o3VRu9FCMSa1MxYOcCSQztG1y/Ui+JQrnpB7Mbk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RRBxWo7R6bOQR+AvdykNQ9aSRNkgMNwQQkoeu66pKpHshxYv/gf+/uXQfXGpMaeN5WP5xrZ+pxzCNv8HTTtHQ6cDsHvnE60/V+0uaCMJZ4W8/RxMgab/fBPc7q8LqmmcIXaeiOsHsr2d7CK2IzpuQPnFEmzmtDkDcYWVz8h6Ic4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g4xtiXM1; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52ea5765e75so1301296e87.0
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 12:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720209161; x=1720813961; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r0u/3t3DBAwJPND083ECMX9OTUcj0kW5e9LQRby/Pk0=;
        b=g4xtiXM1MrX97OcvCYTLR1UOpQoIQS+HMjA4PkH+0Nbrb/25e1W92ANUteT1tCR6Yc
         yl+1TIIxKHBV/mJ6Sv9nk2fESbf98cIadDnKbeJ1dBan2/LOIUzMzGxhtjk2RckIrvdp
         84GmqjTX4bWc/sGqh8enBO4G8KsvsZW0XYZBuN4rTJhCrKR3AByz7y/DdZM4ooju35gE
         OPvVfcYEbGfHSzUv8qyCp39nH2FCCSQuKwjiKDEH0zaf1FhHYZA5g/7o6ss51HSXzbvw
         paKhVB/Ia468tmMr89gyZZrKTPYNW/DJXUzL2pGS8xY+Wc/VBvOkqPELmXHnDH3jYvxq
         e0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720209161; x=1720813961;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r0u/3t3DBAwJPND083ECMX9OTUcj0kW5e9LQRby/Pk0=;
        b=kxmAitAqp9DhdSBSbJ4qG9DWDLH0M0NnZM8HRE7us7BT4Baci7WZKSTf7/fkvSCjsY
         a/qctZR4+uYuB1D0uF6ViQlL/Gv6oQfquW9l2wF5f8rnRC0xz6+p4QABCF0z58cPKlZA
         /bY/m+TQLQkJBboiawxe3WV8zIgqTd77LFZx+Sgi0kJvkbUviDXHsmJ0YAKzvwSN6qBr
         KWQ7kPeUya7hbTRa1NzKkvohYfBqRsCD8okJ5qEZ9WJhUXLKfUI9X8voz6ouVFxK9bNI
         mVVtBUwTQLvNVUP9hcUPGQyM8tDqkVcYzJwuSzuLihLAdApVoOxGeK4xzOJJfX1PuuQ2
         jt4g==
X-Forwarded-Encrypted: i=1; AJvYcCUvV6eig/K1sdPYfa8Z2oDd9YnX9e6oKpqD2XF2Fv4MpEfY4KsBzo+lfbBhDonzc3OdAqi0FqCmGsBUot65RI4Ji180O1u9Oo8V
X-Gm-Message-State: AOJu0Yxh7CHV6E1UP4Pd/Zg3xds49tSvz69PwNGg9x41qih83dqBn6Kt
	nPEJUY2Mo0lQ4DsVgeBKLLGYVR8RWS8uU6/KgQf/nEOKOlTh6bCEpGx4etKHCugPY9UxX4WMtJQ
	gXA21zHTzL3h/dDhHwmOdtofaD7Y=
X-Google-Smtp-Source: AGHT+IEAW7o6VRfMw65DEm3g67AiMX+nT+nV7srNMw/JZDfHTtkWc0Bm82jY10rPAAU6y3zEEs4f0YVmhhtmRgTUAyg=
X-Received: by 2002:ac2:57c1:0:b0:52e:7125:c70a with SMTP id
 2adb3069b0e04-52ea06bc9f4mr3790629e87.47.1720209161435; Fri, 05 Jul 2024
 12:52:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de> <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de> <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de> <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com> <2naeq6y7bllpma7zsonkpm2kcptiyubtacgluyb4dehdcvqys7@7byxskyncxqf>
In-Reply-To: <2naeq6y7bllpma7zsonkpm2kcptiyubtacgluyb4dehdcvqys7@7byxskyncxqf>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Fri, 5 Jul 2024 20:52:30 +0100
Message-ID: <CAH6eHdQ2j9rwEkHo3GNdohu9fU1iqQvBjXwqY4sX96yjqEjgdQ@mail.gmail.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like functions
To: Alejandro Colomar <alx@kernel.org>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Jul 2024 at 20:47, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Jonathan,
>
> On Fri, Jul 05, 2024 at 08:38:15PM GMT, Jonathan Wakely wrote:
> > On Fri, 5 Jul 2024 at 20:28, Alejandro Colomar <alx@kernel.org> wrote:
> > >
> > > Hi,
> > >
> > > On Fri, Jul 05, 2024 at 06:30:50PM GMT, Martin Uecker wrote:
> > > > Am Freitag, dem 05.07.2024 um 17:24 +0100 schrieb Jonathan Wakely:
> > > > > On Fri, 5 Jul 2024 at 17:02, Xi Ruoyao via Gcc <gcc@gcc.gnu.org> wrote:
> > > > > >
> > > > > > On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> > > > > > > At least, I hope there's consensus that while current GCC doesn't warn
> > > > > > > about this, ideally it should, which means it should warn for valid uses
> > > > > > > of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> > > > > > > POSIX, and glibc.
> > > > > >
> > > > > > It **shouldn't**.  strtol will only violate restrict if it's wrongly
> > > > > > implemented, or something dumb is done like "strtol((const char*) &p,
> > > > > > &p, 0)".
> > > > > >
> > > > > > See my previous reply.
> > >
> > > That's not right.  See my reply to yours, Xi.  The restrict in
> > >
> > >         char **endptr
> > >
> > > already prevents calls such as strtol(x, x, 0).
> >
> > That seems to contradict footnote 153 in C23.
>
> Did you mean a different footnote number?

No.

>
> Here's 153 in N3047:

That draft is nearly two years old.

>
> 153) An implementation can delay the choice of which integer type until
>      all enumeration constants have been seen.
>
> which seems completely unrelated.

Because you're looking at a draft from nearly two years ago. Try N3220.

