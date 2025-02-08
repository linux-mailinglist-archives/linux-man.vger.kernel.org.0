Return-Path: <linux-man+bounces-2367-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E621A2D9E1
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 00:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A8B01666E7
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 23:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1E151A3151;
	Sat,  8 Feb 2025 23:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RrtEnOqG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A7D24338C;
	Sat,  8 Feb 2025 23:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739058677; cv=none; b=N2JgBvtP5I16ktNCKdPzSE5j4EplxvzLgrat6xUA+mehDraTGiYcAsoAdpSpX1nVsD0SlWseWiwRpWiX/Wqq1mkaEEnr82j5OmQJv0Uft5o2FxoCeMwXB0BlEhTF9MdsSsKgvUGCGEl3JSqDzwsOGKNS+N1MT4325pmK/k6Mz/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739058677; c=relaxed/simple;
	bh=iog7NXc73sWuyxcREJuoWUND+JxIKumsCCLqSQQbx7k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XuBz0O/+O9qMpBN/bGw9HqVvyGJsYmO7JibpasONM6phMO23LY6v60JH+9VUlVesSMc71ootOfabOrQaZO39XIGo9diTTFRw3Ae5j9q2A5m6XdsxCPJkkrX1SO1eeXVW/GR+tChlcY0RSqOwrQTSS/F58EQv5jgcECm9qNehWnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RrtEnOqG; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5450268e513so184570e87.3;
        Sat, 08 Feb 2025 15:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739058674; x=1739663474; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZorNv4urn5lqUcp1IYsdzjdX+6jXN4/pzRCOwjKRe0s=;
        b=RrtEnOqGqTU+T+6/eFJ7lKw//Iy4OkVxQ9Xh4ZysQBStiuRyoXKg/DmTmjEBkFEJA+
         9wdsBuGnK168Sw+1l6jueTJxXCgkMoRGM8gKQKUAr9MQH96VQOw8H0nNBGutIcVk8DGG
         UYx2MB3FxXXsGPmzTN3zVQ5ZX6JcTHhGMJX89qpHzpcMih+cHbEU4vQp9b+zLxk3gQ4t
         zzPy7tVgiUrRTGE3+lC7WEcQuPHYiGalsP0QTzyJRkPzDYPemgjW54NdYfxwkH+LZpM3
         x1A71EluGvEwCWuooJEtCRHwErF0k9ANn1Iy6omS70YtyBBGF87uKDHXESzZn7JvK0mR
         c19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739058674; x=1739663474;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZorNv4urn5lqUcp1IYsdzjdX+6jXN4/pzRCOwjKRe0s=;
        b=Rx3Dzzw9HcNFwOYXohAPkWsxT7wBlbCzSEv8b/nS19HnzgSGLat+zLSoZW1OEhZzyo
         yoJcg6KxwaXr2rsvT0WBQMYl7K8Ak1ywMjgfLj0/EpSjgXeGk3NRLICGb8N8Jr0omrJ8
         Uf6LC/rgavteNH6clHI++7pU1QM04E1zBbr/RL6iKaCp1tWMNbQtOE8wAtOaNs1wb1TT
         45yTAUjLxz5kduA8W3iclT3GqkuSfdOk5SXY4Ig6X4pK45gOTqSddRzNCAVkwe7U6GyY
         w3sfMSucNNZn6Cf3kGLA0ZONUevqPfHPowr65Hs21d3DgQOyP34/DO99cNL5Q3jGEQ8N
         k14w==
X-Forwarded-Encrypted: i=1; AJvYcCU/pgePUnPfakXaeCA0FC6aH2ntmqhkcRM01K6sd3Sznz2N/9A9syFZzlHIo38gFNQnfw3728D9VidUsuA7fzE=@vger.kernel.org, AJvYcCVyLXWMjG07nFKgeuUfy37bhpBDrvV1y58EUNbOo8oVDw7LinYkdE02DJUdCa+BzUrdEUNmWz2eLMlH5Hc=@vger.kernel.org, AJvYcCWeKl2wET8E+F+hPRZaj2/+++SB6ZDiPGk8g0gaRJ1Ec3nBKPDSOmt1iH9mvU6zkK29vtdduk/Dl6RF@vger.kernel.org
X-Gm-Message-State: AOJu0YwclXvntcNwNc4Kaf1zdTMeKMe1ORWM7jd6tbsLxz17byskHHpK
	WcAI+HT9LLS0r4Bb2J7kyTSmlO5j7uxN0cLNpyd/PyEdMvqZgVibuIj6za3rlJBzfs1pkz3g9Ab
	moJPwCO7xNCFj+RsursOWMva7EoQ=
X-Gm-Gg: ASbGncuSA90EQtAlzgWppC1I9XqzlVo05E+QJ9t51yo6W9owh6FIDGdoKqdZStyvbcm
	aVAcUrR/y2zTHskZ2nHoHIuehNmjgHPx1ZOkUPuZ//B5rl+1SuivE2ebraHt3E6cPGtMUpGNU
X-Google-Smtp-Source: AGHT+IFO9Ppe4M2HQlhZkbY7ca9gvb24B4TDFCnEVHoqFe6OH0zoB/bscSI2B3N73ivhfVsb9AQicz22BzVZkGFITKg=
X-Received: by 2002:a05:651c:2221:b0:300:1d45:8720 with SMTP id
 38308e7fff4ca-307e5a6e419mr9564151fa.6.1739058673851; Sat, 08 Feb 2025
 15:51:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux> <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux> <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
 <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
 <CANiq72nky1vpP6qNf4rdSNnr3i7oAdaB4SRQgSG5QaUCCiMs1A@mail.gmail.com> <iocqkifz6dsywt2ueqppsdw53bgcp6i7ju7vadxxxu7pow6w5c@n2wqgypsiq2d>
In-Reply-To: <iocqkifz6dsywt2ueqppsdw53bgcp6i7ju7vadxxxu7pow6w5c@n2wqgypsiq2d>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 9 Feb 2025 00:50:58 +0100
X-Gm-Features: AWEUYZnAPwfngi7GEXbp1R8IXZ4FHQZ-5gPlvU8wrpsSzolNhhp9_v9l6gBpmTE
Message-ID: <CANiq72=k2Ac0Cj0F+xpmUeGuHjf5wqi54qX1SNzMku6RgP9-Lg@mail.gmail.com>
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
To: Alejandro Colomar <alx@kernel.org>
Cc: DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
	Will Newton <will.newton@linaro.org>, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	Danilo Krummrich <dakr@kernel.org>, Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 9, 2025 at 12:35=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Your manual page is too old.  :)
>
>         commit 7fd1e0f2be216a5e7f7aef0d03304bdf81bca9e0
>         Author: DJ Delorie <dj@redhat.com>
>         Date:   Mon May 8 20:43:35 2023 -0400
>
>             posix_memalign.3: Update aligned_alloc(3) to match C17

Thanks -- good to know it is fixed! Confirming in the VM where I found
the 2023 glibc change, it does have the man pages is updated there
too, so that is great.

> If the implementation in glibc has changed over time, we should probably
> add a HISTORY section documenting historic behavior.

At the very least, glibc made it stricter in d1417176a35d
("aligned_alloc: conform to C17") -- that is the 2023 change I
referred to the other day. Before that, you could pretty much pass any
alignment/size pair and it would succeed (small values).

Cheers,
Miguel

