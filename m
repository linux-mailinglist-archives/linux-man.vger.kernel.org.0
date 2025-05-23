Return-Path: <linux-man+bounces-3005-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8DFAC2A2D
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 21:04:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E8844E56C1
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 19:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130E8299933;
	Fri, 23 May 2025 19:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ablerise-net.20230601.gappssmtp.com header.i=@ablerise-net.20230601.gappssmtp.com header.b="WNQnclD4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EEB19DF4A
	for <linux-man@vger.kernel.org>; Fri, 23 May 2025 19:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748027069; cv=none; b=dwXLdFnSKz0Gg78CV5WgHGSRolOO0MLwnuJETJNsZWcZqznN3JpxFU6zQelY6oJC1Qz3A8st28IWW69Jed2AU9wOatJSSlwqmQKkqFsP9kmn45rGUEnJJIiB/WrNzJW2FbEG2sa/zzknX0n8aYVPxwe/UbdvnBW0FLPOqTCmI3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748027069; c=relaxed/simple;
	bh=Axj85TtTONfeHjZFYZu2Vl7MF7iRucajqYuVfkHxN+k=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ig9KaSkOQ90TCT1Vz8q9Oe76ki9mranWoAirGZA/WW2LWgXojdV8lAv2EClbYl19co4mKrUUxFSP5FCpjnKhTfMo0iNnQCYEgZlGbR8urVoEcT9AxPA2ZrOvPwIhZ6T7+Ah+E50ERPLDXcjXfuONQRI7eiJGJy6RKml4D2V1TGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=ablerise.net; spf=fail smtp.mailfrom=ablerise.net; dkim=pass (2048-bit key) header.d=ablerise-net.20230601.gappssmtp.com header.i=@ablerise-net.20230601.gappssmtp.com header.b=WNQnclD4; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=ablerise.net
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=ablerise.net
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-551ecff2b6bso29006e87.0
        for <linux-man@vger.kernel.org>; Fri, 23 May 2025 12:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ablerise-net.20230601.gappssmtp.com; s=20230601; t=1748027065; x=1748631865; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Axj85TtTONfeHjZFYZu2Vl7MF7iRucajqYuVfkHxN+k=;
        b=WNQnclD4A3NwrrOD8BOMtaxGJ/DAHWY3jXg5y/NMQFtkeJyg/5ps1rAA3keNMuSunh
         +7Gq0NKKc/CvQTJ4cj/Y4NsjY8eJcuh0R5Ltew9S8YFd6CNVjO6yfn1TktVZPr2zNtGq
         miEMvW1v3Ugbm04CHpuNUoBMS77NI399/OJAs+HASmKRVu0uotMso9W6sc0NACXpSjL5
         30ev2wXe89hngZ+Do47r6RbqKLy6vE7Vc3HJdKQchkplthJN8t91j6hqqBCIgn+q1lEt
         Sl4vX1WXgIsuGRU5zXCPbzhUBuRZX1RzjWOI8/qNZ2YVbR5q3A3ILgIZCo0PkTXUXWSM
         zR1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748027065; x=1748631865;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Axj85TtTONfeHjZFYZu2Vl7MF7iRucajqYuVfkHxN+k=;
        b=IymN6fBviUixXXEMKysP2q6GqlYdqrVdXFiz7XF8THJPOclaUfu5UoAy32APLubUL7
         V674lQvr+A9w+whHR3/fwQdTENV+nnw3uuz9eOuELnltzdj6K41xLCn3JZJQFlt3BV2Z
         KPWRdLvclK78qtSqvyyMfFmHmgHG7O2wRisDF2ePN6/onkg42srqX/3E+IUriXrSp+Er
         kqGcVwGgdGiqzJC7DUfJy027wsSES7eQopjZzwAmaAtFNanhMp4XtR5lDfCl9jNHc79i
         nerq3fiqCwZnfrH/AoAlaNUFUecxjF5kWbs3kfgikNDqvjpDpWSoG8+6z5KIsfMGeoXk
         pdaA==
X-Gm-Message-State: AOJu0YzTYKUVic9Pd35TEr3krzXeRsmXVkY3LjKHQOZbngYZWEyBbqdH
	8KK0kbojwlTpQ97oeOL3iJUfUw0blCDMFC+9e9/MQr6VTHhLVEO56i3k9GaXCSC4HIICTj35nzI
	T+nzuzuU19qYbWAM56ArHrjSkjTrdN9Pi/42U/Wp70TAMEn1DdwDt
X-Gm-Gg: ASbGncttRbXQQQZrZJpamiKX/ol2iM/MA5ms+OgPSMkx8Su+nIQiaQOgN7FuMbBKfqp
	n/Uk62p7ZbhX9VVcCHsh9g/uuGvktXDyFxcpfnI8NLwDoogEJ10oSOmrTRrERkCQ/SicpEjyRpj
	UBua6fpdI0RbQj0qtk82IfEj9S7FMW6i34
X-Google-Smtp-Source: AGHT+IGXb4QW9vi4jhI88wT5EjYXOiEjfnHjhy7nmK9HWzoCEHAbaaG32bI+Ejxw2blNAkUk+q9A0Q2lHJOYiGLAhaw=
X-Received: by 2002:a05:651c:146e:b0:30b:bfca:bbe4 with SMTP id
 38308e7fff4ca-3295ba797ecmr290711fa.9.1748027065550; Fri, 23 May 2025
 12:04:25 -0700 (PDT)
Received: from 428664282689 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 23 May 2025 15:04:25 -0400
Received: from 428664282689 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 23 May 2025 15:04:25 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Martin Block <martinb@ablerise.net>
Date: Fri, 23 May 2025 15:04:25 -0400
X-Gm-Features: AX0GCFvS7J-yvhFRl855w8xnyQzIgHgmBjCX14jhBP6QmIJd2MuI3RLavinHFpI
Message-ID: <CADKx7dMC5xOn7_gc_vXGwZmOx0cBS-w3VdjwerZuu7B_L+9K5g@mail.gmail.com>
Subject: Checking In on My Article Pitch
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there,

I hope you=E2=80=99re doing well! I wanted to follow up on my previous emai=
l
about creating an article for your website. I'm excited about the
opportunity to share valuable insights and resources for individuals
with disabilities preparing for parenthood.

Looking forward to your thoughts!

Warm regards,
Martin

