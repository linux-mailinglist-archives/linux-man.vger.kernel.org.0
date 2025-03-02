Return-Path: <linux-man+bounces-2558-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE1FA4B440
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 20:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDF3A1684DD
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 19:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5EC1925AF;
	Sun,  2 Mar 2025 19:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dMcCnOcG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C698494
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 19:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740942020; cv=none; b=gT3jMqQ6j6Wbeh6kdb/5IB7UDtEaV7kE1AnVL4HQFTVAUJypxXimlQK5q3FkZHJqyYhlkV3i7rw+PH0yaA53qv0XLQBZi9OP7itKlBfLRaWBx6jGH3Es54Un4kJkIEPL5wiFIjca8sUS3g1maiJluEWup9xqxyaeJgyEsdP/o7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740942020; c=relaxed/simple;
	bh=Cj+gQfVatQ2SWmiULgHXNJmokVLtl7cdRgk50FEBy1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZXcyDFD+D42krtN+8eAGmRSNtgbAtEysUdK8grpZ7/8H9QTvFR2d+iw3nbV0pyQNXd5Uda8fYgDaqsA2KaZrTCYHar1RuB3AKW1+Xphb9ddlLS//8LNJ42X+RcghWMhD2W2gqJz83kFz/lO/u1+kfqTY6gSSCdp9F8AdSDiFz6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dMcCnOcG; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-390e6ac844fso3315576f8f.3
        for <linux-man@vger.kernel.org>; Sun, 02 Mar 2025 11:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740942017; x=1741546817; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eV9rfqPO31Ak5HVV8iP/yrIX4nZxHsdsGJJqInjNb2c=;
        b=dMcCnOcG23la7pK/gLYBMfT4bbDMLqmGjB98rBbeGcxOihaDWPAooxuKQWAGZY+A+f
         dS0HUt+EpVDu8GtCa9SC7emh81kldBeqmqlh1KPEuwd7zqvsTD2O+Pj/hgVeo2Le05S5
         g7S/4WbDS3FwZzY0ZQ0zSJgvuc0ih/sitFwOEFZKKL2ZpHu5BrfqTrqC+HqTrU8Qk7gT
         Nm7/G6IIjtDzyQQcrunZiKPDRWYQ+07gUmcM3Kx1iY83M6S2/umIuCw9+V7ovPSMjyLN
         4hgiuxYGpRyUfKvANv0JmASIRGCzL8jsI/c0MoTEVQF9rcwjaXgprbPmCk7eGQ4EpFFJ
         bglA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740942017; x=1741546817;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eV9rfqPO31Ak5HVV8iP/yrIX4nZxHsdsGJJqInjNb2c=;
        b=Ee3v9wH85TYr2isua5vETEtRRaHJ4pQzH1qlawmdoHHvY8IogQhq5sK/sR/oDaMfeE
         Z0Pt1XAX/R99Euvv3pSkwurDbiHSo/iE8CTWBCiYeba9OiGU2PFm2I2XkHFd2DfrRnxo
         WlPAiI02m4k5D5HftkB6/9Gi4vaxFWddtA7frCFFzf3LdomwBp5WTVjCCAQl4ca8n0Y4
         sNzDfAXoW7wrcMnOehNJ9aj3PRhtKSecDH9DuFkmEPvcjXLPK7lLO9d2r3eBcWeKGW1h
         ZRF2AqDcRikWjQsRl3g8Q1OKPv5ZBFjxe07EU1ahFPsuMHOsPBG67wBWWcZNnGisShMV
         zKAw==
X-Forwarded-Encrypted: i=1; AJvYcCUmusl/qTHB9qbpJqL9JAfQ/HL3MHfbhjL7+yehheOFskFXZjMUEZ+s2nrF6PTitq1oFWzHjzR9sc8=@vger.kernel.org
X-Gm-Message-State: AOJu0YymYIPeyXTND4MJct6ok1xulD5Kzg2j2hSRmpg9Oa2GsSz44Zck
	AZoK2U6omwXjHNq7lm9EGCIx5R8xShPaFDKxG9pj0Hhcz2g3+NaSL3kGTQ==
