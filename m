Return-Path: <linux-man+bounces-540-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D28F1872A24
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 23:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F9BE1C218C2
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 22:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C92DF5A796;
	Tue,  5 Mar 2024 22:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sB1T2/pm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E80812D1F8
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 22:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709677354; cv=none; b=DOL9yS7Xme/Ph6XbPZI2sUmqCjRDDLC3VnGn/8TBYZHbvWXAQUp3GHILtpsVFGQAyE3aaGQo4aG24h1s6TWVHamwaVvlQ9zCuvgSP39a78xjoDT5fd27wW/HAxnth/MMJg66hrU/5EYN5cOtEOUcOcv/I8lmSGHEOquh8Omyk14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709677354; c=relaxed/simple;
	bh=Emvxl3JaeBEA6fYlQxKLyhCiR/NwJv573H4jjTs207U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r82rTHp4f5Ur5XchsqrjnepUX9j1zDOU9KrtRcA4ct89AjRvQ0TzZEMV2999teiZweEPUAMja2y1nx0xduJ+a2BhYTBUOvZ7opYzfmBCKuploVapdQLdlpMgE+TGnVX/RlAt684/unkhilot/GZWi4kzFDl57u2P5iIIJiMJXd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sB1T2/pm; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-78833eb8fe5so23881685a.0
        for <linux-man@vger.kernel.org>; Tue, 05 Mar 2024 14:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709677352; x=1710282152; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f4yaOCyORqK7Y6K5fYLxtn4q3HQqcLmWrnXZYR8L2IA=;
        b=sB1T2/pmBEPE7FVPZI41DdC+J8zVPxCrJWUXq0V7NFgb14U4RTG2xhxWr1ZX5WgNhJ
         Ie/JTeDTKpNxu08HDk58HlvBtJwWEZhkACUWQ/Z6zjyfFQI8EZdp1VFfvt/OIvyvZNwm
         2+du1UZPfF9h+EflZDX7IyDxatgcuWUBtZh57y+JY6SnPathV6jLzeUYmgVY85HdeTy7
         gqP1WOUlRPh6LctcNljraS+3ckzVKNY29yCNTgRIeok3/ny5t17U+0sy6IclvwK6Satb
         WrqLxvML5vUlDULhV7TkjChRR/eTDW7URw0Iy01opXviioWBeOP33eB/5ho/RNsvmMUj
         kAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709677352; x=1710282152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4yaOCyORqK7Y6K5fYLxtn4q3HQqcLmWrnXZYR8L2IA=;
        b=jtAG21P1ikf7VmnE7o6xKeq0J3E/jM8/UmwzEKmSlDw6AE66z0Qy8jQ7popLv2BdFP
         RGQdGQhaSNosDtV65YVLXkQmptoqQiaZBIIyZp0ptwe6zHXr6i6YL8vARb+z8SLV4NVU
         M2qhAUD2riaHxEMXflLGQj7ykiRkCL0H66t3MlZTYopIxT7f2B4IXME5hH/9zIsEIz6+
         URwJVtAp2pxoqe/PODiixkPtjR1B6YwRHopHY62UONyZoZ/DcC7/ABclFD7ZwckGYSeO
         4wriH3LppD3QcQMCW42XkXh4nUUFe5fQ8hg1FDQoOki6ta7nSEEhHIFIrZwhF8T1W27j
         Mzhw==
X-Forwarded-Encrypted: i=1; AJvYcCV9cR+GhL6ul/dvPLsACVart5fR/wRW5M6cer9/5HWIo8BQJnxYr8fD9Cf7Z5fYejONeeWnM1SVyhXq5lCf/ivQzNgCYnHO3aqp
X-Gm-Message-State: AOJu0YzPoucX/wmUYc46qUxA9aSAdJfT96q4xVXqinVz1/67nE1vrnzu
	KUqZxLg6Gm5ztCGGW3j7jDS48TU1ElMMLfjEA0TvZ65nOl4ZnhDmXoOtGOetDexPmmHMMkhTkeL
	6aYAEe/3EfIQjlirRIpEb2YlOo0WSvN5iZq9i110Qav7OKArzGxhU
X-Google-Smtp-Source: AGHT+IEXsP4T2G6jGTP+d7kkEuiOFndfFglwLO/54VRu/s6qVyb4XmHsU+ChPOKu5pt1ZGfntquz6f6Y2H3XwDSmX3Q=
X-Received: by 2002:ad4:4eef:0:b0:690:2139:b50e with SMTP id
 dv15-20020ad44eef000000b006902139b50emr5804567qvb.18.1709677351705; Tue, 05
 Mar 2024 14:22:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZUIlirG-ypudgpbK@debian> <20240303121454.16994-3-alx@kernel.org>
 <5882437.otsE0voPBg@nimes> <ZeRzS6mENO8kOh1W@debian> <CAJgzZor8TTSysM=TiTXQdVtHMZPQWu5YOhPmb8PAevdVd-c31Q@mail.gmail.com>
 <ZeZohz1sLcIN6kxA@debian> <CAJgzZoog1qS4BOYaKDnLsA3RzL-61r=33tP-XK2xvOwa008jJw@mail.gmail.com>
 <ZeZxSydsfskaQ5Vw@debian>
In-Reply-To: <ZeZxSydsfskaQ5Vw@debian>
From: enh <enh@google.com>
Date: Tue, 5 Mar 2024 14:22:20 -0800
Message-ID: <CAJgzZopTu=mQWcDGGHKnTRE3i+ksoLd37NwWg2fTaaGUkv9aFw@mail.gmail.com>
Subject: Re: [PATCH 2/2] clock_nanosleep.2, nanosleep.2: Use 'duration' rather
 than 'request'
To: Alejandro Colomar <alx@kernel.org>
Cc: Bruno Haible <bruno@clisp.org>, Stefan Puiu <stefan.puiu@gmail.com>, linux-man@vger.kernel.org, 
	GNU C Library <libc-alpha@sourceware.org>, linux-api@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 4, 2024 at 5:11=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> On Mon, Mar 04, 2024 at 04:56:13PM -0800, enh wrote:
> > > > int clock_nanosleep(clockid_t __clock, int __flags, const struct
> > > > timespec* _Nonnull __time, struct timespec* _Nullable __remainder);
> > >
> > > Hmmmm, that's the best name, meaningfully, I think.  But I've been
> > > trying to avoid it.  I don't like using names of standard functions i=
n
> > > identifiers; it might confuse.  As an alternative, I thought of 't'.
> > > What do you think?
> >
> > as you can see, i've taken the "the leading `__` means we get to
> > trample whatever we like" approach :-)
> >
> > (we build bionic with hidden visibility and an explicit list of
> > symbols for the linker to export, so we'd have to be trying quite hard
> > to trip over ourselves.)
>
> Yeah, I was worried about the manual page  :)

yeah, i think "t + extra text" makes sense there. i just try to be as
brief as possible in the doc comments on the assumption that most
readers will be seeing them in IDE pop-ups, and anyone who wants lots
of text will click through to the man page anyway. and at that point
they're your problem :-)

> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

