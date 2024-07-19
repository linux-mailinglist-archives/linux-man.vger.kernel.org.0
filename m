Return-Path: <linux-man+bounces-1492-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 684A193789A
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:38:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A716B20EF5
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6813144317;
	Fri, 19 Jul 2024 13:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="w+8J3m4u"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2644A1E489
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721396307; cv=none; b=Le/ucDlhZmrBzEnV3oAIxHO5WrBOL5hVeY7vFHrQY/nTjq/dSb2xsKrww4JIUE2phGzb8ylDBrqnUVbiw1kkLrl2ACTNmiCAqBtmmfRMjVryt1ANvSiPQIO/LJJpsnQewG5EalNCdOfrN5kHDUi9p6pyvvAz7lYbZsBqOeT080o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721396307; c=relaxed/simple;
	bh=1zzgsOoi/Q83xEuqqz+iFNkKUgKraYcPBxfAIF5c+HU=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=JDE9Wi611cfSCqcj9vmq4GUUveNCGAsCqTsGDzgju+QwsT9AEf9mBQFXnZuhV8pzgin9XuuC0K1pu34LMqSrxha7pVMwhjYPG+ZIQrHWmLD/Xd/LGyt+WuF9DiUQeCG0llIxglFpeSG3i+PNNULxemwN9NNgvVXbKeYeY8c0rAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=w+8J3m4u; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-65026e6285eso48932197b3.3
        for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 06:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721396305; x=1722001105; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AIgQyEurxjJ+6s0iekIVC1YcGLyNHx2CGX6f707f+kg=;
        b=w+8J3m4uSehNHWa2Ok/qkZL1RGdaD7c9nq4lSDOIv7EzaYojb/+SOh7oX7L5B4kuyF
         5WMzICfzcVXCD91NtTO9+MwwaUH+JXFle28fzGTgBb1BzMwcN4317MjQA1EyDE8XT4PC
         O8Nz9krt7ImBuQqSF6XdJzgA/um2Ng4G4n+tMAH098i3k5L1FqBsldgocUEoGv0o5gVL
         cBxaY8R3q3CbiYDU+Zj51YHRWCSnkjwsTL8mjjtLO4skVtIeM0o1YzfMVoZV6xffdofV
         9Hnxw4hn20PnitiPIIGQBVoNedml5XaDl1nDLw/p6a/Tu7vt0+fnFMLlFkF1nf8ubPKO
         DLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721396305; x=1722001105;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AIgQyEurxjJ+6s0iekIVC1YcGLyNHx2CGX6f707f+kg=;
        b=VJu01YEs6zEh6r6jijXUg6Geo6bIMR6R4a4XlP4Xt0njPF7JpokDfE5vkDCEwvK8AL
         W344iBT18n7ZuzXW7OHCsgJJ5BfBjSq2q2xfMYl/0T5oPqYnpaDRs6Ji/1GwnoCmnBvV
         ePsfniFdRXOjju+0xFehlXEmzA/HhOm1BqGX0Q1AO1V7b64NDgnGF6Cbqd/SYriL8xHR
         fltanuJnf6AvmUtBMzgSSaxWF1SWnHEmlYZk1+p7zXm8AQDy4YjTLjccTp2ypvPFc4sV
         pbIw8kx5piPPx5w83/7j1QlptsfOvUUO+bpYFf5QRGgew4kd3oj0kk9OuS9+6sk1Gf2W
         ehFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXY1+hKmxEjyrPkffFKxxopTwBWb/JV/3gVzMFkHYR4nk32oxBX09uokr42hPj3+lJIrFPZbcfDyQeyLzrHqcAkDPi9Mo71jolV
X-Gm-Message-State: AOJu0YzPSlpugGnpfaQ0l7kHJHzWtLJAWmZYlb1d/1nbj2MlK8xOezCj
	ZO2CqsgEkCu5L/yTxm24CaKmXjXzeCpH5PCsHfzp9HAfdYboaaYi9KEhUNlq8tAh1+vb9KdTzxS
	8ig==
X-Google-Smtp-Source: AGHT+IEwl/RCGMd3yLCIMKeHjpIHgBBzSCQ21fgoyYHd3BIFZlltxR0LCunfbcFBDVVArcvhwMMcpdDx7rk=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:c10:b0:e03:252a:f931 with SMTP id
 3f1490d57ef6-e05feadfad1mr14648276.1.1721396304999; Fri, 19 Jul 2024 06:38:24
 -0700 (PDT)
Date: Fri, 19 Jul 2024 13:37:57 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240719133801.3541732-2-gnoack@google.com>
Subject: [PATCH v2 0/5] landlock*: Bring documentation up to date
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This cleans up a variety of wording issues and small mistakes,
and brings the man page documentation up to date with Landlock
ABI v4 (networking support) and v5 (IOCTL support).

V2: Addressed the small issues brought up in review
    by Micka=C3=ABl Sala=C3=BCn and Alejandro Colomar:
 * various small wording and git-merging issues
 * small commit message formatting issues

G=C3=BCnther Noack (5):
  landlock.7, landlock_*.2: wfix
  landlock_create_ruleset.2: Update docs for landlock_ruleset_attr
  landlock_add_rule.2: Document missing reason for EINVAL
  landlock.7, landlock_*.2: Document Landlock ABI version 4
  landlock.7: Document Landlock ABI version 5 (IOCTL)

 man/man2/landlock_add_rule.2       | 93 ++++++++++++++++++++++++++----
 man/man2/landlock_create_ruleset.2 | 52 ++++++++++++++---
 man/man2/landlock_restrict_self.2  | 11 ++--
 man/man7/landlock.7                | 80 ++++++++++++++++++++++---
 4 files changed, 205 insertions(+), 31 deletions(-)

--=20
2.45.2.1089.g2a221341d9-goog


