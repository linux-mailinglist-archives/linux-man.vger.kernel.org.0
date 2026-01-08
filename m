Return-Path: <linux-man+bounces-4713-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8BCD00C37
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B1E2300E028
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7678825A659;
	Thu,  8 Jan 2026 03:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LeGVDEgQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02033A0B24
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841436; cv=none; b=qp+/bZ+qwY5lgxV3vNY3O0Qxb/Rw2IEHVPcFIqJHx9COn6GYcVMsIdRzDs0vQ22KoWJr1PCi/BW7F6sNA6DSF4uEn7iL2GwFokuEVSYs+pg5sLTUgcrGZKHv6UJZsijHfEtuM1FK3VIoNmXCJGLA4PbrgoAbanb815RuUXeiRRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841436; c=relaxed/simple;
	bh=GjxlXAgSlk6IieaSMzljLxsWRHEz3d/atR8ihQxZvyo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SAqWlgCwHtaW/nsM46mWW772LGNo3KSLgcqxh29L/volxYrShgD/gJ2vKA9xEox4n3HK3MwRbJR0ETX5h0/aqLQyqxyXCIpocmCZd45qfRueH8JwvjPXDA7WaJ8eZ4zmgKXP5ve29cbGBEe0PRx3tyP15LYINeDnJHwBVmF65pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LeGVDEgQ; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-7f1243792f2so1443801b3a.1
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841434; x=1768446234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RE8+Wnjvu7eMpyT+cB/b7WtxqDKI4OO2wodamZORnwM=;
        b=LeGVDEgQEnDqzirBFKe1O7qG5H7U+dkMG0ADK9+8rmmC05WhhWAuabSt0WcF5DFZSI
         LfdsyUF3G48KUBzka753rqweCTdHi77mT8HsQe+pGTV+4EBXqLXkxrNHtSqQsWwHKLnT
         2RXCVYlGyRgnvVN/Ti+tCT8vkdId51kmjRR2eQYWBS7I29XMJqvMFv/QE1kABsCPCTw6
         tY6Z1Z9r18qk056nnS1UHZButnBz5Pn57ioVEphKzOxQPZBqPmyTh/9tLeoaqCkff801
         ZqvsbhVL2if130YW/4ECuWdTV9ho05x4GCnoo3jtERZ+rWLtOIfVfK+gatySo6gv6yW+
         0hzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841434; x=1768446234;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RE8+Wnjvu7eMpyT+cB/b7WtxqDKI4OO2wodamZORnwM=;
        b=HQGpRYx8c8tlHsca1U2oFJwqzrR6e61dd+28favV5alBnAhT4ItklM4wTaqxCri9uQ
         +NcyRAii3nMKAuAtkzVUKCdn+hI0Vg3c4lLJ/WokPBxL+w/Bfb2mZ0zOC8RfAbqvqL8n
         uLcapYvxnGeKV2d4Zu3FMlL3bIhvv3V7sR3mrPwHItS34ofTjdskFUEjdrjJRIW5+zUg
         fl2zqigXW8btJs5eGLEtmHjbSGEtKNqQc1LJUjEnDwa4VoSZLd6Wf/39EN/vbcTnkYij
         S9TqLM+22CntSkyctphWGdV2iSxKQ9SouoWvmw85klzhJnMFkTYdUWylQScEsbSnUJpb
         kLyg==
X-Forwarded-Encrypted: i=1; AJvYcCUKuoaU6cVEUJ/lggGxXntV1wy6Rn0/1XyU54ydNSn7RraIjZuaJsQD5+o9tFCchh1m6rCpDK0bwzc=@vger.kernel.org
X-Gm-Message-State: AOJu0YzzwzN0b3sxEwB0HPhNjoD+aIaXGAA9CmIXncWnry0DRYqhUrIN
	v8DuR0sTYyhYXVN/8tpgXPVzHuxE9MXUIMVrcGBErWspqYUh59ApA92q
