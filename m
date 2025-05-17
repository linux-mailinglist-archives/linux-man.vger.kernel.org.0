Return-Path: <linux-man+bounces-2955-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAB6ABACD1
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 00:41:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 885B717D89E
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 22:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3C31E2858;
	Sat, 17 May 2025 22:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dr32E69o"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E572B17BA6
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 22:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747521674; cv=none; b=dDVJwcpZte20wTH3+voXZsLLhNcO7/OVSuPwWekXmTTCK6Iz52WzhBEDjDdrZbSxFAMl1op3iCCTsCiV+lvdIJqQyX5GbzMxNqEat+ONAT+13j2QaEZR8xsnJrmyQ8RRoIUGcwtPtyf5dfYdZ8mCodtE02KZ387wVR7B8obEe5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747521674; c=relaxed/simple;
	bh=X5fX6Dte1Ei7Nx3SFonoJLsjmleqM5xlkKwBk0BcpWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QwUHhps0YWbyQEO0uOvIo/FxrEshxUJ8mcfSGKnjCNeGW66SwDROe60g88dGSpkr6X16KCp/Sh+J3p6gcebiXf3joPxXiOF/fWXXrVwTKrshB+GEoKCEfV+Ar9UpX4FGrHp29Rl4qpoOyFX8haAKtXcyHcpZORshH0iopp3Pp2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dr32E69o; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-32909637624so6909681fa.1
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 15:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747521671; x=1748126471; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G5O2TkkgF1CssTshH8tMAdNdbNej2cDeFKlzIMGdyHI=;
        b=dr32E69o+iH0A4/JuvSwbD3Iq/dKy/paylg/ix655oX03FSS57Za0dpRqg+LucG82x
         9KnYlP2tgWg1Rs0Hfoaa8LAwY+RbhMayiKMSkgC5uvpPUZJJ//Qb2gLguefYAAOBF+q8
         MkmRQtYWhJ5oe+100xtvB4D4zxRDzCROAmVm9fh8YKoRplB6ssRDX4QD1fq2LHvrgxrc
         Oe1F8x5fpKCpBmd3NB+dItwgp3qnCIWdWayx7GaNt/km4d7P2qpKZG50ZFvIK2AA8fGd
         oMHEyYeXTXqymvj71NM5iY91cv7vg2L5ZKuv+4aslj0e040I8Hh2JKRFJWDuzWcjVDwb
         EZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747521671; x=1748126471;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G5O2TkkgF1CssTshH8tMAdNdbNej2cDeFKlzIMGdyHI=;
        b=hmz0Ty518ciQPvuL0mzc20nn/JHqpSQKDvXAU0Yc/U94cxzY2vbw91tUb6+gb8v8eH
         htqcKIT1ebP2zlIG4RNMVDEgPbw2VU3V77YxINarKPgeHkRsCFWWyZrFovTdACh0RpVS
         2L8RC1CO0IDiPJ5/ujKYy3Dvc7rL7XlZ5MLOzponvyA3LxGs6sa0FiXKRYq4JrPGA1W8
         gu0waIHYIZnYW2/fXGdrCe2f4krOI3v7eoIMN2kUJDJcxDeyvAHIJATZwQ9FFU03Dav7
         4Vkd02TaaCtQZJIUdjRnRbFTMOQJQ8s0e8Fyf04LGie+ZZLyYb1n4uqA2fYGKl4Ry3SE
         /YHg==
X-Gm-Message-State: AOJu0YzHnHSB1mIUNohRNJmi4gNq14yqSDa7fjkqfl6md+x0lZqkVdpC
	fewhgRW6YJpkkN4sXzUUWC18Y6Sysk4Gv5kn+9lTFcT1NQR3LOKkT7c+F/rvdcTySSZbGdqUK0m
	oc5216QGlazkh6J9gK2v2Us5MlTpEJsU=
X-Gm-Gg: ASbGncsZwYcxHtNMtY/U43PBTUYndCvoGFrB6l3wGe/fyePa+4CcCxC+YXgvXFHJLO9
	7QJ1Dk3Y1mjz92OF6q4McaJffLiGQ6CtpFHMqmYkY4SD2VUKstGgyheQnR/PGbA6DRUi5GmhNlU
	tzbbxTQOs5wHlxtW1korBO6+B4RLMFCy+4O18WhfYinjJApfIkbOFlrWLfw5Lrq0n8xLyh3p5Zr
	w==
X-Google-Smtp-Source: AGHT+IHJL4tu1eyJESBviQPsXT7jKcNiDYfhtr7MaTxwLTLxQHSf5SO3Wb7QZ75dtdnZn1p9v+RGkWrAmbQN82FZqFI=
X-Received: by 2002:a05:651c:e12:b0:329:11bf:e8e7 with SMTP id
 38308e7fff4ca-32911bfe9bfmr742521fa.38.1747521670739; Sat, 17 May 2025
 15:41:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l> <20250517214356.cpueutlfgi6t2enl@illithid>
In-Reply-To: <20250517214356.cpueutlfgi6t2enl@illithid>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sat, 17 May 2025 15:40:59 -0700
X-Gm-Features: AX0GCFuxH5A6qK5zRnIJUetMeumY5JDF5onY7PPq-K4V4agKeCcuG035-ehUdkU
Message-ID: <CAMdZqKH0ak6Vb5cfsJDQJmJc65C5BC6TJV6t049om6tv2ZEBrA@mail.gmail.com>
Subject: Re: the correct way to say "POSIX 2024"
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 17, 2025 at 2:44=E2=80=AFPM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> Hi Alex,
>
> At 2025-05-17T23:16:20+0200, Alejandro Colomar wrote:
> > On Sat, May 17, 2025 at 01:53:02PM -0700, Collin Funk wrote:
> > > +"P2024" indicates that the signal was added or its definition change=
d in
> > > +POSIX 2024.
> >
> > This should be "POSIX.1-2024", not "POSIX 2024".
>
> Do you have a supporting reference for this?  I thought that since the
> POSIX standard was no longer organized into subdivisions in the way it
> was historically (with POSIX.1, POSIX.2, POSIX.4a, and so on), that
> "POSIX.1-2004" was something of a misnomer.
>
> I checked <https://www.opengroup.org/austin/>, but that page seems
> careful not to use _either_ formulation!  (It instead refers only to
> IEEE Std 1003.1-2024.)
>
> Regards,
> Branden

It is POSIX.1-2024 (POSIX is shorthand for IEEE Std 1003).  For
example the Introduction uses POSIX.1-2024:
https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap01.html

 - Mark

