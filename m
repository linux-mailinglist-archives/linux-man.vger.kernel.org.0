Return-Path: <linux-man+bounces-1598-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5D694C6DF
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 00:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BED01C21628
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 22:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCFD415D5C1;
	Thu,  8 Aug 2024 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdLSno46"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E38B55769
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 22:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723155293; cv=none; b=JRdakA7m55MUfx63lQfAy2W0CTcBvqEvdJXMEZOXGvAhiKvlZhYJqoCt8g655YmYjcyXqB7RDcbmr+oImyYyCoFQaYPWZ48f0he3XjCdt+UoVxh2WIyBszTQUC6ipjxtU3l+XnPcMcviU4ElITdc2BTgkwUE6iZdKngzimWOvFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723155293; c=relaxed/simple;
	bh=45+u0qSEBKrLCijOGCFUbFi1zFsiWsQrEWyt13vRaKA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sqYR5rkc1ZnFCf9UIV+qhTz3Qu/qAZPG9+Sedrn8hjcrS5HowzJjYHWx/n2U4qtYoKx0LdbEe6JNwu1LZQPtV9tXkkN3R8FFlzPPoPx7Gt+RRnDXDmaGmgBLJ142uRBua+BnoUcJoY9OncZH16Dtcd+307JZhy9gGrkx5afeUHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdLSno46; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5d608060241so824622eaf.1
        for <linux-man@vger.kernel.org>; Thu, 08 Aug 2024 15:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723155291; x=1723760091; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ffpO8B1AFeA7URKvTu5UIR0dJHdHpROdmBkE/EGVHo=;
        b=mdLSno4635rRtomPcKFhIG6sB+0E7BcddusVQgXFr947NZjUPzyYO9K6JUHFUS3LoR
         SamjwQCRT3J5ufGEqQa9MilLRyALP4LsZXHi/8HeAg7DVrC7n3Su9IxnRB0rc77FsVGX
         6NO+Nuu3szd77VJeut9U5Nrmr6G+/IIpLYR780NQKe5Aj5LNc9TS2Ommqy+ZJaWLNSwG
         +P/b8eg4GHfBNlmsMd1N/zOhi3Z3c8jDKQmja9tgSi72e+MtnF8a+HpTfOdgVHgnk075
         mjPIt52MGQa0DT9YWjIm7WgeLRosBT/LrWkPqLigoHd0l5tUVHWn1jHEAcu7E2D0GTCL
         nHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723155291; x=1723760091;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ffpO8B1AFeA7URKvTu5UIR0dJHdHpROdmBkE/EGVHo=;
        b=Md/TQVlgrRRYdkv5nwhWLTnb4iHP1rayq2bh3Uablh9+8kSMAkdZtO6WPt4wS8Huqo
         M1I6zbIjDmHzBhdZenL/E4KVmHEFNssxx8y7aKIPI9M1jVH3SHiuOKqtuTOJ6UfeKBN+
         36LrDfabmAzPoMdc2NpPszdlQKBB5Sh032GPtbcynYJ3jJ+b2HEFM7mt9OqXa9v/QiSW
         xz64FDf2cU8BvezFEXbTd7FF++vZfqQpwk+CDBIlDu+ILFNEmcJR1AEzJcq+HQQvlZh1
         AteQHFpe0FDRe29fFbaKTUfisGci8v8I3MkIbvpgXr5XzLwtqNnXcjx5unAOEX3xx4Ns
         Q99w==
X-Forwarded-Encrypted: i=1; AJvYcCXxl6SVFNK9mCcQvYPSyvqmC8hNmPok8Xw324HMTprM8V/LojrBxYAb4+pEM/QX9MwWqU5ZQd2+vwC8iCSosNUiX2WhOyuJMwOr
X-Gm-Message-State: AOJu0YwqHMdfcr00vDJeUPmntHl3iW6iOfl5myjToc7jm8dcU6kH7Lqv
	ZWkLs4/Gje224H16SyiwRIB+2FcrayGwsAyat6y9VIJ1Oqjt7nkUEN5E9jjO5x1QdVpzwNd+TXx
	RkxddyR51HmVm0tgHUC7Xf7sowsU=
X-Google-Smtp-Source: AGHT+IG8UZgcmu186t2nzYJmxxhBzD3ztn91f2tes1kD+s91BPY9ylrADItfQsRwZ0vzXEUQDqvaiU3hIkMcLQGE8+8=
X-Received: by 2002:a05:6820:1792:b0:5d5:ddd4:59d with SMTP id
 006d021491bc7-5d855a510bfmr4840002eaf.2.1723155291106; Thu, 08 Aug 2024
 15:14:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240807105617.GH3221@qaa.vinc17.org> <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org> <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808121603.fatotzqmtpbf2jez@illithid> <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
In-Reply-To: <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
From: Dave Kemper <saint.snit@gmail.com>
Date: Thu, 8 Aug 2024 17:14:40 -0500
Message-ID: <CACRhBXPyVNN8q9pbeZSzSFj-nB1woJLWhTGw8N8yuBpJRyY6CQ@mail.gmail.com>
Subject: Re: [PATCH] nextup.3: minor improvements
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Alejandro Colomar <alx@kernel.org>, Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, 
	groff@gnu.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 8, 2024 at 7:59=E2=80=AFAM Vincent Lefevre <vincent@vinc17.net>=
 wrote:
> FYI, +-0 could be interpreted by the reader as in C, where a unary
> minus operator is applied, then a unary plus operator. And about +/-0,
> the "/" is already used a the division operator, so that this doesn't
> help parsing.

It helps *some*, in that "/" can't be a unary operator, so it signals
to the reader that +/-0 isn't a C expression.  It also helps that
"+/-" has been used in other contexts where =C2=B1 is unavailable, so some
readers might already be familiar with it.

The latter point argues in favor of Branden's idea to change groff's
fallback from +- to +/-.

> So ideally, the fallback for "=C2=B10" should be "+0 or -0", which is
> much more readable and less ambiguous than "+-0" or "+/-0".

That is a clearer phrasing, but unfortunately, there's no way to make
that transformation an automatic fallback in the man macros (unless
Tadziu swoops in to prove me wrong); the whole phrase would have to be
specifically coded that way in the individual page--something that,
aside from being discouraged in man pages, is less reliable than one
might hope (http://savannah.gnu.org/bugs/?65403#comment0).

> Anyway, currently, for consistency, this should be "+0 or -0",
> as this is already used:

...which luckily makes all the above moot.