X-Gm-Gg: AY/fxX5gpFSQv5zoWRCOFVaErdvLa4wRkXbjSRq0cuG3Tf3wdYUkQFOsoatDNfEOcYm
	2i8JR1nA3xK3DNquN7HH7k3sSc+rgx6tFqxc7qNT0UY0CSvVLzgwNDnbWBUp6obWMNcot53K04L
	CmfuToSnlYy26dYR+Zm+AejkfRKceuHDaa1M7KfWlDEvVqTOF9/QZLkWJqvY3DGfIrEs6D5gC2O
	a8TOXtiKRTEBCZeXDtvG61beIuNHabxN3qv7gaKdjQTEFJa+5gR/1x/IFEDhvVR4DW66mTnEm1U
	bjYxzVjyGzYhyiAmxW4jgC/KJzO6vDvJ3CcxMEw1jXz9Bu1HfSi+SHu8ksejaGOrRUNmh8SZGzA
	MYwgHHj8uAs7XHlmMZmjMcTRf0BQ4wdpN/2zUvF9oTyj4MsOE5sA545mH2AhA7ViGZbgCLeiqB2
	WiCHKaKqcrmL5dnv2PhuCUM1AKWbDaPl3rjCysCxlPBh1wqU7VLhasJy3yz/I32pZ92t1P0+woy
	UfJIL37fgLWp7s=
X-Google-Smtp-Source: AGHT+IGXyWvD4F+n0e4ZCP8TkgfM903EfHapSlv2TgLldTfeJm9LTzePzKZOdpZCqBCtGaGqYZ0hOQ==
X-Received: by 2002:a05:6a00:ab8a:b0:7a6:2c97:eda7 with SMTP id d2e1a72fcca58-81b7e252686mr4539318b3a.29.1767841433989;
        Wed, 07 Jan 2026 19:03:53 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:03:53 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 00/11] man/man3type/*: Update simple history of types
Date: Thu,  8 Jan 2026 13:03:06 +1000
Message-ID: <cover.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This patch set updates the history of types that have only one standard
listed in their HISTORY section, meaning they should have no ordering
issues.

Seth McDonald (11):
  man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance
    of itimerspec(3type)
  man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of
    mode_t(3type)
  man/man3type/off_t.3type: Change VERSIONS to HISTORY
  man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of
    off_t(3type)
  man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of
    sig{event,val}(3type)
  man/man3type/stat.3type: SYNOPSIS: wfix
  man/man3type/stat.3type: HISTORY: Update first POSIX appearance of
    stat(3type)
  man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of
    st_{rdev,blksize,blocks}
  man/man3type/stat.3type: HISTORY: Specify initial datatypes of
    st_{blksize,blocks}
  man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of
    timer_t(3type)
  man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of
    timespec(3type)

 man/man3type/itimerspec.3type |  2 +-
 man/man3type/mode_t.3type     |  2 +-
 man/man3type/off_t.3type      |  4 ++--
 man/man3type/sigevent.3type   |  2 +-
 man/man3type/stat.3type       | 19 +++++++++++++++++--
 man/man3type/timer_t.3type    |  2 +-
 man/man3type/timespec.3type   |  2 +-
 7 files changed, 24 insertions(+), 9 deletions(-)

Range-diff against v0:
 -:  ------------ >  1:  48b823b1a965 man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance of itimerspec(3type)
 -:  ------------ >  2:  90f54d80c479 man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of mode_t(3type)
 -:  ------------ >  3:  c1498253ab68 man/man3type/off_t.3type: Change VERSIONS to HISTORY
 -:  ------------ >  4:  6b062b0d6afa man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of off_t(3type)
 -:  ------------ >  5:  6919cafeb4e3 man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of sig{event,val}(3type)
 -:  ------------ >  6:  84a9e467d506 man/man3type/stat.3type: SYNOPSIS: wfix
 -:  ------------ >  7:  0611f62eeedb man/man3type/stat.3type: HISTORY: Update first POSIX appearance of stat(3type)
 -:  ------------ >  8:  9d3a705508aa man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
 -:  ------------ >  9:  e13690db2fb6 man/man3type/stat.3type: HISTORY: Specify initial datatypes of st_{blksize,blocks}
 -:  ------------ > 10:  eb28bf22aed9 man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of timer_t(3type)
 -:  ------------ > 11:  d25e140aaabe man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of timespec(3type)
-- 
2.47.3