X-Gm-Gg: ASbGncvRMhj+iJZUGmuNiG7S5kuCIe0iUMYMSUIqtZo4bZtyAIvsLnfcUESWmPQem69
	2xTuoo3Avsk2PVvoI9vFfFZhxQn4JWVEgrxVIbt+2ftmgHvyyqZr855O1jPcOE1qofGcIMoJLH3
	sp7kgrAb56EslCSkvoDlBStuGky2UgMSpJsrVaA6GdOChfWrfx5KvQXrxFfzv5iq33WGK3ywf0o
	ICvqGL6QVAklnL5uvNRkab0u7GUk9fc32RxWJ1W5SrpQe+RjsCLlQM3OK3jiSQooQbL7XRIDTW2
	z08JiWu3Bnew1xINoLM1Zq2TXhXMY0fkTTFsLEs5TA==
X-Google-Smtp-Source: AGHT+IFfoh1MHkyCjv6QRFaQ478UiiI66xcVty6uB86z0wOrL8MsCXs0s5MOJr4FKzbXaQ37jx5V4g==
X-Received: by 2002:a5d:5f89:0:b0:390:f6be:af1d with SMTP id ffacd0b85a97d-390f6beb35bmr6839631f8f.41.1740942017143;
        Sun, 02 Mar 2025 11:00:17 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-390e485df5asm12251922f8f.96.2025.03.02.11.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Mar 2025 11:00:16 -0800 (PST)
Date: Sun, 2 Mar 2025 20:00:02 +0100
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Jared Finder <jared@finder.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH man v2 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
Message-ID: <20250302.9100c52d15e5@gnoack.org>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
 <20250223213642.10042-2-gnoack3000@gmail.com>
 <1094ef00ff08bbede90c01f7a36df293@finder.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1094ef00ff08bbede90c01f7a36df293@finder.org>

Hello Jared!

On Sun, Feb 23, 2025 at 03:13:35PM -0800, Jared Finder wrote:
> I'm not a regular kernel developer, so feel free to ignore my
> recommendations if they are not aligned with the level of documentation
> usually provided.

Thank you! No, it's absolutely appreciated.

You are right that the console IOCTLs are generally under-documented.
I do not have the time to fix that all up, but I am happy to fix it
for the pieces that I'm touching.

> On 2025-02-23 13:36, Günther Noack wrote:
> > * Indent the documented selection modes into tagged paragraphs.
> > * Document constants from the header file (tiocl.h) instead of numbers.
> > 
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man/man2const/TIOCLINUX.2const | 23 ++++++++++++++++++-----
> >  1 file changed, 18 insertions(+), 5 deletions(-)
> > 
> > diff --git a/man/man2const/TIOCLINUX.2const
> > b/man/man2const/TIOCLINUX.2const
> > index c0acdd0ea..5db3f6ea6 100644
> > --- a/man/man2const/TIOCLINUX.2const
> > +++ b/man/man2const/TIOCLINUX.2const
> > @@ -65,11 +65,24 @@ are the ending
> >  column and row.
> >  (Upper left corner is row=column=1.)
> >  .I sel_mode
> > -is 0 for character-by-character selection,
> > -1 for word-by-word selection,
> > -or 2 for line-by-line selection.
> > -The indicated screen characters are highlighted and saved
> > -in a kernel buffer.
> > +may be one of the following operations:
> > +.RS
> > +.TP
> > +.B TIOCL_SELCHAR
> > +Select character-by-character.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
> 
> I would recommend also saying

This sentence is truncated, and there is no special expansion logic in
this case.  I left it as it is for now, unless there is something
better to say here.

> > +.TP
> > +.B TIOCL_SELWORD
> > +Select word-by-word.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
> 
> I would recommend also saying something like "The start is expanded backward
> and the end is expanded forwards to select entire words."

Changing it to

  Select word-by-word,
  expanding the selection outwards to align with word boundaries.

Does it sound reasonable to you?

> > +.TP
> > +.B TIOCL_SELLINE
> > +Select line-by-line.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
> > +.RE
> 
> Similarly, mention how the start / end is expanded here too.

Made it

  Select line-by-line,
  expanding the selection outwards to select full lines.

–Günther

