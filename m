Return-Path: <linux-man+bounces-3907-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF5AB8D226
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 01:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5351189F6A7
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 23:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CDF1C84C6;
	Sat, 20 Sep 2025 23:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P+zSZMyJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7E91A9FBA
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 23:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758409352; cv=none; b=LrbPec89xwRoH2h1bi/yc9vY//+o4vW8ewY6u9WixSefaY0ckFMmnPQJJ9KzsXUt3sgNhln0iwEE94rP7zdTc4FGHZnmcFsJYh58cEgJWgKsw1bBFON03cNJgH8uTsk60nFiU7YaEk+1HAGnXspZg7KbfMJ7i2Akwqdl7/4B+Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758409352; c=relaxed/simple;
	bh=aUZdbzXZfAS7auwQkKryv9DlxBjIUl1td4Cy/bfsW30=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ghKEpW6pZ63s779ai4YIlmHzcR/1EjRviGZa6QoTVk2/OY+xbc9Izf4XCpzqfZiXb7WNNfqBJwSvq71LJPYt0aZ0vMgKJDUssclPFu5plShEiQGL+ap5z9q/WOhgAYEHFp7VfnYzLq20KDjC+8VKDSgEw8bgZTiGu7aZaJ4sNHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P+zSZMyJ; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-77da29413acso3331293b3a.1
        for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 16:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758409350; x=1759014150; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eLYuoAMd5e7QfzKeGPuVjwLxv9jHkRkeCAkE+jtPUk8=;
        b=P+zSZMyJdfsItVGlnKkpWtigGT1bI/MUAqpNDwC4WLvhFRG32oXd4Q7AtcgDApnCGn
         WT6wqNfGm68zQ2zWqwcs+2Gzx5xhW5cnctjD7WPErSQ7SEHzbt9OUHswnQykqaj1mDVO
         maapewaEs/j5EaGJHNzA1ScqBqH1TMdz4xLPQTWHh563hEpOgTzQx3/fwEem0z0fDgqO
         tdNkjJOam4YtQI5DNhRXIvqH2pE4Erkwcn0SjSoAj04JxM1RvE0ndM64iOnakXAhbt2f
         a7lD2G6OMupJwy/UHX4rqt3i1B6ukEYty77kiHbjgxYA+62ZA7kfFoLxSK0QkseGa3Ew
         LIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758409350; x=1759014150;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eLYuoAMd5e7QfzKeGPuVjwLxv9jHkRkeCAkE+jtPUk8=;
        b=be6qcEppFZpzjIXWL49GkBjYEqM2IAoLSxBpEWEZW0WzA58KxpjiwLUiqR8ww7aXFn
         eNeMl1o0LFArUV/YcXmGrgq1Vx1z93CQMAIcnvmCiogAuT2UspMYN04Yi4SG0/asWi5j
         iZab1q8v2H9f8jX/aVuoxR3mLfm2XRNUpvM5B+axBkzn2h+LyhOVS0D+E0MbnZRmnXDs
         hM4id5ESImMsDKn+JXDlvqJTrF6nXnmPbTrONRCsNeRfnQvMhEmKswttHSJK4suyIEjM
         9hokzXU7jeop7idfavPXbhQqgs6FqXA3NCIRyUbEjdYvJONeV7uAgyc1VXICuDkFwdQW
         Ox+A==
X-Forwarded-Encrypted: i=1; AJvYcCUBMaNoAJCfbnLQUDPi0SD0YeDqlWDLjPPi6mvegBifPmQVHAS6/Q2AOuolr0y18lCWeHbacZ5tu3Y=@vger.kernel.org
X-Gm-Message-State: AOJu0YzR1ucU9oiASDBzPzXXLIQQ9BC9OnEwehqdkMdZxMNBmBLzlVgt
	G2Qa7v2t0F8w6XEppMrql8ppz2PI7ryFRVuDxVJrxHiz5GYSr37N7T3INvXLAA==
