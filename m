Return-Path: <linux-man+bounces-3995-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4A0BA78D9
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 23:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1256316F97C
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 21:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E68A230D0F;
	Sun, 28 Sep 2025 21:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A0j5PFeV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6592255E53
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 21:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759096515; cv=none; b=VYfgQePtlX57i397X2RKXFUwFeBNXuI4rFW9t44ixYVhojMWCAfMedo9I9Hkx2yuAK1/oB42MREsG1p+Swq+612KV5a0pK16k1HD3TyzVLn+exhDnYBMsluSNhTzBJRntywKliLYwrWfPNYCNDTJAtypApWZ/eln+Rb5AJRhEcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759096515; c=relaxed/simple;
	bh=RGKLg5SdNSBZAgjurGLvjvRR/OjL8N4PJKPf76qm2ag=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lh+0wYu77GkO3t+jp0ZFAWWBCq1kB4BiPSHABlelJidDE2AEGcr5pjTItTYsKGIFdglT3I5qpPInCnW/wOCNBJaaUHMqrYz+j0UE48fY0l0vyTD9bxDhxjWdzz1CZkIQHNwKgDKauf3GgiLoKzIxfMRgYp6FuJk0fZFFAhIGSV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A0j5PFeV; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-36639c30bb7so40532901fa.3
        for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 14:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759096512; x=1759701312; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WapbkIa7sgxnsnldKw2pkAPCriIbcmCrJPLUiwjf66w=;
        b=A0j5PFeV+g/tQlud0jrzZMrnoItXYtU0fuFzU/0SnYGbqxPNzzkr2h9hDh1gYT7GZh
         102v4E6OSAdC+fwBRq3oyYxomveWlpJibW09J+NEPmvUYqN6H+GEmqUMOst/07CqwvQJ
         FbsY3SD3jgQc0qNPcbWQ1E0rnNHsLdHsZqB+UVML50PoCrbgzBvo93pHEfwiPP/fO9yC
         tQ7elAfiB5amxpYKTTIQltUKLUbADA3OItYM60ZgWB7C8t4Ds+bcCNztqxy1wFL2MVcZ
         KrMkdqf+ePKAl+3WPIa6w7C8IOaOjGuCYgmk7KxKLDiv+XY/T01wxtP2aW8k9HYSMJBQ
         dIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759096512; x=1759701312;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WapbkIa7sgxnsnldKw2pkAPCriIbcmCrJPLUiwjf66w=;
        b=J+ZA+KOUk2eOmGuRSdiaPSkLfFhp5vR2Fup5shOhvbXd1QfrqFKo+PLaC/kp13XKzR
         IaT1l2FCJ+q41gkUCHXj7NTEX2J5vt17kFE5nCjBHcKnFL8ZdFsgDwXl0VzGVN0SHSTt
         BL9riEaknLQCpKxsm0QD4CSoTYviP0VcO4lSHlvxc42BOASf5nCEpW/jKyQqlye87GF7
         5uOOf4y7nAOGQZMidToZzfDSscy2sQkwY25h8RC2ZLA0FISYm8KkxNsHxU5KAfEOqueU
         /Ludv3pNuwOPbiOlB6WiYmZI5eISDaLusNKtWpU5tOBkdEHQLsOPiNx26wYkG6dDv3VH
         Jb9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWN2qSOR83XzoHE24iVL0yjfMoB35Z99p7kfDsQ78KH3uh4BduW/Zs6e9B53RDS/XJ0pFOK+xWrRno=@vger.kernel.org
X-Gm-Message-State: AOJu0YwhwN1UTePygzg6/+8IFi4a5uZ+5OsZyyLl2TKRZljneqDPEX4V
	OutXUzkKnBzX5pMNBKuopxpuTznzLm2tFnsCeMWn0Lz2CjdxWwAGgYcGOhE1l2EWv8VT2mhUbGQ
	OwJk5x/dQIk2wKO6sio6IwhnqgNnStxWeBzwF
X-Gm-Gg: ASbGnctHoJIiq4yOKj7zKf00Za4Tu7uHbDRyNSI+cltclnmXbTJqrKyJb1PB1QzZ1xv
	v6a/7ycQoi5xgFlBnMhH0LvYQjvQQqbXzDQH+SOZRGEvbOUB77RuUBS90+NqRVf9v5DIXzZnugV
	8vM/DcMcurQFjZIRc8+rRrTFdDamC/t6IZ8L024tC1R45fIvh2srdfhWT15wUgSKCo4wd9o+Qo9
	fL9JJBEWLKmzslkO/rzctgbfRzZ+rXya13V7Q==
X-Google-Smtp-Source: AGHT+IHHBcrfSHdmnDuH5McHlEpy9GhceCYT124+oyBSyIAmqRtZf6lgRnEaVVC/LogqZEAnt25bmheM24WM9ReXYf0=
X-Received: by 2002:a2e:a54a:0:b0:36f:77e6:d25a with SMTP id
 38308e7fff4ca-36f814a83cdmr43558201fa.43.1759096511395; Sun, 28 Sep 2025
 14:55:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7> <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
In-Reply-To: <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sun, 28 Sep 2025 14:54:59 -0700
X-Gm-Features: AS18NWCLhhpOzFXufZVINFdoaJcoqqxSwUpkq8jWPfjAGwDEHNlVhAGtSFZSOpY
Message-ID: <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not documented
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Alejandro Colomar wrote:
>
> On Sun, Sep 28, 2025 at 10:26:33PM +0200, Alejandro Colomar wrote:
> > Hi!
> >
> > Another thing I realized about getpwent_r(3) et al. is that gr->gr_mem
>
> Actually, getgrent_r(3).
>
> > is allocated by the function, but is expected to be freed by the caller.
> >
> > I didn't find this documented, neither in the manual page nor in the
> > glibc manual.  Is it documented but I missed it?  Or did I misunderstand
> > something?  Or is it just that nobody documented it?

All memory referenced by the structure, including gr_mem, comes out of
the buffer supplied to the function.  POSIX doesn't have getgrent_r,
but it has getgrgid_r, and says:

    Storage referenced by the group structure is allocated from the
memory provided with the buffer parameter, which is bufsize bytes in
size.

> >
> >
> > Have a lovely night!
> > Alex
> >
> >
> > --
> > <https://www.alejandro-colomar.es>
> > Use port 80 (that is, <...:80/>).
>
>
>
> --
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).

