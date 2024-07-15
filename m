Return-Path: <linux-man+bounces-1464-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A35B39317E8
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 17:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2976DB21517
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 15:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3222E552;
	Mon, 15 Jul 2024 15:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="S8k/2lK5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A93D53C
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 15:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058960; cv=none; b=X/9FISJBfXxqniMfoV2z5899Z37iR/7ux7vRe+sJMoLvizSDprFlFbXPTeMFOJ5sZSQzvipXFKiqNxy8S8YRJEZxrEP+UqlNe7CknkaPJBrlJWJ32/19McDD9430+n3jDysNIwmnoxnAMiLlt5pskcMaSncDrldwkn6EIA6dH2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058960; c=relaxed/simple;
	bh=WF++LxibeE16uk9Xzf/hjivEf74KiQ8duqUPJUbynJ4=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=uMBezDf1p/1LI5ZKT/A/F6rwj3TyLniyvLnLnK3Md/MokYfURdM9qxKdNe227AyZtxDY2LNa8Gm96z0USXzSEGIpA9o9Bo6pyOyangqkTjwFLuEDBcKDFLWM0v3bjlbb21X7AhX45zYk+YrXM4qMeFn4fMgKYNYHg68UfOgtbKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=S8k/2lK5; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-65026e6285eso71731897b3.3
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 08:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721058958; x=1721663758; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9U8tozE0FSgf5eEHIqA40UwLkMayEUJCBjJWzyL8xK0=;
        b=S8k/2lK5nf/HkfhqYkgZhUmWtqgv0lvtGtstVBEa0atLdHvzrk/cqjBrgtH/g9cpRK
         bXD+MfKIDtSNUp4HJRBnv1dAit1R7cshQ/vQTv5MrfDwNoP431ndhHaNUZbNTXDp+dW0
         FEc1RJA7cCOEHgLNwh/BOzkchI0ajOJ7N8l0f1BkX7bLVDZIefwgI4Ym8QdgEKklJBuB
         nDt9kYsqO4HgCBP8TwEzDwquoYEZgGsVOrNxNam+jNft1CtzQ1OkwVPiiQa9IeWyd+Yn
         5efMsccjlkJuryh+BBaQXeDlZ3QuAMkuyvVibJDG99uw+zoKnABYFlfeX2qbVEvGKhEX
         6FKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058958; x=1721663758;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9U8tozE0FSgf5eEHIqA40UwLkMayEUJCBjJWzyL8xK0=;
        b=io7EzObKyjSE9gdhQ0zeOCwQ92800uPSEzu5FUl46ZabZbL8fY1g+4GTmVllKCH+3g
         Q4lsgtn+t5llzguyJ/z3Ywvf7BICotsajv71k9/FaoQWEqAz2HRAK2LcD0uuRP4CKMLy
         Gdww2Vbg7ROS1QxbyboTUrCC4gyBxSmX7SdXSza38YamH+ysvTzWyNxvHUUtJangAQfr
         fG4tWHQ6157ZZWez1cc4aonQXh7B1tPMLdtAaPVM81TTpywqGkrjYT4mP733s1qRpHbX
         y5T2lvEQnm1ADsd5xsX67eIiMvF9/t9NWFZi1Lb6YzTHwqeMS2Y5gfl+fGFWmSlMgquE
         gLUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe1V0aNlovigVs1AT6ZDM8gb9uFmhgYSyLSoirv/BP6vO0+bkyCQywrOsOd4U27NMuUrSCbHOhk/PJVcGirWVjj3qOPxWMub9S
X-Gm-Message-State: AOJu0YwHJlAizWN0VIWV67zBIKVGtEK99PzIt4VAXG1izgBOumBm9l26
	sPYJxI8uGn76k2NwH19E1jpZ5fP5L5RPJKZgWDLDZtSMCMacWRsLSDKx4QNvFRHE5pNzez7t1ye
	eWg==
X-Google-Smtp-Source: AGHT+IHBhGUyDZtKzRFUcvGD/kPCMpLneWVxjCNQJk9VKnRkiOFIWX//K8UHSSK8uXGFyDWLis/rdLIVPYg=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:70b:b0:e03:5144:1d48 with SMTP id
 3f1490d57ef6-e041b142c52mr37150276.11.1721058958217; Mon, 15 Jul 2024
 08:55:58 -0700 (PDT)
Date: Mon, 15 Jul 2024 15:55:49 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.993.g49e7a77208-goog
Message-ID: <20240715155554.2791018-1-gnoack@google.com>
Subject: [PATCH 0/5] landlock*: Bring documentation up to date
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This cleans up a variety of wording issues and small mistakes,
and brings the man page documentation up to date with Landlock
ABI v4 (networking support) and v5 (IOCTL support).

G=C3=BCnther Noack (5):
  landlock.7, landlock_*.2: Wording improvements
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
2.45.2.993.g49e7a77208-goog


