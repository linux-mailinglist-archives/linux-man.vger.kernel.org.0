Return-Path: <linux-man+bounces-2976-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BACD6ABB248
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 00:46:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6431817305C
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 22:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBBC1FFC41;
	Sun, 18 May 2025 22:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kpL/eDtb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC72E17E4
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 22:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747608365; cv=none; b=R3d2rfOokGFgtuHj2wLMkC48rZrk/KEidxEWQw3evvMT+ILb4o8bbjsGh8ArLYtqCcKuojt8Qd4fcoa6uW27pFX3rmHhqjva6qyag4n0/yakVHYH5Dbc9IkpG7rL8lvrs3HQ+R7fzH1h/jGM4jRV154tVnmu3uW/k/whfrZSOKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747608365; c=relaxed/simple;
	bh=+Eva8qcuv9Odnfccma4fuDfWxccgGNoaBVubVH7o2xw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=lSU3XwF6oODj0uPuqwGM/D/StlZavHUSXFvuTxkA+XoworMn20dY3H7B+fuI9fOsclKoq+FOVcX1WGMFXvl+8c6OP1NhlyqdbqvBliAsQyRkBR1EwrrKbOGHo46fX1pQMfVzrwkxl23sRu17ncD75PtoOhQVA8TlwSCQ6WJ/7HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kpL/eDtb; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-74264d1832eso4980138b3a.0
        for <linux-man@vger.kernel.org>; Sun, 18 May 2025 15:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747608363; x=1748213163; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+jH/OaWPmnKLqoW4XHuh6PaUDdbtM3dsR3vAh/uQ/3M=;
        b=kpL/eDtbmGEINb0+Z3u/nUcuYmkIRiNMzadbGa8tF99eExItrt3s8KHevHpXIp63xD
         cuuY48+K/dP99afk5q96Q4HumrTgJDct7BlpMS1pU/DeeZbipWhQEo/Kfza8l1wapC1O
         aq9acB0QMejRMqSPXxKwg8IVBWyi0YJyU0nqpU0P9QKDt/gca+71zLbX5XvtTAoMo8ZX
         NnnIesq8i8xoXt4rML82c9t74mmYr3nAynlr4/BJqc3pZMpQwkJWEWxIUCEXnL4t9TDt
         yrC+7c0yr6H2s7nk1WpfmNBtxCWn6EJ/GJpT6mi4VrRV9fz3EGNt/TYfUQwQFuqeCwjW
         gQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747608363; x=1748213163;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+jH/OaWPmnKLqoW4XHuh6PaUDdbtM3dsR3vAh/uQ/3M=;
        b=pgCfwTloQPgUMao1okXuB3R4kLH0lnjZsSoYFt2Fe+boeKF+BOixqkSM8nGXEqPoZo
         bUkg1FOaEpDTqcIK0WQO5lpJMw/rWf2R0WqN+wgO9ec64eld6V7JCEyDZRQSWvPuQBvM
         VesBQRXVYQmUpSHQ0JEY9Ed7OjJdwSmgsNueT1iGe2OYtN5QKQAFabuERlFDx2wNTra9
         JqP9mLZ5TU1do57cMZ8BKWugctRXmgt3xhIczRUXSr4QmnFGt1XtGe6lGAlWM7GPdk82
         2EdOVSWVDym1meYvd6Qj7Z+jSoxhHOEmg6QDLlnLAHDc5N4VdTZo5U3LW13pj7UjJ8HR
         8rtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOgy+pyZ7O8CIVUEL+gcJo49kBEeARFVJf7mUV00p5XdAroI2xcoWUhDGF540qjXCHOb18wgWmuT4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyNDqX/4J4InCY9FidnFBxErrpZ/Ms8x4qBI0fxS88zyvJeSfvz
	aLZ2uj91fiOflRr2EhEHnhpohUN1RyYwC9fn0mtggv2UgCHYfTu+krn1dT+png==
X-Gm-Gg: ASbGncsiDbZ46KtelCBWLsxzpTE6+6UZBhlu4wmNUmrQlhbcd9jU9YAMo73mk5B6uc+
	yVUYVXuysLTi6oVz7NffRTBUXrEOsCV7x9xNPQs3Tynm1f8lPCne7s/ZB2egmtKPL30+Ht3jRXo
	FkZ0HJvyOT0tsypcU88mGz6cg69mTdSXK11s+eLqtZvke3a8BupFWioq4ypC2ffFnM/q6VGAgJ7
	Dt7qazKMq+dBbnmr1KVNH9jhBctCYIEmcv8enSKleZb0jq/QR/gHJhUsgD7UznqqVZRzFHjEW0v
	3ZcKoxSdOdI3LmD2RcqKk+4nHlj9JIg=
X-Google-Smtp-Source: AGHT+IHxPIr/9XbEAEVgml2fmGxsqD8oUz4R0Hd82qkt1y7pSpc68K44uD9Ug8xu3QN1DN2u/Mqcdg==
X-Received: by 2002:a05:6a00:a86:b0:736:a8db:93b4 with SMTP id d2e1a72fcca58-742a97a71d6mr14364743b3a.2.1747608363000;
        Sun, 18 May 2025 15:46:03 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9871517sm5090792b3a.135.2025.05.18.15.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 15:46:02 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org,
  libc-alpha@sourceware.org
Subject: Re: POSIX.1-2024 requires 64-bit time_t
In-Reply-To: <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
	<87plg5hnb4.fsf@gmail.com>
	<CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
Date: Sun, 18 May 2025 15:46:01 -0700
Message-ID: <87iklxy1ue.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Mark Harris <mark.hsj@gmail.com> writes:

> For glibc, all 64-bit platforms, and the most recently added 32-bit
> platforms (arc, riscv32, or1k), use 64-bit time_t.  All older but
> still-supported 32-bit platforms (arm, csky, hppa, m68k, microblaze,
> mips, powerpc, s390, sh, sparc, x86) currently use 32-bit time_t by
> default but can use 64-bit time_t with -D_TIME_BITS=64.  For musl, all
> platforms use 64-bit time_t.

Thanks for the details.

I had looked into it and it seemed that time_t was 32-bits where
__WORD_SIZE == 32.  But it seems I missed the newer 32-bit platforms.

Collin

