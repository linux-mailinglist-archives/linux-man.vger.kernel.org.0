Return-Path: <linux-man+bounces-1136-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ADF904617
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 23:10:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7908E1C2336B
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 21:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B201215250A;
	Tue, 11 Jun 2024 21:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="xKTzXKwm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A35386
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 21:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718140252; cv=none; b=SyrTiSiB5AexJ4NmO70QAxatKTxNpLQ1w3vXw8i38KB00JNrIMfywDPkFwTA4bjq8qgJWB2Pm+PcpAdhbzrSY0sYsaQhAHCMHpoJVIZeHWx8DOQGi2UsCNOf1grV4rlzX6rYACDPp9FlgfUEuUOLy+atwZriJBujSUSFb2Wj+ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718140252; c=relaxed/simple;
	bh=WBU+rHbK/RXxp44nR9Mw5octYfe2IEU8Gsm2RR+Va34=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fBTTOg+E71kEINq0ZFXukIb7us3jaG4u9ghqHlRbP9LgZUvEQ2lZIvugkFVI7bcLcY2wanv/ePkJ4wXP0ggAnfCzI6WESXfVM5fbVF+b3/uMjvCq4N2HEc1xVxz++Hs028lZkvcVJXz+LSvFdhxTrV9cBcv3DFOS/RMTZA/jIEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=xKTzXKwm; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-6c5bcb8e8edso4992793a12.2
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 14:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718140250; x=1718745050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kUJRvvsiktk2Xu9mwn10PXtXINSjITqGlPQdA3J26Og=;
        b=xKTzXKwmBhiYh0Wjha5C/xA+JUYU84tGUUe6qLKtjF9kxKsfcEkPtOGcmzIfFZTV76
         OAy/HElhxhSyKv5aX+O4wwbMrPDa/Bf7LbQTDoVaGWMo+MZYtAwbZjrERM/dE6xdelEs
         2HP186xNbZnNwlZ4mM3AGpILzvQM8kHcP2S2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718140250; x=1718745050;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kUJRvvsiktk2Xu9mwn10PXtXINSjITqGlPQdA3J26Og=;
        b=G6ZSXd7pnnEQ4Qps2Cb9C0bMJlk3VCeTcmpwLhDY0TpnFGvXxlsw3/JYX1s9XT0QjP
         P/16588AJf5MUedSFWYqYcylnbFP8GJybfbJhmbgxkZoRI1LrFLjCEefWM5vx2AfROQb
         4iBHOkUotBOXKh7rSqgaKileMVmgKI2lQ9P7DkcZxqR/Xr55XUTfH9ZFvYflKZvCcU4d
         GBsEswRfRwqUggaEViG97bijkjM/VYOpn5bll1J/9nQHcoESlgAQh4mt/bGZh1xoLcfp
         hx6VMTQUzJWOmq2jLDW9b34HA2Dq37tnwdL7e6glsrf5q2qjOfhJVtD909ZvK9u65axD
         4g6Q==
X-Gm-Message-State: AOJu0Yx01M9f/ZfKm9zCJFWp2Ca1hRHb6fRKWFhL59al+LGzcNl19155
	n8UToM/rfwBwCzN/4WNb/+ftvG8T2g0OxcMvwpHecZNKCnTHic3vr5D+A3UP5rg=
X-Google-Smtp-Source: AGHT+IFGfwcBRMXZfte1guoqnBQJUIqc5EXr8rmSHb9FtXaGdV0AaIkF22yUVCECNTjouDeIPCLH4g==
X-Received: by 2002:a05:6a21:999a:b0:1af:b1c0:c9eb with SMTP id adf61e73a8af0-1b8a9c50facmr153362637.45.1718140250279;
        Tue, 11 Jun 2024 14:10:50 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70427eb9f16sm6108726b3a.163.2024.06.11.14.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 14:10:49 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Joe Damato <jdamato@fastly.com>
Subject: [PATCH v4 0/1] ioctl_eventpoll.2: Add eventpoll ioctl documentation
Date: Tue, 11 Jun 2024 21:09:40 +0000
Message-Id: <20240611210941.1791446-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Greetings:

Welcome to v4.

This revision includes several major changes:
  1. Remove redundant copyright/author line.
  2. Fix alignment of struct epoll_params fields
  3. Add appropriate .nf/.fi and .EX/.EE sections, as suggested.
  4. Shortened struct field comments
  5. Moved linux/glibc commit sha comments to HISTORY
  6. Fixed several B to BR issues
  7. Rearranged sections according to documentation on section ordering
  8. Updated commit message for Patch 1/1.

Thanks,
Joe

v3->v4:
  - Remove redundant copyright/author line.
  - Fix alignment of struct epoll_params fields
  - Add appropriate .nf/.fi and .EX/.EE sections, as suggested.
  - Shortened struct field comments
  - Moved linux/glibc commit sha comments to HISTORY
  - Fixed several B to BR issues
  - Rearranged sections according to documentation on section ordering
  - Updated commit message for Patch 1/1.
 
v2->v3:
  - Rename file from man/man2/ioctl_epoll.2 to man/man2/ioctl_eventpoll.2.
  - Attempt to use semantic newlines.
  - Replace includes with sys/epoll.h, since this code is in glibc.
  - Several style changes suggested by Alejandro.
  - Replacing \e with \[rs] in the sample code included.
  - Replacing all instances of ioctl_epoll with ioctl_eventpoll

v1->v2:
  - Add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
  - Many edits to the main ioctl_epoll file to better describe the
    operations and document the interface.


*** BLURB HERE ***

Joe Damato (1):
  ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New page describing epoll
    ioctl(2)

 man/man2/epoll_create.2           |   1 +
 man/man2/epoll_ctl.2              |   1 +
 man/man2/ioctl.2                  |   1 +
 man/man2/ioctl_eventpoll.2        | 175 ++++++++++++++++++++++++++++++
 man/man2const/EPIOCGPARAMS.2const |   1 +
 man/man2const/EPIOCSPARAMS.2const |   1 +
 man/man7/epoll.7                  |   1 +
 7 files changed, 181 insertions(+)
 create mode 100644 man/man2/ioctl_eventpoll.2
 create mode 100644 man/man2const/EPIOCGPARAMS.2const
 create mode 100644 man/man2const/EPIOCSPARAMS.2const

-- 
2.34.1


