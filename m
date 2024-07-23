Return-Path: <linux-man+bounces-1516-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CF58A939EB5
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 12:24:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C126B21F5A
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 10:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C94F14D6E6;
	Tue, 23 Jul 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rglK0kZZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864C73D6A
	for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 10:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721730262; cv=none; b=pwZ7wQsuE4GxW977/AJX5Of4dJOPRW5Zd5g6D0pdpwGtztEjIbCSTaiXqW3jN4bl122FA+aNZR/fpF4m5gmQw6msnQPP/XMO3I3p6o28O5cJ6wK5P38ejhNrB50O96T9RTkl8ryt1/qe1muFPEvV79XxuMEb7PgxLuzPGWXSVQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721730262; c=relaxed/simple;
	bh=yzbZ1MHpeV1/0wOJdmwAyCjDv0pevBozMOLmSPzr95A=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=u/UllFuCre1TM/VaEKlEur8nDjC2+egil0Ry++McjvaE749vjOCP6tHOeQ0z37w0SLUiuuXdWMKolegcUfsl9SALr5NfFrpl/zDq04tFM4Qgzz+FeoH/qflwCsZpCl0EQ1LHs1lKJkaCJfx3YSfN/Ow9aEz+v/QHvfwW+sssJoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rglK0kZZ; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e05f08adcacso12107178276.0
        for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 03:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721730260; x=1722335060; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x69KVydGnYQdQ4uZ8VegEYjW/pgQ1sLf3y1Xto73lJs=;
        b=rglK0kZZkLZb+0GTV/iFWwvfcUvf4ul1t7UsOLwOauyb3roEqp4+b3xmY8WGlOJK4q
         mCpwm29DB+5nfd8YXmXreLeJFTrtW3omJYCFLHZruqSkAow722j0PvGL2b8yEPaR6GcU
         D6NPNdH/lp1ikidnaKEZSegSoLIo2Tk9x6hKSwCH9H2bSl8nSSZtq3JbvhBKttmM/8r5
         X3W11ODUtfO3LcR/pXd3NRTNfumn038bkwMr/VtT9K92v2GuUrWQK6hPLDL3VRenbPgg
         9NaKDbC5zby5UG06plonmBeboKcKgCvLCSIL4Ex8Rp5fzeHj93Gden9C92xxOKNGGsBX
         49aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721730260; x=1722335060;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=x69KVydGnYQdQ4uZ8VegEYjW/pgQ1sLf3y1Xto73lJs=;
        b=eEMqoc80dX5jjEU0yrr5vo+Ny9vEhYW8ll01pJ2/yWatRg5Ve0CoPYZP6J4G3iYDWB
         fNWlNMBq7erE7rnIeAyFG6yzqeVgIXxEcJ13MuqgAd9bHboxZSt5YXJcQI+uDpxnyB0O
         qVf4ccLJqTK6zXyxq71ZHIEfknuYtR5TMOiPKIXQYWax80SBpyjRHZ6WeV0O7jxXx6fy
         pMs7aR7uqhglmmE1CoY2HkxiG3itTRLrso8sV2G6tW3fXiiCVfE6LBhXfzviDAXYJDdT
         4qhfZTibl2DP7j+EGfe7wc6wJtWqsj5TEKLoHlIs4Z6UJu7eh4lfB0Uh3xtta0WXtz0a
         P1DA==
X-Forwarded-Encrypted: i=1; AJvYcCX0HgKU9qwCndfS6k4ngrUfs/BOpccaD40I2imMnSYD+DO9PB5bEHmXV491mWz8hJvgmk+ArJwfUycO1vX19Jd9M8S/u/nzQ0UJ
X-Gm-Message-State: AOJu0YyMkWxLQApjIzo/97PLNPoJqC9bq8fDQl+ziGAHjf8bKiyHAYFj
	byyi6gr/1/h8X8c5nbklvI3yO0NRtU4IRyoKKojhxL2HXp0GLUwR7IVsU+t0PJZxombka9v134V
	j0g==
X-Google-Smtp-Source: AGHT+IEn8mYRbRt3K60Txsa5vGg8s0cX7okyzmvzoBCB1PIcqu3bj7Z7Q4lfhXjI15CKcCYMHGVuR9dGMng=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:2b8f:b0:dfa:8ed1:8f1b with SMTP id
 3f1490d57ef6-e086fe2c96fmr105191276.1.1721730260554; Tue, 23 Jul 2024
 03:24:20 -0700 (PDT)
Date: Tue, 23 Jul 2024 12:24:18 +0200
In-Reply-To: <ljaijaj3fv6ye5plzma27r7fej2q3z4endo7s5aksm26pc44vy@p2mgcdz3l75u>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240719133801.3541732-2-gnoack@google.com> <20240719133801.3541732-6-gnoack@google.com>
 <ljaijaj3fv6ye5plzma27r7fej2q3z4endo7s5aksm26pc44vy@p2mgcdz3l75u>
Message-ID: <Zp-E0ucdsGU71Som@google.com>
Subject: Re: [PATCH v2 4/5] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 22, 2024 at 11:00:13PM +0200, Alejandro Colomar wrote:
> I've applied patches 1, 2, and 3.  I applied some tweaks to 3, which
> might be the reason why this doesn't apply.  Would you mind rebasing
> 4 and 5?  Thanks!

Thanks for the fixes with \% and \~, I did't know I could do this.

I re-sent it as V3 with patches 4/5 and 5/5,
it merged cleanly using:

  git rebase --onto master HEAD^^ my-branch

Thank you for the review at such a late hour! ;-)
=E2=80=94G=C3=BCnther

