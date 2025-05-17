Return-Path: <linux-man+bounces-2941-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33283ABABC9
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 20:11:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 771291886F10
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 18:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A82C212FAB;
	Sat, 17 May 2025 18:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iPXi+wcl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51A017BA6
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 18:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747505504; cv=none; b=LsXYj5MGbMEGSYZm/k/1dqB7GzDJPhZMzRAzB0ZyrUS5+L6+rmm/w5yU1jn6m0H+J7NfOdHwQzuDjhhB5tpJPxJjTHlYAG6DcaTBUXgRe2iRZQ+WR5cdke89YOvJREBf6hBQAUf90DsVtkUuE6zowd1stf2Iuvq9MnwwR2S5E/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747505504; c=relaxed/simple;
	bh=BIja0iqpBO4c4iZ+5k1dXR+GKbPEm5z+7bUM8W6RAqI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sNLgKQbw6yrQS31ZMlCt+HomXTQlzei+vBpk8QyQMoeYTxiCn5acsJwr6GrbH9HsdWPTgeALMSjTm7Tz8b7vM5IP+tvGQ7hi84Cxi+8xNUDoLMxZno46D3+4R1HYminpDfYgc/Tzd+soJkEIWSwd8V/VjMMZ3EbBVnCY3CgBKCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iPXi+wcl; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7423fb98c5aso2934865b3a.0
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 11:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747505500; x=1748110300; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OIu2DcmtQ9zscmarh+AskE9goFQm5wJJqEs+XC7gb5w=;
        b=iPXi+wcl4dAdMiP9XBGd7S01VSXd//dzI81x+5NpDUn+FI42S+R3Gub0ytPCiz8hxl
         l0pOaKoqyfM0icW/GwWjkL584uPbPJW4fBO2uJSmOZFIVOgUixMSCI1e1meGAI3SV55V
         WFZCWzIv+GK7WW0dSGZoHIPqXU9AE+88Rj5AyL6eB7P0zNx0rU4H9OCayYJ+V4lfb+vS
         oJgo3hHUkRNntXAPYTE2rD4qdGdiecg9LSHHBqW4bfh5mFQ2r5yY3A1y90xlv8e6rBw2
         1bLZCM+ZHzbqHQrFsSA17W/9Q+suLHAcsok/aXyVp5M9RSEQe6wfQPeqcnzo6CiVzunn
         ifWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747505500; x=1748110300;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OIu2DcmtQ9zscmarh+AskE9goFQm5wJJqEs+XC7gb5w=;
        b=YZRlZoWGrotwIkhYyHox+chbUr6bKHadzKJEHlwVAu4HHxsEz2Ruac6VdFGxLqbzom
         K0/0eXiyfpAgoMulHNHQtxDaYkWZS5u4XSZg0n3LRRWNW6RfDEHKlm/jYu5PNZVmZqZC
         tXm6kTfWDfDA9dL7aRuqWjvICznrcU1Wmsng9jeiq+cM05+ADYHwPsTeqHJeVw6Z1zbT
         e285cbKmLoLvYa74Qa/YzttwvNwNGynHagvOthnQNqNFCjJq6Z4ClPB9/wCWN+wxlIEB
         JwJIXsrjBSGqy5aa+spFC4txohmM0VDsgK5t5svPQg2BpifqOA3KhWj2yuEmy2EQkI6k
         hvmg==
X-Forwarded-Encrypted: i=1; AJvYcCVy7gGSfSlu/j1XgihKP42qX/64ngNgi1HtbmDxxQ6aKlqvVNI09Yizgl6e10aYyKC57Y18ZGH6mIA=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq3og8uHRJYZoYSIUylH2prQi2EAukn7wTfLuZJ4LPE85ZhvCa
	7d98dNvpJEeq5dMwH2SgS5lXB0o7ZKkaAXLvVwancs+WKMLaja3q4HgOLO+zeA==
X-Gm-Gg: ASbGnctbrk0FYmhnz0f57lhjvxdVqNFAhb/nW8vE6xNKr5Oae562lp7H0XcYedA0289
	sNHHPXe6J7r+pcsUTAK91bWhmUAWCkIqWa69BjsmoN8G0M9iF9y+Ncl01DidyL1xCvKthttmOGO
	p8PhGbWTJauKWpjC3XMQut0V5uhKXGZcu7Mi3YwYkoNSSfd7TlC3KcEoIDc19lg80QXCtUhzu6r
	+qedCTSBfNwXcYZzEhfNfZQS3xubuFBZ+/QVJ0DEzugBdmIBNy6hAvPhFy7v+uAaFUh4AFbNMOX
	FYwIvH0Txm8WT/m5KsthZyNV8j1heok=
