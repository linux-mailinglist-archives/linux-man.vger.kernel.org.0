Return-Path: <linux-man+bounces-2507-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ADEA411F1
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 22:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0401A3B2A02
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 21:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B71C1D89F8;
	Sun, 23 Feb 2025 21:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BOouugrA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A094F15666B
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 21:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740346622; cv=none; b=MjFxWbxKO7BsltK/neieLxN+6MRwuX4quMmOlll0haxacU4yRPmreTXEEN00tiD8sw+58azH7WR0Ggeezu31m82sHYYe5xRAuVElk75hV11PbFAzlwk5Z5npJ2+8BZPwp3HOhUm/WEpZi3PO6QN9sNiG2kvTLxy+mWJvHW0u+eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740346622; c=relaxed/simple;
	bh=vXDYVAcnsppv8tlx3Aed7CZhUsRZmL5+Featid3DLVs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Ug9UmsWNROAPX5pVdn1ei5aJ5IvByOgTOmGvFGt2wIjjbc37EEr4HzVF7L11+fmAVX4YqAm4QVrLXsXRnZaDaJHYpGeW0U+Y3gaahD7GnZN6xf1PZr4JyznQPZaywkGYgFnKwnP85Ra8s8YB9pAXOP4xw2kn+MRzeeoxyIY9SP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BOouugrA; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f378498c9so3514880f8f.1
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 13:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740346619; x=1740951419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zvq6HY4Vtw6j4SHJXejT60A2I/CGGIbLyeBlBCr6OMQ=;
        b=BOouugrAKhgjW74el1p2sFS9bTwWnha0xjd2JIO2Dy4rzjdMnaYYaclPlt1Lgod34k
         4zvu5TnQvYHZbIrHo2waAHG+U08HTQji6W/MJ3+vLRkZs0MombFnqB+F4iIUXeQ2V00/
         u5cUqHcBYxCD8/ErXozWTE0t0o0+AUzqYgheL4ZWcdNc96KlMl68t9+0EOgT/xN0djtQ
         eN3mybzo5wZgAlljkHRyDVXeRormwa/iJtTEXiJ9kDyKgvKCwp1d0Fzv74JSHVqvcy2G
         kPDCehNJdMlWQfYOXgXO2lKrARgKjJR9c/3Tp0khN+xzltpPRx/gKw+8/pUgdnt+qSMe
         9qaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740346619; x=1740951419;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zvq6HY4Vtw6j4SHJXejT60A2I/CGGIbLyeBlBCr6OMQ=;
        b=SqBbHf8XfEk/kG4Aao8aI4wsXuXP7o2UCMpLcWeonfYNDQFUEPnamsj8IMjZ1lqQ1o
         dn4Y83smAzgJNiIjB/m8DrtWpDX6y7/6FIBV7vessGdhJVdt1ez2WWKYla8wGHj0vi7P
         BY0J/NMW+xcMMcc/eONorA4Y87oyO+9qmoIiTOFVpZ9zwTVWtgaS0rt9+qPX9QY5L6Ed
         FjyOYzUtvw+TazVyJswlRkffuKjHrMo6zHVhdPa5lN7EBOBBI05oFJEgDbpStJGdw8OE
         ohicvNq6DM3NQxuzDhDOQbQA5t6rXy7ovwv3i2N5lcyYUeNuFXg7JbLNrzZOK3gfmNxP
         uv1w==
X-Forwarded-Encrypted: i=1; AJvYcCUFJLtU+MuIop/EHfg0s7YLMcs1rDlLFBb+H6pL0M2W8HxZWmGSQ1KfuKOZ+kHwJjstHkMx+2/I02U=@vger.kernel.org
X-Gm-Message-State: AOJu0YyL+Cz+e08vSeorD5bJC5JtmHxeuRYyoZx9gd/7ZSX/rFcBiKbL
	alNWUsouX0lFwt6M0N8P4sJ5XGYR7AwJYrl97fWnC8zBV0VZJnvz
X-Gm-Gg: ASbGnct9Y11gcWy4rScwmrZKWpBh3dKEWcxHCf1v73YXR1PnEivwSLeVKRWQnL8uaKH
	w2ZJEEVKE+0pZNLtL7vklB5gN2hTHbyQWlcQxcn7sZRnT2Lvd+6HbtyR3nqFPEosBX/6HVE1vwn
	x0+eL4+earn7xiNzY9GZqQIE6jRcM14dlqcWTWhr2J8wJoI4resUNzdd3Fd81AwJKsyOAEv1ck5
	3JOTvpsPc4Qirrf/yG/6ED5Uq9QGRIbdsyW7fu/C5+FiibJ2DVlPboL4SYrDRfXeSVSO4qHlzG2
	LQYVbMGfTVmox7qQ+4PNMnQ=
X-Google-Smtp-Source: AGHT+IHHFM32Gx03z6T3ROREg7/4pmq1tDf0kFXGdGST/xVUG7Ji49TMD3ZN7AHgTE2Q0Pk0csG3gw==
X-Received: by 2002:a05:6000:1fa1:b0:38f:4cdc:5d21 with SMTP id ffacd0b85a97d-38f6e97a9dcmr9153500f8f.24.1740346618618;
        Sun, 23 Feb 2025 13:36:58 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-439b02e6cf4sm86682425e9.19.2025.02.23.13.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 13:36:58 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH man v2 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL selection modes
Date: Sun, 23 Feb 2025 22:36:40 +0100
Message-ID: <20250223213642.10042-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi!

TIOCLINUX's TIOCL_SETSEL sub-code has another layer of sub-operations,
called "selection modes" (even though not all of them actually deal
with the mouse selection).

Going forward, the CAP_SYS_ADMIN requirement will be different for
some of these selection modes, which prompted me to at least list the
different selection modes with a short description.  I am leaving
CAP_SYS_ADMIN documentation as it is for now and will send another
patch once these semantics are finalized [1] [2].

Thanks,
–Günther

[1] <https://lore.kernel.org/all/20250221.0a947528d8f3@gnoack.org/>
[2] <https://lore.kernel.org/all/20250223205449.7432-2-gnoack3000@gmail.com/>

History:

V2:
 * Split into a "restructuring" and a "new documentation" commit
 * Use non-breaking space \~
 * Put URIs in <>
 * Added a helpful link to console_codes(4) regarding mouse reporting

Günther Noack (2):
  TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection
    modes
  TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes

 man/man2const/TIOCLINUX.2const | 52 ++++++++++++++++++++++++++++++----
 1 file changed, 47 insertions(+), 5 deletions(-)


base-commit: fe7e094e78139a4ac5ee31b2321b77041c725794
-- 
2.48.1


