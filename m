Return-Path: <linux-man+bounces-913-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 714A38C5B89
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 21:13:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D76C282CC0
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 19:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4175B180A9C;
	Tue, 14 May 2024 19:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ikQKSAN9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B3717EBA5
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 19:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715714003; cv=none; b=ptI6Gm056aTfcUqGxywK7mI4DIFTOpm2qcpZ+apmkXPci0QsbTGGy1IDdgCyu0hRftjaSEeU//DwX4t6CT6G3JAZ5dgHEGwHyA6AsSIBPpTwVPUK+7O5LLjyxYC+y53/Mn4Lvtao5LPbaICvHpih0GYN+T+WZE4x//VYd70dipc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715714003; c=relaxed/simple;
	bh=w5J+abbmAbJdSKKSwHM7vTZuFn+ROId9y5XfOXTlhNw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aN/H591zeHXOcSFXp8hG4Y+K2VihAwcZqvTMaU6wDiDV+LplLjS7NIhXQR+6q8SdHHwPu/ZL8m1H7+Sl9Te/Mnru2Nt27clM201VmmuFYisi72wRSht5rSeVdt+TwylpAFFqYBiGh5kT7u7PlyAoMpKPNyIv/lYB1PG5rOU9+T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ikQKSAN9; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56e37503115so476400a12.1
        for <linux-man@vger.kernel.org>; Tue, 14 May 2024 12:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715714000; x=1716318800; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9PeYKyhir0PE6gydsosIJcIrdnH1c5LU4lJ5uoXbn3U=;
        b=ikQKSAN93OPcsYWzH6MpQFlaHJhVDp0hehEb22sn+JdhQQHREC/SlqUDACS6gch8bO
         rjMTFeMYFXx7yFddnBTrrfUjZpSSSMrl2DIGW6Sd1pO/3f2uokDaq4vC93o+FTwzBmOC
         3ABTPrPz/NXuSjDlxK6rM3CbzSmLzstClf6kHxbwvwicbo7Dz0of2gIrDL8dCaOMSy+M
         rDCa9w8DbNzdbEqENan6xKgOzuqjPIl1u1nymEiDWUsVKFeh935W7xXhWsLmZpSJpFKl
         3abiJ9V5N8+rY117r2Zz/qKniYABLbIZZZ6KKh0v4wq75J5BV98Smjv5vnY9ZlRO1iHg
         sNeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715714000; x=1716318800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9PeYKyhir0PE6gydsosIJcIrdnH1c5LU4lJ5uoXbn3U=;
        b=N15MxJKd3pjk/5/5HtT4PMkAloMN/FB1Y/uRdF6pYl0Kh/S+GshfS4S8QtC/k1QeYq
         VkGxDk1a1ci+/EOnAb97E1gsaDtbQNm8wPnsrw2d0dNIfJXDf/+NZWp/pYvBVdtHGTdK
         /G38/NqYRcE3YLKNaFujVU3FMt/K8OfhREv9OxwjTw6BCAsZIYVDVKQP7xu4+nWEQwRn
         4Tfuj3J573guCpnQM/MDzfxdkRoGJyX/uzPbhisSqsKPOFsIElDr1ZCbtWIlNBWL16gD
         3isYSEqKxd8O8ij7lQH83tAh69HqkzfaeHFmgvue2jLRfe9fHJeOHpyVDo+wJQ1kfO1/
         dD9Q==
X-Gm-Message-State: AOJu0Yw4xRdgwMH+uo7uQ8dwUB1aLCD81JL0ep1PO4fS5vqEYJGhk7Uz
	KiAHVqEQD+5CBUFUp0ZPqV83AoiZSgrzwsBjc9nr/vAm87TstizOzxoDswuNHuge5xSe/QARNm7
	51eOUYVej8+1FJTESCgBBPS8kHaE=
X-Google-Smtp-Source: AGHT+IEDgCSJnp8u0OenyNjJ37SKks5IKdk+HAYvBQ95bsr+xSxzPiQS18vlHMwzPnc4XPjv2G4LDzkRNUNQwKYM8so=
X-Received: by 2002:a50:8d16:0:b0:572:a158:8a7c with SMTP id
 4fb4d7f45d1cf-5734d6b3cb3mr7915216a12.42.1715713999624; Tue, 14 May 2024
 12:13:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240514175449.68721-1-technoboy85@gmail.com> <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
 <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com> <pvdvga6qc2dov7uo3r73epgs72hzwv5ioiya3jl6eddqxwsbaq@uk7xau6ljj4h>
In-Reply-To: <pvdvga6qc2dov7uo3r73epgs72hzwv5ioiya3jl6eddqxwsbaq@uk7xau6ljj4h>
From: Matteo Croce <technoboy85@gmail.com>
Date: Tue, 14 May 2024 21:12:43 +0200
Message-ID: <CAFnufp1XDhzF=+2QqFGg_Ji04nxpb_wh0CYRgee+q00FgcqbDw@mail.gmail.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Content-Type: text/plain; charset="UTF-8"

Il giorno mar 14 mag 2024 alle ore 21:06 Alejandro Colomar
<alx@kernel.org> ha scritto:
>
> Hi Matteo,
>
> On Tue, May 14, 2024 at 08:43:49PM GMT, Matteo Croce wrote:
> > Il giorno mar 14 mag 2024 alle ore 20:08 Alejandro Colomar
> > <alx@kernel.org> ha scritto:
> > >
> > >
> > > What is the accepted format?  A CSV of pid numbers?
> > >
> > > Have a lovely day!
> > > Alex
> > >
> >
> > Hi Alejandro,
> > It can only accept the literal "pid" string:
>
> Then 'pid' should be in bold (B), not italics (I).
>

Ok, I will send a v2

> > # mount -t proc proc_pid pid -o subset=pid
> > # mount |grep -w proc_pid
> > proc_pid on /tmp/proc/pid type proc (rw,relatime,subset=pid)
> >
> > # ll -d pid/{1,$$,cmdline,version}
> > ls: cannot access 'pid/cmdline': No such file or directory
> > ls: cannot access 'pid/version': No such file or directory
> > dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/1
> > dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/25146
>
> Hmmm, makes sense.
>
> So, it contains:
>
> /proc/<pid>
> /proc/<tid>
> /proc/self
> /proc/thread-self
>
> And all others are gone, right?
>
> Is anything else included?  Or is anything within those dirs gone?
>

Exactly, self and thread-self are the only non-numeric entries in that
mounted procfs.

# ls pid |grep -vx '[[:digit:]]*'
self
thread-self
#

> >
> > perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay
>
> lol!  It keeps funny for a surprising long time.
>

:)

-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay

