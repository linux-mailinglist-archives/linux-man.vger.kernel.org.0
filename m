Return-Path: <linux-man+bounces-5672-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1qVLMrCbQmpp+gkAu9opvQ
	(envelope-from <linux-man+bounces-5672-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 18:22:08 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2475F6DD482
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 18:22:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Bxj4f77x;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5672-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5672-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FACC30EF526
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 16:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBEE44CF29;
	Mon, 29 Jun 2026 16:15:59 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1090044CF59
	for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 16:15:57 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782749759; cv=pass; b=m9phZioWBg9NpPZM3brqPE/qbT078/z5xV15G4eE72PvrsgPCQR8wdin22aA/s/nmJQKrTjYpv/wkSAq5LhYjG9kxEtpRRoF0rufUlFZB8uZQf8LnKIKUTVq/Bk9UureykSem/wzarpNeb+cFiZfPCmX77FmFoCkycu62IAuwdY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782749759; c=relaxed/simple;
	bh=Xn9x7Zr4MMgx2k5+NuHmE9fRFnLpBDrJN0O0RJTSl4Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ozdiJzniBGk5mHVWyPEjzum+fdgoXYTI5wkgdpjlKQervQ1KLLsGrzrEWsEGth6TtDYTrbXTYnO5l1hMIk7haL1NL8E+4XMyCzPfTQskuy2xFaLuFwx5mT4XSALrC+dx53kgVA7EcWr075UqTTXQCoJU88+La52Abx+SqHc4ZK8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bxj4f77x; arc=pass smtp.client-ip=209.85.217.53
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-736eea06c3eso927112137.0
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 09:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782749757; cv=none;
        d=google.com; s=arc-20260327;
        b=EklbWFugTikU7yAnDy9wkJbXandZo1OWW3dWYhDX4iY+RMNhK/voW2TNarHwqKH2eD
         +CniyALCkYrYu9kXz1VZglUC5tjdul9A5O1SdZ101KFRz+lxwSViNernQSUOuqaD4sai
         kXlXHUzNYIeHCrD4CPlA59QSquruRbNXCpqoB/Kia1YkQ/t4xcTNsG/zzDStNNmAYrZk
         kFWSnPRyQlXzcV3qISUrer+h27nGq4dcMiQLkfGMRKdL7LN4EqYHeX4sUvf6kWNyNjQp
         yD0/ADQa0xZfv/KJ+2GIqPviEKkZCrm8yeV7w3ybYsfG/9ZCje1M2ooIg/8nU7AFjFIc
         i8Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SKZMgdAo3sT9iSQ8ehM+eL8rcZP6iekjYDErraFatM4=;
        fh=yjAKVE+KPqegrS3FUQX7EcG89kFT6Hc9zhi6ORWMteg=;
        b=b1WIBQBk3ETrM1+Qvyt4dmoP5DYqLxR/mY5AxM8jY/4mXACsnkGFW6eyVKMAikbpzk
         VD/rrtiLty0BpdwO/slt4bJdrqqOZPo6GqzA5BmGiaQoKd8ozv6Xm0X3nlH8gu7KspvO
         C8nPgElT4fHRCc3kpyGm3sY1X7HlGcUseX4AQiIbppmOeeQDvm7RK2xEj7EZFwicqdCY
         ZjHLge7qy8+7gJSxAkixMa0p5IqLNt2xDWwMIjkXQxFvHYX31TSvy7Koi0vShyAaDJ9H
         MogUX27zsSwoK1Ujr1OuEHKXH9C4wgj1pHZJguUyfR6C4TObQaH9N4yehNluQ6HPSVa7
         4rFA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782749757; x=1783354557; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKZMgdAo3sT9iSQ8ehM+eL8rcZP6iekjYDErraFatM4=;
        b=Bxj4f77xdjCZLyKhAMOLQQKJaGokjJvfLI/WET/tXxVRaMzMe91xb5hLlZq1dTU6qq
         bxL8i+Xz4wxvzryChh5bMthWRhv9otM4c1GOZwNWbe+y+hQpYKWQYuAxn1sOR/RDPR2a
         nkDtQuGzH4z6qqhhgQZLfgxt7PDiUvklmTAeMsuBOjP0y3PsFii09AnlNjCEXyx+qL6R
         AZdH6rScZO4WAWad+fOeojNp0RDuTMnot+KwwbqIBriB6fXFCIgFjSjw+Oq86h2y2ng5
         8laN1LsZCicy+mjMMaCyLK60muulDfCFeb3eoUxeUqHdW/wGLrGV9mTRgjaci3/w/Ne1
         CQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782749757; x=1783354557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SKZMgdAo3sT9iSQ8ehM+eL8rcZP6iekjYDErraFatM4=;
        b=RUODPm9qLciRlO45YNbTgEfiVA789tFqdPm0vKO//cV4n5O6IrEt367lGiSU+7ayAg
         oGc5VG2nm/4l/fgHmjkd4oadtvpXw83UN7sH8AHTE05o+A/xqRiXOb2VUYOVyEispDWH
         otpx8Y4ZtrhtYuQYpxfrsinyAhssiRjhWnrPjebJLgweHBpp5y08wXCqTdTo8Hs7V71V
         tsQrxuCtzTiHvKQ5D+M1rChfI3MrsTT0GXFSBMMCT+UARnbMu2SmWxn6VAuVOJcrItx6
         oZKUH++C5RzDMHNvOxdPqtGVhHQZGTcQfS540r6DwKmO8ikE1aN8ZOJ2j/aa3M6cmlbR
         WWFA==
X-Forwarded-Encrypted: i=1; AHgh+RrKMloPIoUosUFTDkAb4HrhL6jdUq6tdZykJTLbF8PerCU0n8fAgeWNQE8su2epu10097Jr5prynVY=@vger.kernel.org
X-Gm-Message-State: AOJu0YyzhJH77Gy0ZqiqMwTpwrpmR4lcQrrrl+jf7EY3isap3JVV19wQ
	G7ldJlfdjh8ClrTl7WrukYy6ycIcjKvYTu/NCj/F3o0bdoZ21gLTTRh1YZwTXkuFvn9ko9SMuHH
	ZDpoWcS6fUxz0pYv+1ZoX9pmpanvl5h0=
X-Gm-Gg: AfdE7cnVtT3WwmgbC7Nam637U7YpCnx+ooiq8RHUQPXmIPYCy2FFog+6LA55Wtx0OxE
	JOjC8IvuicVQWQ92rX3DYlw3c0YZbr5l5cNHh88432wtz4qyycKIvMe4Qt7LyRjpTGhw7Uzg94L
	AkoKzUGdNh6m1hGTcQLwzj4fTF2nqaeE5KBuJZqUwDhXTLmFbVHGIQMVc9BQEYsfGy8xKXlMk0R
	M2Cq76zxp8wv0CxFz5rsIg60e6eSMAiWrYWliS2CuKk7hv6lthM98L0SJ6u4wEECtWzbbKyQMm2
	G6aXcKGekcDuc1l0Cj6jwBi/cZXi
X-Received: by 2002:a05:6102:5986:b0:631:28c1:154c with SMTP id
 ada2fe7eead31-73a3790fa33mr255179137.9.1782749756899; Mon, 29 Jun 2026
 09:15:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-2-dorjoychy111@gmail.com> <ae4K_5f1g3zgSNkC@devuan>
 <lhu5x5c4rpl.fsf@oldenburg.str.redhat.com> <ae9gDtEo6OxHTYBt@devuan>
 <lhuv7dcy1j9.fsf@oldenburg.str.redhat.com> <ae9lMz0SRR-sn1Uz@devuan>
In-Reply-To: <ae9lMz0SRR-sn1Uz@devuan>
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Date: Mon, 29 Jun 2026 22:15:45 +0600
X-Gm-Features: AVVi8CfadvGmT3BX31AdA7AFJzpR_e0SufxbjrjgIMB5fPZWbJmH86EO7KFYULk
Message-ID: <CAFfO_h7V4gX6NbQvPtTF=XeH44j4O1oxWcArE+fzKM9FTmDKRg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] man/man3/errno.3: Document EFTYPE error code
To: Alejandro Colomar <alx@kernel.org>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org, brauner@kernel.org, 
	jlayton@kernel.org, libc-alpha@sourceware.org, linux-api@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5672-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:fweimer@redhat.com,m:linux-man@vger.kernel.org,m:brauner@kernel.org,m:jlayton@kernel.org,m:libc-alpha@sourceware.org,m:linux-api@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,vger.kernel.org:from_smtp,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2475F6DD482