X-Google-Smtp-Source: AGHT+IFFnle0dJUOVjLzvtsmXX89u7H/ID/tQD+Ok6fuKpN15XCkqgvaT6AdGGRirg8LDzT4gmtNuQ==
X-Received: by 2002:a05:6a20:2d07:b0:1ee:a914:1d64 with SMTP id adf61e73a8af0-216219bd3a5mr11949606637.28.1747505499545;
        Sat, 17 May 2025 11:11:39 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6e6a5sm3439502a12.17.2025.05.17.11.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 11:11:39 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org,  linux-man@vger.kernel.org
Subject: Re: fork(2), _Fork(), POSIX.1-2024, and AS-safety
In-Reply-To: <mp3cwzbgvqw2m53jykhfz5xloihxcr5v5bwynig3cxrsmmpqhe@eaok355sjksi>
References: <mp3cwzbgvqw2m53jykhfz5xloihxcr5v5bwynig3cxrsmmpqhe@eaok355sjksi>
Date: Sat, 17 May 2025 11:11:38 -0700
Message-ID: <87ecwnf6p1.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Alejandro,

Alejandro Colomar <alx@kernel.org> writes:

> While updating the manual pages for POSIX.1-2024, I've realized about
> the existence of _Fork().  The GNU documentation says it's a GNU
> extension.  I guess it needs to be updated now that it's standard.
>
> I'll need to write a new manual page page for it, and change the
> existing ones to note that fork(2) isn't AS-safe.

Thank you for the reminder. I did this earlier this year in commit
ee33752b5d8c53eb5a357f67ab7ab6288fba5fd9:

    manual: Document functions adopted by POSIX.1-2024.
    
    Here is a patch updating the documentation to mention GNU and BSD
    extensions that were adopted by POSIX.1-2024.
    
    * manual/llio.texi (Memory-mapped I/O): Add that MAP_ANON and
    MAP_ANONYMOUS were added by POSIX.1-2024.
    * manual/memory.texi (Changing Block Size): Mention that reallocarray
    was added by POSIX.1-2024.
    * manual/message.texi (Message Translation): Adjust wording to match
    standardization.
    (Translation with gettext): Mention the gettext family of functions were
    added by POSIX.1-2024.
    * manual/pattern.texi (Wildcard Matching): Mention that FNM_CASEFOLD was
    added by POSIX.1-2024.
    * manual/process.texi (Creating a Process): Mention that _Fork and
    WCOREDUMP were added by POSIX.1-2024.
    * manual/signal.texi (Miscellaneous Signals): Mention that SIGWINCH was
    added by POSIX-1.2024.
    * manual/startup.texi (Environment Access): Mention that secure_getenv
    was added by POSIX.1-2024.
    * manual/string.texi (Truncating Strings): Mention that strlcpy,
    strlcat, wcslcpy, and wslcat were added by POSIX-1.2024.
    (Search Functions): Document that memmem was added by POSIX-1.2024.
    * manual/terminal.texi (Allocation): Mention that ptsname_r was added by
    POSIX-1.2024.
    * manual/threads.texi (Waiting with Explicit Clocks): Move node under
    POSIX Threads.  Mention pthread_cond_clockwait,
    pthread_rwlock_clockrdlock, and pthread_rwlock_clockwrlock were added by
    POSIX-1.2024.
    (Joining Threads): New node under Non-POSIX Extensions.
    
    Reviewed-by: Adhemerval Zanella  <adhemerval.zanella@linaro.org>
    Signed-off-by: Collin Funk <collin.funk1@gmail.com>

And in commit 93623c03d527dcec76694ab0fcc197193922d1a8 updated getdelim
and getline which were added by POSIX.1-2008 based on the GNU extension:

    manual: Update standardization of getline and getdelim [BZ #32830]
    
    * manual/stdio.texi (Line Input): Document that getline and getdelim
    where GNU extensions until standardized in POSIX.1-2008.  Add restrict
    to function prototypes.
    
    Signed-off-by: Collin Funk <collin.funk1@gmail.com>
    Reviewed-by: Adhemerval Zanella  <adhemerval.zanella@linaro.org>

Next time I will remember to remind you on linux-man@vger.kernel.org. I
would offer to do the patch myself, but I don't know roff. :)

Collin

