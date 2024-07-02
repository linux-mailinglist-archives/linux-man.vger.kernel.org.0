Return-Path: <linux-man+bounces-1313-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D6E92480B
	for <lists+linux-man@lfdr.de>; Tue,  2 Jul 2024 21:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DF841C255D8
	for <lists+linux-man@lfdr.de>; Tue,  2 Jul 2024 19:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2875E1CE099;
	Tue,  2 Jul 2024 19:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OELC3Jom"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814611514DC
	for <linux-man@vger.kernel.org>; Tue,  2 Jul 2024 19:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719947981; cv=none; b=iLeSUdo5BcxWBrBzRJPuIV8O7+r3Shc0Wl34iRdNoc+vvv0p/zF77XFzWn2sPEKEl944+lJGfJZuKt3MZBrkv4SdYasHRM5qHbkvk/Z6b5DTfswSNYgN71xpZCNua4WR1njMStpIyP+dOmv4o0w2ojJaEg2/NESzfqVDL98NmZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719947981; c=relaxed/simple;
	bh=eZhP4uwuKrUrvL3uhC6BbS0MRVWEYR5OF9t1ZmLxe4I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b6dJOkJZXeN5TNcxEUlU8Unq1Iq+RcflSaM+mjShL3+Qjp0X85+YgiWUtY8HLAdfeHREkGERZ8+AQjxSFlJdpA9kxDqmoDTdlfZd0H3vY+ITMLVKo7rXyhiZZxM3LSeG7uVD+QyFDB65OWE/d2pxEqpIatKhXDNf9ef26c/kQq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OELC3Jom; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2c7fa0c9a8cso2794056a91.1
        for <linux-man@vger.kernel.org>; Tue, 02 Jul 2024 12:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719947980; x=1720552780; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CD6IOTpCb/8ZjMgHil5SirN7WyRNTcdtX1PbOqJQ+eI=;
        b=OELC3JomtqeCwBaigOJi5sY7D+4b8hKTRRp57YB3YM/6NZ1+XicS5dVPxniubAWUSu
         foA2ZicIwePQOWqob0hdxxCyxzkN6LHU9/XBHHmI5YIz8oS9a2BhzFeMfPW1nsdFrBWC
         UKYf4tJgRrER0/iD2LjT8PZxnNFUYt4WZfqU8RAqCXCzuNnymZEyCtLARyRoVxlVQQTP
         FM3u9YwZhU+liPrZQkWrabRiw59VKEjh4uBowqo3tau8Q2NKFWM5Bi8rEVOp2lCsL6/r
         xYrcpmGS6R9uibEYqxckwtA713lMrJDPO09HbyUJoinIZFzscWMtWkBeFHeyfNMhKmax
         krhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719947980; x=1720552780;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CD6IOTpCb/8ZjMgHil5SirN7WyRNTcdtX1PbOqJQ+eI=;
        b=kUreOSUPFgCbvMBZQTjccfEZlFZBJ5YR78OyPG9Iwzy2MhA/WZkvPknn7I7sRN+KM3
         IEeN+8LdzL1jkvzw2H5PF0VFc5Rwyzti1j4kHqMHI8XIBgxQX/atWV554nDLGOtkUIhF
         1wAMD7I30dDvc8aAsWNOzaO7YsVRMorpVWsO11zC8LrToPYJSpGFihdE9JcnN1tlcmkW
         tXHlhbDcNy2ux4zqkcRJ/r/7yqm664EdqJc9U4QiIwHn9B1DoMl/98D8ZnNvUTHYbRYz
         iGwg5OeAxPHO2B9G9OEiGaKGISWI1M8je3xFoXxS1zdGcRM0M57RhAb7I1uwHzcu039x
         PvNw==
X-Gm-Message-State: AOJu0YwR4LOXaoq10HG8/jqv8uE+wa7RlsdMPCBdwh9YlMtRmclalxBd
	dUQ5bvJt8Jg+p6dLoTBaFWTK9vNXt2YuVmFCuav6F13LEaguFkiwhT/f7BaWd+oPA7d29wUVlK4
	gqFG6Sx8h2nvYf1570w4+Lk9GBa8JF5PYXONZFQ==