Hi,

The OPENAT2_REGULAR and EFTYPE changes are in the 7.2-rc1 now I
believe. I am not sure if it's the right time to merge the man-page
changes now. I also don't know the whole flow so I'm asking. Do both
of these need to be added to glibc manually or do these get pulled in
from the uapi headers of linux into glibc automatically?

Regards,
Dorjoy

On Mon, Apr 27, 2026 at 7:33=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Florian,
>
> On 2026-04-27T15:29:30+0200, Florian Weimer wrote:
> > * Alejandro Colomar:
> >
> > > Hi Florian,
> > >
> > > On 2026-04-27T12:34:30+0200, Florian Weimer wrote:
> > >> * Alejandro Colomar:
> > >>
> > >> > [CC +=3D libc-alpha]
> > >> >
> > >> > Hi Dorjoy,
> > >> >
> > >> > On 2026-04-26T17:14:25+0600, Dorjoy Chowdhury wrote:
> > >> >> Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
> > >> >
> > >> > Thanks!
> > >> >
> > >> >  Reviewed-by: Alejandro Colomar <alx@kernel.org>
> > >> >
> > >> > I will wait until glibc adds this error code to their <errno.h> be=
fore
> > >> > applying the patch.  This means either you should write and send a=
 patch
> > >> > to glibc (if so, please CC me), or you should ask them to add it
> > >> > themselves (if you're not comfortable writing glibc code).
> > >>
> > >> I'm not sure where this is coming from.
> > >
> > > Here's a link to the thread:
> > > <https://lore.kernel.org/linux-man/20260426111707.36541-1-dorjoychy11=
1@gmail.com/T/>
> > >
> > >> POSIX says EFTYPE was rejected
> > >> in favor of ENOTTY.
> > >
> > > Could you please share a link to that?
> > >
> > > Anyway, I guess ENOTTY would be inappropriate in this case.  Although
> > > maybe a better error code could be devised; I don't know.  This is wh=
y
> > > I wanted glibc involved in this discussion before this arrives to a
> > > Linux release.  Thanks for the quick feedback!
> >
> > It's in the Rationale for System Interfaces:
> >
> > =E2=80=9C
> > [EFTYPE]
> >     This error code was proposed in earlier proposals as "Inappropriate
> >     operation for file type", meaning that the operation requested is
> >     not appropriate for the file specified in the function call. This
> >     code was proposed, although the same idea was covered by [ENOTTY],
> >     because the connotations of the name would be misleading. It was
> >     pointed out that the fcntl() function uses the error code [EINVAL]
> >     for this notion, and hence all instances of [EFTYPE] were changed t=
o
> >     this code.
> > =E2=80=9D
> >
> > I replied on linux-fsdevel, too.
>
> Thanks!
>
> >
> > (It would be nice to submit patches introducing new error codes to
> > linux-api with a subject mentioning the error code.)
>
> Thanks!  I'll remember this advice for when receiving patches that add
> error codes.
>
> >
> > Thanks,
> > Florian
>
> Cheers,
> Alex
>
> --
> <https://www.alejandro-colomar.es>

