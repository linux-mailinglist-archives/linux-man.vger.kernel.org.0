Return-Path: <linux-man+bounces-3997-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B77EFBA7916
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 00:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E2D7175E4D
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 22:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4F728489B;
	Sun, 28 Sep 2025 22:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LOKlvFwQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD31D1D88A4
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 22:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759099438; cv=none; b=FT3dWuMAju5flgsfsMMegjoJLs//nMDQTfvudUwbjW1dG7QG3Q58EuZ+mHY63secxiiY80rN5p5QNlUYUEka/J8T8pdkyq2i/X9BSR89cHQGQ1XWmb0N7tkYYSJ5JIKFKrzQ/poE84WyvcmkfmN5MhgX7jLexFZdXx+/j2VaiHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759099438; c=relaxed/simple;
	bh=hvE9AH90aGN69Soj1MUX3Fd9OmjCRmhnBp9GoFLy5yA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=WTwBb0PNAcRVgFTx/YR3bTX1kViZY8/vv/hgEVskC4UerdBSKwosZ7nkCnA+h9d0UsWq/U54rfvJAmcnhkYD0skhwb5VUKqt/FuC9ZEIYJH80kQt717dr/kmiUiSNxMUhy8PAmOwFzsc1IcRC0ZSR+xzsg5UHyVgqNVYab3tlAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LOKlvFwQ; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b54dd647edcso3507079a12.1
        for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 15:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759099436; x=1759704236; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vMPyegz/yEeNkDV+Gxx1snubMFQZ9Gjk2S+dbiqEkbE=;
        b=LOKlvFwQq9+OT4z/c9fmvp1BmjZlmbccLRDP0kn2UclPDPfonwXyscqqVlPccDJn8X
         z2MZHYuwddZOkSBJ/AAb+0zISfcjMC8GfwUZ6mIruVbuPU/z5rf+qHtQ4QoDnV9xyitB
         tZbzOW2mQ2LQVKVqpSDM0u1w7CmOTrF3AMaKF89J6/HyLLn8kRnNDVwCy62kscEep9Cw
         e8iiq0qTy0PO1k3uDR9Cbi66DfQ9j+o/DAchMqU0Pv51Xl0oW9LdSxh5WxSLkKTHIPpj
         5o23O1ANU7FQ9544d/vMf54T08vIx9nT/B/i6kvWD9AF/DkBoPsTE0MtOqW/jTBEgRf3
         Pwjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759099436; x=1759704236;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMPyegz/yEeNkDV+Gxx1snubMFQZ9Gjk2S+dbiqEkbE=;
        b=gF9h8JzV3jOPQ08c5JVKiRM/xOEvkfA2gAdsXUQiHCwxp/GkKIQwJRvF5THHnLt8Zv
         8hxwqDvXSJHcHcBnOmrE6efy9+lCRgfu/xYj0LewUX5c+qlNYgg6/gamqjhIRvY1JPlj
         Lkp0BStaGkYe28JIFxxawmd3R8fxo4xc0H0FoOvotglM9n5Il3Qk8CtPl20Y5Bk7crMZ
         sp5w5aQO0hf7+y1Gq8ypizREc81Qu5b1yXMFXo7+3dJQO391Acj3cB2Uw2V1lgzm0eU/
         vVzxFA2uribssfiYHmvOjYrCcy3MOVWLkDQxh4CGQ8iX9HExEar4b6utHWso0jhzoSp8
         GL9w==
X-Forwarded-Encrypted: i=1; AJvYcCVgwd+JuMC3ZDNtrWABWR4GmVJCMq0wZ4EMNdXvMt8XHikIFA0+qg/55M5L9Dp7gK23Xu7WcIheR90=@vger.kernel.org
X-Gm-Message-State: AOJu0YyqyP9ptVufP76JTQ4v3ni9fBjhseAZ65mdmlJKAvxvy3vD1lAI
	S2pq/sx/py9yWEXrozrrnBjiV0FBDmPdlabBd7ReI0MhoCB9AC4MxePeYlTy7w==
X-Gm-Gg: ASbGncvb6PIpeXqY4snuztennUPDK978EAszhvxCi4oDsi0P53HgVT4XEKRvtxE3bNj
	BttFHSUNvXgdawhX8A1LHqhrF7jd2FqKdPoIEkkxpcmSp6EuDXIUs90FfTvUMuz1b4xbJK341gb
	D2FgEQW+jWM3mnyB0BYLGRiaZTt8eVMzV0Aadb9box6nmrFScnOPIlebYd4gHJOFM3ai79TYCbX
	o9Z5f4WKS14dysht37zVxDgWgpje05g2a7qVQUXxA6jETfFeg+8uJ76zJJ1DAvyiehL1h0YCuZo
	opPI3hs5SerpwrtQgH4qTerU50iLPgkQEaIWDDMZ3j3z9SKY2yjzMq+yAWpfiab9ZL6YagGs+U1
	h76/YftIOUWmQqlw=
X-Google-Smtp-Source: AGHT+IFmIgoz/JkPL/+KNsUIRDT74GgVLlThVfYx5znMsVb65NIZucfP+xSZWAbB5IB9mOFLTlZg2A==
X-Received: by 2002:a17:903:19ee:b0:269:b6c8:4a4b with SMTP id d9443c01a7336-27ed49c7798mr162258595ad.6.1759099435767;
        Sun, 28 Sep 2025 15:43:55 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::55b7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69ba58csm111792415ad.121.2025.09.28.15.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 15:43:55 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,  libc-alpha@sourceware.org,
  linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
In-Reply-To: <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
	<qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
	<CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
	<b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
Date: Sun, 28 Sep 2025 15:43:54 -0700
Message-ID: <87y0pynqol.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hmmm, that's good.  Thanks!  At least, the user doesn't need to free(3)
> anything weird.
>
> So, a good estimate of the size to be allocated prior to the
> sgetgrent_r() call should be:
>
> 	size = strlen(s) + 1 + strchrcnt(s, ',') + 2;
>
> That would be wasting a little bit if there are any commas outside of
> the fourth ':'-delimited field, but it should work.

You can guess a value and then grow the buffer as long as errno == ERANGE.

> BTW, where's this exactly in the glibc source code?  It's a bit hard to
> follow.

In nss you can find <FUNCTION-NAME>.c and then follow the includes and
macros. I agree it is a bit hard to follow. :)

Collin

