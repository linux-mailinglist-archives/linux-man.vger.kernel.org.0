Return-Path: <linux-man+bounces-4058-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0921BBBDE93
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 13:47:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EDD604E52CC
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 11:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41223253F20;
	Mon,  6 Oct 2025 11:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="euAjNtM6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA5E34BA3A
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 11:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759751215; cv=none; b=E9CFG5o51qlocP8WihqxP+VKpjhFhA4Wr4a1iAN4Pq+WrXuCbIX9CW1niwLEkkgMtYZPxfK0/v/LE+3RFZspFGQzE+sU9Ci9uuoRfxgRsVFulcTAWQLWpjilVWDKKEvq3aPxgPgWXozXYB06UA5D8K8HLVCQlgZat64JOz1rfbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759751215; c=relaxed/simple;
	bh=ENo55sgMXeuYUAqqqFg9DQcJG313oTJsA0tIOhTo1j0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JRYJzlQTFeJnlF4YEHEqZsuny7j+PdqrSQl2DlqokK7XNG2ICNHTPe2bmEyd2sv9046eNg7ZtyEq3CWpIdkEGqTrblwm7FMUPFBMekPzIgsnqs8r2VB57X0CxEKvPWw5zmo5O2jBVtoCWQRRNAVH9TkCBnH/uuuZdiy33GzrLdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=euAjNtM6; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-635401a8f5aso5155587d50.1
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 04:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759751212; x=1760356012; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0pzNI2Bfox5tgAFoU5tWl3Rohk5lYuHKzhsZ4bdEnmU=;
        b=euAjNtM6vhA28aIBV4V1mJN6XuS26zEAuVneZ9YlvvFs5ced1mZAiYBqLtaMeLs159
         Xm8h1hR46xd7u3hySlRaTJzRYV4emWgsInpxcz53sJC/JPb77A2N9KzV9HZzLNGO4OXO
         TI7PqqlCqlfPTFegQEjtkkjkhJwbnjKE44xddSGyB8OOGMQaDCYg4H13PCAJQDQctx7k
         kVaPO6ObaS7anQum8YuArlxJdYeaf4OoRJmmY8BO01+kUMem1e3v6V1KTpq+HIB664bG
         aSfSYx3WquM5vxkYbrn3NqZNPCy8BkqDUEj3/tYPa3S33dNCwL6xOYEIj+yRpMvPUxzi
         zmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759751212; x=1760356012;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0pzNI2Bfox5tgAFoU5tWl3Rohk5lYuHKzhsZ4bdEnmU=;
        b=CcgXAw7ArMw2fxnm03IvmC2b1bpDxyEvYqhQHpUSkcFAcZD5Lx6fHPhCcDyZQCbeDf
         Zr/VVEzY5RW7Rol1Y7fwC2WCwskNOZ5sdOSyZ9lMf6IU/HBvG7R9i/sjnUJtlvTGIfhr
         kHJHhB+XOB+ittSF04VuxcPnGhcn+FYKZ+P8cmvTk9iwVkvLbx9geh79glKbkJHITfQR
         82c1pNUuWtK5Ia+qLz13P3fUGVPxpVe7J8NAkAtGJw7Z1t6vub9Gr/ZZorub5l14gSUb
         A81MfNFR5ZclO+1Xqhk8QBPYiOlLzzDaxuTPiFkkgMZENgylNbsYxJygj7VOLn/t4lho
         8PoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkajgpUBvuPBotJZLuBZT6OdiyUWxLgltZmGYGgu0zKAF8uEX08HKZ7+QK1YobrmhdSdNxfqhNiOI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk3lULOF/xF0xaiWct0eataP6BZEaQbvgM5ZYnxz4UM2mVSPPp
	Z0bRacczzSIX0lryDNiqYthKlFmYFkGYCU+m/2I1njuXrkiJZ4yane/V+wxv+chMt90UDNHSuqs
	BkAiEpeP2EqemPGK6gOloV9fYGsxirEUzvAGf
X-Gm-Gg: ASbGnctxiYSG6mj7ylvNIuJlsPO1UO+yy0ojjy5A1cPGhgBBwOPJiMeFAnPl+OGeNw1
	+GqGa2IchAPo6ik+uIYUmZZGz+GX6L9YUxkxA8arAc4CQMvSo02lkV+bzqGZVQMTcZllKZhswoy
	gWdXXiDEd/8TYmN8XK3eVa66e7P4H18k92vCNBjoZbtdB2o2GjYkLTZGeN77uZ4Ah9PrEYCVCcZ
	wsQnqGOWu7n2QZv/B1U01dffgECUxjDdMeXOUitq3XQlFHukien92U1t2eu2zKbP+IcdmS/Zu2l
X-Google-Smtp-Source: AGHT+IE0NZfSUTGltPQYAOCV/zri1i/j7UJvFOTSZnYMb2mXm4fhG6clsvWmtpxe9Vh4dDzh8p5txogSQu/7cL2TjNk=
X-Received: by 2002:a53:c053:0:20b0:631:d1f8:38b4 with SMTP id
 956f58d0204a3-63b9a05e073mr10010802d50.4.1759751212366; Mon, 06 Oct 2025
 04:46:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com> <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
In-Reply-To: <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
From: Luca Boccassi <luca.boccassi@gmail.com>
Date: Mon, 6 Oct 2025 12:46:41 +0100
X-Gm-Features: AS18NWC-QfiDZRfWpjAba6Y160Yg_E_VcUSJ2f63AGrL6YyrSym9p0Ft4k5v73w
Message-ID: <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple instances
To: Alejandro Colomar <alx@kernel.org>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Oct 2025 at 12:42, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Luca,
>
> On Mon, Oct 06, 2025 at 12:32:42PM +0100, Luca Boccassi wrote:
> > > >  .TP
> > > > +.B EINVAL
> > > > +The source mount is already mounted somewhere else. Clone it via
> [...]
> > > > +.BR open_tree (2)
> > > > +with
> > > > +.B \%OPEN_TREE_CLONE
> > > > +and use that as the source instead (since Linux 6.15).
> > >
> > > The parenthetical in that position makes it unclear if you're saying
> > > that one should use open_tree(2) with OPEN_TREE_CLONE since Linux 6.15,
> > > or if you're saying that this error can happen since that version.
> > > Would you mind clarifying?  I think if you mean that the error can
> > > happen since Linux 6.15, we could make it part of the paragraph tag, as
> > > in unshare(2).
> >
> > I meant the former, the error is always there, but OPEN_TREE_CLONE can
> > be used since 6.15 to avoid it. Sent v2 with this and the other fix,
> > thanks for the prompt review.
>
> Hmmm, I see.  Why not use open_tree(2) and OPEN_TREE_CLONE before 6.15?
> The syscall and flag existed, AFAICS.  I think we should clarify --at
> least in the commit message--, why that version is important.

It was just not supported at all, so it would still fail with EINVAL
before 6.15 even with the clone.
Would you like me to send a v3 or would you prefer to amend the commit
message yourself?

