Return-Path: <linux-man+bounces-1605-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2181C94E3E1
	for <lists+linux-man@lfdr.de>; Mon, 12 Aug 2024 01:39:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA18C281F06
	for <lists+linux-man@lfdr.de>; Sun, 11 Aug 2024 23:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD583D97A;
	Sun, 11 Aug 2024 23:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YM3wttIT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D94B1757E
	for <linux-man@vger.kernel.org>; Sun, 11 Aug 2024 23:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723419556; cv=none; b=iJzTMYsMPyPIQz/uXXVjzAOMjVxBn/EZoTWGl6G9hUoSxbcdHoSOxrsbZFBuFxQinCjWwJtiMT5/5hg9mqsJZKh4d7AESgjpFeeGjuXeUflq6NBpW5yzgdeQDwFp70TjGI4p0hboLMsnrRWeoVsL6mT8W5ZrZ4g7HLlg1TGLDcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723419556; c=relaxed/simple;
	bh=jQXItVM32R4cE+KZEtBvyUTpXkTJLdRabLWc6B6gSsY=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=IZ8GsSTqmt8/oZqAnqpd9KAdWPb+AFHebmE8R6UgIEERby6jmIBaQZSTgrJxAWwg/BGadqzJ68+AHnbGK40oA8UAoW1dFdbJ+04xT1O3Y7jrEt9oliJD00R+3LffO65mxvkAGfTAg4YGxExuwxjQnkiwxzcZp6qjVkxt4EbHviU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YM3wttIT; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a7a9a7af0d0so422079466b.3
        for <linux-man@vger.kernel.org>; Sun, 11 Aug 2024 16:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723419553; x=1724024353; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+Mj9n12FuoL3AQbvFa5YE3ee4lJPaciwcXzIdCaBSCs=;
        b=YM3wttITuNgrcUijdpDuMETRrK9tH+Kud9foAUsUKnO0u82Rf/MxHRI715lErM0QjN
         6v2/aTTM+8zdKNAXOjj8cwLCypNBT/3a+wSmlqAGdQXRlabhJQNCTp3g3BtNEXy5RwWI
         OUeK1oREjqbXVbPJb+4BUfdKMkJAwVRAvWvDYbl+aToWXREThWEPS15ejSo1D0w2EzS+
         +tWWXNp79/5dOezZdZxj8ByV59LhjSF7UkBjvziLSTTWUAuQ8K3OyLAryKr8eaLJ8SUd
         Z+Why36Q+c+7Y60ETPKBIsu5rhLkRi5nx7MdFPfiCgB8ZDLJF9GTZyLdKJEkyhlIuJRY
         CQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723419553; x=1724024353;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Mj9n12FuoL3AQbvFa5YE3ee4lJPaciwcXzIdCaBSCs=;
        b=XshxW3isO4LEfVWLFi8D5N9tjXHfp/2epHP3u2a1cKasRbswo+XWIlfYQaP8f9FHit
         9RG8FAczFgLSyQH4ew4g6HW9mnBZbwzyZGZKlEHpz9Y+RZQE17DiHJwyncNo4d6mTB0T
         hOXO2PbGlYhysaR/imiX2DMCs06HDDitj3qfVGFlw3WpKEtlawqyuxcEwh9PBOcr9Keh
         8cHTP2RtY1F+wjF3tBEk5kWk9xz1X8kEfdz0v8JLdw9i2O1fnSm9BbIgF+wN8hZBOdyJ
         /HUTQSYKZEoZkQjp7GD8ncwyyTQQCWPs/8h3oxbuFKQHmZY6E+hXRphNB+J2KxAbUFtA
         Qd+Q==
X-Forwarded-Encrypted: i=1; AJvYcCU+P3jTijx3U9Y9cSCrTTORcQ9ZJgUux9WNtTV1kXg/fU4xi6MoOhVcVb4J5dGLrtN7g1r3n7RRYlah700kDnDjgFyHTuZLqew0
X-Gm-Message-State: AOJu0YxXpgFAsyx4BITCa2VkKzieDwlBfRikiGt1Gu8r9v5fKdiUoMbM
	Qr8V3dMx/xxubZ0aTmKQNGVQmC1+PwVHFpdcqvyGxcB3xGqzTKEkyEkeDiWZJSqoqGinZhXc3QA
	IZxrWR0WZ3Z/VCHz50BcP+hp69UA=
X-Google-Smtp-Source: AGHT+IGZZZkXJ5054SPopkCuzjgy/xuc953+JLAGIxC/rjJuM1vVA2lTvNtR/JPdhsTL7LojucYgvYIbxFL5ZkgllDI=
X-Received: by 2002:a17:907:c7d3:b0:a7a:acae:3425 with SMTP id
 a640c23a62f3a-a80aa55689fmr597825566b.14.1723419553054; Sun, 11 Aug 2024
 16:39:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Morten Welinder <mwelinder@gmail.com>
Date: Sun, 11 Aug 2024 19:39:01 -0400
Message-ID: <CANv4PNkXjtWjzWib=AetdKLrhSqJEZHYzPjUMJNwsgrZsusRbA@mail.gmail.com>
Subject: Man page issue: fmod
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

The fmod man page recommends this code to get the least positive residue:

    z = fmod(x, y);
    if (z < 0)
         z += y;

That last line should be "z += fabs (y);"  Otherwise, for x=-0.25 and
y=-1 you get z=-1.25 which isn't what anyone is looking for.

The man page could perhaps also state that the sign of y has no effect
on the output, other than possibly when the result is a NaN.

M.

