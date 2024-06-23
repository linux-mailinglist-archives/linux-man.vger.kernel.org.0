Return-Path: <linux-man+bounces-1257-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D59913703
	for <lists+linux-man@lfdr.de>; Sun, 23 Jun 2024 02:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B9411C20E00
	for <lists+linux-man@lfdr.de>; Sun, 23 Jun 2024 00:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80DC7372;
	Sun, 23 Jun 2024 00:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HB2mknMQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB84B163
	for <linux-man@vger.kernel.org>; Sun, 23 Jun 2024 00:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719100970; cv=none; b=tf/r4al2Nr9pkiQIR4yTIFskni+J9zJYaou/LWuf06WliJ9e9eFklgNRxqcO7zSZS3UKXgiJi+xwjpcaQiDKZEVIoyTfoob2BtnPGZpF6uaSCaDqJsQMpPpkJFC0NhOh6g0xRGa1nST+C20ROtfxZm5ugM655hbG676zHXVQygQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719100970; c=relaxed/simple;
	bh=otqLcAoU/MxUKmSL94VAiCLvPQutfTEFFKV7vc58nj4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=tgXSzupa67is2lIrjPx4kjpU+AhomgbwGvTP1tzwvs5E13EOGTj9LpOFKqmLS+qxq0USXNHXRXz8RTnKPAuPYkp+Vi+l6fbDls6pKQme10xcMR26PRM5JiWHeiLucHfB4aNhtwVeguotP8Hz8eP8YGq1UR37jD9s4cQKzm+iFN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HB2mknMQ; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2c7c61f7ee3so2537339a91.1
        for <linux-man@vger.kernel.org>; Sat, 22 Jun 2024 17:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719100968; x=1719705768; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nSEOgrKOi5LKc8hu1LZaculWK0hNhJEIa7JA/hcZ16E=;
        b=HB2mknMQXGv24PRPNH1GubFALGIK7vTu4DD9kIeob8wkMvTHP4EOLrtD9jnRJdf16V
         /Kc4RLTodePNjvl23Z92eHehHtN0rWfN9KQFgTqg+lj8CAqSw+piAFIff/tYdKREFjyO
         3XsUXT+q814sOlqqvpsCbyt1huzuHPGorOTo6lvqey5E0raJ84BKtj0diR8Hg0D8uf+O
         dtOkKXr0NvMN2ejYX0IO+GiIhqvC/mw38cAXC15UeXYk+t8hAC0vNYGbtZNMVVDCUdrJ
         QgSrd1tZsHZBwYbbT/erw7eZ7kpgmvQHISf9ne4nO0z/VrZaFEeW2uahQ1lGLN6tjftg
         xfFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719100968; x=1719705768;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nSEOgrKOi5LKc8hu1LZaculWK0hNhJEIa7JA/hcZ16E=;
        b=ECZoBA16TI+1cmhPTYg0SNN8sutv3FnGVVPXuCYySjRorA6vdji5o3A3vN7uPfXCyU
         GWSG+1/lvTXWkjRGtPTt1kFFnPq2in9+Mo9AYdl1/xeVozboS1nhB4di2HX3Fro/bCwQ
         OFwO9EF9KhAiRUTgogFFeRTiYNgPUudt8cVpDaad9WaRs7Yk/ZHSwAYMkpg1cluk8Zup
         N3paEAQwGOkM7POTmpQ/AlVMgIusyhWJdpWlBRZIQkE3cHLxy2lnGRecMpWdOo2Ambaq
         Nt71N+GCvQb6kTxQOkuYersm0w+rszfBBJr6rBbEyGffTrfjPTEWAAIVO3Sos9oIjegs
         DSGg==
X-Gm-Message-State: AOJu0Yyp+Ydxb0y5XOojmAaK3JVo46Mj9hQ6biKx7EyrQ6Tw4o/Wc5Vg
	/NNYFQ+8Lqulsmx3fZM+nAbBiyZrBnWn3rxoiGNwQrrU86Gt8mPsL+BmibJFfAdAONBEsEy7zHe
	Qb30W1syOU9esCuTnGGAqGCRKiq2oq5er
X-Google-Smtp-Source: AGHT+IEjPSz5AZraxQy7DipxT26wz5jpm3AKhcqwqACXEilmqwqRx/KQwfYl0DS9D+tuYO2ugqcIPTsyiojr4MP9y/0=
X-Received: by 2002:a17:90a:348b:b0:2c4:aae7:e27 with SMTP id
 98e67ed59e1d1-2c8612dbde6mr691151a91.23.1719100968028; Sat, 22 Jun 2024
 17:02:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Date: Sun, 23 Jun 2024 02:02:36 +0200
Message-ID: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>
Subject: [PATCH] perf_event_open.2: document combining inherit and cpus = -1
 preventing the use of mmap
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

After calling perf_event_open() with cpus =3D=3D -1 and the inherit bit,
using mmap on the perf file descriptor to create a ring-buffer fails
with EINVAL. This behavior wasn't previously documented in the man
page and is caused by the following lines in the perf_mmap function in
kernel/events/core.c:
/*
* Don't allow mmap() of inherited per-task counters. This would
* create a performance issue due to all children writing to the
* same rb.
*/
if (event->cpu =3D=3D -1 && event->attr.inherit)
        return -EINVAL;

Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
---
man/man2/perf_event_open.2 | 4 ++++
1 file changed, 4 insertions(+)

diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
index 2f345ff5b..15a5972d0 100644
--- a/man/man2/perf_event_open.2
+++ b/man/man2/perf_event_open.2
@@ -1025,6 +1025,10 @@ .SS Arguments
.I read_format
values, such as
.BR PERF_FORMAT_GROUP .
+Additionally, using it together with
+.BR "cpu =3D=3D -1"
+prevents the creation of the mmap ring-buffer used for
+logging asynchronous events in sampled mode.
.TP
.I pinned
The
--
2.45.2

