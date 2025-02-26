Return-Path: <linux-man+bounces-2524-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA44A46DC2
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 22:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60AFD16CD34
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 21:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 303CB25D52B;
	Wed, 26 Feb 2025 21:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VVrTPWpm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D10238141
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 21:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740606060; cv=none; b=ijBuEKwXfK6wn/uDW71JWjzX/2/PYQjCf+PKnvJwm+2VJSJBxzc3mteAlweXl9fnK2BuuJdTjgy6EMnt5+2a9/lsYFkIdHxVYHfp+MN1bI1oBhr9KzBKfZZT2OhMR6lRGppfZ0QuS0furtEwDOxjxZcoIgn1te41+MX8Wd1IRRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740606060; c=relaxed/simple;
	bh=M3B+ZsqxZ4I34BVHwzLC+l7DLPs8esTLc1OEfaFetAI=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=MUu4x7SoxJb43MMOivS88G+EUTdxaQ7IlZcrmPUGXZcFd1Q5gXnwaGD8tWV91PKBiQ430SYk8t1u186EfcIVSP7P9Qj1lXYqibzp1apX/0UxhFgsQKCfWCNJEA55Mxe9XuDTmnCn3DeMIRgKeDCVErEk1NdvTxzXTaLOPPrT6Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VVrTPWpm; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5da0b47115aso144609a12.1
        for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 13:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1740606057; x=1741210857; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M3B+ZsqxZ4I34BVHwzLC+l7DLPs8esTLc1OEfaFetAI=;
        b=VVrTPWpmVGJqw4BvdPL9C3CmnGYUBCjpgjE3cnJWZTRsP1r9sMJbS2/DNCWijEdNTp
         YwPKqmehPv2RFNurJRMNw+X6cPUbL0RZKpbm/BKxszxuU3LF4K4CgMnYEU6HPJXseaW6
         t8grU75uPDQJqEMd1aCd284IyNdRNPkiqSxUKa8bK/yOB7HTzvcSSrz8+1E/9MkX+xFh
         RhIqLme/e0XbHCDxqxyLuQiGoRHkf4/ZGHCBrS3/+Mj/+drVgh4ysmjjLVfCBqH4kC/1
         Sjxi8HcWuqkD2JWB/PD+j6ibJ3wv3GuRCLwxahn5VEG94s/o57EPRtZHA7DW2aEmhhdr
         Bl0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740606057; x=1741210857;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M3B+ZsqxZ4I34BVHwzLC+l7DLPs8esTLc1OEfaFetAI=;
        b=lZ1jAiBJ/wMY8DdHttFyEW19lzqF3eN0oG8ah+4ZMR1z+SGFdM+zz6+v1uKT7ADU0m
         YU3qJQXOph4FYw45Uh8AWoOjOboh5ypKx20nKT/0OaAQWigx1Ln8AXc/f8j1zcJ19ruC
         memTqgo5nb3iWgexe5rbpfgHRppw10NhyOQM6FfWY0wHgj9c8ms6ASIgli6Hj+e2ua8D
         XWOYx9rsWlmDtRl1FwdKeC3spwJneS7Wz/9IFQL+bkPKvoGO/fcz45akvTqsPdxxv9KS
         ZX5HB+Kl3Y2zRyx84CUsv5oqeirzGMunPScIfcZw5KjG3sQ+vNrUQKft8BwGC+Cywi03
         KkqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7IWmrq5rXp+XzWjN7KN1n8uLsNfh/25gUOi3Ig8jINC/ZsYepl9J/t73b9+3ch8M5UZxN21JUJs4=@vger.kernel.org
X-Gm-Message-State: AOJu0YwnjL4FYy/L/ly247LvKBLL5+Qh9FTWtotpf8OKSu1L6OYuXZsD
	Lk80NGASrpIDzzXlubXmhMJCvEcF6smpynAN2aqB5U1VUgQHzYxN4/fxrFFv6jY0Y4lKutCDR/A
	L6A==
X-Google-Smtp-Source: AGHT+IFqy60kk8gHZxJF2clJAn1PaPcuwkicaXHEAUhIIG6HiilCo8npPzLf4GxyRbiots/PQcIwTZVoS3Q=
X-Received: from edc8.prod.google.com ([2002:a05:6402:4608:b0:5de:d475:6838])
 (user=gnoack job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6402:35d1:b0:5e0:750a:5c30
 with SMTP id 4fb4d7f45d1cf-5e4a0dfc708mr7355742a12.20.1740606056903; Wed, 26
 Feb 2025 13:40:56 -0800 (PST)
Date: Wed, 26 Feb 2025 22:40:54 +0100
In-Reply-To: <20250226212911.34502-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250226211814.31420-2-gnoack@google.com> <20250226212911.34502-2-gnoack@google.com>
Message-ID: <Z7-KZuA5eytW4lrV@google.com>
Subject: Re: [PATCH v2 1/3] landlock.7: Update description of Landlock rules
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>, "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>
Cc: Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-security-module@vger.kernel.org, 
	linux-man@vger.kernel.org, Daniel Burgener <dburgener@linux.microsoft.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 26, 2025 at 10:29:10PM +0100, G=C3=BCnther Noack wrote:
> This brings it up to date with the wording in the kernel documentation.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>

Apologies, I missed to add a "man" tag to the last three subject lines.
The last three commits in the overall patch set belong to the man-pages rep=
o.

(See threaded view at
https://lore.kernel.org/all/20250226211814.31420-2-gnoack@google.com/ for t=
he
full overview)

=E2=80=94G=C3=BCnther