X-Google-Smtp-Source: AGHT+IGM3h4mzQRfWTno8RF13SKxAnYsvDmWWaTvF/8SD5NixqoJ31R1WY4pFlB+CXTR6Va2cy7PSP13aSkI6qOBo7k=
X-Received: by 2002:a17:90a:1c08:b0:2c5:10a6:e989 with SMTP id
 98e67ed59e1d1-2c93d75a3d5mr5984023a91.35.1719947979584; Tue, 02 Jul 2024
 12:19:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>
 <2s5drc4ywno4tpk3kvej4op7qpfe4ivpf275fxvo2hpckfozgw@lsn4ete4vihl>
In-Reply-To: <2s5drc4ywno4tpk3kvej4op7qpfe4ivpf275fxvo2hpckfozgw@lsn4ete4vihl>
From: =?UTF-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Date: Tue, 2 Jul 2024 21:19:28 +0200
Message-ID: <CAHGiy6-nx0PwBi6xwoG8PN5qND-krGh_rvpfmVc31-QSv04C6g@mail.gmail.com>
Subject: Re: [PATCH] perf_event_open.2: document combining inherit and cpus =
 -1 preventing the use of mmap
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm very sorry for the corrupt patch formatting, and also for sending
this to you twice (I initially forgot to CC the linux-man address),
this is my first time submitting contributions this way, and I'm still
learning how to do it properly. You can find the fixed patch below.

Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
---
 man/man2/perf_event_open.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
index 15411027d..72d8fd797 100644
--- a/man/man2/perf_event_open.2
+++ b/man/man2/perf_event_open.2
@@ -1027,6 +1027,10 @@ .SS Arguments
 .I read_format
 values, such as
 .BR PERF_FORMAT_GROUP .
+Additionally, using it together with
+.I cpu =3D=3D \-1
+prevents the creation of the mmap ring-buffer used for
+logging asynchronous events in sampled mode.
 .TP
 .I pinned
 The
--
2.45.2

On Fri, Jun 28, 2024 at 1:02=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Miko=C5=82aj,
>
> On Sun, Jun 23, 2024 at 02:02:36AM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> > After calling perf_event_open() with cpus =3D=3D -1 and the inherit bit=
,
> > using mmap on the perf file descriptor to create a ring-buffer fails
> > with EINVAL. This behavior wasn't previously documented in the man
> > page and is caused by the following lines in the perf_mmap function in
> > kernel/events/core.c:
> > /*
> > * Don't allow mmap() of inherited per-task counters. This would
> > * create a performance issue due to all children writing to the
> > * same rb.
> > */
> > if (event->cpu =3D=3D -1 && event->attr.inherit)
> >         return -EINVAL;
>
> Thanks for the detailed commit message!
>
> > Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> > ---
> > man/man2/perf_event_open.2 | 4 ++++
> > 1 file changed, 4 insertions(+)
> >
> > diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> > index 2f345ff5b..15a5972d0 100644
> > --- a/man/man2/perf_event_open.2
> > +++ b/man/man2/perf_event_open.2
> > @@ -1025,6 +1025,10 @@ .SS Arguments
> > .I read_format
>
> Applying: perf_event_open.2: document combining inherit and cpus =3D -1 p=
reventing the use of mmap
> error: corrupt patch at line 10
> Patch failed at 0001 perf_event_open.2: document combining inherit and cp=
us =3D -1 preventing the use of mmap
> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> hint: When you have resolved this problem, run "git am --continue".
> hint: If you prefer to skip this patch, run "git am --skip" instead.
> hint: To restore the original branch and stop patching, run "git am --abo=
rt".
> hint: Disable this message with "git config advice.mergeConflict false"
> Press any key to continue...
>
> The patch seems to be corrupt.  Context lines should begin with a space.
> Can you fix that on your end?  Otherwise, I'll manually apply the patch.
>
> > values, such as
> > .BR PERF_FORMAT_GROUP .
> > +Additionally, using it together with
> > +.BR "cpu =3D=3D -1"
>
> Please make this
>
> .I cpu =3D=3D \-1
>
> > +prevents the creation of the mmap ring-buffer used for
> > +logging asynchronous events in sampled mode.
> > .TP
> > .I pinned
> > The
> > --
> > 2.45.2
>
> Have a lovely day!
> Alex
>
> >
>
> --
> <https://www.alejandro-colomar.es/>

