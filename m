Return-Path: <linux-man+bounces-3275-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C417B07B32
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 18:30:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7ADB189A260
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 16:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31D51A2872;
	Wed, 16 Jul 2025 16:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="kr5UqmE8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3562E18BBAE
	for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 16:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752683421; cv=none; b=VKqRKlFL1dIpElrInfsvwA13vVPDz73WcvrHOUBd8Q8al3i9Ugkl4ibJkCEQJWcCiFwrXTmiFpezQzXj16SzIgH7fUz56zWmKoaGrpPRizr0g802bnzc7x2tKzMzatwaUH5fmkQGjFpfvtVtuchq9eiYV9eDSisT74MIwemSXP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752683421; c=relaxed/simple;
	bh=NkMrt6f8beYGMcm45dqyiQ4Ov+SAcoHlhM30qWLfPjs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K0OiDH8F98+1Ke8OTI9k9w5VjgbhUYSY6y5JZZesdWtE0ZP3CKOhVBW4CQsLT39YGtARyyRceko+AQ2darU3vdDCpuoU6qsvqn/6pDXZ0KmFmvHCEsDauZRPfuOdGCRFov//fpoKof3MPsRFYOfAD1TVVzCGjKk3a1mGT5uBBv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=kr5UqmE8; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2e95ab2704fso74618fac.3
        for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 09:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1752683418; x=1753288218; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=drLg0IIcM/9EdfkS+iGXUi3BlEHNeuIfHLAqs7VgIrA=;
        b=kr5UqmE8zIwkz/1q7bF9jNHiAFZAiW1JMXNsZFgjo6kpwZJFxwlFZxTSrepOluJ7Ry
         irnF370JQVnNvCDdAQZhudGQAIYAJKBKf48DV06jjNyiZlkcDN/OpYdJR0c+Pub3tknQ
         xwgHkcJgsyyyXrAwMPXFaxu1+Uab1Wz69r/mRg2SIRD51ngAAqdQJnqLhF7I9T9YXiRm
         qIznKrJB14Ca9VZ+VbNx3qk4vobNpcvMwysRXAH1UiD31xl49FgB873oyvpkJXpLJjkW
         2uM62dfXfWnQct6KzapoceLph8iEmUrEZZkj1xl3aD5wGqnFdx1O/x48846nq97u3d+V
         6sGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752683418; x=1753288218;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=drLg0IIcM/9EdfkS+iGXUi3BlEHNeuIfHLAqs7VgIrA=;
        b=kqjGOdoIqSBrrHMUaD6pcDGWg2pIDJ6ixDxL7O7iePymeyMSAY5briw62oRMhPYZdo
         mcK3V82A5ybHxbEgIBdyvFX15yLHHFDlQmgosYC7rvo4mtoSgEERcUMQOILHksxqQW/0
         F1ttlqnalplIhJ53sB455APg/nZiSkP8ryuISxqrZM06vj7gMMDxm6TPooIuiQecX2+V
         x0rzzyDHMjj5hpm6X1TdKonNNwR/HlI37jiHpQwtAy9GmwukYbxc+111bK3g4EC6VmQx
         PXwwIiJPOtUE6KJq4pTEst7mUp3x2P6xXhk64r4J/Vvo4sqtQc0Rt2wEOHfv5yv2fUXx
         clxQ==
X-Gm-Message-State: AOJu0YwsfzhUTn08+86nsOPrZ55Fispfj9Ia5ypAbOyX5Y/KkTCz7VXM
	ttpVz3jNOCf8luMJo00CYTJ7ZDTrTorl0xUjje4aeDiouvYhJqdroMvI4tEWC921y4Z5s7KsQb/
	Mvjw9hwhREPImQsLjIghPRXO2PGZJiXX/LKKTsHkO
X-Gm-Gg: ASbGncsOj60aZ8rrlM3ghwuWqMH9Y+B+xJeAgWCqbGlrphQ7cXt/rRJtr2JibmdFFpV
	5gWAop1zkz6vOOqY9Pj4GF+Q+mFDvvXYupuImERxwBIUGg5Q2toTUWN5tNOhUoVIVBmpoo6CIHe
	o2VKU2qBbs/jxAZEsEk0iO1nrFhMbAPchwW0kyVq/Pk+k69nVvIiy1rdwDUGWxi2JxGv+RBK8qN
	r9G
X-Google-Smtp-Source: AGHT+IHWLsifdFnMENk71PoAD48NlxxyEAwXq5XzjGjS6zAcQEQd+ObgTx2k1HLj9EbVRQO0wHW4iwurweg7UaQ820E=
X-Received: by 2002:a05:6870:1f0a:b0:2ef:a257:1123 with SMTP id
 586e51a60fabf-2ffb21ef8e1mr2745974fac.2.1752683417972; Wed, 16 Jul 2025
 09:30:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
In-Reply-To: <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
From: enh <enh@google.com>
Date: Wed, 16 Jul 2025 12:30:06 -0400
X-Gm-Features: Ac12FXzApvf0zO7zheUUvSu0edgwGuSjN8YIKUo7asJu_QXU37fsJqojM39uTDE
Message-ID: <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
Subject: Re: drop ia64 from man pages?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i didn't look at the other pages, but quite a lot on the clone(2) page
is actually about what glibc does ... but glibc already removed all
this stuff. so it should probably not be more than what we have for,
say, m68k which is just "read your kernel/libc source for more"?

a corollary to "museum hardware should run museum software" might be
"...and use museum documentation" :-)

On Wed, Jul 16, 2025 at 12:26=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Elliott,
>
> On Wed, Jul 16, 2025 at 12:20:58PM -0400, enh wrote:
> > aiui linux 6.7 dropped ia64 support, but it lives on in the man pages
> > ... clone(2) in particular has quite a lot of ia64-specific text. is
> > this intentional, or should we start removing this stuff?
>
> We could move that text to the HISTORY section.  We should keep it, as
> uses of that arch may want to read documentation about it, regardless of
> it not being supported by new releases.
>
> Say, you're using a 20-year old system, and want good documentation
> about it.  You could find it in the latest version of the manual page.
>
> Of course, we may omit some details that are unimportant, but we should
> keep the main points about it in the HISTORY section.
>
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