X-Gm-Gg: ASbGncvwbnsi0ZmgtO079LglCjVjP1Vi1i8/OTNk0Yp9RW5rVF2/U4LsNHLYwBWMG8V
	fDjfV0hn3qPORj9zTJeRJwImcatIY5FAl8zbZwEcykfgljEFvISaFKw2fL3KljAg9Fc3V1dqYfI
	COqi3O0jzfbLnJ4xOEJL7KpsyiEo/42Ye8qgVqqvqL70vnUZijGmRHjvm/MI+uIF2PL+6D3bNFO
	2sKlhXBlfNHpZmTQAvY0viOPxQD3xa2C6itMeXQcVs3h4QhB1dFhDMeYkwE2+pMQnCBVmDyRl1K
	NVGO9LVyuLpnQDZw93QfTfAdmHXl/T9lf2VqtaW0gJGGRnhUxN9qwvptyCvd/fuLGPZeHVC/nGP
	Q4ZWe
X-Google-Smtp-Source: AGHT+IHMUv9KwBo1wS53B56nTrP3tdz15OrQ5HiXkPCBzOgXoL3tEUh2TO1VFDq5ExC8X9fcI+wzKQ==
X-Received: by 2002:a05:6a00:992:b0:772:3b9d:70f0 with SMTP id d2e1a72fcca58-77e4ce36496mr10170887b3a.2.1758409350100;
        Sat, 20 Sep 2025 16:02:30 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::641b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f1550f890sm3759705b3a.94.2025.09.20.16.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 16:02:29 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>,  coreutils@gnu.org,
  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <nry5d4nhpdnujv63wyzxvuwkowzladgeqvjcqpm5yubd6p6xn2@qhce56dl465s>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
	<e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
	<53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
	<4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
	<jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
	<87o6r4zy73.fsf@gmail.com>
	<nry5d4nhpdnujv63wyzxvuwkowzladgeqvjcqpm5yubd6p6xn2@qhce56dl465s>
Date: Sat, 20 Sep 2025 16:02:28 -0700
Message-ID: <87tt0w7mnv.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

>> That said, I have seen complaints about the Coreutils man pages being
>> "incomplete". However, it is grown on me personally. I use the man pages
>> as a quick reference when I want to find an option or understand what it
>> does. And the info page for examples and/or commentary that is too long
>> to reasonably fit in --help.
>
> I personally would remove documentation from help, and only print a
> usage line.  The user is welcome to read the manual page for consulting
> the documentation.
>
> This is what I'd use in a command:
>
> 	Usage: foo [OPTIONS] FILE

Interesting, I like the documentation in --help. Regardless, it is part
of the GNU Coding Standards [1]:

    The standard --help option should output brief documentation for how
    to invoke the program, on standard output, then exit successfully.
    Other options and arguments should be ignored once this is seen, and
    the program should not perform its normal function.

My reading is that the mention of "documentation" implies more than a
usage line. One can try to change the standards through the
bug-standards@gnu.org, but I do not think you will have much luck in
this case.

>> Writing all of that in groff would be a pain. More of my time would be
>> spent understanding the syntax than it would be focusing on the content.
>> Texinfo's syntax is much more readable and easy to remember. And the
>> HTML and PDF output look nice to read.
>
> I volunteer to maintain the man(7) source.  To me it's quite
> comfortable.  When you get used to it, it's not bad.  The syntax is
> actually quite simple.  You don't need to learn the full roff(7)
> language; the man(7) macros are quite small compared to it.  mdoc(7) is
> much more complex than man(7), for comparison.

mdoc is the format mandoc uses for the different BSD man pages, correct?

> The PDF output of man(7) also looks nice.  Please have a look at the
> PDF book of the Linux manual pages:
> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.15.pdf>
>
> Or you can read single-page PDFs by running pdfman(1), which some
> distros already package, or you can find pdfman(1) in the man-pages.git
> repo (it's a shell script).

It looks good, but I still prefer the Texinfo PDFs.

Collin

[1] https://www.gnu.org/prep/standards/standards.html#g_t_002d_002dhelp

