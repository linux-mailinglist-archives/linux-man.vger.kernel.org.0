Return-Path: <linux-man+bounces-2925-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DA8AB91C9
	for <lists+linux-man@lfdr.de>; Thu, 15 May 2025 23:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A85201BA5E12
	for <lists+linux-man@lfdr.de>; Thu, 15 May 2025 21:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6146230BDB;
	Thu, 15 May 2025 21:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rbz5mqDR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7079158DA3
	for <linux-man@vger.kernel.org>; Thu, 15 May 2025 21:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747344539; cv=none; b=iYO/zJD05okGmjNeq5KYD8Sx6PQILJ1Nmda5sSZrHI3XbT8cR4dyeAIZvoGnHYNh7LidxJh0N3lBUW6Pe2/lj2aZvBWrRXPBE7mtFym6b6TAXSht1h78IGcQVpLhkkt5Yxn5EIw8q8lMNZ1BzhLRf/9fseKtBDvcNj5q9DeX+Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747344539; c=relaxed/simple;
	bh=NOTigM/+XNALiP1Fb+TzA92x+ERInxsj7oXxJgnx5PM=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=CR0pO4HauwYhGMG01XC0qgkkq0r7c48kTWSR3wuIQIRxkPqS+OGwwkYOF7qJ+rAm4Xw7wdCNEgrLmLxrGc3D0tTdVul0328znBGnFd2esXvzO07XgzLXXg+OxLDKjS/6SxXHlyhkQ40WeTE+sth8ueyPlaFIKZavXKa4xyLV5q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rbz5mqDR; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54b166fa41bso1824664e87.0
        for <linux-man@vger.kernel.org>; Thu, 15 May 2025 14:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747344535; x=1747949335; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CHTPxiuoSrTG6oKN9+ay/K77muq+VMw7VgEyHjfI2fg=;
        b=Rbz5mqDRLuVrBzWhE1+taYuQkC7J0+TmpocaPAlT//pQOuGEGTAvjUaDyPGKVXvCG/
         IOFY0J5oBTZUxZMbWmmJ8JCPE2YuinBXpHju78xzqtPS1OR/+/N4mgzBuZdtoQENe/f/
         U0Y6EryNY6QhU+3fIvrjJJGLQOBf4wzywkwk8mAD9I4X2lsmi9moA7Mr1UR8zGZoQIjF
         R74ZhkwSuYzAMMGufOXxP4LpQwe5MY4DKPKsS/ahMscm/9V6lMk9yUBqN9Rf1ye99LSV
         sAU1Wr10qQbz1faYXEXpE4HpIXzfIswsGuL4yqLgWjNeEH6WIUnjxSnTiibA7qOJxGp2
         v7vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747344535; x=1747949335;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CHTPxiuoSrTG6oKN9+ay/K77muq+VMw7VgEyHjfI2fg=;
        b=xKfCaUbKhOzdMcrNI4Rkxwme80vzZqVlhhcjKqqaafDeaivMfKMpAiZKQZbFnUq0nx
         YjCuf1BbDlkIUus5iKjHUz0Y/cQHNK2kxRXoavHuaIVV9YiE30BjUqBo7hPxXxSoKrtT
         Pw3ssPQ5YmxRco597lmZuZvocuRF1VjlJyPbMAdZicHyY0BWIZ9d2QdmZ2bG03Cg/4RE
         lq7+fi80Mr8uK09XHcNSTetPDUqucI3+rItt7R5ydFjMkNJb+sGdx7yYo0VaCDOZnnTY
         zvW4lwRoY0VSZ38bVBxngfzi1ruf5F38r8xDBL4UljjTaB/zB556adWIt82Xy36n0tRP
         asuQ==
X-Gm-Message-State: AOJu0Ywr0foob1IAJggUZUq3vBkhLAysUvwTziGppnJm2leE4EN44ulY
	LoD6YhWINN9hlmKWOOORNt5XGZzGsF+vFJf5dCjGSvmm2C0HjS20MWM7l/rZfTH4HzRXM7C0gsR
	t3c1mHIY4oaz30r1Fe8qZnNVmhALQO0Q=
X-Gm-Gg: ASbGncuI2zURqUlY2ASZZRFxA9l5hu4ZOynRZe7CK4/x1cO/Z+zUQTnX5K44XfrSFL6
	Kf5DabZAmQOz0D7hOqVZMZMvVxTMLehLw0PQVaoynbmR4mBiURzKz17PsXRORKZh8Dfq/SAfuq9
	2q+JiYhtP2IkhgMVs5bYg/cGkRFWFCrb4a4vonHdVA+90lkWvG8pVziKEGb/hO+0o/
X-Google-Smtp-Source: AGHT+IEpk57I32lQbKYkLWZ/6wbb0IrT0qkYaITzumz3wMsDYY+RmAFpxh6NdxuAZiKf8eUZK2GSoluGJJM7BfnNcuM=
X-Received: by 2002:a05:6512:6409:b0:54e:751f:4094 with SMTP id
 2adb3069b0e04-550e71d0382mr259301e87.23.1747344534612; Thu, 15 May 2025
 14:28:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: bruh momentum <mondeendeguise@gmail.com>
Date: Thu, 15 May 2025 15:22:02 -0600
X-Gm-Features: AX0GCFtZ6UlkwJOgzasWE__mFmqzcwZzU6_osqLSgXW5oxke_7t_obHmAB0ZqjE
Message-ID: <CAGFZsbMJTcyHhDgAEKkSJ9xW1Cd--D_suYbyrjFcXGPV_VNetw@mail.gmail.com>
Subject: PROBLEM: fread.3 SYNOPSIS - inaccurate function declarations
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

The SYNOPSIS of fread(3) has two inaccurate function declarations:

size_t fread(size_t size, size_t n;
             void ptr[restrict size * n],
             size_t size, size_t n,
             FILE *restrict stream);

should be:

size_t fread(void ptr[restrict size * n],
             size_t size, size_t n,
             FILE *restrict stream);

and

size_t fwrite(size_t size, size_t n;
             const void ptr[restrict size * n],
             size_t size, size_t n,
             FILE *restrict stream);

should be:

size_t fwrite(const void ptr[restrict size * n],
             size_t size, size_t n,
             FILE *restrict stream);

bug was introduced in commit d2c2db8830f8fcbb736bdea52b398257447bef6b

