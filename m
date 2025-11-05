Return-Path: <linux-man+bounces-4252-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ED2C3792A
	for <lists+linux-man@lfdr.de>; Wed, 05 Nov 2025 20:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0C4C3AF17B
	for <lists+linux-man@lfdr.de>; Wed,  5 Nov 2025 19:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62A6B34320F;
	Wed,  5 Nov 2025 19:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b="frzzFKQ9"
X-Original-To: linux-man@vger.kernel.org
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B7F28C871
	for <linux-man@vger.kernel.org>; Wed,  5 Nov 2025 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.61.206.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372345; cv=none; b=cUnQvH/txtqwqAIjrFtKxk9ezDuoUqEmkP5n/a9/AMR2wrj1Wgjc5sSffS4qG/ivPgLGG32U1uSmKmVqv6JAF+IDTbQwrTE2eStpg4jpiVZctvExRMQsQUVthXtw4Z2HVqVLARjIT4+RJy4ENSxbDKK0C/GA0hEQPbWv9P8wwTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372345; c=relaxed/simple;
	bh=Lz4QNDXnBvipq9qWykF7xceMrP6HqWOoPve9bI+qOYE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=MhjrY7wN+Eau4sr0o4/ySJ9HATuSWuqpREJgnj+uRCXH/8bp1Gv3c1QE4YguypTdA3wKHY5hq0EGT2b7ikEQ3iR1nHPdAs1/ILDFBRtGgHPz8BConq3b4lNAtUT4/dI/wBF9A1oyJjMgqQpxNdaII5DRgiSNGFJl7k6LB1u6ej8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net; spf=pass smtp.mailfrom=gouders.net; dkim=pass (1024-bit key) header.d=gouders.net header.i=@gouders.net header.b=frzzFKQ9; arc=none smtp.client-ip=202.61.206.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gouders.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gouders.net
Received: from localhost ([47.65.179.194])
	(authenticated bits=0)
	by mx10.gouders.net (8.18.1/8.17.1.9) with ESMTPSA id 5A5JhJHn030479
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 5 Nov 2025 20:43:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
	t=1762371800; bh=Lz4QNDXnBvipq9qWykF7xceMrP6HqWOoPve9bI+qOYE=;
	h=From:To:Cc:Subject:Date;
	b=frzzFKQ9VPDaf0yFGGiFeiWperBlq3sSpjgdiuOiAEbyQh/BTPkoxXeIvC8L4vIXn
	 +s3eGjClBAzP3UnCBMcKM2FJmFvKtllvidHkM8tx1WyXVbDW1S/D+W0RUZReKF2Teh
	 aleoi4M8aexgP+wpzAtn7UdAk78c6KhMh/KyiO90=
From: Dirk Gouders <dirk@gouders.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: wcwidth(3): wrong #define?
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Wed, 05 Nov 2025 20:43:19 +0100
Message-ID: <ghms50i7u0.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Alex,

I'm playing with a program to calculate wide character widths and
gcc complains when I use wcwidth(3) according to the manpage:

------------------------------------------------------------------------
wcwidth(3)                  Library Functions Manual                 wcwidth(3)

NAME
       wcwidth - determine columns needed for a wide character

LIBRARY
       Standard C library (libc, -lc)

SYNOPSIS
       #define _XOPEN_SOURCE       /* See feature_test_macros(7) */
       #include <wchar.h>
------------------------------------------------------------------------

Looking at wchar.h explains the problem:

------------------------------------------------------------------------
/* The following functions are extensions found in X/Open CAE.  */
#ifdef __USE_XOPEN
/* Determine number of column positions required for C.  */
extern int wcwidth (wchar_t __c) __THROW;
------------------------------------------------------------------------

So, if I replace "#define _XOPEN_SOURE" with "#define _USE_XOPEN",
gcc stops complaining.

I would have prepared a patch but somehow expect that there are
situations when "#include _XOPEN_SOURCE" might be correct...

Regards,

Dirk

