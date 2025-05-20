Return-Path: <linux-man+bounces-2991-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E48FABDD3A
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 16:35:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B3C67A2522
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 14:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB974EEDE;
	Tue, 20 May 2025 14:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ablerise-net.20230601.gappssmtp.com header.i=@ablerise-net.20230601.gappssmtp.com header.b="FTkypkks"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FC3288D6
	for <linux-man@vger.kernel.org>; Tue, 20 May 2025 14:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747751537; cv=none; b=Dkwb/GXGspiYbFlTB+zK6Kt88wd2+Yd2GJjIomId9jUZCxaHo5AOCOzF8wT6YjeYyacc8sKDoqlBlyj4zmMm9mtVHiffDmQc0Dp5ly/xacpomsv5xhdxCjF5ffFqpzX9ywDRMwLyiTY8dRxaLst1rMi8kUrgd79nyHt+/vmQlds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747751537; c=relaxed/simple;
	bh=/37VPxf3SPDXGg3dycZ4wjetBbQveiaXjv4eNS/wEUI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ks2UBdBdt9GG3BWAPBcud4GkBtAiP5jfWfWsGwNV78H+nB+YCCd0yrSQnNtjVVOOrfT3FBzR4LgNdCMLry6ICjmgg2ZC3pelJHJXu6R199QnJ9mMjoq6yI0TbiEwD4AhBgBOLghHJZHGnG892ZxQy6CobXnsPIxdPArCwEKFmrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=ablerise.net; spf=fail smtp.mailfrom=ablerise.net; dkim=pass (2048-bit key) header.d=ablerise-net.20230601.gappssmtp.com header.i=@ablerise-net.20230601.gappssmtp.com header.b=FTkypkks; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=ablerise.net
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=ablerise.net
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-32807f8c709so5636521fa.3
        for <linux-man@vger.kernel.org>; Tue, 20 May 2025 07:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ablerise-net.20230601.gappssmtp.com; s=20230601; t=1747751533; x=1748356333; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/37VPxf3SPDXGg3dycZ4wjetBbQveiaXjv4eNS/wEUI=;
        b=FTkypkksYcCfumfUX4Xsf3dYRaftZIzNvumcQo/yBumlLMmB/9b9DQiL4UgKXyewsC
         a8SvocLFKOpGzgDfNfsctXmx9Xj9uS7U4cZMa6Vxneq3IXA+9QJoGpwhJfD+QgFOepOx
         xaQUp4+RC7N9vJq9lkaY7RMI8IFBOCHugOuC7ar/coJC1nxkufTqZ5HJR4vpCWTPC4xm
         K+L15J6EmZAzTWptWDSKtcfuGjv59zYzUkAVFQqZtB/N31BCmKmxEuOpE9pGqw553e1/
         Jf1PjfjTkbKOBQpWnT31MfsqQ7wy5l9OxOhKKyOGecoCx5EUjTSJsT9EGbOrbccwM8gi
         xHoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747751533; x=1748356333;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/37VPxf3SPDXGg3dycZ4wjetBbQveiaXjv4eNS/wEUI=;
        b=i+GEVfbZXv1huctFOLkxruIbQS27e4544aX4r2HLzP5+Us0Py45ZzxFncvV42fGnmi
         6NxNKQDnfYKbwjVn5sYHMWWkgdVOYWoG/jaLc3a39PtJ9LrAn8Q44bQhDPZ0y7pLPf9Y
         Rxemo207ge4AbiZujpU5H/3COd2vdsrs+FF77NsdpX8uIuUsKa/kHNfBjbkf5MqoOqCu
         HfR03PoVYQBwEkInBnDZpCXjFHNPbU1JayfNpFOMCC9dUaLyWEcnOk/94dn2Ex7y6I45
         V/k2HzEmwRPf+PgAduAy2GobDAGo8YLFmH5roFwFWUsHt2Dvke3G/qrkdqRgnoHIZBLX
         STBQ==
X-Gm-Message-State: AOJu0Yzdr2hWRTa9zCKzswCbPuudvTSwxJNs9MUX2i1lPloj+NvPyplS
	XT0XXXiJBEmWgk8aPtgwlUDmulMhi1+BfEoSiVLUxlaoY6UX+uXDzkK78MizTy+hvQs4Vb4hCxL
	/kfbVpaDwk34R1EipUqk+WQIJuEfLlqH+saYznaR3YWNCO/p3pX6w
X-Gm-Gg: ASbGnctr0bYOK8PdyXmOGZsNkxy6Rc722ocUIqVXb3xETla9PvSoFCPiCIvP133S3IJ
	8euWZ3tAlf70bwIQbU9abJkOvC2HlVaLEhO5LVm4DcdDXqUOIze9YlcFML11DumOZMGwMIWxBc7
	jWqdQ+UsyIZ0ANNkNLM6hylrUkVcCE6KOr
X-Google-Smtp-Source: AGHT+IFZxSbSt+4rFVUDbPIywVU9HDtW0O/Z0s6M559GtQji2mX9jsdVvUB/lMEjqjRx5Mnv91KhTzsaGLKWBy1xGqc=
X-Received: by 2002:a05:651c:198a:b0:328:423:cd41 with SMTP id
 38308e7fff4ca-3280779a2eamr17853571fa.8.1747751533331; Tue, 20 May 2025
 07:32:13 -0700 (PDT)
Received: from 428664282689 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 20 May 2025 16:32:12 +0200
Received: from 428664282689 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 20 May 2025 16:32:12 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Martin Block <martinb@ablerise.net>
Date: Tue, 20 May 2025 16:32:12 +0200
X-Gm-Features: AX0GCFtMC2gKwO4nKwCeyltaxP1ZHDfkPzqxZ2ceRXBMkWbozFiS78p3bf3CaeU
Message-ID: <CADKx7dN0-hBB7fBR7ktd8LJx9+ftTZdHV-OUh9_wXB9G_2ee0g@mail.gmail.com>
Subject: Article Pitch: Seeking Your Feedback
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there,

Parenthood is an incredibly fulfilling journey, but for people with
disabilities, it can involve a unique set of challenges. With proper
planning and access to the right resources, however, the experience
can be both empowering and deeply rewarding.

I=E2=80=99d love to write an article for individuals with disabilities who =
are
preparing for parenthood. The piece would cover everything from making
your home more accessible to finding supportive communities, all while
embracing the joys and hurdles of raising a child.

If this sounds like a nice addition to your website, I=E2=80=99d be happy t=
o
get started writing it. Can=E2=80=99t wait to hear from you!

Thanks a lot!
Martin Block
The Able Rise Group
Ablerise.net


P.S. If you're interested in content from me - but on a different
topic - please respond to let me know and we'll figure out a better
option.

